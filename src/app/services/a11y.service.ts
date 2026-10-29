import { Injectable, inject, PLATFORM_ID } from '@angular/core';
import { isPlatformBrowser } from '@angular/common';

@Injectable({
  providedIn: 'root'
})
export class A11yService {
  private platformId = inject(PLATFORM_ID);
  private observer: MutationObserver | null = null;
  private isProcessing = false;

  // Regex completa per intercettare tutte le emoji, frecce decorative e simboli grafici
  private readonly EMOJI_REGEX = /(\p{Extended_Pictographic}|\p{Emoji_Presentation}|[\u2600-\u27BF]|[\uE000-\uF8FF]|\uD83C[\uDF00-\uDFFF]|\uD83D[\uDC00-\uDE4F]|\uD83D[\uDE80-\uDEFF]|[\u2190-\u21FF]|[\u25A0-\u25FF])/gu;

  init(): void {
    if (!isPlatformBrowser(this.platformId)) return;

    // Prima scansione all'avvio
    setTimeout(() => this.enhancePageAccessibility(document.body), 200);

    // Osserva automaticamente ogni cambio pagina, filtro o apertura modale
    this.observer = new MutationObserver(() => {
      if (this.isProcessing) return;
      this.isProcessing = true;
      requestAnimationFrame(() => {
        this.enhancePageAccessibility(document.body);
        this.isProcessing = false;
      });
    });

    this.observer.observe(document.body, {
      childList: true,
      subtree: true
    });

    // Supporto tastiera globale: Invio o Spazio attivano le card cliccabili
    document.addEventListener('keydown', (e: KeyboardEvent) => {
      if (e.key === 'Enter' || e.key === ' ') {
        const target = e.target as HTMLElement;
        if (target && target.hasAttribute('data-a11y-clickable') && target.tagName !== 'BUTTON' && target.tagName !== 'A' && target.tagName !== 'INPUT') {
          e.preventDefault();
          target.click();
        }
      }
    });
  }

  private enhancePageAccessibility(root: HTMLElement): void {
    if (!root) return;

    // 1. Nascondi contenitori di icone puramente estetici dalla sintesi vocale
    const iconSelectors = [
      '.icon', '.btn-icon', '.s-icon', '.search-icon', '.round-icon',
      '.pill-icon', '.cat-icon', '.brand-torii', '.logo-icon',
      '.card-icon-wrap', '.cat-chevron', '.pulse-play'
    ];
    root.querySelectorAll(iconSelectors.join(',')).forEach((el) => {
      if (el.getAttribute('aria-hidden') !== 'true') {
        el.setAttribute('aria-hidden', 'true');
      }
    });

    // 2. Avvolgi tutte le emoji sparse nei testi dentro <span aria-hidden="true">
    this.stripEmojisFromScreenReader(root);

    // 3. Dai un nome vocale chiaro ai pulsanti con sole icone (✕, 🗑️, ✏️, +, -)
    this.labelIconOnlyButtons(root);

    // 4. Rendi leggibili e navigabili con Tab / Screen Reader tutti gli elementi non-bottone
    this.makeNonButtonsAccessible(root);
  }

  private stripEmojisFromScreenReader(root: HTMLElement): void {
    const walker = document.createTreeWalker(root, NodeFilter.SHOW_TEXT, {
      acceptNode: (node) => {
        const parent = node.parentElement;
        if (!parent) return NodeFilter.FILTER_REJECT;
        const tag = parent.tagName.toLowerCase();
        if (tag === 'script' || tag === 'style' || tag === 'textarea' || tag === 'input') {
          return NodeFilter.FILTER_REJECT;
        }
        if (parent.getAttribute('aria-hidden') === 'true' || parent.hasAttribute('data-emoji-wrapped')) {
          return NodeFilter.FILTER_REJECT;
        }
        return this.EMOJI_REGEX.test(node.nodeValue || '')
          ? NodeFilter.FILTER_ACCEPT
          : NodeFilter.FILTER_SKIP;
      }
    });

    const nodesToProcess: Text[] = [];
    let currentNode: Node | null;
    while ((currentNode = walker.nextNode())) {
      nodesToProcess.push(currentNode as Text);
    }

    for (const textNode of nodesToProcess) {
      const text = textNode.nodeValue;
      if (!text) continue;

      this.EMOJI_REGEX.lastIndex = 0;
      const fragment = document.createDocumentFragment();
      let lastIndex = 0;
      let match: RegExpExecArray | null;

      while ((match = this.EMOJI_REGEX.exec(text)) !== null) {
        if (match.index > lastIndex) {
          fragment.appendChild(document.createTextNode(text.slice(lastIndex, match.index)));
        }
        const emojiSpan = document.createElement('span');
        emojiSpan.setAttribute('aria-hidden', 'true');
        emojiSpan.setAttribute('data-emoji-wrapped', 'true');
        emojiSpan.textContent = match[0];
        fragment.appendChild(emojiSpan);

        lastIndex = match.index + match[0].length;
      }

      if (lastIndex < text.length) {
        fragment.appendChild(document.createTextNode(text.slice(lastIndex)));
      }

      textNode.parentNode?.replaceChild(fragment, textNode);
    }
  }

  private labelIconOnlyButtons(root: HTMLElement): void {
    root.querySelectorAll('button').forEach((btn) => {
      if (btn.getAttribute('aria-label')) return;

      const rawText = (btn.textContent || '').trim();
      const cleanText = rawText.replace(this.EMOJI_REGEX, '').trim();

      if (rawText === '✕' || btn.classList.contains('btn-close') || btn.classList.contains('btn-clear') || btn.classList.contains('close-drawer-btn') || btn.classList.contains('btn-close-modal')) {
        btn.setAttribute('aria-label', btn.getAttribute('title') || 'Chiudi o rimuovi');
      } else if (rawText.includes('🗑️') && !cleanText) {
        btn.setAttribute('aria-label', btn.getAttribute('title') || 'Elimina');
      } else if (rawText.includes('✏️') && !cleanText) {
        btn.setAttribute('aria-label', btn.getAttribute('title') || 'Modifica');
      } else if (rawText === '−' || rawText === '-') {
        btn.setAttribute('aria-label', btn.getAttribute('title') || 'Riduci valore');
      } else if (rawText === '+') {
        btn.setAttribute('aria-label', btn.getAttribute('title') || 'Aumenta valore');
      }
    });
  }

  private makeNonButtonsAccessible(root: HTMLElement): void {
    // A. Card interattive (PNG, Bestiario, Inventario, Incantesimi, Forme Selvatiche)
    const clickableCards = [
      '.npc-card',
      '.enemy-card',
      '.item-card',
      '.spell-card',
      '.shape-card',
      '.category-header'
    ];

    root.querySelectorAll<HTMLElement>(clickableCards.join(',')).forEach((card) => {
      if (!card.hasAttribute('tabindex')) {
        card.setAttribute('tabindex', '0');
      }
      if (!card.hasAttribute('role')) {
        card.setAttribute('role', 'button');
      }
      card.setAttribute('data-a11y-clickable', 'true');
    });

    // B. Blocchetti informativi e statistiche non-bottone (Iniziativa, Cassa Comune, Contatori, Dettagli)
    const infoRegions = [
      '.combatant-card',
      '.treasury-card',
      '.paizo-statblock-preview',
      '.results-count',
      '.results-count-bar',
      '.round-badge',
      '.damage-counter'
    ];

    root.querySelectorAll<HTMLElement>(infoRegions.join(',')).forEach((box) => {
      if (!box.hasAttribute('tabindex')) {
        box.setAttribute('tabindex', '0');
      }
    });

    // C. Annuncio vocale automatico per contatori e risultati filtro
    root.querySelectorAll<HTMLElement>('.results-count, .results-count-bar, .round-badge').forEach((liveEl) => {
      if (!liveEl.hasAttribute('aria-live')) {
        liveEl.setAttribute('aria-live', 'polite');
      }
    });
  }
}