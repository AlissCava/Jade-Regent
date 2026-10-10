-- Aggiornamento descrizioni e statistiche estese incantesimi
UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '1 round',
  saving_throw = NULL,
  spell_res = 'sì (oggetto)',
  full_description = ': Si fa frusciare rumorosamente una pianta, distraendo le creature vicine. Si può tentare una prova di Raggirare per creare una distrazione per nascondersi, usando il proprio Livello dell''Incantatore + il proprio modificatore di Saggezza al posto del bonus totale dell''abilità Raggirare e applicando il risultato a tutte le creature entro 9 metri. Il bersaglio viene considerato Distratto, così come tutte le creature che sapevano in anticipo della distrazione. Le creature potrebbero non essere distratte se si accorgono del lancio dell''incantesimo o se anticipano in altro modo il vostro sotterfugio. 

Fonte: Underbrush Decoy'
WHERE name = 'Esca del Sottobosco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo convoca 1d3 animali di taglia minuscola o inferiore, come corvi, donnole, lucertole, pipistrelli, ratti, rospi o scimmie. Gli animali richiamati devono essere tutti dello stesso tipo di creatura. Le creature appaiono nel punto designato e agiscono immediatamente, nel turno dell''incantatore. Attaccano gli avversari dell''incantatore sempre al meglio delle loro capacità. Se si può comunicare con le creature, si può ordinare loro di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle.

Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l''incantesimo. Tutte le creature sono Neutrali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-minor-ally'
WHERE name = 'Evoca Alleato Minore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '6 m',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si viene avvolti da un denso vapore, che resta immobile ed impedisce ogni tipo di visuale oltre 1,5 metri, inclusa scurovisione. Una creatura a 1,5 metri di distanza è Occultata (gli attacchi hanno il 20% di probabilità di mancare il bersaglio). Le creature ancora più distanti godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e l''attaccante non può usare la vista per localizzare il bersaglio).

Un vento di intensità moderata (16,5 o più km/h), come quello generato dall''incantesimo Folata di Vento, disperde la nebbia in 4 round. Un forte vento (31,5 o più km/h), disperde la nebbia in un round. Palla di Fuoco, Colpo Infuocato o un incantesimo simile disperdono la nebbia nell''area dell''esplosione o delle fiamme. Un Muro di Fuoco disperde la nebbia nell''area in cui può causare danni.

Questo incantesimo non funziona sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/o/obscuring-mist'
WHERE name = 'Foschia Occultante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione immediata',
  range = 'personale',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si risponde a un attacco diventando per un breve periodo di tempo vaporosi e privi di consistenza, lasciando che l''attacco passi attraverso di sé senza causare danni. Si guadagna RD 10/magia contro questo attacco e si è immuni a qualsiasi effetto di Veleni, Attacchi Furtivi o colpi critici causati dall''attacco. 

Non è possibile utilizzare Fuga nel Vento contro un Attacco di Opportunità provocato dall''incantatore lanciando un incantesimo, utilizzando una capacità magica o usando altre capacità di origine magica che provocano Attacchi d''Opportunità quando utilizzate. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/windy-escape'
WHERE name = 'Fuga nel Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': L''incantatore irradia la grazia ultraterrena di una Nereide. Se non indossa alcuna armatura, guadagna Bonus di Deviazione alla Classe Armatura e alla DMC pari al proprio modificatore di Carisma (massimo +3).

Il bonus massimo cresce di 1 per ogni 6 livelli da incantatore posseduti (massimo +6 al 18° livello).

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/nereid-s-grace'
WHERE name = 'Grazia della Nereide';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = '18 m',
  duration = 'Concentrazione, fino a 1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': È possibile individuare altri adoratori della propria Divinità (adoratori mortali, servitori esterni e così via). La quantità di informazioni rivelate dipende dal tempo in cui ci si concentra su una particolare area o soggetto.

• 1° round: Presenza o assenza del fedele.

• 2° round: Numero dei fedeli nell''area.

• 3° round: La posizione esatta di ogni fedele. Se un fedele si trova al di fuori della propria linea di vista, si può riconoscere la sua direzione, ma non la sua posizione esatta.

Ogni round si può ruotare per individuare gli adoratori in una nuova area. L''incantesimo può penetrare le barriere, ma una lastra di piombo, un metro di pietra, un centimetro di metallo comune o un metro di legno o terra lo bloccano. L''interpretazione personale del credo di una creatura determina se è della stessa fede dell''incantatore, quindi gli eretici e i cultisti scissionisti della sua divinità contano ancora come adoratori di quella divinità. Inoltre, poiché l''incantesimo rileva le credenze e i sentimenti attuali di una creatura, anche una creatura che finge attivamente di essere un membro della stessa fede appare all''incantesimo come un membro. Pertanto, l''incantesimo è ancora utile per individuare potenziali membri nascosti della stessa fede tra la popolazione generale, ma da solo non elimina le spie.

Fonte: Detect the Faithful'
WHERE name = 'Individuazione del Fedele';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': La munizione nell''Arma da Fuoco genera una carica esplosiva minore quando sparata. Con questa munizione, l''incremento di gittata dell''Arma da Fuoco è dimezzato e il tiratore subisce penalità -2 ai tiri per i danni. Se è consapevole dell''effetto di questo incantesimo prima di sparare la munizione alterata (una prova di Sapienza Magica con CD 16 per identificare l''incantesimo che sta per essere lanciato o un effetto simile), chi impugna l''Arma da Fuoco può impiegare un''Azione Standard per ripulire l''arma. Questo distrugge la munizione. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/weaken-powder'
WHERE name = 'Indebolire Polveri';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Una spina di legno delle dimensioni di un giavellotto (appropriato per la taglia dell''incantatore) appare nella mano aperta. Si può impugnare questa spina come un giavellotto e si è competenti nel suo uso. La creatura colpita dal giavellotto deve superare un Tiro Salvezza su Tempra o è Infermo per 1 round. Se si scaglia il giavellotto, un altro appare nella mano. I giavellotti non più afferrati scompaiono al termine del turno dell''incantatore. Ogni attacco con il giavellotto effettuato riduce di 1 minuto la durata restante dell''incantesimo. Se un attacco riduce a 0 minuti o meno la durata restante, l''incantesimo termina dopo quell''attacco.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/thorn-javelin/'
WHERE name = 'Giavellotto Spina';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'Concentrazione, fino a 10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si è in grado di individuare un tipo particolare di Animali o Vegetali all’interno di un cono che ha origine da sé e si irradia nella direzione in cui si guarda. Quando si lancia questo incantesimo, bisogna pensare a una specie Animale o Vegetale, che si può cambiare ad ogni round di utilizzo. La quantità di informazioni che si ottiene varia in base al tempo impiegato per studiare l’area o in base al tipo di animale o di vegetale su cui ci si concentra:

• 1° round: Presenza o assenza del tipo di Animale o Vegetale in quell’area.

• 2° round: Numero di esemplari del tipo specificato nell’area e condizioni di quelli più in salute.

• 3° round: Condizione (vedi sotto) e posizione di ogni esemplare presente. Se l’animale o il vegetale sono al di fuori della propria linea di visuale, si riesce a capirne la direzione ma non la posizione precisa.

Condizioni: Ai fini dell’incantesimo, le categorie delle condizioni degli esemplari sono le seguenti:

• Normali: Possiede almeno il 90% dei normali Punti Ferita totali e non ha Malattie.

• Buone: Gli rimangono dal 30% al 90% dei normali Punti Ferita totali.

• Cattive: Gli rimangono meno del 30% dei normali Punti Ferita totali, è afflitto da una Malattia oppure da una ferita debilitante.

• Pessime: 0 o meno Punti Ferita rimanenti, afflitto da una Malattia che ha ridotto uno dei suoi punteggi di caratteristica a 5 o meno, o è inabile.

Se la creatura ricade in più di una categoria, l’incantesimo indica la più debole delle due.

Ad ogni round ci si può voltare per individuare una specie Animale o Vegetale in una nuova area. L’incantesimo è in grado di oltrepassare le normali barriere, ma viene bloccato da 30 cm di pietra, 2,5 cm di metallo comune, una sottile lamina di piombo o 90 cm di legno o detriti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/detect-animals-or-plants'
WHERE name = 'Individuazione di Animali o Vegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = NULL,
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si è in grado di individuare un tipo particolare di Aberrazione all’interno di un cono che ha origine da sé e si irradia nella direzione in cui si guarda. Quando si lancia questo incantesimo, bisogna pensare a una specie Animale o Vegetale, che si può cambiare ad ogni round di utilizzo. La quantità di informazioni che si ottiene varia in base al tempo impiegato per studiare l’area o in base al tipo di animale o di vegetale su cui ci si concentra:

• 1° round: Presenza o assenza del tipo di Aberrazione in quell’area.

• 2° round: Numero di esemplari del tipo specificato nell’area e condizioni di quelli più in salute.

• 3° round: Condizione (vedi sotto) e posizione di ogni esemplare presente. Se l’animale o il vegetale sono al di fuori della propria linea di visuale, si riesce a capirne la direzione ma non la posizione precisa.

Condizioni: Ai fini dell’incantesimo, le categorie delle condizioni degli esemplari sono le seguenti:

• Normali: Possiede almeno il 90% dei normali Punti Ferita totali e non ha Malattie.

• Buone: Gli rimangono dal 30% al 90% dei normali Punti Ferita totali.

• Cattive: Gli rimangono meno del 30% dei normali Punti Ferita totali, è afflitto da una Malattia oppure da una ferita debilitante.

• Pessime: 0 o meno Punti Ferita rimanenti, afflitto da una Malattia che ha ridotto uno dei suoi punteggi di caratteristica a 5 o meno, o è inabile.

Se la creatura ricade in più di una categoria, l’incantesimo indica la più debole delle due.

Ad ogni round ci si può voltare per individuare una specie Aberrazione in una nuova area. L’incantesimo è in grado di oltrepassare le normali barriere, ma viene bloccato da 30 cm di pietra, 2,5 cm di metallo comune, una sottile lamina di piombo o 90 cm di legno o detriti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/detect-aberration'
WHERE name = 'Individuazione delle Aberrazioni';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = 'fino a 10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si è in grado di individuare semplici trabocchetti, strapiombi e calappi come anche trappole meccaniche costruite con materiali naturali. Questo incantesimo non individua trappole complesse, tra cui le trappole a botola.

L’incantesimo rivela anche certi pericoli naturali: sabbie mobili (indicate come calappi), gorghi (come trabocchetti) o pareti poco stabili di roccia naturale (strapiombi). Non rivela, tuttavia, eventuali condizioni potenzialmente pericolose. Non individua neanche trappole magiche (tranne quelle che fanno uso di trabocchetti, strapiombi e calappi; vedi l’incantesimo Calappio), nemmeno quelle meccanicamente complesse o che sono state rese sicure o inattive.

La quantità di informazioni che si ottiene varia in base al tempo impiegato per studiare un’area particolare.

• 1° round: Presenza o assenza di pericoli.

• 2° round: Numero di pericoli e posizione di ognuno. Se un pericolo si trova al di fuori della propria linea di visuale, si riesce a capirne la direzione ma non la posizione precisa.

• Ogni Round Aggiuntivo: La categoria di appartenenza e il metodo di attivazione di un pericolo accuratamente esaminato.

Ad ogni round ci si può voltare per esaminare una nuova area. L’incantesimo è in grado di oltrepassare le normali barriere, ma viene bloccato da 30 cm di pietra, 2,5 cm di metallo comune, una sottile lamina di piombo o 90 cm di legno o detriti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/detect-snares-and-pits'
WHERE name = 'Individuazione di Calappi e Trabocchetti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Riflessi parziale',
  spell_res = 'no',
  full_description = ': Questo incantesimo fa in modo che erba alta, erbacce ed altre piante si avviluppino intorno alle creature che si trovano nell''area d''effetto o che entrano nell''area. Le creature che falliscono il Tiro Salvezza assumono la condizione di Intralciate. Le creature che superano il Tiro Salvezza possono muoversi normalmente, ma se restano nell''area debbono effettuare il Tiro Salvezza un''altra volta alla fine del turno. Le creature che entrano nell''area debbono effettuare subito il Tiro Salvezza e chi lo fallisce termina il suo movimento assumendo la condizione di Intralciato. Le creature Intralciate possono tentare di liberarsi come azione di movimento, effettuando una prova di Forza o di Artista della Fuga. La CD della prova è uguale alla CD dell''incantesimo. L''intera area d''effetto è considerata terreno difficile mentre dura l''effetto.

Se le piante nell''area sono coperte di spine, quelli nell''area subiscono 1 danno ogni volta che falliscono il Tiro Salvezza contro Intralciare o la prova fatta per liberarsi. A seconda della vegetazione locale potrebbero verificarsi altri effetti, a discrezione del GM.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/entangle'
WHERE name = 'Intralciare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Questo incantesimo rovina con l''umidità la munizione già caricata nell''Arma da Fuoco bersaglio. Ogni tentativo di sparare la munizione fallisce, senza possibilità di Inceppamento, e l''utilizzatore deve quindi impiegare un''Azione di Round Completo per pulire l''arma prima di ricaricarla e sparare. Se è consapevole dell''effetto di questo incantesimo prima di sparare la munizione alterata (una prova di Sapienza Magica con CD 16 per identificare l''incantesimo mentre sta per essere lanciato o un effetto simile), l''utilizzatore dell''Arma da Fuoco può impiegare un''Azione Standard per ripulire l''arma. Questo distrugge la munizione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/damp-powder'
WHERE name = 'Inumidire Polveri';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si conferisce ad una creatura la capacità di spostare una parte della propria innata robustezza dalle difese alla quantità di danno inflitto con gli attacchi naturali. Ad ogni round, come azione veloce all’inizio del proprio turno, la creatura può scegliere di ridurre in parte o tutto il proprio Bonus di Armatura Naturale dalla CA ed ottenere un Bonus di Potenziamento, pari a quella quantità, a tutti i danni inflitti con attacchi naturali. La riduzione dell’armatura naturale, e quindi il Bonus di Potenziamento ai danni, non possono superare 1 punto ogni 3 livelli dell’incantatore, fino ad un massimo di penalità/bonus di –5/+5 al 15° livello. Con questo incantesimo, una creatura non può ridurre il bonus della propria Armatura Naturale a meno di 0. Tutti gli attacchi diretti contro la creatura usano la CA modificata fino all’inizio del suo turno successivo: a quel punto la creatura può scegliere di modificare nuovamente la sua CA o mantenerla al livello attuale. Le creature prendono questa decisione senza alcun bisogno di pensiero cosciente o riflessione; anche le creature senza punteggio di Intelligenza possono beneficiare di questo incantesimo, anche se queste opteranno sempre per la massima riduzione possibile, indipendentemente da qualsiasi vantaggio tattico possano perdere.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bristle'
WHERE name = 'Irsura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il bersaglio guadagna bonus +1 ai Tiri per Colpire e per i danni se sia lui che il suo avversario stanno toccando dell''acqua. Se l''avversario, o il bersaglio, stanno toccando il terreno, il bersaglio subisce penalità -­4 ai Tiri per Colpire e per i danni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/marid-s-mastery'
WHERE name = 'Maestria del Marid';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'Volontà nega (innocuo',
  spell_res = 'sì (innocuo)',
  full_description = ': Questo incantesimo fornisce al soggetto un certo grado di protezione dagli Effetti Nocivi del Sole. Il soggetto ammantato considera il calore ambientale dovuto all’esposizione al sole come fosse di un livello inferiore: il caldo estremo è considerato come condizioni con temperature molto elevate, mentre le temperature elevate sono considerate temperature medie. Il Manto delle Ombre riduce anche le penalità dovute alla luce solare di 1. L’incantesimo, però, non elimina gli effetti della luce solare diretta sulle creature vulnerabili ad essa. Il Manto delle Ombre non ha effetto sul calore ambientale prodotto da fonti diverse dal sole.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cloak-of-shade'
WHERE name = 'Manto delle Ombre';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si attinge al proprio legame elfico con la natura per cambiare la propria colorazione e quella del proprio equipaggiamento per accordarsi all''ambiente circostante. Questo concede Bonus di Circostanza +4 alle prove di Furtività e permette di effettuare prove di Furtività senza Copertura od Occultamento, ma solo mentre ci si muove della metà della propria velocità base o meno. Se ci si muove più della metà della propria velocità base durante il proprio turno, non si ottiene alcun beneficio da questo incantesimo fino all''inizio del proprio turno successivo. Se si effettua un attacco, l''incantesimo termina (come Invisibilità).

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blend'
WHERE name = 'Mimetizzazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Il soggetto viene circondato da un bagliore pallido, e inizia a emanare una luce simile a quella delle candele. Le creature circondate da Luminescenza subiscono penalità –20 alle prove di Furtività. Le creature soggette all’incantesimo non beneficiano dell’Occultamento normalmente offerto da Oscurità (anche se un effetto di oscurità magica di 2° livello o superiore funziona normalmente), Distorsione, Invisibilità, Sfocatura o da effetti simili. La luce è troppo fioca per poter avere un qualsiasi effetto speciale sui Non Morti o sulle creature che vivono al buio e vulnerabili alla luce. Luminescenza può essere di colore blu, verde o viola, a seconda della scelta al momento del lancio. Luminescenza non provoca alcun danno agli oggetti o alle creature delineate dal suo bagliore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/faerie-fire'
WHERE name = 'Luminescenza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Gli Animali non possono percepire la creatura protetta. Perfino Capacità Straordinarie o extrasensoriali come Fiuto, Percezione Cieca, Percezione Tellurica e Vista Cieca non sono in grado di rilevare le creature protette. Gli Animali agiscono semplicemente come se la creatura protetta non fosse presente. Se un personaggio protetto tocca un animale o attacca una qualunque creatura, fosse anche con un incantesimo, l''incantesimo ha termine per tutti coloro che vi erano soggetti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/hide-from-animals'
WHERE name = 'Nascondersi agli Animali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi nega',
  spell_res = 'no',
  full_description = ': Quando si lancia questo incantesimo, si evoca una singola palla di fango appiccicoso e la si scaglia in faccia al nemico, come attacco di contatto a distanza. Se la palla di fango colpisce, il bersaglio rimane Accecato. Ogni round, all''inizio del suo turno, una creatura Accecata da questo incantesimo può tentare un Tiro Salvezza su Riflessi per scrollarsi di dosso il fango, ponendo termine all''effetto. La palla di fango può anche essere ripulita via dalla stessa creatura influenzata o da una creatura adiacente come azione standard.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mudball'
WHERE name = 'Palla di Fango';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Con un gesto, questo incantesimo permette di allontanare anche l’odore più ripugnante o particolare. Con il lancio, le creature o gli oggetti perdono tutti gli odori naturali o innaturali. Una creatura sotto l’effetto di Negare Odore non può essere seguita, individuata o localizzata con la capacità speciale Fiuto. Inoltre, questo incantesimo impedisce alla creatura bersaglio di usare la capacità speciale Fetore e capacità simili basate sull’odore (come quella posseduta dai Trogloditi).

Negare Odore non impedisce al bersaglio di acquisire odori esterni. Inzuppare la creatura con una sostanza acre nega totalmente i benefici dell’incantesimo finché la sostanza non viene neutralizzata o lavata.

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/negate-aroma'
WHERE name = 'Negare Odore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si rende il Veleno toccato difficile da individuare o identificare. Individuazione del Veleno e effetti simili individuano un veleno oscurato solo con una prova di Livello dell''Incantatore riuscita contro una CD pari a 15 + il proprio livello dell''incantatore (tirata segretamente dal GM). Anche se il veleno viene individuato, la CD delle prove di Artigianato (alchimia) o Saggezza per identificare il veleno aumenta di 10.

Se lanciato su una creatura velenosa, Oscurare Veleno maschera allo stesso modo tutti i veleni naturali della creatura.

Fonte: Obscure Poison'
WHERE name = 'Oscurare Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si possono fare domande e ricevere risposte dagli Animali, anche se l''incantesimo non li rende amichevoli o necessariamente più disposti a collaborare rispetto al normale. Inoltre, gli Animali più svegli e intelligenti tendono ad essere concisi ed evasivi, mentre quelli più stupidi a dire cose insensate. Se l''Animale è amichevole nei vostri confronti, può fare alcuni favori o svolgere qualche servizio per vostro conto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/speak-with-animals'
WHERE name = 'Parlare con gli Animali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto dell’incantesimo non lascia tracce o una scia olfattiva quando si muove. Seguire le tracce del soggetto è impossibile se non si dispone di mezzi magici.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pass-without-trace'
WHERE name = 'Passare Senza Tracce';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Per la durata di questo incantesimo, il soggetto ignora gli effetti sfavorevoli al movimento causati dal terreno difficile e, su tale terreno, può anche fare passi di 1,5 metri.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/feather-step'
WHERE name = 'Passo Morbido';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 ora/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si aumenta la propria velocità base sul terreno di 3 metri come bonus di potenziamento. Non ha alcun effetto su altre modalità di movimento come Nuotare, Scalare, Scavare o Volare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/longstrider'
WHERE name = 'Passo Veloce';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si batte il piede o la propria arma a terra, creando un''onda di potere che si può usare per Sbilanciare una creatura. Si tenta una prova di Manovra in Combattimento per Sbilanciare il bersaglio, ma, invece del proprio Bonus di Attacco Base, si può usare il livello dell''incantatore e, invece del proprio modificatore di Forza, si può usare il modificatore al punteggio della caratteristica dell''incantatore (Intelligenza per Maghi e Magus; Saggezza per Druidi e Ranger; Carisma per Iracondi di Stirpe e Stregoni). Questo tentativo di Sbilanciare non provoca Attacchi di Opportunità. Questo incantesimo non ha effetto se non si può raggiungere il terreno o il pavimento o se il bersaglio non è a contatto con il terreno o il pavimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/thunderstomp/'
WHERE name = 'Passo Tonante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Mani e piedi dell''incantatore si alterano per riuscire meglio a scalare e nuotare. Si ottiene una velocità di Scalare di 3 m e una velocità di Nuotare di 3 m. Questo incantesimo non ha effetto se si indossa un''armatura media o pesante o se si trasporta un carico medio o pesante.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/monkey-fish/'
WHERE name = 'Pesce Scimmia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '30 minuti o finché non viene scaricato',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = NULL
WHERE name = 'Pietra Magica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '24 ore',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Le piume del bersaglio si infoltiscono e si gonfiano, per proteggerlo dal freddo dell''inverno. il bersaglio non subisce danni quando si trova in un ambiente freddo ed è in grado di sopravvivere comodamente in condizioni fino a­ -45 gradi centigradi senza dover effettuare Tiri Salvezza su Tempra. L''equipaggiamento della creatura è protetto allo stesso modo. L''incantesimo non fornisce protezione contro danni da
freddo o contro altri Pericoli Ambientali Associati al Clima Freddo (quali scivolare sul ghiaccio, cecità da neve, e così via).

Quando lancia l''incantesimo, l''incantatore può decidere di far diventare bianche le piume del bersaglio per l''intera durata, facendogli guadagnare Bonus di Circostanza +4 alle prove di Furtività per nascondersi nel ghiaccio e nella neve. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/winter-feathers'
WHERE name = 'Piumaggio Invernale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Appaiono delle fiamme sul palmo della propria mano. Non si viene feriti dalla fiamma e questa non danneggia il proprio Equipaggiamento.

Oltre a fornire illuminazione, le fiamme possono essere scagliate o usate per toccare un avversario. Si possono colpire i nemici con un attacco di contatto in mischia, infliggendo 1d6 danni +1 danno da fuoco per livello dell’incantatore (massimo +5). In alternativa, si possono scagliare le fiamme fino a 36 metri di distanza come un’arma da lancio. Per fare ciò occorre compiere un attacco di contatto a distanza (senza penalità per la gittata) infliggendo all’avversario gli stessi danni di un attacco in mischia. Non appena si lanciano le fiamme, altre ne appaiono nella mano. Ogni attacco, sia in mischia che a distanza, effettuato riduce la durata dell’incantesimo di un minuto. Se un attacco riduce la durata rimanente dell’incantesimo a 0 minuti o meno, l’incantesimo ha termine una volta condotto quest’ultimo attacco.

Questo incantesimo non funziona sott’acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/produce-flame'
WHERE name = 'Produrre Fiamma';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo trasforma le proprie mani in pietra vivente. Mentre questo incantesimo è attivo, i propri colpi senz’armi non provocano attacchi di opportunità e infliggono 1d6 danni contundenti (1d4 se si è Piccoli). Inoltre, i propri colpi senz’armi ignorano la durezza degli oggetti inferiore a 8.

Pietra in Carne dissolve immediatamente Pugni di Pietra. Se si è bersaglio di Trasmutare Roccia in Fango, questo incantesimo termina immediatamente e si subiscono 4d6 danni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-fist'
WHERE name = 'Pugni di Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si crea una roccia delle dimensioni di un pugno che si precipita verso un nemico. Si effettua un Tiro per Colpire con un colpo senz''armi contro il bersaglio, come se questi si trovasse nella propria area di minaccia. Se l''attacco riesce, la roccia infligge danni contundenti al bersaglio, come se l''incantatore lo avesse colpito con il suo colpo senz''armi. Se quest''ultimo dispone di una Riserva Ki, fintanto che ha almeno 1 punto nella sua Riserva Ki, la roccia viene considerata come un colpo ki. 

Al 4° livello, un Monaco Qinggong può scegliere questo incantesimo come potere ki, con un costo di attivazione pari a 1 punto ki (se il Monaco ha 0 punti ki dopo aver attivato questo potere ki, la roccia non conta come un colpo ki). 

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mighty-fist-of-the-earth'
WHERE name = 'Pugno Potente della Terra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Un raggio nero viene proiettato dal proprio dito puntato. Occorre effettuare con successo un attacco di contatto a distanza con il raggio per colpire il bersaglio.

Il soggetto risulta immediatamente Infermo per tutta la durata dell''incantesimo. Un Tiro Salvezza su Tempra riuscito significa che il soggetto non viene influenzato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/ray-of-sickening'
WHERE name = 'Raggio di Debilitazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Un randello o Bastone Ferrato non magico diventa un’arma con Bonus di Potenziamento +1 ai Tiri per Colpire e per i danni. Un Bastone Ferrato ottiene questo potenziamento per entrambe le estremità dell’arma. Infligge danni come se fosse di due categorie di taglia più grande (un randello o Bastone Ferrato Piccolo così trasformato, infligge 1d8 danni, uno Medio 2d6 e uno Grande 3d6) +1 per il Bonus di Potenziamento. Questi effetti si verificano solo quando si impugna l’arma. Quando non la si tiene in mano, l’arma si comporta come se non fosse soggetta all’incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shillelagh'
WHERE name = 'Randello Incantato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vedi descrizione',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo richiama a sé il più vicino Animale selvatico di un particolare tipo indicato (purché il GS dell’Animale sia pari o inferiore al proprio livello dell’incantatore). L’Animale si avvicina con i propri mezzi, così il tempo che impiega per arrivare dipende da quanto l’Animale del tipo desiderato è vicino quando si lancia l’incantesimo. Se non ci sono Animali di quel tipo in grado di arrivare entro la durata dell’incantesimo, si è di ciò consapevoli, ma l’incantesimo è perso. La conoscenza della fauna locale rende questo incantesimo più efficace e il GM può permettere una prova di Conoscenze (natura) (CD 15) per sapere quali Animali si possono trovare nell’area.

Quando l’Animale richiamato arriva, si avvicina a 1,5 metri e rimane al fianco dell’incantatore per la durata dell’incantesimo. L’atteggiamento iniziale è indifferente, modificato dalle circostanze e dall’interazione. All’infuori dell’atteggiamento iniziale, questo incantesimo non conferisce alcuna influenza speciale o capacità di comunicare con l’Animale richiamato, sebbene per questo si possano usare altri incantesimi o capacità.

Quando termina la durata dell’incantesimo, l’Animale agisce secondo il proprio atteggiamento. La maggior parte degli Animali se ne va, ma un predatore ostile può attaccare, specialmente se è affamato o provocato.

Gli Animali domestici o gli Animali addestrati da qualcun altro, incluse le creature come Famigli o Compagni Animali, non vengono influenzati da Richiamare Animale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/call-animal'
WHERE name = 'Richiamare Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si incanala energia magica nella propria aura, ricaricando le proprie Capacità Magiche. Si riguadagna un uso di tutte le Capacità Magiche di livello 0 e di 1° livello che si possono usare grazie a un tratto razziale. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/recharge-innate-magic'
WHERE name = 'Ricaricare Magia Innata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si placano sensazioni di malessere e Nausea nel bersaglio, conferendogli Bonus Morale +4 ai Tiri Salvezza contro effetti di Malattia, Nausea e Infermità. Se il bersaglio è già sotto l''influenza di uno di questi effetti quando riceve l''incantesimo, l''effetto viene soppresso per la sua durata.

http://www.d20pfsrd.com/magic/all-spells/r/remove-sickness'
WHERE name = 'Rimuovere Infermità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si fa crescere la carne sul cadavere decomposto o scheletrito di una creatura di Taglia Media o inferiore, fornendogli sufficiente carne per poterlo animare come Zombi invece che come Scheletro. Il cadavere ha l''aspetto di come era quando la creatura è morta. La nuova carne è piuttosto marcia e non è buona da mangiare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/restore-corpse'
WHERE name = 'Ristorare Cadavere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si provoca la diffusione di strati di sabbia calda sul terreno nell''area dell''effetto. Questo strato di sabbia è profondo 30 cm e si sposta e si agita costantemente, trasformando il terreno nell''area in Terreno Difficile. La sabbia stessa brucia e periodicamente dalla graniglia si alzano delle fiamme. Sebbene queste fiamme non possano incendiare oggetti, infliggono 1d4 danni da fuoco a qualsiasi creatura che termina il proprio turno a contatto con il terreno all''interno dell''area di effetto. Al termine della durata, la sabbia svanisce senza lasciare alcun effetto residuo (ad eccezione del danno inflitto).

Fonte: Burning Sands'
WHERE name = 'Sabbie Roventi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione di round completo',
  range = 'personale',
  duration = '10 minuti/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Lanciando questo incantesimo, si è capaci di ottenere conoscenza dalla terra stessa. Quando si cammina sul terreno, esso sussurra informazioni in un linguaggio che si comprende, sebbene questo sussurro sia così sconnesso che è difficile distinguerne le informazioni utili. Il sussurro concede Bonus Cognitivo +4 a una singola prova di Conoscenze del tipo appropriato al tipo di ambiente nel quale ci si trova. Se si è in un ambiente di acqua, deserto, foresta, freddo, giungla, montagna, palude o pianura, si ottiene il bonus alle prove di Conoscenze (natura). Se si è in un ambiente sotterraneo, si ottiene il bonus alle prove di Conoscenze (dungeon). Se si è in un ambiente urbano, si ottiene il bonus alle prove di Conoscenze (locali). Se si è su un piano diverso dal Piano Materiale, si ottiene il bonus alle prove di Conoscenze (piani). Se si entra in un nuovo ambiente, si perde il bonus all''abilità dell''ambiente precedente e si. acquisisce quello relativo al nuovo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/whispering-lore'
WHERE name = 'Sapere Sussurrante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Il bersaglio ottiene Bonus di Potenziamento +10 alle prove di Saltare. Il Bonus di Potenziamento aumenta a +20 al 5° livello dell''incantatore, e a +30 (il massimo) al 9° livello dell''incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/j/jump'
WHERE name = 'Saltare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'personale',
  duration = '1 ora/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Mentre si è soggetti a questo incantesimo, si prende su di sé il mantello del cacciatore, incanalando gli istinti degli spiriti della natura. Si ottiene Bonus Sacro +4 alle prove di Sopravvivenza per la durata dell''incantesimo e non ci si deve muovere a metà della propria velocità mentre si attraversano le terre selvagge o si seguono tracce. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/deadeye-s-lore'
WHERE name = 'Sapienza dell''Occhio Letale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Si può scavare e spostare la terra, la polvere e la sabbia per un volume pari a quello di un cubo con spigolo fino a 1,5 metri. Se si è sepolti, è possibile aprire un cubo con spigolo di 1,5 m attorno a sé, ma l’incantesimo non può essere usato per scavare una galleria.

Oltre alle sue normali applicazioni, si può aprire una fossa profonda 1,5 metri sotto i piedi di una creatura. Una creatura Media o inferiore cade Prona nella fossa a meno che non superi un Tiro Salvezza su Riflessi. Se supera il Tiro Salvezza, può scegliere di atterrare senza rischi nella fossa sui suoi piedi o balzare in uno dei quadretti adiacenti; questo movimento non provoca Attacchi di Opportunità. Una creatura può uscire da una fossa profonda 1,5 metri con una prova di Scalare con CD 5. Le creature più grandi possono ignorare le fosse più piccole della loro taglia.

La terra scavata con questo incantesimo generalmente viene sparsa in modo innocuo nel raggio di azione dell''incantesimo, ma si può scegliere di gettare manciate di sabbia e detriti mentre si scava una fossa. Questo nuvola di detriti fornisce Occultamento a tutte le creature nel quadretto interessato e in quelli adiacenti per 1 round. Scavo Rapido non ha effetto sulla roccia solida o sulle creature di terra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/expeditious-excavation'
WHERE name = 'Scavo Rapido';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = NULL
WHERE name = 'Scoppio di Lampi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione immediata',
  range = '0 m',
  duration = '1 round',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Una lastra di pietra dello spessore di 2,5 centimetri spunta dal terreno interponendosi tra l''incantatore e un avversario a sua scelta. Lo scudo di pietra fornisce Copertura contro quel nemico fino all''inizio del proprio turno successivo, fornendo bonus +4 alla Classe Armatura e bonus +2 ai Tiri Salvezza su Riflessi. Se l''attacco dell''avversario manca l''incantatore di 4 o meno, l''attacco colpisce invece lo scudo. Lo scudo di pietra ha Durezza 8 e 15 Punti Ferita. Se lo scudo viene distrutto, l''incantesimo termina e lo scudo si sbriciola e svanisce senza lasciare traccia. Gli incantesimi e gli effetti che infliggono danni ad area, infliggono danni allo scudo.

Non è possibile utilizzare questo incantesimo se l''incantatore non si trova adiacente ad una grossa quantità di terra o pietra, come il terreno o un muro. Al 4° livello, un Monaco Qinggong può selezionare questo incantesimo come potere ki dal costo di 1 punto ad attivazione. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-shield'
WHERE name = 'Scudo di Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione immediata',
  range = 'personale',
  duration = '1 round o finché non viene scaricato',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si crea un impetuoso flusso d''acqua dal grezzo aspetto di scudo. L''acqua protegge da un attacco fisico o da fuoco, concedendo RD/— e Resistenza al Fuoco pari a metà del livello dell''incantatore (minimo 1) a quell''attacco. Una volta che l''incantesimo ha ridotto il danno di un attacco, si scarica.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wave-shield/'
WHERE name = 'Scudo d''Onda';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'si (innocuo, oggetto)',
  full_description = ': La sella toccata diventa più confortevole e la magia stabilizza i sobbalzi causati dal cavalcare ad alta velocità. Per la durata dell’incantesimo, la penalità all’uso delle armi a distanza mentre si è in sella diminuisce di 2. Questo effetto si cumula con il beneficio del talento Tirare in Sella e con effetti simili. Inoltre, la CD di qualsiasi prova di Concentrazione richiesta a causa del movimento della cavalcatura diminuisce di 2.

Fonte: Steady Saddle'
WHERE name = 'Sella Stabile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto ottiene Bonus di Competenza +2 alle prove di Percezione e Visione Crepuscolare. I soggetti dotati di Visione Crepuscolare raddoppiano la distanza alla quale è possibile vedere sotto gli effetti di questo incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/k/keen-senses'
WHERE name = 'Sensi Sviluppati';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '8 ore (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il bersaglio conosce istintivamente la strada più breve, facile e veloce per attraversare la natura selvaggia. Ai fini della determinazione della Velocità di Avanzamento su lunga distanza, il bersaglio considera qualsiasi terreno non tracciato come se fosse dotato di un sentiero o una strada, e qualsiasi terreno con una strada o un sentiero come se fosse una strada maestra. 

Fino a una creatura per livello dell''incantatore che viaggia con il bersaglio può beneficiare di questo effetto. L''incantesimo funziona solo all''aperto e non ha alcun effetto su terreni modificati magicamente. 

Fonte: Nature''s Paths'
WHERE name = 'Sentieri della Natura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si fanno crescere delle ragnatele tra le dita delle mani e dei piedi del bersaglio trasformandoli in pinne e conferendogli una velocità di Nuotare di 9 metri insieme al consueto bonus +8 alle prove di Nuotare ed alla capacità di Prendere 10 anche se distratti o in pericolo. Si può anche usare l’azione Correre mentre si nuota, purché si nuoti in linea retta. Questa trasformazione fonde nella nuova forma gli stivali o i guanti che il bersaglio indossa (sebbene gli oggetti magici con un effetto continuo continuino a funzionare). Questo incantesimo non conferisce al bersaglio la capacità di respirare sott’acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/touch-of-the-sea'
WHERE name = 'Tocco del Mare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si fa apparire un rapido getto d’acqua che cade addosso ed inzuppa una creatura o un quadretto. Si può usare questo getto d’acqua per Spingere una creatura o un oggetto. Il BMC per questa spinta è pari al proprio livello dell’incantatore più il proprio modificatore di Intelligenza, Saggezza o Carisma, quale sia il più alto. Questa spinta non provoca Attacchi di Opportunità. Spinta Idraulica estingue il fuoco normale su una creatura, su un oggetto o in un singolo quadretto di 1,5 metri verso cui è indirizzata. I fuochi magici non ne vengono influenzati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/hydraulic-push'
WHERE name = 'Spinta Idraulica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Zanna Magica fornisce a un''arma naturale del soggetto Bonus di Potenziamento +1 ai Tiri per Colpire e per i danni. L''incantesimo può avere effetto su un attacco di schianto, un pugno, un morso o qualunque altra arma naturale. Questo incantesimo non cambia il danno di un colpo senz''armi da Danno Non Letale a danno letale.

Zanna Magica può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/magic-fang'
WHERE name = 'Zanna Magica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Un attacco di contatto in mischia riuscito fa sì che il bersaglio avvampi in una violenta vampata di fiamme, che infligge 1d6 danni da fuoco. Se fallisce il Tiro Salvezza, il bersaglio Prende Fuoco. Se il bersaglio Prende Fuoco, dal primo round in avanti, le creature adiacenti ad esso, incluso l''incantatore, devono superare un Tiro Salvezza su Riflessi o subiscono 1d4 danni da fuoco. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/touch-of-combustion'
WHERE name = 'Tocco di Combustione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si accelera l''insorgere degli effetti del Veleno nel bersaglio. Se il veleno normalmente ha un periodo di insorgenza, i suoi effetti iniziano immediatamente. Se il veleno non ha un periodo di insorgenza, la sua frequenza si raddoppia, rendendo necessari due Tiri Salvezza e infliggendo due volte il danno per round o minuto, dimezzando la sua durata. Accelerare Veleno non cambia le condizioni di cura del veleno. Se il bersaglio è colpito da più di un Veleno, si può scegliere quale venga accelerato nel caso in cui si abbia somministrato il Veleno; altrimenti, si determina casualmente quale veleno viene influenzato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/accelerate-poison'
WHERE name = 'Accelerare Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si instilla nell''animale bersaglio un compito generico (vedi l''Abilità Addestrare Animali), che può essere qualsiasi compito tranne l''addestramento al combattimento (cacciare, cavalcare, combattere, intrattenere, lavori pesanti o proteggere). Questo compito sostituisce il precedente compito cui era addestrato e qualsiasi comando conosciuto. Quando l''incantesimo termina, l''animale ritorna al precedente compito cui era addestrato e ai comandi conosciuti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-purpose-training/'
WHERE name = 'Addestrare Animale a Compito Generico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Quando soggetti a questo incantesimo, i bersagli riconoscono che le aree con foreste diventano vantaggiose anziché Intralciare. I bersagli non subiscono intralci al movimento né penalità alle prove di Acrobazia e Furtività dal sottobosco delle foreste. 

Inoltre, la vegetazione forestale impone un fallimento minore del 10% del normale. 

Quando si muovono su e tra gli alberi, quelli soggetti all''incantesimo ottengono Bonus di Circostanza +5 alle prove di Acrobazia e Scalare. I Ranger nel loro Ambiente Prescelto possono aggiungere il loro bonus di Ambiente Prescelto a queste prove di Acrobazia e Scalare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/forest-friend'
WHERE name = 'Amico della Foresta';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Quando viene lanciato questo incantesimo, la terra e la pietra non lavorata nell’area di effetto diventano più friabili. Il terreno umido diventa fango, la terra asciutta diventa argilla smossa o sabbia, mentre la pietra diventa morbida argilla facile da modellare o da scheggiare. Si è in grado di influenzare un’area quadrata con lato di 3 metri fino a una profondità che può variare da 30 cm a 120 cm, a seconda della compattezza o resistenza del terreno in quel punto. Terreni magici, incantati o lavorati non possono essere influenzati. Le creature di terra o di pietra non sono influenzate.

Le creature presenti in mezzo al fango devono superare un Tiro Salvezza su Riflessi o restano intrappolate per 1d2 round, incapaci di muoversi, attaccare o lanciare incantesimi. Le creature che superano i propri Tiri Salvezza possono muoversi attraverso il fango a metà della loro normale velocità, senza poter Correre né Caricare. La terra smossa non crea problemi quanto il fango, ma la velocità di movimento di tutte le creature nell’area di effetto è ridotta alla metà, e su una tale superficie non è possibile Correre né caricare. La roccia trasformata in argilla non impedisce i movimenti, ma permette ai personaggi di tagliare, dare forma alla roccia o di scavare per raggiungere quelle aree in cui non sarebbero stati in grado di arrivare normalmente.

Anche se Ammorbidire Terra e Pietra non ha effetto sulla roccia lavorata, le superfici verticali come la parete di un crepaccio o la sommità di una caverna possono essere influenzate dall’incantesimo. In genere questo provoca un piccolo crollo o una frana del materiale più friabile posto sulla superficie delle pareti (si consideri come un crollo senza zona sepolta).

È possibile infliggere un moderato ammontare di danni strutturali a una struttura artificiale (come ad esempio un muro o una torre) rendendo più friabile il terreno sottostante, a causa dell’assestamento. Tuttavia, la maggior parte delle strutture solide verranno solamente danneggiate da questo incantesimo, non distrutte.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/soften-earth-and-stone'
WHERE name = 'Ammorbidire Terra e Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 giorno/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si costringe un Animale Minuscolo a raggiungere un luogo stabilito. L’uso più comune di questo incantesimo consiste nel far portare all’Animale un messaggio ai propri alleati. L’Animale non può essere addomesticato o addestrato da nessun altro, come fossero Famigli e Compagni Animali.

Usando del cibo gradito all’Animale, lo si attira a sé. La creatura si farà avanti e aspetterà gli ordini. Si può imprimere mentalmente nell’Animale un certo posto conosciuto o un paesaggio facilmente riconoscibile. Le indicazioni devono essere semplici, perché l’Animale dipende dalle indicazioni e non dalle sue conoscenze. Si può dotare l’Animale di un biglietto o si può fissargli addosso un piccolo oggetto. L’Animale parte per la destinazione indicata e, raggiuntala, vi resta in attesa fino a quando l’effetto dell’incantesimo non svanisce, dopodiché riprende le sue normali attività.

Durante questo periodo di attesa, il messaggero consente agli altri di avvicinarsi e di rimuovere il messaggio o l’oggetto trasportato. Il soggetto cui il messaggio è destinato non ottiene alcuna speciale capacità di comunicare con l’Animale o per leggere il messaggio accluso (se è scritto in una lingua che egli non conosce, ad esempio).

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-messenger'
WHERE name = 'Animale Messaggero';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': Si ottengono alcune delle qualità positive di un Animale. La propria forma base e la Taglia rimangono pressappoco immutate, ma alcune parti del proprio corpo vengono alterate. L''armatura o l''equipaggiamento indossato si adattano alla nuova forma per la durata dell''incantesimo. Quando si lancia Aspetto Animale, si sceglie uno degli Animali seguenti per ottenere i benefici associati. Si può avere attivo su di sé un solo incantesimo Aspetto Animale o Aspetto Animale Superiore per volta. 

Gorilla: Le braccia diventano lunghe, flessibili e forti come quelle di un grosso Gorilla. Il dado del danno senz''armi aumenta di un grado e si ottiene Bonus di Competenza +4 alle prove di Manovra in Combattimento quando si effettua la manovra Lottare o Riposizionare. 

Lontra: Le mani e i piedi diventano palmati e i polmoni ottengono maggiore capacità, permettendo di muoversi nell''acqua con facilità. Sì ottiene una velocità di Nuotare pari a metà della propria velocità e tutti i benefici di avere una tale velocità. Inoltre, si può trattenere il fiato per 4 round per punto di Costituzione prima di essere costretti ad effettuare una prova di Costituzione per continuare a trattenere il fiato. 

Lucertola degli Alberi: Le mani e i piedi ottengono artigli e cuscinetti per scalare. Si ottiene una velocità di scalare pari a metà della propria velocità normale e tutti i benefici associati. 

Procione: Le mani diventano estremamente agili e i piedi ovattati. Si ottiene Bonus di Competenza +2 alle prove di Disattivare Congegni, Furtività e Rapidità di Mano.

Rana: Le gambe diventano più lunghe e muscolose. Si ottiene Bonus di Competenza +4 alle prove di Acrobazia e si salta sempre come se si avesse una rincorsa iniziale.

Raptor: Le gambe diventano adatte alla corsa, come quelle di un Deinonico. Si ottiene Bonus di Potenziamento +6 metri alla propria velocità base.

Scimmia: Le mani e le braccia diventano agili come quelle di una Scimmia. Si ottiene Bonus di Competenza +4 alle prove di Scalare e si possono scagliare oggetti come se si possedesse il talento Lanciare Oggetti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-aspect'
WHERE name = 'Aspetto Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 giorni/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si affligge il bersaglio con una fame tale che nessun cibo la può placare. Con un Tiro Salvezza fallito, il bersaglio comincia a morire di fame.

Gli effetti di questo incantesimo non possono infliggere più Danni Non Letali dei Punti Ferita del bersaglio. Non c''è quantità di cibo che possa contrastare l''effetto e ogni tentativo di mangiare rende il bersaglio Nauseato per 1 round a meno che non superi un Tiro Salvezza su Tempra con CD 12. Il bersaglio sperimenta comunque gli altri normali effetti di ciò che mangia (come Veleni o Pozioni). Banchetto di cenere può essere rimosso con un incantesimo Desiderio, Desiderio Limitato, Miracolo, Rimuovi Maledizione o Spezzare Incantamento, ma gli effetti subiti a causa della fame devono essere curati con mezzi normali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/feast-of-ashes'
WHERE name = 'Banchetto di Cenere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si assume l’aspetto di un orso. Si ottiene Bonus di Potenziamento +2 all’armatura naturale e Bonus di Potenziamento +2 al BMC. Inoltre, si possono effettuare manovre in combattimento di Lottare, Oltrepassare e Spingere senza provocare Attacchi di Opportunità.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aspect-of-the-bear'
WHERE name = 'Aspetto dell''Orso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (D)',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Il soggetto rimane Paralizzato e bloccato sul posto. È cosciente e respira normalmente, ma non è in grado di compiere nessuna azione, nemmeno parlare. Ad ogni round nel suo turno, il soggetto può tentare un nuovo Tiro Salvezza per porre fine all''effetto, come azione di round completo che non provoca Attacchi di Opportunità. Una creatura alata che viene Paralizzata non può battere le ali e quindi cade. Un nuotatore non è in grado di Nuotare e può annegare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/hold-animal'
WHERE name = 'Blocca Animali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'Contatto',
  duration = '2 ore/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La capacità di carico dei bersagli triplica. Non viene influenzata la Forza delle creature, solamente la quantità di materiale che possono portare mentre beneficiano di questo incantesimo. Inoltre non ha alcun effetto sull''ingombro dovuto all''armatura. Se le creature indossano un''armatura, si applicano normalmente le penalità indipendentemente dal peso che l''incantesimo permette di trasportare.

La durata di questo incantesimo si può dividere in intervalli da 2 ore tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/ant-haul'
WHERE name = 'Carico della Formica Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si infonde nell''Animale bersaglio il compito generico Addestrato al Combattimento (vedere l''abilità Addestrare Animali). Questo sostituisce il precedente compito dell''Animale e ogni comando che conosce. Quando l''incantesimo termina, l''Animale riottiene i suoi compiti e comandi conosciuti in precedenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wartrain-mount'
WHERE name = 'Cavalcatura Addestrata alla Guerra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (vedi testo)',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si crea un collegamento vitale con il bersaglio. Si percepisce quando il bersaglio viene ferito e si è immediatamente consci se viene ucciso. Se si viene feriti o uccisi, il bersaglio ne è al corrente. Come azione gratuita, si può richiamare il bersaglio, facendolo tornare a sé (se in grado e disposto); questo pone termine all''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/companion-life-link/'
WHERE name = 'Collegamento Vitale al Compagno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': L''incantatore viene pervaso da Malattie e qualsiasi creatura che colpisca con un attacco in mischia deve superare un Tiro Salvezza su Tempra o diventa Inferma per 1 minuto. Le creature immuni alle Malattie sono immuni a questo effetto di Infermità.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sickening-strikes'
WHERE name = 'Colpi Debilitanti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '24 ore',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si può condividere la propria attitudine ad un particolare linguaggio con un’altra creatura. Per 24 ore il bersaglio può leggere, comprendere e parlare al meglio delle sue capacità un qualunque linguaggio già conosciuto dall’incantatore. Per ogni 5 livelli posseduti, si può concedere l’uso di qualunque linguaggio conosciuto, fino ad un massimo di 5 linguaggi al 20° livello. Il bersaglio deve avere la capacità fisica di articolare suoni, compiere gesti o impiegare qualsiasi altro metodo che chi parla usa per intavolare un discorso reale con gli altri. Se il bersaglio non possiede le facoltà mentali per comprendere un vero linguaggio, ottiene comunque una sufficiente conoscenza per reagire e compiere anche comandi estremamente complessi o consigli impartiti con il linguaggio (sia scritto che orale). Dato, però, che l’incantesimo non fornisce al bersaglio capacità superiori di ragionamento, ma solo un maggiore vocabolario temporaneo, la persona che impartisce istruzioni a creature non senzienti deve prestare attenzione a rimuovere ogni ambiguità o congettura.

Allo stesso modo, questo incantesimo non tocca la natura essenziale del bersaglio o la sua attitudine verso l’incantatore o chiunque altro, tanto che convincerlo a compiere veramente quelle istruzioni potrebbe richiedere una negoziazione, delle minacce o una vera e propria corruzione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/share-language'
WHERE name = 'Condividere Linguaggio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = NULL,
  range = NULL,
  duration = NULL,
  saving_throw = NULL,
  spell_res = NULL,
  full_description = NULL
WHERE name = 'Contrastare Elementi Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Si è in grado di distorcere in modo permanente il legno, piegando la sua linearità, la sua forma e la sua resistenza. Una porta deformata si apre (o rimane incastrata, richiedendo una prova di Forza per aprirla, a scelta). In una barca o nave provoca una falla. Le armi a distanza deformate sono inutilizzabili. Un''arma da mischia deformata impone penalità –4 ai tiri per colpire

Si può deformare un oggetto di taglia Piccola o inferiore o il suo equivalente per livello dell''incantatore. Un oggetto Medio conta come 2 oggetti Piccoli, un oggetto Grande come 4, un oggetto Enorme come 8, un oggetto Mastodontico come 16 e un oggetto Colossale come 32.

In alternativa, si può raddrizzare del legno (correggendo la distorsione e riportandolo al suo stato normale) che sia stato in precedenza deformato da questo incantesimo o in altri modi. Rendere Integro, al contrario, non è in grado di riparare un oggetto deformato.

È possibile combinare molteplici incantesimi Deformare Legno consecutivi per piegare (o raddrizzare) un oggetto che sia troppo grande per essere deformato con un solo incantesimo. Fino a che l''oggetto non è completamente deformato, non subisce alcun effetto nocivo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/warp-wood'
WHERE name = 'Deformare Legno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea un disco di pietra, che vola verso un nemico. Si può creare un disco, più uno addizionale al 7° livello e un altro al 11°. Per ogni disco creato, si decide se il bordo è smussato (e infligge danno contundente) o affilato (e infligge danno tagliente). Ogni disco richiede un attacco a distanza per colpire e infligge 4d6 danni. I dischi possono essere lanciati a più di un bersaglio, ma tutti devono essere scagliati simultaneamente verso bersagli entro 9 metri l''uno dall''altro.

Al 5° livello, i dischi contano come magici e d''argento. Al 10° livello, contano anche come di ferro freddo. Al 15° livello, contano anche come di Adamantio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-discus/'
WHERE name = 'Disco di Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale II';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si fa spuntare dal terreno una robusta pianta di fagioli che poi cresce fino a un''altezza di 3 m + 1,5 m ogni 2 livelli dell''incantatore. Lo stelo si ancora a oggetti robusti come pareti o soffitti e cresce attorno agli oggetti che non occupano totalmente il suo quadretto (come i rami di un albero), ma è fermato da ostacoli solidi. La pianta di fagioli fornisce numerosi appigli (Scalare CD 5). Il fagiolo può sopportare fino a 100 chilogrammi più 25 chilogrammi per livello dell''incantatore o il doppio di questa quantità se è ancorato con la sua estremità superiore. Se si ancora a un robusto oggetto mobile (come una nave o una macchina d''assedio), liberare l''oggetto richiede una prova di Forza con CD 23 o che il fagiolo venga abbattuto (Durezza 2, Punti Ferita 40).

Se il terreno è in grado di tenere in vita i vegetali, il fagiolo continua a vivere come un vegetale normale e produce semi nutrienti (ma poco appetitosi). Altrimenti, il vegetale muore dopo 1d6 ore; i suoi resti perdurano come un piccolo albero.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/climbing-beanstalk/'
WHERE name = 'Fagiolo Rampicante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = NULL,
  range = NULL,
  duration = NULL,
  saving_throw = NULL,
  spell_res = NULL,
  full_description = NULL
WHERE name = 'Evoca Sciame';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = '1 round',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo crea un potente getto d’aria (di circa 75 km/h) che ha origine da sé e ha effetto su tutte le creature nel suo percorso. Tutte le creature volanti nell’area ottengono penalità –4 alle prove di Volare. Una creatura di taglia Minuscola o inferiore che non superi una prova di Volare con CD 25, viene spinta indietro per 2d6 × 3 metri e subisce 2d6 danni. Le creature di taglia Piccola o inferiore che stanno volando debbono superare una prova di Volare con CD 20 per potersi muovere contro la forza del vento.

• Una creatura Minuscola o inferiore che è sul terreno è abbattuta e trascinata per 1d4 × 3 metri, e subisce 1d4 Danni Non Letali ogni 3 metri.

• Le creature di taglia Piccola vengono rese Prone dalla forza del vento.

• Le creature di taglia Media o inferiore non sono in grado di muoversi in avanti contro la forza del vento a meno che non superino una prova di Forza con CD 15.

• Le creature di taglia Grande o superiore possono muoversi normalmente all’interno di un effetto di Folata di Vento.

Una Folata di Vento non può spostare una creatura oltre i limiti del suo raggio di azione.

Qualsiasi creatura, indipendentemente dalla taglia, subisce penalità –4 agli attacchi a distanza e alle prove di Percezione nell’area di una Folata di Vento.

La forza della folata estingue automaticamente candele, torce e altre fiamme simili non protette. Le fiamme protette, come quelle delle lanterne, invece cominciano a tremare violentemente e hanno una probabilità del 50% di spegnersi.

In aggiunta agli effetti sopra indicati, una Folata di Vento può ottenere gli stessi effetti di un improvviso colpo di vento. Può creare una nuvola accecante di sabbia o di polvere, infiammare un grosso fuoco esistente, capovolgere supporti o tendoni fragili, rovesciare una piccola imbarcazione o spingere gas e vapori fino al limite del suo raggio di azione.

Folata di Vento può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/gust-of-wind'
WHERE name = 'Folata di Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I), speciale (vedi sotto)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': I propri denti si allungano e diventano più affilati, trasformando la propria bocca in delle fauci con zanne affilate come rasoi. Si ottiene un attacco con il morso che infligge 1d4 danni più il proprio modificatore di Forza. Se si conferma un colpo critico con questo attacco, si infligge anche 1 danno da Sanguinamento. Se si possiede già un attacco con il morso, il proprio morso infligge 2 danni da Sanguinamento quando si mette a segno un colpo critico. Si viene considerati competenti in questo attacco. Se usato come parte di un''azione di attacco completo, il morso è considerato un attacco secondario, è effettuato al proprio Bonus di Attacco Base pieno ­-5 e si aggiunge solo metà del proprio modificatore di Forza ai suoi danni. 

Si può mettere fine a questo incantesimo prima della sua normale durata emettendo un ruggito bestiale come azione veloce. Quando lo si fa, è possibile effettuare una prova di Intimidire per demoralizzare tutti i nemici entro un raggio di 9 metri in grado di sentire il ruggito. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/savage-maw'
WHERE name = 'Fauci Selvagge';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 ora/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Con questo incantesimo si è in grado di assumere la forma di un albero o di un arbusto vivente Grande oppure di un tronco d’albero morto Grande con alcuni rami sporgenti. Il tipo esatto di albero e il suo aspetto sono totalmente sotto il proprio controllo. Anche l’esame più dettagliato non è in grado di rivelare che l’albero in questione è in realtà una creatura occultata magicamente. A tutte le prove normali risulta come un albero o un arbusto, anche se un incantesimo Individuazione del Magico rivelerà una leggera trasmutazione sull’albero. Quando si è in forma arborea, si può osservare tutto ciò che accade intorno proprio come se si fosse in forma normale, e i Punti Ferita e i bonus ai Tiri Salvezza rimangono immutati. Si ottiene Bonus di Armatura Naturale +10 alla CA, ma il proprio punteggio effettivo di Destrezza è 0 e la propria velocità è di 0 metri. Si è immuni ai colpi critici finché si rimane in forma d’albero. Tutti i vestiti indossati e gli oggetti trasportati si trasformano insieme al corpo. È possibile interrompere Forma Arborea come azione gratuita (invece che come azione standard).

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/tree-shape'
WHERE name = 'Forma Arborea';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto diventa più forte. L''incantesimo conferisce Bonus di Potenziamento +4 a Forza, aggiungendo i relativi benefici ai Tiri per Colpire in mischia, ai tiri per i danni in mischia e ad altri usi del modificatore di Forza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bull-s-strength'
WHERE name = 'Forza del Toro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 round/livelllo (I) (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si evocano centinaia di ragni di taglia Minuta, che si aggrappano l''un l''altro a formare una frusta fatta per una creatura della taglia dell''incantatore. Si può impugnare questo oggetto come se fosse una vera frusta, ma si effettuano attacchi di contatto in mischia al posto dei normali attacchi. Le creature colpite con la frusta subiscono danni da sciame come se fossero attaccate da uno Sciame di Ragni (1d6 danni più Veleno e Distrazione). La frusta di sciame è in grado di danneggiare creature con armatura o Armatura Naturale, anche se una normale frusta non potrebbe. Non può essere usata per Lottare, Sbilanciare o Spingere e (diversamente da uno sciame) è soggetta a mancare per Occultamento o Copertura.

La frusta è immune ai danni di tutte le armi, non è mai Barcollante o ridotta allo stato Morente dai danni, ed è immune a qualsiasi incantesimo o effetto che prenda come bersaglio un numero specifico di creature (inclusi gli incantesimi a bersaglio singolo come Disintegrazione). La frusta subisce ancora danno dimezzato da incantesimi o effetti che influenzano un''area, ma dato che è considerata parte dell''Equipaggiamento, subisce danni solo se si fallisce un Tiro Salvezza tirando un 1 o se è specificatamente posta come bersaglio da un avversario. La frusta non ha la suscettibilità dello sciame ai venti forti.

Come azione standard, si può trasformare la frusta in uno Sciame di Ragni (tutti i quadretti dello sciame devono essere entro 4,5 m dall''incantatore); per il resto funziona come Evoca Sciame. Lo Sciame di Ragni ha 3 Punti Ferita e persiste in quella forma per 2 round o finché non termina la durata dell''incantesimo, quale dei due eventi accada prima.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/whip-of-spiders/'
WHERE name = 'Frusta di Ragni';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '7 round',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Gelare il Metallo rende il metallo estremamente freddo. I metalli incustoditi non magici non ottengono Tiri Salvezza, mentre quelli magici hanno diritto a un Tiro Salvezza contro l’incantesimo. Un oggetto posseduto da una creatura usa il bonus al Tiro Salvezza di quella creatura a meno che il proprio non sia più alto.

Una creatura subisce danni da freddo se il suo Equipaggiamento viene raggelato. Subisce pieni danni se è colpita la sua armatura, l’arma che impugna o lo scudo. La creatura subisce danni minimi (1 o 2 punti, vedi la tabella) se non sta impugnando o indossando tali oggetti.

Round

Temperatura del Metallo

Danni

1

Freddo

Nessuno

2

Gelido

1d4

3–5

Ghiacciato

2d4

6

Gelido

1d4

7

Freddo

Nessuno

Nel primo round il metallo diventa freddo e sgradevole da toccare, ma non infligge danni (effetto che si ripete anche nell’ultimo round di durata dell’incantesimo). Nel secondo e nel penultimo round, il gelo del metallo infligge danni e dolore. Nel terzo, quarto e quinto round il metallo è ghiacciato e infligge danni superiori, secondo la tabella sotto riportata.

Qualunque calore intenso a sufficienza da danneggiare la creatura nega i danni da freddo generati dall’incantesimo su una base punto per punto e viceversa. Sott’acqua Gelare il Metallo non infligge danni, ma attorno al metallo che subisce l’effetto si forma subito del ghiaccio, che lo riporta in superficie se non viene tenuto.

Gelare il Metallo contrasta e dissolve Riscaldare il Metallo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/chill-metal'
WHERE name = 'Gelare il Metallo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si maledice il bersaglio, sottoponendolo a un calore insopportabile. Se fallisce il Tiro Salvezza, il bersaglio è immediatamente soggetto a Caldo Estremo, quindi subisce 1d4 Danni Non Letali ed è soggetto ad un colpo di calore (Affaticato). Il bersaglio deve effettuare un Tiro Salvezza ogni 10 minuti, come di norma per il caldo estremo (partendo con CD 15 invece che con la CD di questo incantesimo). Dal momento che il calore si sviluppa internamente, il bersaglio non può evitarlo utilizzando i normali metodi per proteggersi dai pericoli del calore, quali prove di Sopravvivenza o trovare riparo all''ombra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fury-of-sun'
WHERE name = 'Furia del Sole';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Il bersaglio è pervaso da un gelo pungente per la durata dell''incantesimo, e soffre gli effetti di freddo estremo. Freddo estremo significa che se fallisce il tiro salvezza iniziale, il bersaglio subisce 1d6 danni non letali da freddo e deve superare il tiro salvezza ogni 10 minuti (usando la CD del freddo estremo invece della CD di questo incantesimo) o subire danni addizionali. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/unshakable-chill'
WHERE name = 'Gelo Pungente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': La creatura interessata da questo incantesimo diventa più aggraziata, agile e coordinata. L''incantesimo conferisce Bonus di Potenziamento +4 a Destrezza, aggiungendo i normali benefici a CA, Tiri Salvezza su Riflessi ed altri usi del modificatore di Destrezza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cat-s-grace'
WHERE name = 'Grazia del Gatto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = '18 m',
  duration = NULL,
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo funziona come Individuazione del Magico, con la differenza che si possono ricavare molte più informazioni dalle aure magiche che si trovano, e queste aure possono essere trovate dopo un periodo di tempo molto più lungo. È possibile individuare un''aura persistente per un massimo di 1 giorno per ogni Livello dell''Incantatore, indipendentemente dalla forza originale dell''aura.

Inoltre, quando si utilizza un''Azione Standard per Concentrarsi su questo incantesimo, si può anche studiare una creatura all''interno dell''area dell''incantesimo e tentare una prova di Sapienza Magica per determinare l''ultimo incantesimo lanciato dalla creatura identificando le tracce persistenti che l''incantesimo ha lasciato nell''aura dell''incantatore. La CD per identificare l''incantesimo è pari a 20 + il livello dell''incantatore della creatura.

Infine, si è in grado di individuare e analizzare i segni distintivi di un''aura magica che vi permettono di associare un incantesimo alla persona che lo ha lanciato. Per trovare questi identificatori nell''aura di un incantesimo, è necessario spendere 1 round concentrandosi su quell''incantesimo in particolare e riuscendo a superare una prova contrapposta di Conoscenze (arcane) contro l''incantatore (o una prova di Conoscenze [arcane] con una CD pari a 15 + il livello dell''incantesimo, se l''incantatore vuole che il suo lavoro sia identificato ed enfatizza questi elementi unici invece di oscurarli). Una volta appresa la serie di identificatori di un incantatore, è possibile ricordarli con la stessa facilità di un volto o di una voce. Si può riconoscere questa firma se si riesce a effettuare una prova di incantesimo quando si identifica un incantesimo per determinare se quell''incantesimo è stato lanciato o meno dallo stesso individuo. L''incantesimo aura magica maggiore può offuscare questa informazione, facendo sembrare che l''incantesimo sia stato lanciato da qualcun altro. Individuazione del Magico Superiore concede un Tiro Salvezza contro Aura Magica (ma non Aura Magica Superiore).

Fonte: Detect Magic, Greater'
WHERE name = 'Individuazione del Magico Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Questo incantesimo permette al bersaglio di fare sollevare il suolo sotto di sé. Come azione veloce, il bersaglio può fare innalzare il suolo di 1,5 metri, e tutti i quadretti adiacenti vengono considerati come detriti fitti. L''innalzamento del suolo impedisce di essere Fiancheggiati da creature che si trovano ad altezze inferiori rispetto al bersaglio. Se il bersaglio si muove dopo aver creato un innalzamento del suolo, il suolo ritorna alla sua normale altezza alla fine del suo turno; altrimenti, rimane tale finché il bersaglio non si sposta o usa un''azione veloce per far ritornare il suolo alla normalità. Un innalzamento del suolo non può aumentare l''altezza del terreno di più di 1,5 metri. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/groundswell'
WHERE name = 'Innalzamento del Suolo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Riflessi parziale e Tempra nega (vedi testo)',
  spell_res = 'no',
  full_description = ': Questo incantesimo fa in modo che erba alta, erbacce ed altre piante si avviluppino intorno alle creature che si trovano nell’area d’effetto o che entrano nell’area. Le creature che falliscono il Tiro Salvezza assumono la condizione di Intralciate. Le creature che superano il Tiro Salvezza possono muoversi normalmente, ma se restano nell’area debbono effettuare il Tiro Salvezza un’altra volta alla fine del turno. Le creature che entrano nell’area debbono effettuare subito il Tiro Salvezza e chi lo fallisce termina il suo movimento assumendo la condizione di Intralciato. Le creature Intralciate possono tentare di liberarsi come azione di movimento, effettuando una prova di Forza o di Artista della Fuga. La CD della prova è uguale alla CD dell’incantesimo. L’intera area d’effetto è considerata terreno difficile mentre dura l’effetto.

Le piante sono rivestite da linfa irritante che crea un''irritazione dolorosa e pruriginosa sulle creature che le toccano. Le creature che entrano nell''area o vi terminano il loro turno devono superare un Tiro Salvezza su Tempra o diventano Inferme finché rimangono nell''area e per 1d4 round successivi. Questo è un effetto di veleno. 

Se le piante nell’area sono coperte di spine, quelli nell’area subiscono 1 danno ogni volta che falliscono il Tiro Salvezza contro Intralcio Debilitante o la prova fatta per liberarsi. A seconda della vegetazione locale potrebbero verificarsi altri effetti, a discrezione del GM. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sickening-entanglement/'
WHERE name = 'Intralcio Debilitante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Un raggio abbagliante della lunghezza di 90 cm, composto da una fiamma rossa incandescente, scaturisce dalla propria mano. Si impugna questo bagliore simile a una lama come se fosse una Scimitarra. Gli attacchi con la lama infuocata vengono considerati attacchi di contatto in mischia. La lama infligge 1d8 danni da fuoco +1 danno ogni 2 livelli dell''incantatore (massimo +10). Dal momento che la lama è immateriale, il modificatore di Forza non viene applicato ai danni. La Lama Infuocata può incendiare eventuali materiali combustibili come paglia, legno asciutto, tessuto e pergamena.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/flame-blade'
WHERE name = 'Lama Infuocata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo conferisce la capacità di conversare con creature associate all’elemento scelto, incluse le vere creature Elementali. Questo incantesimo conferisce il Sottotipo Elementale adatto alla versione dell’incantesimo lanciato. Lingua Elementale non garantisce una reazione amichevole; semplicemente rende possibile la comunicazione. Si può parlare con tutte le creature del tipo selezionato con un punteggio di Intelligenza di 1 o superiore, anche se queste non si capiscono l’un l’altra.

• Quando lanciato come incantesimo d’acqua, permette di parlare in Aquan e con ogni creatura che abbia il Sottotipo Acqua o una velocità di Nuotare.

• Quando lanciato come incantesimo d’aria, permette di parlare in Auran e con ogni creatura che abbia il Sottotipo Aria o una velocità di Volare.

• Quando lanciato come incantesimo del fuoco, permette di parlare in Ignan e con ogni creatura che abbia il Sottotipo Fuoco.

• Quando lanciato come incantesimo della terra, permette di parlare in Terran e con ogni creatura che abbia il Sottotipo Terra o una velocità di Scavare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-speech'
WHERE name = 'Lingua Elementale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = '1 giorno (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Toccando il terreno si maledice l''area con tre Pericoli innaturali, ognuno con GS 3 o inferiore. Non si incontra mai più di un pericolo alla volta.

Sebbene questo faccia apparire i pericoli frequentemente, le loro manifestazioni restano imprevedibili: non si può controllare quando inizino o finiscano i pericoli, né dove appariranno sul terreno maledetto. 

Maledire Terreno Inferiore può essere reso permanente con un incantesimo Permanenza lanciato da un incantatore di 9° livello o superiore al costo di 2.500 mo.

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/curse-terrain/'
WHERE name = 'Maledire Terreno Inferiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si conferisce ad una creatura la capacità di usare uno dei suoi attacchi naturali per aderire saldamente ad un avversario. Bisogna scegliere uno degli attacchi naturali della creatura (generalmente un artiglio o il morso). La creatura ottiene la capacità Afferrare con quell’attacco naturale, incluso il bonus +4 alle prove di Manovra in Combattimento per iniziare o mantenere la Lotta. Una creatura con attacchi naturali multipli può colpire l’avversario afferrato con gli altri attacchi naturali, ma non può attaccare altre creature.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/lockjaw'
WHERE name = 'Mascelle Serrate';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto può Scalare, spostarsi su superfici verticali oppure camminare sui soffitti, esattamente come un ragno. La creatura, che ne subisce l''effetto deve avere le mani libere per arrampicarsi in questo modo. Il soggetto ottiene una velocità di Scalare di 6 metri e Bonus Razziale +8 sulle prove di Scalare; inoltre, non ha bisogno di effettuare prove di Scalare per muoversi su una superficie verticale od orizzontale (anche se a testa in giù). Una creatura soggetta a Movimenti del Ragno mantiene il suo bonus di Destrezza alla CA (se posseduto) mentre si arrampica, e gli avversari non ottengono alcun bonus speciale per i loro attacchi contro di essa. Tuttavia, mentre si arrampica non può compiere alcuna azione di corsa.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/spider-climb'
WHERE name = 'Movimenti del Ragno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si può creare una barriera attorno ad un fuoco grande almeno quanto un fuoco da campo che ripara chiunque stia all’interno, finché il fuoco continua ad ardere. La barriera appare come una crepitante sfera di luce e fuoco chiaramente visibile, che illumina come una torcia. La barriera blocca la linea di visuale, conferendo Occultamento Totale alle creature da entrambi i lati della barriera. Gli oggetti o le creature che attraversano la barriera dall’esterno, subiscono 1d6 danni da fuoco e vengono avvolti da una luce dell’intensità di una torcia, per 1d6 minuti. Le creature così evidenziate sono pienamente visibili indipendentemente dalle condizioni di luce e non beneficiano di alcun tipo di Occultamento, magico o meno. Questa luce non è sufficientemente intensa per avere effetti speciali su Non Morti o creature vulnerabili alla luce. Le creature all’interno della barriera possono lasciarla senza penalità, ma se tentano di rientrarvi, subiscono le stesse conseguenze di chiunque altro. Se il fuoco al centro della barriera si estingue o viene spostato, l’incantesimo termina.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/campfire-wall'
WHERE name = 'Muro per Campo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Una crepitante nube temporalesca sferica vola nella direzione indicata e infligge danni da elettricità. Ha una velocità di Volare di 6 m con manovrabilità perfetta. Se entra nello spazio occupato da una creatura, il temporale si ferma per quel round e infligge 3d6 danni da elettricità alla creatura (Riflessi nega). Fornisce Occultamento (20% di probabilità di mancare) a chiunque sia all''interno e, la sua luce tremolante illumina l''area come una Candela.

La sfera si muove finché la si dirige attivamente (come azione di movimento); altrimenti resta immobile e crepita di fulmini. Può essere spostata da effetti di vento e si considera come creatura Piccola allo scopo di determinare come i venti la influenzano. La sfera non ha sostanza fisica e non può esercitare alcuna forza su creature o oggetti corporei. Scompare se esce dal raggio di azione dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aggressive-thundercloud/'
WHERE name = 'Nembo Aggressivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Dal punto indicato scaturisce ribollendo una banco di nebbia. La nebbia oscura ogni visuale, compresa la Scurovisione, oltre 1,5 metri. Una creatura che si trova entro un raggio di 1,5 metri gode di Occultamento (gli attacchi hanno una probabilità del 20% di mancare il bersaglio). Le creature che si trovano oltre i 1,5 metri godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e chi attacca non è in grado di usare la sua vista per localizzare il bersaglio).

Un vento moderato (16,5 o più km/h) disperde la nebbia in 4 round; un vento forte (31,5 o più km/h) la disperde in 1 round.

Questo incantesimo non funziona sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fog-cloud'
WHERE name = 'Nube di Nebbia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (vedi testo)',
  spell_res = 'no',
  full_description = ': Dal punto indicato scaturisce ribollendo una banco di nebbia. La nebbia oscura ogni visuale, compresa la Scurovisione, oltre 1,5 metri. Una creatura che si trova entro un raggio di 1,5 metri gode di Occultamento (gli attacchi hanno una probabilità del 20% di mancare il bersaglio). Le creature che si trovano oltre i 1,5 metri godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e chi attacca non è in grado di usare la sua vista per localizzare il bersaglio).

I vapori di questa nube sono tossici. Le creature viventi nella nube diventano Affascinate. Questa condizione dura finché una creatura rimane nella nube e per 1d4+1 round dopo averla abbandonata. Le creature che superano il Tiro Salvezza ma rimangono nella nube devono continuare a effettuare Tiri Salvezza ogni round nel proprio turno. 

Un vento moderato (16,5 o più km/h) disperde la nebbia in 4 round; un vento forte (31,5 o più km/h) la disperde in 1 round.

Questo incantesimo non funziona sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/euphoric-cloud/'
WHERE name = 'Nube Euforica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Occhio d''Aquila crea un sensore magico proprio sopra l’incantatore. Il sensore può apparire in qualsiasi punto sopra l’incantatore, fino ad un’altezza massima pari al raggio di azione dell’incantesimo. Da questo punto sopraelevato si può osservare come se si fosse realmente lì, ruotando il proprio punto di vista di 360°. Si percepisce con i propri sensi visivi. Un incantatore che usa Occhio d''Aquila può facilmente guardare ad una distanza considerevole. L’incantesimo non penetra le superfici solide, anche se non è intralciato da fogliame e cose simili.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/eagle-eye'
WHERE name = 'Occhio d''Aquila';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale',
  spell_res = 'si',
  full_description = ': Si fa in modo che qualsiasi creatura malata nell''area diventi estremamente contagiosa. Qualsiasi creatura colpita viene sopraffatta da un attacco di tosse violenta, che la rende Affaticata ed espone qualsiasi creatura entro 3 metri dalla creatura malata alle malattie che trasporta. Se il Tiro Salvezza riesce, la creatura è Affaticata per 1 round e non ha alcuna possibilità di infettare le creature vicine.

Fonte: Outbreak'
WHERE name = 'Ondata Epidemica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Mentre si è in forma di animale (come quando si usa Forma Selvatica o si è sotto l''effetto di metamorfosi), si può parlare normalmente, incluso lanciare incantesimi con componente verbale e si parla come quando si è normali. Si può lanciare questo incantesimo mentre si è in forma animale, usando componenti somatiche appropriate per la forma animale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/beastspeak/'
WHERE name = 'Parlata Bestiale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea un''appiccicosa palla di catrame bollente che si può scagliare contro i propri nemici con un attacco a distanza. Se la palla di catrame colpisce, infligge 1d4 danni da fuoco + il modificatore di Forza dell''incantatore, e schizza il bersaglio con catrame bollente e appiccicoso. Il catrame infligge 1d4 danni da fuoco ogni round al turno della creatura per i successivi 1d4 round e conferisce al bersaglio penalità -2 a Destrezza per quella durata. Se lo desidera, il bersaglio può usare un''Azioni di Round Completo per tentare di estinguere o raffreddare il catrame prima di subire il danno aggiuntivo. Estinguere o raffreddare il catrame richiede un Tiro Salvezza su Riflessi con CD 15 o almeno 4 litri di liquido non infiammabile. Rotolarsi per terra fornisce al bersaglio bonus +2 al Tiro Salvezza. Gettarsi in un lago o raffreddare magicamente il bersaglio termina automaticamente l''effetto. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/tar-ball'
WHERE name = 'Palla di Catrame';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto può camminare nell’aria come se camminasse su terreno meno stabile del terreno solido. Salire più in alto è come Scalare il fianco di una collina ma non ci si può sollevare a più di 30 centimetri da terra e non si può passare sopra i liquidi. L’angolazione massima di salita o di discesa è 45 gradi, a una velocità pari a metà di quella normale della creatura che sta camminando.

Quando si cammina sull''aria, si ignora il terreno difficile alto meno di 30 centimetri, non si attivano effetti basati sul peso (come le piastre a pressione) e le creature che tentano di seguire le tracce in aree attraversate con questo incantesimo subiscono penalità -10 alle prove di Percezione o Sopravvivenza. Per l''instabilità dell''aria su cui si cammina, la velocità è ridotta di 3 metri (fino a un minimo di 1,5 metri) e si subisce penalità -4 alle prove di Acrobazia, Cavalcare e Scalare.

Se si possiede 1 grado in Volare, la velocità non viene ridotta usando questo incantesimo e si possono attraversare liquidi a velocità dimezzata. Se si possiedono 5 gradi in Volare, si possono attraversare i liquidi a velocità piena e non si subiscono penalità alle Prove di Abilità.

Un forte vento (oltre 31,5 km/h) può spingere il soggetto o tenerlo bloccato. Alla fine del suo turno in ogni round, il soggetto che cammina nell’aria viene spinto di 1,5 metri per ogni 7,5 km/h di velocità del vento. La creatura può essere soggetta ad ulteriori penalità in caso di vento particolarmente forte o turbolento, per esempio può perdere il controllo del movimento, o subire danni fisici nel caso urti contro qualcosa.

Se l’incantesimo termina la sua durata mentre il soggetto è ancora in aria, la magia svanisce lentamente. Il soggetto scende a una velocità di 18 metri per round per 1d6 round. Se in quel lasso di tempo la creatura raggiunge il terreno, atterra senza problemi. Altrimenti, precipita per il resto della distanza, e subisce 1d6 danni ogni 3 metri di caduta. Poiché dissolvere un incantesimo fa sì che questo termini, il soggetto scende in questo modo anche nel caso in cui l’incantesimo Passo nell''Aria venga dissolto, ma non nel caso che sia negato da un campo antimagia.

È possibile lanciare Passo nell''Aria su una cavalcatura appositamente addestrata in modo che sia in grado di cavalcare nell’aria. È inoltre possibile addestrare una cavalcatura a muoversi con l’ausilio di Passo nell''Aria (conta come comando; vedi Addestrare Animali) con una settimana di lavoro e una prova di Addestrare Animali con CD 25.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/air-step/'
WHERE name = 'Passo nell''Aria';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': Pelle Coriacea rende la pelle di una creatura dura come corteccia. Questo effetto fornisce Bonus di Potenziamento +2 al Bonus di Armatura Naturale già esistente della creatura. Tale bonus aumenta di +1 ogni 3 livelli dell''incantatore oltre il 3°, fino a un massimo di +5 al 12° livello dell''incantatore.

Il Bonus di Potenziamento conferito da Pelle Coriacea si somma al Bonus di Armatura Naturale del bersaglio, ma non ad altri Bonus di Potenziamento all''Armatura Naturale. Una creatura priva di armatura naturale dispone di un bonus effettivo di armatura naturale pari a +0.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/barkskin'
WHERE name = 'Pelle Coriacea';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si avverte la Paura in chi si ha vicino, perce-pendola nell''aria attorno a sé. È possibile individuare creature Intimorite, Scosse, Impaurite, Spaventate, In Preda al Panico, Terrorizzate e Atterrite entro 9 metri, e si scopre all''istante il livello di Paura che provano. Si stabilisce in quale direzione si trovano rispetto a sé, ma non si percepisce quali quadretti occupino, né l''identità delle singole creature. Quando ci si trova entro 1,5 metri da una creatura di cui si percepisce la Paura, si individua precisamente la sua posizione, come con Percezione Cieca. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/s/sense-fear/'
WHERE name = 'Percepire Paura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Con un gesto d''invocazione si richiama un acquazzone battente. Per la durata dell’incantesimo, si applicano i seguenti effetti all’interno dell’area: i fuochi non magici vengono automaticamente estinti e tutte le creature e gli oggetti ottengono Resistenza al Fuoco 5. L''acqua evocata è conduttiva e, ogni volta che una creatura inzuppata subisce danni da elettricità, subisce 1 danno addizionale da elettricità. Al 6°, 12° e 18° livello, la resistenza al fuoco aumenta di 5 e il danno addizionale da elettricità aumenta di 1 punto.

Fonte: Dousing Rain'
WHERE name = 'Pioggia Estinguente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = 'fino all''atterraggio o 1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Non si subiscono danni da caduta (come per Caduta Morbida). Inoltre, ci si può muovere orizzontalmente fino a 1,5 metri in qualsiasi direzione per ogni 30 centimetri di caduta, alla velocità di 18 metri per round. Non si può usare questo incantesimo per guadagnare altezza, bisogna semplicemente scendere lungo direzioni durante la caduta. Se soggetti a vento forte o a qualsiasi altro effetto che fa salire di quota, si può approfittare di ciò per aumentare la distanza di planata. L''incantesimo termina quando i piedi toccano terra, indipendentemente dalla durata rimanente. Se l''incantesimo termina mentre si è ancora in aria, si cade normalmente per la distanza rimanente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/glide'
WHERE name = 'Planare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': I bersagli diventano in grado di respirare liberamente sott''acqua. Tuttavia, non possono più respirare aria. La durata deve essere suddivisa equamente tra tutte le creature toccate. Questo incantesimo non ha effetto sulle creature che sono già capaci di respirare sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aboleth-s-lung'
WHERE name = 'Polmoni da Aboleth';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La presa e la stabilità del soggetto diventano sicure, conferendo Bonus di Competenza +4 alle prove di Scalare, alle prove di Acrobazia per l''equilibrio e alla DMC contro tentativi di Riposizionare, Sbilanciare, Spingere e Trascinare. Mentre è sotto l''effetto di questo incantesimo, il bersaglio è anche immune alla Manovra in Combattimento Disarmare. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/certain-grip'
WHERE name = 'Presa Sicura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si infligge alla creatura bersaglio una fastidiosa e dolorosa eruzione cutanea. Il bersaglio è Infermo e subisce penalità –4 a Destrezza (questa penalità non può abbassare la Destrezza a meno di 0). Il bersaglio può impiegare un’azione di movimento per grattare furiosamente l’eruzione cutanea per rimuovere la condizione di Infermo (ma non la penalità a Destrezza) fino all’inizio del suo turno successivo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pox-pustules'
WHERE name = 'Pustole del Vaiolo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': La creatura che subisce l''effetto ottiene una vitalità e una resistenza fisica maggiori. L''incantesimo conferisce al soggetto Bonus di Potenziamento +4 a Costituzione, insieme a tutti i benefici che questo comporta per i Punti Ferita, Tiri Salvezza su Tempra, prove di Costituzione e così via. I punti ferita ottenuti attraverso un aumento temporaneo della Costituzione non sono Punti Ferita Temporanei, scompaiono quando la Costituzione del soggetto torna al livello normale, ma non devono essere perduti per primi come accade con i Punti Ferita Temporanei.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bear-s-endurance'
WHERE name = 'Resistenza dell''Orso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Questa Abiurazione fornisce ad una creatura una protezione limitata dai danni di uno qualunque dei cinque tipi di energia selezionato: acido, elettricità, freddo, fuoco o sonora. Il soggetto ottiene Resistenza all''Energia 10 contro il tipo di energia scelto, il che significa che ogni volta che la creatura è soggetta a quel tipo di danni (sia da una fonte naturale che da una fonte magica), quei danni sono ridotti di 10 prima di essere applicati ai Punti Ferita della creatura. Il valore della Resistenza all''Energia fornita aumenta a 20 al 7° livello fino ad un massimo di 30 all''11° livello. L''incantesimo protegge allo stesso modo anche l''Equipaggiamento del soggetto.

Resistere all''Energia assorbe solo i danni. Il soggetto potrebbe comunque subire sfortunati effetti collaterali nocivi.

Resistere all''Energia si sovrappone (senza sommarsi) a Protezione dall''Energia. Se un personaggio è sotto l''effetto di protezione dall''energia e di Resistere all''Energia, è l''incantesimo Protezione dall''Energia ad assorbire i danni finché non si esaurisce il suo potere.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/resist-energy'
WHERE name = 'Resistere all''Energia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Una pioggia di polvere, ghiaia e piccoli ciottoli riempie l’area, infliggendo 2d6 danni contundenti a tutte le creature nell’area. Questo danno viene inflitto una sola volta, quando viene lanciato l’incantesimo. Per il resto della durata dell’incantesimo, questi detriti coprono il terreno, rendendo l’intera area terreno difficile. Al termine della durata, le rocce scompaiono, senza ulteriori conseguenze (all’infuori del danno inflitto).

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-call'
WHERE name = 'Richiamare Pietre';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo provoca un immediato rimpicciolimento in una creatura Animale, dimezzando la sua altezza, la sua lunghezza e la sua larghezza e dividendo per 8 il suo peso. Questa diminuzione modifica la categoria di taglia della creatura alla successiva più piccola. Il bersaglio ottiene Bonus di Taglia +2 a Destrezza, penalità di taglia –2 a Forza (fino a un minimo di 1) e bonus +1 ai Tiri per Colpire e alla CA grazie alla sua taglia ridotta.

Modificatore di Taglia
I Modificatori di Taglia che si applicano al Tiro per Colpire ed alla Classe Armatura sono i seguenti: 

Taglia

Modificatore di Taglia

Colossale

–8

Mastodontica

–4

Enorme

–2

Grande

–1

Media

+0

Piccola

+1

Minuscola

+2

Minuta

+4

Piccolissima

+8

Danni Arma Media

Danni Arma Minuscola

Danni Arma Grande

1d2

—

1d3

1d3

1

1d4

1d4

1d2

1d6

1d6

1d3

1d8

1d8

1d4

2d6

1d10

1d6

2d8

1d12

1d8

3d6

2d4

1d4

2d6

2d6

1d8

3d6

2d8

1d10

3d8

2d10

2d6

4d8

Una creatura Animale Piccola la cui taglia diminuisca a Minuscola ha uno spazio di 75 cm e una portata naturale di 0 cm (che significa che deve entrare nel quadretto di un avversario per attaccare). Una creatura Grande la cui taglia diminuisca a Media ha uno spazio di 1,5 metri e una portata naturale di 1,5 metri. Questo incantesimo non modifica la velocità del bersaglio.

Tutto l’Equipaggiamento indossato o portato da una creatura viene similmente rimpicciolito da questo incantesimo.

Le armi da mischia e da tiro infliggono meno danni. Altre proprietà magiche non sono influenzate da questo incantesimo. Qualsiasi oggetto ridotto che non sia più in possesso della creatura ridotta (compreso un proiettile o un’arma da lancio) ritorna immediatamente alla sua taglia normale. Questo significa che le armi da lancio infliggono danni normali (i proiettili infliggono danni in base alla taglia dell’arma che li tira).

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reduce-animal'
WHERE name = 'Ridurre Animali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea un riparo di ragnatele leggermente appiccicose. Il riparo ha una porta incardinata abbastanza ampia da lasciar passare una creatura media. Le pareti opache del riparo misurano 2,5 cm di spessore e forniscono Copertura Totale a chi è dentro.

Solo le creature Piccolissime con Forza irrilevante possono rimanere intrappolate nelle ragnatele (inclusi gli sciami); tutte le altre creature possono liberarsi senza effettuare una prova di Forza o compiendo un''azione. Le ragnatele sono abbastanza appiccicose da trattenere ramoscelli, foglie, polvere, e gli altri oggetti leggeri, permettendo di occultare il riparo. Il riparo è impermeabile e isolato quando la porta è chiusa. La sua superficie ha Durezza 0 e 2 Punti Ferita per ogni quadretto con lato 1,5 metri di ragnatela. Subisce danni normali dal fuoco e brucia facilmente come il legno. Quando l''incantesimo termina, le ragnatele si decompongono rapidamente e scompaiono.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/web-shelter'
WHERE name = 'Riparo di Ragnatele';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '7 round',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Riscaldare il Metallo rende rovente il metallo. I metalli incustoditi non magici non ottengono Tiri Salvezza, mentre quelli magici hanno diritto a un Tiro Salvezza contro l’incantesimo. Un oggetto impugnato da una creatura usa il bonus al Tiro Salvezza di quella creatura a meno che il proprio non sia più alto.

Una creatura subisce danni da fuoco se il suo Equipaggiamento viene riscaldato. Subisce danni pieni se è colpita la sua armatura o se porta, impugna, indossa o tocca del metallo pari almeno ad un quinto del suo peso. Subisce invece danni minimi (1 o 2 danni; vedi tabella) se non indossa armatura di metallo.

Round

Temperatura del Metallo

Danni

1

Caldo

Nessuno

2

Molto caldo

1d4

3–5

Incandescente

2d4

6

Molto caldo

1d4

7

Caldo

Nessuno

Nel primo round di effetto dell’incantesimo, il metallo diventa caldo e sgradevole da toccare, ma non infligge danni, così come nell’ultimo round dell’incantesimo. Nel secondo (e nel penultimo) round, il calore intenso infligge danni e dolore. Nel terzo, quarto e quinto round, il metallo è incandescente e infligge danni superiori, secondo la tabella riportata a fianco.

Qualunque freddo intenso a sufficienza da danneggiare la creatura nega i danni da fuoco generati dall’incantesimo e viceversa, in proporzione di uno a uno. Se viene lanciato sott’acqua, Riscaldare il Metallo infligge danni dimezzati e fa ribollire l’acqua circostante.

Riscaldare il Metallo contrasta e dissolve Gelare il Metallo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/heat-metal'
WHERE name = 'Riscaldare il Metallo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '3 round',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Ristorare Inferiore dissolve qualunque effetto magico riduca uno dei Punteggi di Caratteristica del bersaglio oppure cura 1d4 danni temporanei a uno dei Punteggi di Caratteristica del bersaglio. Inoltre, elimina qualsiasi Affaticamento sofferto dal soggetto, e migliora una condizione da Esausto ad Affaticato. Non può ripristinare un risucchio di caratteristica permanente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/restoration'
WHERE name = 'Ristorare Inferiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello (I)',
  saving_throw = 'Riflessi nega (innocuo)',
  spell_res = 'no',
  full_description = ': Si crea una bassa onda d’acqua che trasporta il bersaglio sulla superficie dell’acqua o della terra. Quando si muove a livello del terreno, la velocità del bersaglio aumenta di 3 metri. Se va in discesa, la velocità aumenta, invece, di 6 metri, ma Risucchio non fornisce alcun bonus al movimento andando in salita. Quando si nuota, il Risucchio aumenta la velocità di Nuotare del bersaglio di 6 metri; se il bersaglio non ha una velocità di Nuotare, questo incantesimo conferisce una velocità di Nuotare di 6 metri.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/slipstream'
WHERE name = 'Risucchio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto diventa temporaneamente immune ai Veleni. Qualsiasi Veleno che si trovi nel suo sistema o a cui venga esposto nel corso della durata dell’incantesimo non ha effetto su di lui finché la durata dell’incantesimo non si è esaurita. Ritarda Veleno non cura eventuali danni che il veleno abbia già inflitto in precedenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/delay-poison'
WHERE name = 'Ritarda Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 giorno',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il bersaglio diventa temporaneamente immune alle Malattie. Qualsiasi Malattia alla quale si trova esposto, mentre l''incantesimo è attivo, non ha effetto sul bersaglio finché gli effetti dell''incantesimo non terminano. Se il bersaglio è già stato infettato da una Malattia, deve superare una prova di livello dell''incantatore contro la CD della
Malattia per sospenderla per la durata dell''incantesimo, altrimenti lo influenza normalmente. Ritarda malattia non guarisce nessun danno che una Malattia potrebbe avere già causato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/delay-disease'
WHERE name = 'Ritarda Malattia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/2 livelli',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': L''area di questo incantesimo è ricoperta da brina gelida e infligge 2d6 danni da freddo a tutte le creature in essa. Le creature danneggiate inizialmente dall''incantesimo devono superare un Tiro Salvezza su Tempra o diventano Barcollanti per 1 round. L''area rimane gelata per la durata dell''incantesimo. Ogni creatura che inizia il proprio turno nell''area dell''incantesimo subisce 1d6 danni da freddo (Tiro Salvezza su Tempra per dimezzare) ma non diventa Barcollante anche se fallisce il Tiro Salvezza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/frost-fall'
WHERE name = 'Rovina Gelida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si potenzia la capacità che una creatura ha di ferire un avversario in base al numero di volte che lo ha già ferito con un attacco naturale. Ogni volta che la creatura colpisce con successo un avversario con un attacco naturale, il soggetto ottiene bonus cumulativo +1 ai danni inflitti all''avversario con gli attacchi naturali (bonus massimo +5). Se un attacco non va a segno, il bonus al danno di tutti gli attacchi ritorna a +0.

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/natural-rhythm'
WHERE name = 'Ritmo Naturale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round (vedi testo)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si toglie il respiro dai polmoni di una creatura, causandole danni e lasciandola incapace di parlare, utilizzare soffi o lanciare incantesimi con componenti verbali. Se il bersaglio fallisce il suo Tiro Salvezza subisce 2d6 danni e non è in grado di parlare, utilizzare Soffi o compiere qualsiasi altra azione che richieda la respirazione, mentre un visibile flusso d''aria fuoriesce dalla sua bocca e entra in quella dell''incantatore.

Se, mentre è soggetto agli effetti dell''incantesimo, il bersaglio si sposta fuori dalla sua portata o dalla linea di effetto dell''incantatore, l''incantesimo termina immediatamente. Questo incantesimo non ha effetto sulle creature che non necessitano di respirare aria. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/steal-breath'
WHERE name = 'Rubare Respiro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': La creatura trasmutata diventa più saggia. L''incantesimo conferisce al soggetto Bonus di Potenziamento +4 alla Saggezza, aggiungendo i normali benefici alle Abilità basate sulla Saggezza. Chierici, Druidi, Paladini e Ranger (e altri incantatori che si affidano alla Saggezza) che ricevono Saggezza del Gufo non guadagnano ulteriori incantesimi bonus per l''incremento alla Saggezza, ma le CD dei Tiri Salvezza per i loro incantesimi aumentano.

Fonte: http://www.d20pfsrd.com/magic/all-spells/o/owl-s-wisdom'
WHERE name = 'Saggezza del Gufo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Scolpire Legno permette di plasmare un pezzo di legno già esistente in qualsiasi forma che si adatti ai propri scopi. Sebbene sia possibile realizzare bauli, porte e altri oggetti in maniera grezza, i dettagli non sono realizzabili, e c’è una probabilità del 30% che una forma che necessiti di parti mobili finisca per non funzionare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wood-shape'
WHERE name = 'Scolpire Legno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Un globo di fuoco bruciante rotola in qualsiasi direzione indicata e brucia coloro che colpisce. Si muove a una velocità di 9 metri per round e, come parte del suo movimento, può salire o saltare fino a 9 metri per colpire un bersaglio. Se entra in uno spazio occupato da una creatura, smette di avanzare per il resto del round e le infligge 3d6 danni da fuoco, sebbene il soggetto possa negare i danni superando un Tiro Salvezza su Riflessi. La Sfera Infuocata è in grado di rotolare oltre le barriere più basse di 120 cm. Incendia eventuali sostanze infiammabili che tocca ed illumina l’area in cui si trova con la stessa intensità di una torcia.

La sfera si muove fino a quando la si continua a dirigerla (con un’azione di movimento), altrimenti rimane immobile e continua a bruciare; può essere spenta con qualsiasi metodo che spegnerebbe un normale fuoco delle sue dimensioni. La sua superficie ha una consistenza spugnosa e morbida che non causa altri danni che quelli da fuoco, e non è in grado di spingere via creature che le si oppongono o di abbattere grossi ostacoli. La Sfera Infuocata svanisce se esce dal raggio di azione dell’incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/flaming-sphere'
WHERE name = 'Sfera Infuocata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (oggetto) o Riflessi nega',
  spell_res = 'sì',
  full_description = ': Una turbinante sfera di vento rotola in qualsiasi direzione indicata dall''incantatore, scagliando con violenza coloro che colpisce. La sfera viene considerata a tutti gli effetti come un''area di Vento Molto Forte, applicando penalità -4 agli attacchi con le armi a distanza che la attraversano. La sfera si sposta di 9 metri per round. Come parte del suo movimento, può sollevarsi o saltare fino a 9 metri di altezza per colpire un bersaglio. Se entra in uno spazio che contiene una creatura di Taglia Media o inferiore, cessa di muoversi per quel round e genera un violento colpo di vento per spingere la creatura. Il BMC della sfera per le Manovre in Combattimento Spingere utilizza il livello dell''incantatore invece del Bonus di Attacco Base, con bonus +2 per il suo punteggio di Forza (14). Che la manovra Spingere abbia effetto o meno, la creatura subisce 1d6 danni contundenti Non Letali dall''attacco. Se il tentativo di Spingere fallisce, la creatura è comunque soggetta ai venti molto forti causati dalla sfera finché rimane nello stesso quadretto da essa occupato. Una Sfera di Raffiche di Vento rotola sopra qualsiasi oggetto o barriera che sia alta meno di 1,2 metri. 

La sfera si muove finché l''incantatore la dirige attivamente (un''azione di movimento), altrimenti si limita a rimanere ferma. Una Sfera di Raffiche si dissipa immediatamente se fuoriesce dal raggio d''azione dell''incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/gusting-sphere'
WHERE name = 'Sfera di Raffiche di Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Gli occhi ardono come carboni roventi, consentendo di incendiare oggetti o avversari con uno sguardo.

Come azione standard finché dura l''effetto di questo incantesimo, si può dirigere lo Sguardo Bruciante contro una singola creatura o un oggetto entro 9 metri da sé. I bersagli devono effettuare un Tiro Salvezza su Tempra o subiscono 1d6 danni da fuoco. Gli oggetti incustoditi non ottengono alcun Tiro Salvezza. Le creature colpite devono superare un Tiro Salvezza su Riflessi o Prendono Fuoco. Ogni round, le creature incendiate devono tentare un Tiro Salvezza su Riflessi per spegnere le fiamme; il fallimento comporta altri 1d6 danni da fuoco. Anche gli oggetti infiammabili indossati da una creatura devono effettuare i Tiri Salvezza o subiscono gli stessi danni come la creatura. Se una creatura o un oggetto sono già incendiati, non subiscono ulteriori danni da Sguardo Bruciante.

Si noti che questo incantesimo non conferisce un vero attacco con lo sguardo: i nemici e gli alleati non corrono il pericolo di prendere fuoco semplicemente incontrando lo sguardo dell''incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/burning-gaze'
WHERE name = 'Sguardo Bruciante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si richiamano i Vegetali nei paraggi come aiuto in combattimento. Questo incantesimo è inutile se nell''area non ci sono Vegetali da comandare. Si può impiegare un''Azione Veloce e/o un''Azione Standard ogni turno per comandare uno degli attacchi seguenti. Il Bonus di Attacco o il BMC per questi attacchi è pari al proprio Bonus di Attacco Base + il proprio modificatore di Saggezza. Si concede bonus +1 ogni tre livelli dell''incantatore (massimo +5) ai tiri per i danni dovuti a questo incantesimo. I Soldati delle Terre Selvagge non provocano mai Attacchi d''Opportunità, e non contano come alleati per il fiancheggiamento o altri scopi. 

• Albero: Un albero effettua attacchi in mischia con una portata di 3 metri dal proprio tronco. Un colpo infligge danni pari a 1d8 + il modificatore di Saggezza dell''incantatore. L''albero può altrimenti tentare una Manovra in Combattimento di Spingere, Trascinare o Riposizionare con la stessa portata, ma non può muoversi.

• Sottobosco o Siepe: Agendo come una creatura Media, un quadretto di sottobosco o siepe tenta una Manovra in Combattimento di Lottare contro un avversario dentro o adiacente a quel quadretto. Un sottobosco fitto ottiene bonus +2 alla DMC. Il sottobosco non può muovere la Lotta o Immobilizzare un nemico, ma può infliggere una quantità di danni pari a 1d4 + il modificatore di Saggezza dell''incantatore superando una prova di Lotta contro un nemico afferrato. La DMC del sottobosco è 5 + il suo BMC. Se non si riesce a comandare al sottobosco di mantenere la Lotta, quest''ultimo rilascia l''avversario.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wilderness-soldiers'
WHERE name = 'Soldati delle Terre Selvagge';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = 'sì (innocuo)',
  full_description = ': Si entra in qualsiasi tempesta magica o naturale e si comunica direttamente con il potere del vento e della pioggia. Questo incantesimo permette al potere della tempesta di riempirti, concedendoti la conoscenza e le immagini di ciò che si trova alla sua portata. Finché si rimane all''interno della tempesta, ci si può concentrare su di essa per 1 minuto per determinare se altre creature viventi con un punteggio di Intelligenza pari o superiore a 3 sono state catturate dalla tempesta entro 120 metri piedi dall''incantatore. A causa della natura dell''incantesimo, non è necessario tentare prove di Concentrazione contro venti violenti o tempeste quando si lancia l''incantesimo, ma altri elementi che potrebbero interferire con il lancio dell''incantesimo richiedono prove come di consueto. Mentre l''incantesimo è in vigore, non è più necessario tentare tiri di concentrazione a causa del vento o delle tempeste per gli incantesimi che lanci o su cui ci si concentra.

Dopo aver individuato le creature con questo incantesimo concentrandosi per 1 minuto, si può continuare a concentrarsi per ottenere ulteriori informazioni. Dopo essersi concentrato per un altro round, l''incantesimo rivela tramite il vento e la pioggia la presenza di qualsiasi creatura vivente di taglia Piccola o superiore con Intelligenza pari o superiore a 3 entro 120 metri. Dopo 2 round consecutivi di concentrazione, si scopre la distanza approssimativa delle forme di vita rilevate dalla tua posizione attuale. Dopo 3 round di concentrazione, la pioggia e il vento consentono di determinare la direzione approssimativa di ciascuna forma di vita. Una volta che ci si è concentrato in questo modo per 3 round, si ottiene un bonus pari alla metà del proprio livello di incantatore sul prossimo tiro di Iniziativa durante la durata dell''incantesimo.

Fonte: Storm Sight'
WHERE name = 'Tempestavisione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Questo incantesimo fa brillare la mano dell''incantatore di una luminosità azzurrina. L''attacco di contatto in mischia infligge 4d6 danni da freddo e rende il bersaglio Barcollante per 1 round. Se l''attacco è un colpo critico, il bersaglio resta, invece, Barcollante per 1 minuto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/frigid-touch'
WHERE name = 'Tocco Glaciale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': L’incantatore o una creatura consenziente toccata lasciano una scia di odore che solo le creature indicate al momento del lancio possono individuare. Per queste creature è veramente facile seguire questa traccia. Esse ottengono Bonus di Competenza +20 alle prove di Sopravvivenza effettuate per seguire le tracce della creatura che le ha lasciate. Le creature indicate che possiedono la capacità speciale Fiuto ottengono un ulteriore Bonus di Competenza +10 alle prove di Saggezza o Sopravvivenza per seguire la traccia.

Inoltre, si possono lasciare messaggi olfattivi lungo il percorso. Ogni parola o emozione nel messaggio richiede l’uso di un’azione di movimento nello stesso punto. Le creature indicate che cercano di capire questo messaggio devono effettuare un’altra prova di Sopravvivenza con CD 20, con penalità –1 per ogni parola o emozione nel messaggio per comprenderlo. Le creature non possono ottenere benefici da questo odore se non possono usare, o non possiedono, l’olfatto. Le creature possono usare questo incantesimo per riattraversare a ritroso un sotterraneo, un labirinto o aree simili anche se la creatura lasciando la traccia è passata più volte su uno stesso punto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/scent-trail'
WHERE name = 'Traccia Olfattiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = NULL,
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': I gesti suadenti e la musica (o il canto, o le litanie) dell’incantatore costringono Animali e Bestie Magiche a rimanere immobili a fissarlo. Questo incantesimo funziona solo su creature dotate di Intelligenza 1 o 2. Bisogna tirare 2d6 per determinare il numero totale di DV di creature Affascinate. Vengono colpiti per primi i bersagli più vicini e si procede progressivamente finché non ci sono altri soggetti nel raggio di azione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-trance'
WHERE name = 'Trance Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = 'permanente finché non viene scaricato (I)',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Trappola di Fuoco crea un’esplosione infuocata nel momento in cui un intruso apre un oggetto protetto dalle interdizioni della trappola. Trappola di Fuoco può proteggere qualsiasi oggetto chiudibile.

Quando si lancia Trappola di Fuoco si sceglie un punto dell’oggetto che diventa il centro dell’incantesimo. Quando qualcuno che non sia l’incantatore tenta di aprire l’oggetto, un’esplosione infuocata si propaga nell’area per un raggio di 1,5 metri calcolato a partire dal centro dell’incantesimo. Le fiamme infliggono 1d4 danni da fuoco +1 danno per livello dell’incantatore (massimo +20). L’oggetto protetto dalla trappola non viene danneggiato dall’esplosione.

Un oggetto protetto con Trappola di Fuoco non può avere una seconda chiusura o un altro incantesimo protettivo attivo su di sé. Un incantesimo Scassinare non ha effetto su Trappola di Fuoco. Un Dissolvi Magie fallito non fa scattare la detonazione. Sott’acqua, questa interdizione infligge danni dimezzati e crea una grossa nuvola di vapore.

Si è in grado di usare l’oggetto protetto senza far scattare la trappola, cosa possibile anche a qualunque individuo su cui l’incantesimo sia stato specificamente regolato al momento del lancio. “Regolare” significa normalmente scegliere una parola di comando che si può condividere con i propri amici.

Le trappole magiche come trappola di fuoco sono difficili da individuare e disattivare. Un personaggio con Scoprire Trappole può usare la sua Abilità Percezione per trovare la trappola e l''Abilità Disattivare Congegni per impedirne il funzionamento. La CD in ogni caso è di 25 + il livello dell’incantesimo (CD 27 per una Trappola di Fuoco di un Druido o CD 29 per la versione arcana).

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-trap'
WHERE name = 'Trappola di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L''incantatore trasforma un oggetto non perfetto nel suo equivalente perfetto. Una spada normale diventa una spada perfetta, un''Armatura di Cuoio diventa un''Armatura di Cuoio Perfetta, un set di Arnesi da Scasso diventa di Arnesi da Scasso Perfetti, e così via. Se l''oggetto bersaglio non ha un equivalente perfetto, l''incantesimo non ha effetto. Si possono influire 50 munizioni come se fossero un''arma. L''incantatore stabilisce se l''aspetto dell''oggetto cambia per rispecchiare questo aumento in qualità. 

La componente materiale per l''incantesimo è rappresentata da reagenti magici di valore pari alla differenza di prezzo tra un oggetto normale e il suo equivalente perfetto (normalmente 300 mo per un''arma, 150 mo per un''armatura o 50 mo per un attrezzo). Se un oggetto ha diverse opzioni di perfezione (come un''arma doppia, o uno scudo chiodato che potrebbe essere reso un''arma o un''armatura perfetta), l''incantatore sceglie un''opzione dell''oggetto su cui influire (sebbene si possa lanciare un nuovo incantesimo per influire su un''altra opzione).

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/masterwork-transformation'
WHERE name = 'Trasformazione Perfetta';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 ora/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Se si possiede la capacità speciale Cambiare Forma, è possibile tornare alla propria vera forma come Azione Veloce. Se una creatura non è consapevole della vera forma dell''incantatore, quando questi utilizza l''incantesimo per riassumerla e attaccare la creatura nello stesso round, la creatura perde il bonus di Destrezza alla CA contro il primo attacco dell''incantatore.

Fonte: https://www.d20pfsrd.com/magic/all-spells/q/quick-change'
WHERE name = 'Trasformazione Rapida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si indeboliscono le difese del bersaglio contro il Veleno. Il bersaglio subisce penalità -4 ai Tiri Salvezza contro Veleno, e i Veleni che affliggono il bersaglio continuano a farlo per altri 2 incrementi di frequenza (per esempio, il veleno di aspide nera dura 8 round invece di 6, e l''arsenico 6 minuti invece di 4).

I tentativi di curare il bersaglio avvelenato con abilità o magia subiscono penalità -4. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pernicious-poison'
WHERE name = 'Veleno Pernicioso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si trasforma l''Animale toccato in un ibrido bipede tra la sua forma originaria e quella Umanoide, così come la forma ibrida di un licantropo è un incrocio tra una forma Umanoide e una Animale. La Taglia, il tipo e i punteggi di caratteristica dell''Animale non cambiano.
Perde gli attacchi naturali tranne morso (se lo possedeva come Animale), tutti i tipi di movimento diversi dalla velocità sul terreno e gli attacchi speciali dipendenti dai suoi attacchi naturali. Un paio dei suoi arti sono in grado di maneggiare oggetti e armi così come mani umane; agli Animale senza arti come i serpenti cresce temporaneamente un paio di braccia. L''Intelligenza della creatura aumenta a 3, e questa ottiene la capacità di parlare un linguaggio conosciuto dall''incantatore. Non è considerato competente in alcuna arma manufatta. Può attaccare con colpi senz''armi, infliggendo danni senz''armi come una creatura della sua Taglia (a meno che non abbia un attacco con il morso, che è un attacco naturale). 

Animale Antropomorfico può essere reso permanente con un incantesimo Permanenza lanciato da un incantatore di 11° livello o superiore al costo di 7.500 mo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/anthropomorphic-animal'
WHERE name = 'Animale Antropomorfico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Se il bersaglio di questo incantesimo fallisce il suo Tiro Salvezza su Tempra, le aree di terreno in pietra e in terra per lui funzionano come un pantano pronto ad inghiottirlo, che cerca di tirarlo giù e lo danneggia se cerca di spostarsi attraverso un simile terreno.

Se il bersaglio è una creatura, considerare tutte le zone di terra e pietra che attraversa come terreno difficile. Inoltre, per ogni 1,5 metri che ha percorso su questo terreno, la creatura subisce 1d6 danni. Le creature con una velocità di Scavare o con la capacità Scorrere sulla Terra non sono influenzate da Vincolare alla Terra.

Se lanciato su di un oggetto incustodito che è posato su terreno di pietra o di terra, questo lo avvolge, inghiottendolo. È richiesta una prova di Forza con CD 15 per liberare l''oggetto dalla terra o dalla pietra che cercano di inghiottirlo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/binding-earth'
WHERE name = 'Vincolare alla Terra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo o 1 ora/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'si',
  full_description = ': Questo incantesimo permette di trasportare istantaneamente creature normali non magiche e di Tipo Animale da un luogo ad un altro. Ci sono due modi per usare quest''incantesimo: inviare permette di mandare istantaneamente un animale tenuto in mano in un luogo nelle vicinanze, mentre ricevere permette di lanciare l''incantesimo in anticipo su un animale ed evocarlo successivamente nel luogo in cui si trova l''incantatore.

Inviare: Questo incantesimo trasporta istantaneamente l''animale, fino a una destinazione specificata, la cui distanza può essere pari a un massimo di 7,5 m + 1,5 m ogni 2 livelli. Le creature e le forze magiche non possono essere teletrasportate. Non si può spostare un animale sul Piano Etereo. Si può inviare l''animale in qualsiasi quadretto entro il raggio d''azione e non è necessaria linea di visuale con il luogo bersaglio. È possibile collocare l''animale all''aperto o in un contenitore, in una tasca o perfino in mano a qualcun altro. Se non c''è posto nello spazio scelto (perché è troppo piccolo o perché c''è già qualcos''altro) o se la persona non vuole o non si aspetta l''animale nelle sue mani, quest''ultimo appare invece a terra entro il quadretto del bersaglio. Si può trasportare l''animale in elevazione al di sopra del pavimento purché la destinazione sia entro il limite totale della distanza dell''incantesimo.

Bisogna avere un''idea precisa dell''ubicazione e della disposizione del posto che si vuole far raggiungere. Più l''immagine mentale è chiara, più ci sono possibilità che il teletrasporto funzioni. Aree di forte energia fisica o magica possono rendere il teletrasporto più difficile o perfino impossibile.

Per vedere quanto il teletrasporto funzioni bene, tirate un d% e consultare la tabella. Fate riferimento alle informazioni che seguono per la spiegazione dei termini impiegati nella tabella.

Familiarità

Sul Bersaglio

Fuori Bersaglio

Area Simile

Errore

Molto Familiare

01–97

98–99

100

—

Studiato Attentamente

01–94

95–97

98–99

100

Visto per Caso

01–88

89–94

95–98

99–100

Visto una Volta

01–76

77–88

89–96

97–100

Falsa Destinazione

—

—

81–92

93–100

• Familiarità
• Molto Familiare: è un posto dove si è stati molto spesso e dove ci si sente come a casa.

• Studiato Attentamente: è un posto che si conosce bene, perché lo si può vedere, perché ci si è stati spesso o perché lo si è studiato per almeno 1 ora con altri mezzi.

• Visto per Caso: è un posto visto più di una volta ma che non è molto familiare.

• Visto una Volta: è un posto visto una volta sola, magari con Scrutare.

• Falsa Destinazione: è un posto che non esiste, o come se ci si fosse teletrasportati in una locazione altrimenti familiare che non esiste più o che è stata completamente modificata tanto da non essere più familiare. Quando si viaggia verso una falsa destinazione, occorre tirare 1d20+80 per ottenere un risultato sulla tabella invece di tirare un d%, dal momento che non si ha speranza di arrivare a una vera destinazione o nemmeno di essere fuori bersaglio.

• Sul Bersaglio: L''animale appare esattamente dove si voleva.

• Area Simile: L''animale si ritrova in un''area che tematicamente e visivamente è simile all''area bersaglio. Solitamente è il luogo più vicino fra quelli simili esistenti all''interno del raggio di azione. Se non ce ne sono, l''incantesimo non ha effetto.

• Fuori Bersaglio: L''animale appare incolume a una distanza e in una direzione casuale dalla destinazione. La distanza fuori bersaglio è un d% della distanza che si voleva percorrere e la direzione viene determinata a caso.

• Errore: L''animale teletrasportato viene "rimescolato". Subisce 1d10 danni e si tira di nuovo sulla tabella per vedere dove finisce. Per questo secondo tiro, occorre tirare 1d20+80. Ogni volta che esce un "Errore", l''animale subisce ulteriori danni e bisogna ritirare.

Ricevere: Si può preparare un animale in anticipo per portarlo a sé lanciando l''incantesimo su di esso e assegnandogli un attivatore mentale per completarlo. Non è necessaria una linea di visuale con l''animale per portarlo a sé, ma deve trovarsi entro una distanza pari a 7,5 m + 1,5 m ogni due livelli. Completare l''incantesimo è un''azione veloce che ha le stesse restrizioni di una componente dell''incantesimo intellettiva. Si può apportare un animale in questo modo anche se qualcuno che lo tiene non vuole lasciare che gli venga preso. Una volta apportato l''animale, l''incantesimo termina.

Non si può inviare o ricevere un animale in uno spazio protetto da un Campo Antimagia, un Globo di Invulnerabilità o un effetto simile che impedisce gli effetti magici; se si tenta di farlo, l''incantesimo è sprecato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/apport-animal'
WHERE name = 'Apporta Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': Si ottengono alcune delle qualità positive di un Animale. La propria forma base e la Taglia rimangono pressappoco immutate, ma alcune parti del proprio corpo vengono alterate. L''armatura o l''equipaggiamento indossato si adattano alla nuova forma per la durata dell''incantesimo. Quando si lancia Aspetto Animale Superiore, si ottengono o due primi aspetti alla volta o entrambi gli aspetti dello stesso animale, come descritto in seguito:

Gorilla
• Le braccia diventano lunghe, flessibili e forti come quelle di un grosso Gorilla. Il dado del danno senz''armi aumenta di un grado e si ottiene Bonus di Competenza +4 alle prove di Manovra in Combattimento quando si effettua la manovra Lottare o Riposizionare.

• Si ottiene Bonus di Competenza +2 alle prove di Percezione e Bonus di Competenza +1 ai Tiri Salvezza su Tempra

Lontra
• Le mani e i piedi diventano palmati e i polmoni ottengono maggiore capacità, permettendo di muoversi nell''acqua con facilità. Sì ottiene una velocità di Nuotare pari a metà della propria velocità e tutti i benefici di avere una tale velocità. Inoltre, si può trattenere il fiato per 4 round per punto di Costituzione prima di essere costretti ad effettuare una prova di Costituzione per continuare a trattenere il fiato.

• La velocità di Nuotare aumenta fino alla piena velocità normale e non sono necessarie prove di Concentrazione per lanciare incantesimi sott''acqua.

Lucertola degli Alberi
• Le mani e i piedi ottengono artigli e cuscinetti per scalare. Si ottiene una velocità di scalare pari a metà della propria velocità normale e tutti i benefici associati.

• Si ottiene Bonus di Competenza +4 alle prove di Forza.

Procione
• Le mani diventano estremamente agili e i piedi ovattati. Si ottiene Bonus di Competenza +2 alle prove di Disattivare Congegni, Furtività e Rapidità di Mano.

• I Bonus di Competenza per le prove di Disattivare Congegni, Furtività e Rapidità di Mano aumentano a +4.

Rana
• Le gambe diventano più lunghe e muscolose. Si ottiene Bonus di Competenza +4 alle prove di Acrobazia e si salta sempre come se si avesse una rincorsa iniziale.

• Si ottiene una velocità di Nuotare pari a metà della propria velocità normale e tutti i benefici associati.

Raptor
• Le gambe diventano adatte alla corsa, come quelle di un Deinonico. Si ottiene Bonus di Potenziamento +6 metri alla propria velocità base.

• Il Bonus di Potenziamento alla velocità aumenta a +9 metri e si ottiene il beneficio del talento Correre.

Scimmia
• Le mani e le braccia diventano agili come quelle di una Scimmia. Si ottiene Bonus di Competenza +4 alle prove di Scalare e si possono scagliare oggetti come se si possedesse il talento Lanciare Oggetti.

• Si ottiene Bonus di Competenza +4 alle prove di Acrobazia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-aspect'
WHERE name = 'Aspetto Animale Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 giorno/livello',
  saving_throw = 'Volontà parziale',
  spell_res = 'si',
  full_description = ': Si impianta una repulsione nella mente del soggetto, costringendolo ad evitare un oggetto o un luogo. Si deve scegliere uno specifico oggetto o luogo. Un luogo scelto in questo modo non può essere più grande di un cubo con spigolo di 15 m. L''avversione è totalmente nella mente del bersaglio, quindi l''oggetto o il luogo non è soggetto a nessun effetto magico. Se il bersaglio fallisce il Tiro Salvezza non può avvicinarsi a meno di 18 m dall''oggetto o luogo scelto. Compie qualsiasi ragionevole sforzo per evitare l''oggetto dell''avversione. Per esempio, se l''oggetto dell''avversione è un ponte ma un incendio nella foresta si sta avvicinando e probabilmente ucciderebbe il bersaglio, quest''ultimo ignora l''avversione e attraversa il ponte per salvarsi. Se il bersaglio deve ignorare le condizioni dell''avversione, è nauseato finché non smette di violarla.

Se il bersaglio supera il Tiro Salvezza, diventa invece Infermo mentre si trova entro 18 m dall''oggetto o dal luogo, ma non è costretto ad allontanarsi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aversion/'
WHERE name = 'Avversione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '3 round',
  range = 'contatto',
  duration = 'finché non viene attivato o distrutto',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo permette di trasformare un calappio in una trappola magica. Il calappio può essere fatto con una pianta flessibile (come una liana), una cinghia o una corda. Nel momento in cui si lancia l’incantesimo, l’oggetto a forma di corda si fonde con l’ambiente circostante (Percezione con CD 23 per un personaggio con la capacità di Scoprire Trappole). Una delle estremità del calappio deve essere legata in un cappio che si stringerà attorno a uno o più degli arti di qualsiasi creatura vi metta il piede.

Se nelle vicinanze c’è un albero forte e flessibile, il calappio può essere assicurato ad esso. L’incantesimo provoca la flessione dell’albero, che viene rilasciato nel momento in cui il cappio si attiva, infliggendo 1d6 danni alla creatura intrappolata e sollevandola da terra per l’arto o gli arti intrappolati. Se nessun albero del genere è presente, la corda si limita a stringersi attorno alla creatura senza infliggere danni ma rendendola Intralciata.

Il Calappio è di natura magica. Per liberarsi, la creatura intrappolata deve superare una prova di Artista della Fuga con CD 23 o una prova di Forza con CD 23, entrambe sono azioni di round completo. Il calappio ha CA 7 e 5 Punti Ferita. Una fuga riuscita dal calappio scioglie il cappio, ponendo fine all’incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/snare'
WHERE name = 'Calappio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': L''incantatore infonde nei bersagli una frazione della sua natura mitica. Si considerano creature mitiche per quanto riguarda le capacità di Percorso, gli incantesimi e altri effetti che funzionano diversamente per le creature mitiche. Ciò non concede ai bersagli le Categorie Mitiche o qualsiasi uso del Potere Mitico, semplicemente conferisce loro un notevole vantaggio quando altri usano capacità che funzionano diversamente per le creature mitiche. Per lanciare questo incantesimo, l''incantatore deve essere un personaggio mitico almeno di 1° Categoria.

Fonte: http://www.d20pfsrd.com/mythic/mythic-magic/mythic-spells/share-glory/'
WHERE name = 'Condividere Gloria';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '24 ore',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si può condividere la propria attitudine ad un particolare linguaggio con altre creature. I bersagli possono leggere, comprendere e parlare al meglio delle sue capacità un qualunque linguaggio già conosciuto dall''incantatore. Per ogni 5 livelli posseduti, si può concedere l''uso di qualunque linguaggio conosciuto, fino ad un massimo di 5 linguaggi al 20° livello. I bersagli devono avere la capacità fisica di articolare suoni, compiere gesti o impiegare qualsiasi altro metodo che chi parla usa per intavolare un discorso reale con gli altri.

Se i bersagli non possiedono le facoltà mentali per comprendere un vero linguaggio, ottengono comunque una sufficiente conoscenza per reagire e compiere anche comandi estremamente complessi o consigli impartiti con il linguaggio (sia scritto che orale). Dato, però, che l''incantesimo non fornisce ai bersagli capacità superiori di ragionamento, ma solo un maggiore vocabolario temporaneo, la persona che impartisce istruzioni a creature non senzienti deve prestare attenzione a rimuovere ogni ambiguità o congettura.

Allo stesso modo, questo incantesimo non tocca la natura essenziale dei bersagli o la loro attitudine verso l''incantatore o chiunque altro, tanto che convincerli a compiere veramente quelle istruzioni potrebbe richiedere una negoziazione, delle minacce o una vera e propria corruzione.

La durata di questo incantesimo si può dividere in intervalli da 1 ora tra le creature toccate. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/share-language'
WHERE name = 'Condividere Linguaggio Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Il soggetto contrae una Malattia come Devastazione Vischiosa, Febbre da Gallina, Febbre Lurida, Fuoco Mentale, Infermità Accecante, Lebbra, Malattia Rossa, Peste Bubbonica o Tremarella che lo colpisce immediatamente (senza periodo di incubazione). Usate la frequenza indicata e la CD del Tiro Salvezza per determinare effetti ulteriori.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/contagion'
WHERE name = 'Contagio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 giorno/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si affligge il bersaglio con una sete inestinguibile. Se fallisce il Tiro Salvezza, il bersaglio comincia a Disidratarsi. Gli effetti di questo incantesimo non possono infliggere Danni Non Letali oltre ai Punti Ferita del bersaglio. Non c''è bevanda che possa contrastare questo effetto, anche se il bersaglio subisce comunque gli altri normali effetti dall''assunzione di liquidi (come i veleni o le pozioni). Coppa di Polvere può essere rimosso con un incantesimo Desiderio, Desiderio Limitato, Miracolo, Rimuovi Maledizione o Spezzare Incantamento, ma gli effetti subiti dalla Disidratazione devono essere curati con mezzi normali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cup-of-dust'
WHERE name = 'Coppa di Polvere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si può prendere un pezzo dal corpo di una creatura morta e usarlo per creare una mappa che riveli i luoghi di oggetti di valore conosciuti dalla creatura quando era ancora in vita.

Questo pezzo lo si deve tagliare da sé e la creatura non deve essere morta da più di 24 ore prima di aver lanciato l''incantesimo. Non si può lanciare questo incantesimo su una creatura che non abbia un corpo fisico, e la porzione rimossa deve essere una superficie piana come un lembo di pelle o di carapace. La mappa creata è accurata in base alle Conoscenze che la creatura aveva al momento della sua morte. Rivela il posto di una fonte di tesoro ogni tre livelli dell''incantatore posseduti. Anche ogni inesattezza o falsa informazione posseduta dalla creatura viene rappresentata sulla mappa. Allo stesso modo, la mappa non può rendere conto dei cambiamenti avvenuti dopo la morte della creatura. Nel crearla, si deve scegliere la scala della mappa, optando tra vicino (ad esempio uno o due livelli di dungeon), locale (ad esempio una valle o una comunità) o ampia (ad esempio una regione o più). La mappa rivela i luoghi di ciò che la creatura stimava essere di maggior valore nell''area. A seconda della creatura, la mappa può rivelare una fonte di cibo saporito, appropriati aiutanti o anche il proprio tesoro.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/create-treasure-map'
WHERE name = 'Creare Mappa del Tesoro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 ora/livello (I)',
  saving_throw = 'Riflessi parziale',
  spell_res = 'sì',
  full_description = ': La vegetazione che copre il terreno all’interno dell’area di effetto diventa resistente e appuntita, senza cambiare il suo aspetto esteriore.

Nelle zone di terra brulla sono bulbi e radici ad agire in questo modo. Solitamente, crescita di spine può essere lanciato in qualunque area all’aperto, eccetto che in mezzo agli specchi d’acqua, al ghiaccio, alla neve fitta, in un deserto sabbioso o sulla nuda roccia. Qualunque creatura si sposti a piedi all’interno dell’area di effetto subisce 1d4 danni perforanti per ogni 1,5 metri di movimento nell’area spinosa.

Qualsiasi creatura che subisce danni da questo incantesimo deve anche superare un Tiro Salvezza su Riflessi o subisce ferite ai piedi e alle gambe, che dimezzano la sua velocità sul terreno. Questa penalità alla velocità dura per 24 ore o finché la creatura ferita non riceve un incantesimo di Cura (che le restituisce anche i Punti Ferita perduti), o una medicazione delle ferite di 10 minuti da parte di un altro personaggio che abbia superato una prova di Guarire contro la CD dell’incantesimo.

Un personaggio con Scoprire Trappole può usare la sua Abilità Percezione per trovare la trappola e l''Abilità Disattivare Congegni per impedirne il funzionamento. La CD è di 25 + il livello dell’incantesimo, oppure CD 28 nel caso di Crescita di Spine. Crescita di Spine è una trappola magica che non può essere disattivata con l’abilità Disattivare Congegni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/spike-growth'
WHERE name = 'Crescita di Spine';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Appoggiando la mano su una creatura vivente, si infonde energia positiva che cura 2d8 danni +1 danno per livello dell’incantatore (massimo +10). Dal momento che i Non Morti sono animati da energia negativa, questo incantesimo infligge loro danni piuttosto che curare le loro ferite. Una creatura Non Morta può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-moderate-wounds'
WHERE name = 'Cura Ferite Moderate';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vedi testo',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Crescita Vegetale produce effetti diversi a seconda della versione scelta. 

• Crescita Rigogliosa: Il primo effetto è di far crescere la normale vegetazione (prati, rovi, cespugli, rampicanti, cardi, alberi, viti) entro un raggio di azione lungo (120 metri + 12 metri per livello dell''incantatore) fino a farla diventare fitta e rigogliosa. I vegetali si espandono fino a formare un intrico di vegetazione fitto come una giungla attraverso il quale è necessario farsi strada a forza. La velocità diminuisce a 1,5 metri, o a 3 metri per le creature di Taglia Grande o superiore. L''area deve avere alberi e cespugli al suo interno perché questo incantesimo funzioni. Se l''incantesimo viene lanciato in un''area che è già sotto l''influsso di un incantesimo che interessa i vegetali, come Intralciare o Muro di Spine, qualunque CD implicata con questi incantesimi aumenta di 4. Questo bonus viene garantito per un giorno dopo il lancio di Crescita Vegetale.
A propria scelta, l''area interessata può essere un cerchio con il raggio di 30 metri, un semicerchio con un raggio di 45 metri o un quarto di cerchio del raggio di 60 metri. Si può anche designare quali zone all''interno dell''area non vengono colpite.

• Fertilità: Il secondo effetto di questo incantesimo colpisce tutti i vegetali nel raggio di 750 metri, aumentando la loro possibilità capacità di dare frutti di un terzo oltre la norma nel corso dell''anno successivo.

Crescita Vegetale contrasta Rimpicciolire Vegetali.

Questo incantesimo non ha effetto sulle creature Vegetali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/plant-growth'
WHERE name = 'Crescita Vegetale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m più 1,5 m/2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Si elimina la capacità di una creatura di avvelenare gli altri, sia essa intrinseca o tramite armi avvelenate. Ogni volta che una creatura colpita infliggerebbe Veleno con un attacco, un incantesimo o altro metodo (comprese le aure e altri metodi costanti), tale veleno viene automaticamente neutralizzato. Ciò non conferisce al soggetto dell''incantesimo alcuna resistenza al veleno stesso.

Fonte: Detoxify'
WHERE name = 'Detossificare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si è in grado di ammaliare un Animale e comandarlo con ordini semplici come “attacca”, “corri” o “riporta”. Ordini suicidi o autodistruttivi (compreso l''ordine di attaccare una creatura di due o più categorie di taglia più grande della sua) vengono semplicemente ignorati.

Dominare Animali stabilisce un legame mentale tra sé e l''Animale dominato. L''Animale può essere comandato tramite ordini mentali silenziosi fin quando rimane entro il raggio di azione. Non si ha bisogno di vedere l''Animale per controllarlo, non si ricevono dati sensoriali diretti dall''Animale, ma si sa cosa sta provando in quel momento. Dal momento che si sta dirigendo l''Animale con la propria Intelligenza, esso sarà in grado di compiere imprese solitamente oltre la sua portata, come manipolare oggetti con le zampe o con la bocca. Non è necessario mantenere la Concentrazione esclusivamente sul controllo dell''Animale a meno che non gli si ordini di fare qualcosa che normalmente non sarebbe in grado di fare. Cambiare le proprie istruzioni o impartire un nuovo ordine all''Animale dominato equivale a cambiare direzione all''incantesimo, e quindi è un''azione di movimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dominate-animal'
WHERE name = 'Dominare Animali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea una connessione istintiva tra i bersagli. Ognuno di essi può percepire gli stati emotivi generali degli altri, il che consente loro di comunicare concetti emotivi di base (come ad esempio avvisarsi a vicenda del pericolo dovuto all''aumento dello stress). Una volta lanciato l''incantesimo sui soggetti, la distanza tra loro e l''incantatore non influisce sull''incantesimo finché si trovano sullo stesso piano di esistenza. Se un soggetto lascia il piano o muore, l''incantesimo cessa di funzionare per lui. 

Fonte: Pack Empathy'
WHERE name = 'Empatia del Branco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'permanente',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo affligge la creatura toccata, rendendola ostile al mondo naturale. Tutti gli Animali hanno un atteggiamento iniziale ostile verso il bersaglio. I famigli, essendo Bestie Magiche, non sono interessati da questo incantesimo, ma i Compagni Animali lo sono. Se si possiede un compagno animale, questo non diventa ostile, ma finché si rimane maledetti, subisce penalità –2 ai Tiri per Colpire, alle Prove di Abilità e ai Tiri Salvezza. Subisce, inoltre, penalità –10 alle prove di Sopravvivenza per il fatto che il tempo atmosferico e l’ambiente stessi sembrano cospirare per creargli problemi.

Esilio dalla Natura può essere rimosso con Desiderio, Desiderio Limitato, Miracolo, Rimuovi Maledizione o Spezzare Incantamento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/nature-s-exile'
WHERE name = 'Esilio dalla Natura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Si rilascia un''esplosione di ortiche spinose piene di acido. Le creature coinvolte nell''esplosione subiscono 3d6 danni più 1d6 danni da acido nel round successivo. Chi supera il Tiro Salvezza dimezza il danno dall''esplosione iniziale e non subisce danni nel round successivo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/burst-of-nettles'
WHERE name = 'Esplosione di Ortiche';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'nessuno o Volontà nega (oggetto)',
  spell_res = 'no o sì (oggetto)',
  full_description = ': Estinguere Fuoco viene normalmente utilizzato per spegnere incendi nelle foreste e altri tipi di fuochi su vasta scala. Spegne tutti i fuochi non magici all’interno della sua area. Inoltre, dissolve eventuali incantesimi basati sul fuoco, ma bisogna superare una prova di dissolvere (1d20 +1 per livello dell’incantatore, massimo +15) contro ogni incantesimo per dissolverlo. La CD per dissolvere questi incantesimi è di 11 + il livello dell’incantatore che ha lanciato l’incantesimo di fuoco.

Le creature con il Sottotipo Fuoco che si trovano all’interno dell’area di questo incantesimo subiscono 1d6 danni per livello dell’incantatore (massimo 10d6, non è ammesso Tiro Salvezza).

In alternativa, si può usare l’incantesimo su un singolo oggetto magico che crei o controlli le fiamme. L’oggetto perde tutte le sue proprietà magiche basate sul fuoco per 1d4 ore, a meno che non superi un Tiro Salvezza su Volontà. (Gli Artefatti sono immuni a questo effetto).

Fonte: http://www.d20pfsrd.com/magic/all-spells/q/quench'
WHERE name = 'Estinguere Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'Concentrazione',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Funziona come Estremità Affilata, tranne che interessa più armi e richiede Concentrazione. Si scelgono le armi, ed è possibile influenzare una sola arma per creatura. Se l''arma della creatura esce dal raggio di azione dell''incantesimo, l''incantesimo termina per quell''arma.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/badger-s-ferocity'
WHERE name = 'Ferocia del Tasso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale III';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si amplifica significativamente la capacità del bersaglio di percepire con l''olfatto la presenza di sangue. Il bersaglio è considerato come se disponesse della capacità universale dei mostri Fiuto, ma solo allo scopo di percepire e individuare le creature ferite al di sotto dei loro Punti Ferita massimi. Le creature i cui Punti Ferita sono dimezzati o soggette a danno da Sanguinamento sono considerate come tracce forti ai fini di questa capacità. 

Gli Orchi, e qualsiasi creatura in preda all''Ira, guadagnano Bonus di Morale +2 ai Tiri per Colpire e per i danni contro le creature che sono in grado di fiutare grazie a questo incantesimo, o Bonus di Morale +4 se il sangue del bersaglio viene considerato una traccia forte. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blood-scent'
WHERE name = 'Fiutare Sangue';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Fondersi nella Pietra consente di immergere il proprio corpo e il proprio Equipaggiamento all''interno di un blocco di pietra. Quest''ultimo deve essere sufficientemente grande da contenervi in tutte e tre le dimensioni. Quando il lancio dell''incantesimo è stato completato, l''incantatore e fino a 50 kg di Equipaggiamento si fondono con la roccia. Se solo una di queste condizioni non viene rispettata, l''incantesimo fallisce ed è sprecato.

Una volta all''interno della roccia si rimane in contatto, anche se in modo labile, con la superficie della roccia con cui si è fusi. Si rimane in grado di percepire lo scorrere del tempo e di lanciare incantesimi su se stessi dall''interno della roccia. Non si riesce a vedere nulla di ciò che accade al di fuori della roccia, ma si riesce a sentire ciò che accade intorno. Danni fisici minori inflitti alla roccia non sono in grado di ferire, ma se essa viene parzialmente distrutta (fino al punto di non poter più stare al suo interno), si viene espulsi e si subiscono 5d6 danni. La totale distruzione della roccia causa l''immediata espulsione e si rischia di morire sul colpo se non si supera un Tiro Salvezza su Tempra con CD 18. E anche se si supera il Tiro Salvezza, comunque si subiscono 5d6 danni.

In qualsiasi momento prima della fine dell''incantesimo, si può uscire dalla pietra dalla stessa superficie da cui si è entrati. Se la durata ha termine o l''incantesimo viene dissolto prima che si esca volontariamente dalla roccia in cui ci si trova, si viene espulsi violentemente e si subiscono 5d6 danni.

I seguenti incantesimi, se utilizzati sulla roccia in cui ci si trova, sono in grado di provocare danni: 

• Pietra in Carne espelle infliggendo 5d6 danni.

• Scolpire Pietra infligge 3d6 danni senza espulsione.

• Trasmutare Roccia in Fango espelle e può uccidere all''istante se non si supera un Tiro Salvezza su Tempra con CD 18, nel qual caso si viene semplicemente espulsi.

• Passapareti, infine, espelle dalla roccia senza danni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/meld-into-stone'
WHERE name = 'Fondersi nella Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (e Volontà speciale, vedi testo)',
  spell_res = 'sì',
  full_description = ': Si trasforma l''Animale in una Bestia Magica Piccola, creando una giovane versione magica dello stesso per un breve periodo. Mentre è in questa forma, il bersaglio ha solo i DV (Punti Ferita massimi), e subisce penalità -4 a Forza, Costituzione, Intelligenza e Saggezza (minimo 1). La creatura ottiene inoltre Bonus di Taglia +4 alla Destrezza e Bonus di Armatura Naturale +2. 

Le creature non malvagie che tentano di attaccare una creatura in questa forma devono superare un Tiro Salvezza su Volontà (usando la CD dell''incantesimo) per superare sensi protettivi e di colpa verso la giovane creatura dall''aspetto innocente. Se fallisce il Tiro Salvezza, non può procedere con l''attacco, quella parte di azione è persa, e non può attaccare direttamente la creatura trasformata per la durata dell''incantesimo o finché il bersaglio dell''incantesimo non la attacca. Questa parte di incantesimo è un effetto di influenza mentale. Le creature malvagie non hanno scrupoli nell''attaccare il bersaglio di questo incantesimo, di fatto, alcune creature particolarmente efferate potrebbero andare dritte per la loro strada e colpire il bersaglio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pup-shape'
WHERE name = 'Forma di Cucciolo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'no',
  full_description = ': Questo incantesimo sfrutta il potere delle stagioni per proteggere il bersaglio e fornirgli alcuni bonus. Questo incantesimo ha quattro effetti differenti. Chi lancia l''incantesimo può scegliere uno qualsiasi dei quattro effetti seguenti, ma può cambiare l''effetto come azione standard che riduce la durata totale rimanente di 1 ora. 

• Primavera: Il bersaglio viene avvolto da leggeri viticci, culminanti in una corona di bellissimi fiori chiari. Mentre l''incantesimo rimane attivo, il bersaglio è immune agli effetti di Sanguinamento e recupera 1 Punto Ferita a round ogni volta che scende sotto 0 Punti Ferita, finché il bersaglio è ancora vivo. Questo lo stabilizza. Per ogni Punto Ferita recuperato in questo modo, la durata totale rimanente dell''incantesimo viene ridotta di 1 ora.

• Estate: Il bersaglio viene circondato da minuscoli granelli di luce. Mentre l''incantesimo rimane attivo, la velocità base del bersaglio aumenta di 3 metri. Il bersaglio può invece aumentare la sua velocità base di 9 metri per 1 round riducendo la durata totale rimanente dell''incantesimo di 1 ora.

• Autunno: Un mantello di foglie d''autunno appare sul bersaglio. Mentre l''incantesimo rimane attivo, il bersaglio ottiene Bonus Morale +2 ai Tiri Salvezza di Tempra. Il bersaglio può decidere di tirare due volte qualsiasi Tiro Salvezza contro Malattia o Veleno e tenere il risultato migliore riducendo la durata totale rimanente dell''incantesimo di 1 ora.

• Inverno: Un frullio di neve e aria fredda circonda il bersaglio. Mentre l''incantesimo rimane attivo, il bersaglio supera automaticamente qualsiasi prova di Acrobazia effettuata per evitare di cadere mentre si muove lungo superfici strette o scivolose. Il bersaglio può muoversi liberamente attraverso il terreno difficile per 1 round riducendo la durata totale rimanente dell''incantesimo di 1 ora. Il terreno difficile creato tramite la magia influenza normalmente il bersaglio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/ward-of-the-season'
WHERE name = 'Interdizione della Stagione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi parziale (vedi testo)',
  spell_res = 'sì',
  full_description = ': Si crea un potente getto d''aria in grado di scagliare in aria un avversario. Se il bersaglio fallisce il Tiro Salvezza su Riflessi, la forza dell''aria gli infligge 2d6 danni contundenti e lo fa volare in aria per un numero di metri pari a 1,5 x il livello dell''incantatore. Se incontra un oggetto solito (come un soffitto), il bersaglio colpisce l''oggetto allo stesso modo in cui farebbe con una normale caduta. Dopo che l''esplosione d''aria è terminata, il bersaglio cade (a meno che non voli), subendo il normale danno da caduta. Superare il Tiro Salvezza significa che il bersaglio subisce metà del danno dall''aria ma non ne viene spostato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/air-geyser/'
WHERE name = 'Geyser d''Aria';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si assume la forma di una creatura di Taglia Piccola o Media di tipo parassita. Se la forma che si assume ha una una qualunque delle seguenti capacità, si assumono anche queste: Fiuto, Nuotare 9 metri, Scalare 9 metri, Scurovisione 18 metri, Stoccata, Visione Crepuscolare e Volare 9 metri (manovrabilità media). Non si guadagna la completa immunità agli effetti di influenza mentale, ma si ottiene un Bonus di Resistenza +2 a tutti i tiri salvezza contro tali effetti.

• Parassita Piccolo: Se si assume la forma di un parassita di taglia Piccola, si ottiene bonus di taglia +2 a Destrezza e bonus di armatura naturale +2.

• Parassita Medio: Se si assume la forma di un parassita di taglia Media, si ottiene bonus di taglia +2 a Forza e un bonus di armatura naturale +3.

* solo nell''ambientazione di Golarion, non fa parte del regolamento PRD.

Fonte: Vermin Shape I'
WHERE name = 'Forma Parassitica I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1d3 giorni',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si riveste il bersaglio di funghi necrotici che rendono la sua carne soffice e friabile. Funghi velenosi, funghi della pelle e altri funghi disgustosi spuntano sulla sua pelle. Il bersaglio subisce 1d3 danni a Carisma. Ogni attacco fisico contro il bersaglio aggiunge automaticamente 1d6 danni da Sanguinamento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fungal-infestation'
WHERE name = 'Infestazione Micotica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'Riflessi parziale o nega (vedi testo)',
  spell_res = 'no',
  full_description = ': Questo incantesimo fa in modo che erba alta, erbacce ed altre piante si avviluppino intorno alle creature che si trovano nell''area d''effetto o che entrano nell''area. Le creature che falliscono il Tiro Salvezza assumono la condizione di Intralciate. Le creature che superano il Tiro Salvezza possono muoversi normalmente, ma se restano nell''area debbono effettuare il Tiro Salvezza un''altra volta alla fine del turno. Le creature che entrano nell''area debbono effettuare subito il Tiro Salvezza e chi lo fallisce termina il suo movimento assumendo la condizione di Intralciato. Le creature Intralciate possono tentare di liberarsi come azione di movimento, effettuando una prova di Forza o di Artista della Fuga. La CD della prova è uguale alla CD dell''incantesimo. L''intera area d''effetto è considerata terreno difficile mentre dura l''effetto.

Se le piante nell''area sono coperte di spine, quelli nell''area subiscono 1 danno ogni volta che falliscono il Tiro Salvezza contro Intralcio Bruciante o la prova fatta per liberarsi. A seconda della vegetazione locale potrebbero verificarsi altri effetti, a discrezione del GM.

Inoltre l''incantesimo dà fuoco al fogliame. Una creatura che inizia il suo turno Intralciata dall''incantesimo subisce 4d6 danni da fuoco (Riflessi dimezza), mentre una creatura che inizia il suo turno nell''area ma non è Intralciata subisce 2d6 danni da fuoco (Riflessi nega). Il fumo che sale dalle viti oscura parzialmente la visibilità. Le creature possono vedere chiaramente le cose nel fumo entro 1,5 metri, ma gli attacchi contro qualsiasi cosa più lontana nel fumo devono lottare con l''Occultamento (20% di probabilità di mancare il bersaglio). Quando la durata dell''incantesimo termina, i rampicanti bruciano completamente.

Fonte: Burning Entanglement'
WHERE name = 'Intralcio Bruciante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Al completamento dell''incantesimo, e in seguito una volta per round, si è in grado di richiamare una saetta verticale larga 1,5 m e lunga 9 m, che infligge 3d6 danni da elettricità. Il fulmine si getta dall''alto e colpisce qualunque bersaglio si indichi entro il raggio di azione (misurato rispetto alla propria posizione). Qualunque creatura nel quadretto di bersaglio o sul percorso del fulmine è soggetta al danno.

Il fulmine non deve essere chiamato immediatamente al completamento dell''incantesimo: si possono compiere altre azioni, anche lanciare altri incantesimi, prima di invocare il fulmine. Ogni round dopo il primo si può usare un''azione standard (concentrandosi sull''incantesimo) per chiamare un fulmine. Si può chiamare un numero totale di fulmini pari al proprio livello dell''incantatore (massimo 10 fulmini).

Se ci si trova all''aperto e in un''area interessata da una tempesta, se sta piovendo, se ci sono vento o nuvole minacciose, condizioni di caldo–umido, oppure un tornado (anche un Turbine creato da un Djinni o da un elementale dell''aria almeno di taglia Grande), ciascun fulmine infligge 3d10 danni da elettricità invece di 3d6.

Questo incantesimo funziona anche al chiuso o sotto terra, ma non sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/call-lightning'
WHERE name = 'Invocare il Fulmine';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Riflessi parziale (vedi testo)',
  spell_res = 'no',
  full_description = ': Questo incantesimo fa in modo che erba alta, erbacce ed altre piante si avviluppino intorno alle creature che si trovano nell’area d’effetto o che entrano nell’area. Le creature che falliscono il Tiro Salvezza assumono la condizione di Intralciate. Le creature che superano il Tiro Salvezza possono muoversi normalmente, ma se restano nell’area debbono effettuare il Tiro Salvezza un’altra volta alla fine del turno. Le creature che entrano nell’area debbono effettuare subito il Tiro Salvezza e chi lo fallisce termina il suo movimento assumendo la condizione di Intralciato. Le creature Intralciate possono tentare di liberarsi come azione di movimento, effettuando una prova di Forza o di Artista della Fuga. La CD della prova è uguale alla CD dell’incantesimo. L’intera area d’effetto è considerata terreno difficile mentre dura l’effetto.

I vegetali crescono anche spinosi e possono scagliare le spine fino a 4,5 metri. Le creature che si avvicinano a 4,5 metri dall''area dell''incantesimo sono attaccate una volta al loro turno dai vegetali animati. I vegetali usano il livello dell''incantatore come loro Bonus di Attacco Base e aggiungono il modificatore al punteggio della caratteristica dell''incantatore (Intelligenza per i Fattucchieri; Saggezza per Druidi, Ranger e Sciamani) al Tiro per Colpire. Una volata di spine conta come un''arma da lancio e infligge 2d6 danni perforanti se va a segno. Una creatura che entra nell''area dell''incantesimo o vi termina il suo turno, subisce automaticamente 2d6 danni perforanti. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/thorny-entanglement/'
WHERE name = 'Intralcio Spinoso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Il legame con il proprio Compagno Animale diventa più forte. Finché si rimane in linea di visuale con il proprio Compagno Animale, si può comunicare con lui telepaticamente come se si condividesse un linguaggio. Inoltre, finché si rimane in linea di visuale con il Compagno Animale, lo si può "spingere" come Azione Veloce anziché di Movimento e non è necessario superare una prova di Addestrare Animali per gestirlo. Tali prove riescono automaticamente. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/companion-mind-link'
WHERE name = 'Legame Mentale con il Compagno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L’oggetto toccato proietta una luce di intensità pari a quella della piena luce del giorno in un raggio di 18 metri. Tale illuminazione aumenta il livello della luce per altri 18 metri di un grado (buio diviene luce fioca, luce fioca diviene luce normale, la luce normale diviene luce intensa). Le creature che subiscono penalità dalla luce intensa le subiscono mentre si trovano in un raggio di 18 metri da questa luce magica. Nonostante il suo nome, questo incantesimo non è equivalente alla luce del giorno per quanto riguarda le creature che vengono danneggiate o distrutte dalla luce intensa.

Se l’incantesimo viene lanciato su un piccolo oggetto che viene successivamente posto al di sotto o all’interno di una copertura in grado di bloccare la luce, gli effetti dell’incantesimo vengono bloccati finché la copertura non viene rimossa.

Luce Diurna lanciato in un’area di buio magico (o viceversa) viene momentaneamente negato, e nelle aree in cui i due effetti si sovrappongono tornano le normali condizioni di luce.

Luce Diurna contrasta o dissolve qualsiasi incantesimo di oscurità di livello pari o inferiore, come Oscurità.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/daylight'
WHERE name = 'Luce Diurna';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si avvolge una creatura in una cortina turbinante di forte vento urlante. Il soggetto non viene mai fermato o portato via dai forti venti di tempesta o di minore forza (naturali o magici) e i Tiri per Colpire a distanza contro il soggetto subiscono penalità –4. Le creature Minuscole o più piccole devono superare un Tiro Salvezza su Tempra per riuscire a toccare o attaccare in mischia il soggetto. Il fallimento butta a terra Prono l’attaccante e lo spinge via dal soggetto per 1,5 metri per livello dell’incantatore. Questo movimento può attraversare i quadretti di altre creature senza influire su di esse e senza provocare Attacchi di Opportunità, ma la creatura subisce 3d6 Danni Non Letali, più 1d6 se colpisce un oggetto solido che le blocchi il movimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cloak-of-winds'
WHERE name = 'Manto dei Venti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m ogni livello)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (vedi testo)',
  spell_res = 'vedi testo',
  full_description = ': Il miasma virulento crea nebbia simile a una Nube di Nebbia, tranne per il fatto che i vapori portano la contaminazione della malattia. Le creature viventi subiscono penalità –4 ai Tiri Salvezza contro gli effetti delle malattie finché rimangono all''interno della nube e per 1d4+1 round dopo averla lasciata. Questo effetto dell''incantesimo consente un Tiro Salvezza su Tempra per negarlo ed è soggetto alla resistenza agli incantesimi. Una creatura che supera il suo Tiro Salvezza contro la nebbia (o ignora la nebbia a causa della Resistenza agli Incantesimi) non viene influenzata e non ha bisogno di effettuare ulteriori Tiri Salvezza anche se rimane nella nebbia.

Fonte: Virulent Miasma'
WHERE name = 'Miasma Virulento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': I soggetti possono Scalare, spostarsi su superfici verticali oppure camminare sui soffitti, esattamente come un ragno. Le creature, che ne subiscono l''effetto devono avere le mani libere per arrampicarsi in questo modo. I soggetti ottengono una velocità di Scalare di 6 metri e Bonus Razziale +8 sulle prove di Scalare; inoltre, non hanno bisogno di effettuare prove di Scalare per muoversi su una superficie verticale od orizzontale (anche se a testa in giù). Le creature soggette a Movimenti del Ragno Collettivo mantengono il loro bonus di Destrezza alla CA (se posseduto) mentre si arrampicano, e gli avversari non ottengono alcun bonus speciale per i loro attacchi contro di essa. Tuttavia, mentre si arrampicano non possono compiere alcuna azione di corsa.

La durata di questo incantesimo si può dividere in intervalli da 10 minuti tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/spider-climb'
WHERE name = 'Movimenti del Ragno Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Quando questo incantesimo viene lanciato su una trappola, ne migliora uno specifico elemento, scelto al momento del lancio. L''incantatore può migliorare la trappola in uno dei modi seguenti (ciascuno dei quali alza il GS della trappola di +1). 

• Incrementare di +5 la CD della prova di Percezione richiesta per scoprire la trappola.

• Incrementare di +5 la CD della prova di Disattivare Congegni richiesta per disarmare la trappola.

• Incrementare di +2 il Bonus di Attacco o del Tiro Salvezza della trappola.

Per poter lanciare questo incantesimo su una trappola, l''incantatore deve essere a conoscenza della sua esistenza e della sua precisa ubicazione. Una trappola può ricevere un solo miglioramento per volta, per mezzo di questo incantesimo. Lanciarlo una seconda volta cambia il miglioramento applicato alla trappola senza aggiungerne altri. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/improve-trap'
WHERE name = 'Migliora Trappola';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si forma una cortina di vento verticale e invisibile, spessa 60 cm e di considerevole forza. È un''esplosione roboante abbastanza forte da spazzare via qualsiasi uccello più piccolo di un''aquila o da strappare via fogli di carta e materiali simili dalle mani di un individuo colto di sorpresa. (Un Tiro Salvezza su Riflessi permette al soggetto di mantenere la presa sull''oggetto). Le creature volanti di taglia Minuscola e Piccola non sono in grado di attraversare la barriera. Oggetti non assicurati e lembi di vestiti volano in alto quando vengono investiti da un Muro di Vento. Frecce e quadrelli vengono deviati verso l''alto e mancano il bersaglio, mentre qualsiasi altra arma a distanza normale che attraversa il muro ha una probabilità del 30% di mancare il bersaglio. (Un grosso macigno scagliato da un gigante, una macchina da assedio e altre grosse armi a distanza non ne subiscono l''effetto). I gas, molti soffi gassosi e le creature in Forma Gassosa non possono attraversare la barriera (la barriera tuttavia non può nulla contro le creature Incorporee).

Il muro deve essere verticale, ma si può dargli forma in qualsiasi percorso continuo lungo il terreno a piacimento. È possibile creare una barriera cilindrica o quadrata per proteggere un punto specifico da ogni lato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wind-wall'
WHERE name = 'Muro di Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello (I)',
  saving_throw = 'Volontà dubita (se si interagisce)',
  spell_res = 'no',
  full_description = ': Si fa apparire l''area attorno all''accampamento come un intrico di foglie minacciose e inaccessibili, o si simula un''altra caratteristica inospitale in base al terreno circostante. Le creature all''esterno dell''area non possono percepire alcuna attività svolta all''interno: non possono sentire l''odore di fuochi da campo o di cibo cucinato, non possono udire conversazioni, rumori forti o incantesimi che vengono lanciati e non possono nemmeno percepire calore o raffiche di vento provenire dall''area. Quelli all''interno dell''area possono vedere fuori normalmente. Quando una creatura entra nell''area dell''incantesimo, può vedere ogni cosa normalmente dentro e attorno all''area.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/hide-campsite'
WHERE name = 'Nascondere Campo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo o 10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Si elimina qualunque tipo di Veleno nella creatura o nell’oggetto toccato. Se il bersaglio è una creatura, occorre effettuare una prova di livello dell’incantatore (1d20 + livello dell’incantatore) contro la CD di ciascun Veleno che affligge il bersaglio. Il successo significa che il Veleno è neutralizzato. Una creatura avvelenata non subisce più alcun effetto collaterale dal Veleno e qualunque effetto temporaneo ha termine, ma l’incantesimo non inverte effetti istantanei come i danni ai Punti Ferita, i danni temporanei alle caratteristiche o gli effetti che non scompaiono da soli.

Invece, questo incantesimo può neutralizzare il Veleno in una creatura velenosa o in un oggetto per 10 minuti per livello, a propria scelta. Se viene lanciato su una creatura, la creatura riceve la possibilità di effettuare un Tiro Salvezza su Volontà per negarne l’effetto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/neutralize-poison'
WHERE name = 'Neutralizza Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si è in grado di comunicare con le normali piante e le creature di Tipo Vegetale, ponendo loro domande e ricevendo risposte. Le percezioni di un vegetale riguardo all''ambiente circostante sono limitate, e non è quindi in grado di fare descrizioni dettagliate (né di riconoscere) le creature o di rispondere a domande riguardo a eventi che hanno avuto luogo al di là delle sue immediate vicinanze. Questo incantesimo non rende le creature Tipo Vegetale più amichevoli o disposte a collaborare rispetto al normale. Inoltre, i Tipo Vegetale più intelligenti tendono ad essere concisi ed evasivi nelle loro risposte, mentre quelli più stupidi a dire cose insensate. Se la creatura Tipo Vegetale è amichevole, è possibile farle svolgere alcuni favori o servizi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/speak-with-plants'
WHERE name = 'Parlare con i Vegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Potenti tentacoli crescono dalla pianta dei piedi o delle calzature, ancorando parzialmente l''incantatore al terreno e rendendo più difficile per gli altri spostarlo contro la sua volontà. Questi tentacoli scavano qualsiasi superficie, ma non lasciano tracce di passaggio. Si ottiene bonus + 10 alla DMC contro le Manovre in Combattimento di Oltrepassare, Riposizionare, Sbilanciare, Spingere e Trascinare, così come qualsiasi altro effetto che sposti dalla posizione attuale (come essere inghiottiti) o butti a terra. Tuttavia, i tentacoli rallentano il movimento: la velocità viene ridotta di 3 metri (fino a un minimo di 1,5 metri). Questo incantesimo non ha effetto se ci si sta muovendo senza toccare il terreno (nuotando, scalando, volando e così via).

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/anchored-step/'
WHERE name = 'Passo Ancorato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Per la durata di questo incantesimo, i soggetti ignorano gli effetti sfavorevoli al movimento causati dal terreno difficile e, su tale terreno, possono anche fare passi di 1,5 metri.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/feather-step'
WHERE name = 'Passo Morbido di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Ogni passo crea piante acquatiche in grado di sopportare il peso dell''incantatore e quello di creature della stessa taglia o inferiore che seguono. Queste ninfee appaiono solo quando si attraversa dell''acqua o altri liquidi che non distruggano immediatamente le piante. Si può attraversare la superficie di questi liquidi senza temere di inciampare (tuttavia se si viene buttati a terra Proni, trascinati sotto o fatti cadere altrimenti, si affonda comunque nel liquido). Per la durata dell''incantesimo, le creature della sua stessa taglia o inferiore possono tentare di seguire l''incantatore effettuando una prova di Acrobazia con CD 10 ad ogni round. Ognuna di queste prove permette di muoversi a metà della velocità normale. Se la creatura prende penalità –5 alla sua prova, può muoversi alla sua velocità normale. Se una creatura fallisce la prova di Acrobazia, o se una di taglia più grande tenta di seguire l''incantatore, cade giù, danneggiando le piante. Ogni volta che una creatura cade giù, tutte le creature che la seguono subiscono penalità cumulativa –5 alle prove di Acrobazia attraversando quel particolare tratto di piante. Quando l''incantatore si sposta, le ninfee spariscono dietro di lui nel momento in cui escono dal raggio di azione. Altrimenti, rimangono fino al termine della durata dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/lily-pad-stride'
WHERE name = 'Passo sulle Ninfee';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si batte il piede o la propria arma a terra, creando un''onda di potere che si può usare per Sbilanciare tutte le creature nell''area, indipendentemente dalla taglia. Si tenta una prova di Manovra in Combattimento per Sbilanciare e si applica il risultato a ogni creatura nell''area, ma, invece del proprio Bonus di Attacco Base, si può usare il livello dell''incantatore e, invece del proprio modificatore di Forza, si può usare il modificatore al punteggio della caratteristica dell''incantatore (Intelligenza per Maghi e Magus; Saggezza per Druidi e Ranger; Carisma per Iracondi di Stirpe e Stregoni). Questo tentativo di Sbilanciare non provoca Attacchi di Opportunità. Questo incantesimo non ha effetto se non si può raggiungere il terreno o il pavimento o se i bersagli non sono a contatto con il terreno o il pavimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/thunderstomp/'
WHERE name = 'Passo Tonante Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 ora/livello (I)',
  saving_throw = 'no',
  spell_res = 'sì',
  full_description = ': Si concede Bonus di Potenziamento +6 m alla velocità base sul terreno e Bonus di Potenziamento +3 m agli altri tipi di Movimento (Nuotare, Scalare, Scavare, Volare e così via). Non influenza tipi di movimento che non si possiedono realmente (per esempio, se non si ha una velocità di Nuotare, questo incantesimo non concede una velocità di Nuotare).

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/longstrider'
WHERE name = 'Passo Veloce Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora per livello (I)',
  saving_throw = 'Nessuno',
  spell_res = 'sì',
  full_description = ': L''incantatore trasforma le pinne, la coda o le ali natatorie del bersaglio in gambe e piedi, consentendogli di camminare sulla terraferma. Il bersaglio perde la propria velocità di nuotare, ma ottiene una velocità base di movimento appropriata per un Umanoide della sua Taglia (velocità 9 metri se Media o superiore, velocità 6 metri se Piccola). Se la creatura si immerge in acqua per più di 1 round, la trasformazione si inverte, consentendole di nuotare normalmente. Un round dopo che è uscita dall''acqua, la trasformazione si verifica di nuovo consentendole di camminare.

Questo incantesimo funziona solo su Marinidi, Tritoni, foche, pesci e altre creature i cui corpi o arti vengono usati principalmente per il nuoto e non sono adatti a camminare. Non conferisce al bersaglio la capacità di respirare aria.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fins-to-feet'
WHERE name = 'Pinne in Piedi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = NULL,
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si anima un''area di detriti, pietrisco o altre piccole rocce, creando una pericolosa zona di detriti rotolanti. I detriti animati occupano uno spazio di 3 metri e agiscono come uno Sciame, infliggendo danni (1d6 Punti Ferita) e distraendo (CD 12) qualsiasi cosa al loro interno. Come azione di movimento, l''incantatore può ordinare ai detriti di spostarsi di 3 metri. Se i detriti vengono attaccati, si considerano come un Oggetto Animato Medio con l''Archetipo Semplice Creatura Giovane e il Sottotipo Sciame.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/raging-rubble'
WHERE name = 'Pietrisco Rotolante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Si riveste il proprio corpo con una sostanza resinosa, che protegge dagli attacchi e fa aderire le armi che colpiscono l''incantatore. Si ottiene RD 5/perforante e Bonus di Circostanza +4 alla DMC contro i tentativi di Disarmare e ai Tiri Salvezza contro effetti che fanno cadere ciò che si tiene in mano. Inoltre, si ottiene Bonus di Circostanza +2 alle prove di Manovra in Combattimento per iniziare una Lotta, mantenere una presa e immobilizzare un nemico. I nemici In Lotta con l''incantatore subiscono penalità -2 ai tentativi di interrompere la Lotta e di liberarsi usando Artista della Fuga. Le armi che colpiscono l''incantatore diventano bloccate a meno che il possessore non superi un Tiro Salvezza su Riflessi. Tali armi possono essere staccate dall''incantatore solo con una prova di Forza riuscita (CD = CD del Tiro Salvezza di questo incantesimo).

Questo incantesimo non ha effetto sui colpi senz''armi o sulle armi naturali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/resinous-skin'
WHERE name = 'Pelle Resinosa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = NULL,
  range = NULL,
  duration = NULL,
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si evoca uno Sciame di Rane Velenose che attacca tutte le altre creature all''interno dell''area. (È possibile convocare lo sciame in modo tale che condivida l''area di altre creature). Questo sciame ha la statistiche di uno Sciame di Millepiedi, ma ha il Tipo Animale e il suo Veleno infligge danni a Costituzione invece che a Destrezza. 

Se non ci sono creature viventi all''interno dell''area, lo sciame attacca o insegue la creatura più vicina al meglio delle sue possibilità. Non si ha alcun controllo sullo sciame o sulla direzione in cui si sposta.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/rain-of-frogs'
WHERE name = 'Pioggia di Rane';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello o finché non viene scaricato',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Protezione dall''Energia conferisce Immunità temporanea al tipo di energia specificato al momento di lanciare l''incantesimo (acido, freddo, elettricità, fuoco o sonora). Quando l''incantesimo assorbe 12 danni da energia per livello dell''incantatore (fino a un massimo di 120 danni al 10° livello), è scaricato.

Protezione dall''Energia si sovrappone (senza sommarsi) a Resistere all''Energia. Se un personaggio è protetto da Protezione dall''Energia e da Resistere all''Energia, è l''incantesimo di protezione ad assorbire i danni fino a che non si è esaurito.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/protection-from-energy'
WHERE name = 'Protezione dall''Energia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Il bersaglio trasuda un forte odore che la maggior parte dei predatori riconosce come puzza di preda indifesa. Ognuna delle 1d4+1 creature predatrici più vicine entro 9 metri deve superare un Tiro Salvezza su Volontà o inizia ad attaccare il
bersaglio (gli Animali con la capacità Fiuto sono influenzati se entro 18 m). Se il predatore è un Animale, può essere distolto dal bersaglio da un addestratore usando il comando indietro o qualsiasi effetto che sospenda o dissolva gli effetti di emozione o ira.

Questo incantesimo non ha effetto su Costrutti, Non Morti o creature con la capacità Aura Innaturale o con effetti che respingono gli Animali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stench-of-prey/'
WHERE name = 'Puzza di Preda';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '2 ore/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Le creature trasmutate possono respirare liberamente sott''acqua. Si divide la durata dell''incantesimo in parti uguali tra tutte le creature toccate. L''incantesimo non impedisce alle creature di respirare normalmente l''aria.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/water-breathing'
WHERE name = 'Respirare Sott''Acqua';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Questa Abiurazione fornisce alle creature toccate una protezione limitata dai danni di uno qualunque dei cinque tipi di energia selezionato: acido, elettricità, freddo, fuoco o sonora. I soggetti ottengono Resistenza all''Energia 10 contro il tipo di energia scelto, il che significa che ogni volta che le creature sono soggette a quel tipo di danni (sia da una fonte naturale che da una fonte magica), quei danni sono ridotti di 10 prima di essere applicati ai punti ferita delle creature. Il valore della resistenza all''energia fornita aumenta a 20 al 7° livello fino ad un massimo di 30 all''11° livello. L''incantesimo protegge allo stesso modo anche l''Equipaggiamento dei soggetti.

Resistere all''Energia Collettivo assorbe solo i danni. I soggetti potrebbero comunque subire sfortunati effetti collaterali nocivi.

Resistere all''Energia Collettivo si sovrappone (senza sommarsi) a Protezione dall''Energia Collettivo. Se un personaggio è sotto l''effetto di Protezione dall''Energia Collettivo e di Resistere all''Energia Collettivo, è l''incantesimo Protezione dall''Energia Collettivo ad assorbire i danni finché non si esaurisce il suo potere.

La durata di questo incantesimo si può dividere in intervalli da 10 minuti tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/resist-energy'
WHERE name = 'Resistere all''Energia Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = 'istantaneo, vedi testo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Sebbene non fosse certo il primo a rivolgersi ai Piani Esterni in cerca di risposte, i rapporti di Jatembe con gli Esterni nella sua ricerca dell''illuminazione sono leggendari, e i Magaambya attribuiscono all''Antico Mago la creazione di questo incantesimo.

Questo incantesimo evoca una creatura da un altro piano nella tua posizione precisa, funzionando come Alleato Planare Inferiore, salvo quanto indicato. Quando si evoca una creatura usando Richiesta Planare, l''unico compito che si può assegnare è quello di rispondere a domande o raccogliere informazioni su un argomento specifico (una persona, un luogo o una cosa). Dopo aver ascoltato la richiesta, se la creatura possiede un''abilità di Conoscenze appropriata, può tentare una prova per fornire le informazioni in suo possesso. Se non possiede tale abilità, la creatura evocata si allontana per 1d4 ore per raccogliere queste informazioni. Al suo ritorno, si tira 1d20 + il tuo livello di incantatore e si usa il risultato per determinare quali informazioni la creatura ha raccolto sull''argomento (come se si usasse Diplomazia). La creatura evocata rimane per un massimo di 10 minuti mentre trasmette queste informazioni, dopodiché riparte per il suo piano natale. Se la creatura viene attaccata o danneggiata in qualsiasi momento durante la durata dell''incantesimo, l''incantesimo termina e la creatura ritorna al piano da cui la si è evocata.

Quando si lancia questo incantesimo, si può scegliere un tipo specifico di esterno da evocare, persino evocando una singola creatura per nome. Il tipo di esterno evocato non altera gli effetti dell''incantesimo, ma quando si usa Richiesta Planare per evocare una creatura con un Allineamento o un Sottotipo Elementale, l''incantesimo acquisisce quel descrittore. Non si può evocare un esterno i cui Dadi Vita superino il proprio livello di incantatore (massimo 18 DV) e non si può usare questo incantesimo per contattare un esterno unico (come l''Araldo di una Divinità) o un esterno con gradi mitici.

Fonte: Planar Inquiry'
WHERE name = 'Richiesta Planare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vedi testo',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo ha due versioni:

• Regolare la Crescita: La prima versione fa sì che la normale vegetazione entro un raggio di azione lungo (120 metri + 12 metri per livello) si rimpicciolisca a circa un terzo delle sue normali dimensioni, districandosi e diventando più rada. La vegetazione risultante appare attentamente potata e livellata. Questa versione dissolve automaticamente qualunque incantesimo od effetto che aumenta la vegetazione come Crescita Vegetale, Intralciare e Muro di Spine.
A propria discrezione, l’area interessata può essere un cerchio con il raggio di 30 metri, un semicerchio con un raggio di 45 metri o un quarto di cerchio del raggio di 60 metri. Si possono anche designare quali zone all’interno dell’area non vengono colpite.

• Rallentare la Crescita: Questa seconda versione agisce sulle normali piante nel raggio di 750 metri, riducendo la loro potenziale produttività nel corso dell’anno seguente a un terzo della media normale.

Rimpicciolire Vegetali non ha effetto su creature del Tipo Vegetale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/diminish-plants'
WHERE name = 'Rimpicciolire Vegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Rimuovi Malattia cura tutte le Malattie di cui soffre un soggetto. Occorre superare una prova di livello dell’incantatore (1d20 + livello dell’incantatore) contro la CD di ciascuna delle Malattie che affliggono il bersaglio per riuscire a curare la Malattia. L’incantesimo uccide anche gli elementi parassitari, compresi la fanghiglia verde e altri.

Visto che la durata dell’incantesimo è istantanea, non impedisce ulteriori infezioni dopo una successiva esposizione alla stessa Malattia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/remove-disease'
WHERE name = 'Rimuovi Malattia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': I soggetti diventano temporaneamente immuni ai Veleni. Qualsiasi Veleno che si trovi nel loro sistema o a cui vengano esposti nel corso della durata dell''incantesimo non ha effetto su di loro finché la durata dell''incantesimo non si è esaurita. Ritarda Veleno Collettivo non cura eventuali danni che il Veleno abbia già inflitto in precedenza.

La durata di questo incantesimo si può dividere in intervalli da 1 ora tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/delay-poison'
WHERE name = 'Ritarda Veleno Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'Riflessi nega',
  spell_res = 'no',
  full_description = ': Si smuove una superficie di terra o sabbia all''interno dell''area. Le Sabbie Mobili cancellano le tracce e sono considerate terreno difficile. Le prove di Acrobazia nell''area subiscono una penalità pari al proprio livello dell’incantatore (massimo +10).

Le creature che entrano o iniziano il proprio turno nelle sabbie mobili devono effettuare un Tiro Salvezza su Riflessi ad ogni round o sono Intralciate fino all''inizio del loro turno successivo. Se tentano di muoversi mentre sono Intralciate in questo modo, devono effettuare un secondo Tiro Salvezza su Riflessi o cadono a terra Prone. Le creature con il tratto razziale Stabilità (come i Nani) possono applicarlo come bonus ai Tiro Salvezza.

Come azione di movimento, si può spostare l’area delle Sabbie Mobili fino a 3 metri in ogni direzione. Le creature intrappolate o Prone nell''area dell’incantesimo vengono trasportate insieme alle sabbie mobili nella stessa direzione, se possibile. Questo movimento non provoca Attacchi di Opportunità. Anche gli oggetti incustoditi di taglia Media o più piccoli possono essere trasportati o sepolti superficialmente dalle Sabbie Mobili.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shifting-sand'
WHERE name = 'Sabbie Mobili';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto può scavare alla velocità di 4,5 metri (o 3 metri se indossa un''armatura media o pesante, o se porta un carico medio o pesante) attraverso la sabbia, il terriccio o la ghiaia, o alla velocità di 1,5 metri attraverso la pietra. Usare Scavare richiede la stessa concentrazione necessaria per camminare, quindi il soggetto può attaccare o lanciare incantesimi normalmente. La creatura che scava non può caricare o correre. Il materiale smosso collassa dietro al bersaglio 1 round dopo che questi ha lasciato l''area. Questo incantesimo non concede al bersaglio la capacità di respirare sotto terra, perciò attraversando il materiale smosso, la creatura deve trattenere il respiro e percorrere brevi tratti, altrimenti potrebbe soffocare. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/burrow'
WHERE name = 'Scavare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L''incantatore evoca uno sciame di fastidiose scimmie stridule. Lo sciame capisce e obbedisce ai comandi dell''incantatore e ha le statistiche di uno Sciame di Scimmie. Le creature che falliscono un Tiro Salvezza contro l''attacco Distrazione delle Scimmie Folli sono Assordate e Nauseate per 1 minuto. A ogni turno, come Azione Gratuita le scimmie tentano una Manovra in Combattimento di Disarmare o Rubare contro tutte le creature che iniziano il proprio turno nello sciame, usando il livello dell''incantatore più il suo bonus di caratteristica per lanciare incantesimi (Intelligenza per i Maghi; Saggezza per Druidi e Oracoli; Carisma per i Bardi, Stregoni e Convocatori) per la sua BMC. Recuperare un oggetto dalle scimmie richiede un tentativo riuscito di Disarmare o Rubare contro questa BMC + 10. Un oggetto rubato dalle scimmie subisce danni dallo sciame ad ogni round che lo sciame ne è in possesso. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mad-monkeys'
WHERE name = 'Scimmie Folli';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = 'no',
  full_description = ': Si sceglie una creatura che si può vedere. Quando quella creatura viene colpita da un''arma brandita da un membro della Mantide Rossa, una Sciabola Dentata o dall''artiglio di una Mantide Gigante, l''osso più vicino alla ferita sviluppa istantaneamente speroni frastagliati e affilati come rasoi che lacerano i muscoli e la carne dall''interno verso l''esterno, a meno che il bersaglio non superi un Tiro Salvezza su Tempra. La creatura subisce 1d6 danni perforanti per livello dell''incantatore. Anche se l''osso ritorna normale immediatamente dopo aver inflitto il danno, la creatura subisce 1d4 danni da Sanguinamento per 1 round ogni 2 livelli dell''incantatore. La vittima è Nauseata dal dolore per tutta la durata del sanguinamento. Se la creatura bersaglio non ha ossa, questo incantesimo non ha effetto.

Fonte: Bone Flense'
WHERE name = 'Scuoiare Ossa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si è in grado di modellare un qualunque pezzo di roccia già esistente dandogli una forma adeguata ai propri scopi. Sebbene Scolpire Pietra permetta di realizzare bauli, porte e altri oggetti in maniera grezza, i dettagli non sono realizzabili. C''è una probabilità del 30% che una forma che necessiti di parti mobili finisca per non funzionare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-shape'
WHERE name = 'Scolpire Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi nega',
  spell_res = 'no',
  full_description = ': Si crea una sfera d''acqua turbolenta che rotola e può inghiottire quelli che colpisce. La Sfera Acquea può muoversi fino a 9 metri per round, rotolando sopra barriere non più alte di 3 metri. Estingue automaticamente qualsiasi fuoco non magico e funziona come Dissolvi Magie contro i fuochi magici di taglia Grande o inferiore.

Qualsiasi creatura sul percorso della Sfera Acquea subisce 2d6 danni non letali. Un Tiro Salvezza su Riflessi riuscito nega questi danni, ma una creatura di taglia Grande o inferiore che fallisce il Tiro Salvezza deve effettuare un secondo Tiro Salvezza o viene inghiottita dalla Sfera Acquea e portata via con essa. Le creature inghiottite sono immerse nell''acqua e devono Trattenere il Fiato a meno che non possano respirare sott''acqua. Esse ottengono copertura contro gli attacchi dall''esterno della Sfera Acquea, ma sono considerate Intralciate dalle sue correnti turbolente, subendo 2d6 Danni Non Letali all''inizio del loro turno ogni round che rimangono intrappolate. Le creature dentro la sfera possono tentare un nuovo Tiro Salvezza su Riflessi ogni round per fuggire in un quadretto a caso adiacente alla Sfera Acquea. La sfera può contenere una creatura Grande, 4 Medie o 16 Piccole o inferiori.

La sfera si muove finché viene diretta attivamente (con un''azione di movimento); altrimenti, rimane semplicemente ferma e turbina sul posto. Una Sfera Acquea si ferma quando esce dal raggio di azione dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aqueous-orb'
WHERE name = 'Sfera Acquea';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si evocano uno o più scarafaggi neri e lucidi, che hanno un certo grado di intelligenza e sono ottime spie. Quando sono in vostra presenza, gli insetti obbediscono ai vostri comandi mentali e potete impartire ordini a un numero qualsiasi di essi con un''unica Azione Standard, a patto di impartire gli stessi ordini a ciascuno di essi. Per impartire ordini diversi a insetti diversi, è necessario spendere un''azione standard separata per ogni serie di ordini. Un insetto in contatto fisico con voi può rispondere a semplici domande su ciò che ha osservato, al ritmo di una domanda per round. Può riferire solo ciò che ha percepito con i sensi e non può ripetere il discorso. Ha difficoltà a formulare giudizi soggettivi e le domande che richiedono un ragionamento di questo tipo difficilmente daranno una risposta chiara. Ad esempio, un insetto non è in grado di riferire lo stato emotivo di una persona o di determinare chi, tra le varie persone che ha visto, potrebbe essere il responsabile.

La taglia di ogni insetto è Piccolissima. Ogni insetto ha 1 PF, CA 20 (+2 Destrezza, +8 Taglia), una velocità di movimento di 1,5 m, una velocità di Scalare di 1,5 m e una velocità di Volare di 1,8 m (manovrabilità perfetta). Gli insetti utilizzano i vostri Tiri Salvezza, hanno un bonus totale all''abilità di Percezione pari a 5 + 1/2 del vostro livello da incantatore e non possono effettuare attacchi. Grazie alle loro dimensioni incredibilmente ridotte e alla loro natura magica, possono effettuare prove di Furtività per evitare di essere notati anche se non hanno una fonte di Copertura o di Occultamento, e hanno un bonus totale di Furtività pari a 18 + 1/2 del vostro Livello dell''Incantatore. Gli insetti possono anche arrampicarsi su creature di taglia Minuscola o più grande mentre usano la Furtività, e possono cavalcare queste creature senza essere notati. Una creatura Minuscola ottiene un bonus +16 alle prove di Percezione per notare uno di questi insetti che si sta arrampicando su di essa. Per ogni categoria di taglia superiore a Minuscola della creatura che si sta arrampicando, questo bonus si riduce di 4 (fino a un minimo di +0 per le creature Enormi o più grandi).

Si mantiene inoltre un debole legame mistico con questi insetti, che permette di percepire la loro posizione. Come Azione di Round Completo, ci si può Concentrare sull''incantesimo per conoscere la direzione e la distanza relativa di ogni insetto.

Fonte: Insect Spies'
WHERE name = 'Spie Insetto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'contatto',
  duration = '1 ora/livello (I) o finché scaricato (I)',
  saving_throw = NULL,
  spell_res = 'no',
  full_description = ': Si stabilisce una protezione magica sull''oggetto toccato, che deve essere un contenitore come un sacchetto, una borsa, uno zaino o una tasca. Se una creatura apre il contenitore senza aver prima pronunciato una parola di comando, appaiono 1d3 Serpenti Velenosi convocati, che strisciano fuori dal contenitore e attaccano quella creatura per 1 round/livello prima di scomparire. Attaccano altre creature solo se vengono attaccati loro stessi. 

Fonte: Pocketful of Vipers'
WHERE name = 'Tascata di Vipere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale',
  spell_res = 'no',
  full_description = ': L''incantatore sputa un getto di veleno contro un bersaglio usando un attacco di contatto a distanza. Se il veleno colpisce, causa Cecità per 1 round. Il bersaglio deve anche superare un Tiro Salvezza o viene avvelenato dal Veleno di Aspide Nera; la CD del veleno nei round successivi è pari alla CD dell''incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/spit-venom'
WHERE name = 'Sputare Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Cenere sferzante blocca completamente la visuale (anche la Scurovisione) all''interno dell''area di effetto dell''incantesimo, e quella caduta rende l''area terreno difficile. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/ash-storm'
WHERE name = 'Tempesta di Cenere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Il nevischio portato da questo incantesimo blocca qualunque tipo di vista (anche la Scurovisione) al suo interno e ghiaccia la superficie del terreno. Una creatura può camminare all’interno dell’area o attraversarla soltanto a metà della velocità normale con una prova di Acrobazia con CD 10. Se fallisce, non può muoversi per quel round, e se fallisce di 5 o più cade a terra Proni.

Il nevischio spegne torce e piccoli fuochi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sleet-storm'
WHERE name = 'Tempesta di Nevischio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si richiama un potente flusso d''acqua che si abbatte su tutte le creature e gli oggetti sul suo percorso finché non colpisce qualcosa che non può spostare. Contro le creature e gli oggetti mobili questo flusso agisce come una spinta. Si possono Spingere creature di qualunque taglia, non solo quelle più grandi di una taglia rispetto alla propria. Si effettua una prova di Manovra in Combattimento e si applica il risultato ad ogni creatura nell''area. Il proprio BMC per questa spinta è pari al proprio livello dell''incantatore più il modificatore di Intelligenza, Saggezza o Carisma, quale che sia il più alto. Questa spinta non provoca Attacchi di Opportunità.

Contro gli oggetti inamovibili questo flusso permette, invece, di effettuare una prova di Forza per distruggere il bersaglio. Quando si tenta di rompere un oggetto, il flusso ha una Forza effettiva pari al proprio livello dell''incantatore più il modificatore del punteggio di caratteristica come sopra. La CD per Rompere dipende dall''oggetto che si sta colpendo.

Torrente Idraulico spegne i fuochi normali che incontra sul suo percorso. I fuochi magici non vengono influenzati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/hydraulic-torrent'
WHERE name = 'Torrente Idraulico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno e Tempra nega (vedi testo)',
  spell_res = 'no',
  full_description = ': Il bersaglio emana vapori puzzolenti che riempiono il suo spazio. I vapori non oscurano la visuale, ma Nauseano le creature. Il bersaglio è immune a questi vapori, che persistono quando la creatura si muove, riempiendo ogni quadretto attraversato finché non hanno riempito un numero di quadretti pari a 4 x livello dell''incantatore, se ci si muove per più quadretti, quelli in eccesso non si riempiono di vapori. Ogni creatura che entra o termina il proprio turno nell''area riempita da questi vapori, deve superare un Tiro Salvezza su Tempra o diventa Nauseata finché rimane nel quadretto e per 1d4+1 round dopo averlo lasciato (Tirare separatamente per ogni personaggio nauseato). Chi supera il Tiro Salvezza ma rimane all''interno della nube deve continuare ad effettuarlo ogni round nel turno dell’incantatore. Questo è un effetto di veleno. 

Un vento moderato (16,5 o più km/h) disperde la nebbia in 4 round; un vento forte (31,5 o più km/h) la disperde in 1 round.

Questo incantesimo non funziona sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/nauseating-trail/'
WHERE name = 'Traccia Nauseante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Invocando i poteri velenosi dei predatori naturali, si trasmettono al bersaglio gli effetti di un orribile Veleno con un attacco di contatto in mischia riuscito. Il Veleno infligge 1d3 danni a Costituzione per round per 6 round. Il bersaglio può tentare di negare i danni effettuando un Tiro Salvezza su Tempra ogni round, e se lo supera nega il danno del round e si mette fine all''effetto del Veleno.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/poison'
WHERE name = 'Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 metri',
  duration = 'istantanea',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'si (innocuo)',
  full_description = ':
Si espira profondamente, generando un lieve vento magico che rinvigorisce tutti gli alleati nell’area, con i seguenti effetti: gli alleati addormentati si risvegliano immediatamente; gli alleati Affascinati si liberano dall’effetto di affascinare; gli alleati colti alla sprovvista non sono più considerati tali, anche se non hanno ancora agito. La durata degli effetti che causano Confusione, Paura, Paralisi, Lentezza o Stordimento viene ridotta di 1d4 round (si tira separatamente per ciascun bersaglio). Se la durata di uno di questi effetti si riduce a 0 o meno round, l’effetto termina per quell’alleato. Infine, ogni alleato Prono può rialzarsi come Azione Immediata, provocando Attacchi di Opportunità normalmente.

Fonte: Reinvigorating Wind'
WHERE name = 'Vento Rinvigorente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Zanna Magica Superiore fornisce a un''arma naturale del soggetto Bonus di Potenziamento +1 ai Tiri per Colpire e per i danni ogni 4 livelli dell''incantatore (massimo +5). Questo bonus non consente ad un''arma naturale o ad un colpo senz''armi di oltrepassare la Riduzione del Danno diversa da magia.

L''incantesimo può avere effetto su un attacco di schianto, un pugno, un morso o qualunque altra arma naturale. Questo incantesimo non cambia il danno di un colpo senz''armi da Danno Non Letale a danno letale.

In alternativa, si può infondere in tutte le armi naturali della creatura Bonus di Potenziamento +1 (indipendentemente dal proprio livello dell''incantatore).

Zanna Magica Superiore può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/magic-fang'
WHERE name = 'Zanna Magica Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 metri + 1,5 m/2 livelli)',
  duration = '1 giorno/livello o finché il messaggio non viene consegnato',
  saving_throw = 'nessuno (vedi testo)',
  spell_res = 'no',
  full_description = ': Si costringe un singolo Animale a recarsi in un punto indicato e a consegnare un messaggio a una creatura da voi identificata. Questo incantesimo è simile a Animale Messaggero, ma può avere effetto su animali più grandi. Inoltre, l''animale bersaglio viene temporaneamente risvegliato per essere senziente (come l''incantesimo Risveglio) per tutta la durata dell''incantesimo e può usare la sua maggiore acutezza mentale per trovare soluzioni creative per superare gli ostacoli alla consegna del messaggio. L''animale bersaglio risvegliato parla una qualsiasi lingua conosciuta. Inoltre, è possibile conferire all''animale fino a 5 gradi in una delle seguenti abilità: Conoscenze (locali), Conoscenze (nobiltà), Diplomazia, Intuizione, Linguistica o Raggirare. L''animale considera come abilità di classe tutte quelle che per lui sono abilità di classe. Il numero di gradi conferiti in una di queste abilità non può superare i Dadi Vita dell''animale bersaglio né il numero di gradi che si possiedono in quell''abilità.

Il messaggio che si invia con Ambasciatore Animale può essere un messaggio verbale, che l''animale bersaglio risvegliato può pronunciare con la sua voce o con la vostra voce. Può anche conversare usando il suo intelletto, le sue conoscenze e le sue capacità linguistiche. L''animale è fedele al giocatore, ma per il resto è suscettibile agli effetti di influenza mentale come qualsiasi altra creatura. È anche possibile inviare all'' Ambasciatore Animale un oggetto o un contenitore che è in grado di trasportare, facendogliene recapitare il contenuto al destinatario del messaggio. Se l''oggetto che gli viene dato da trasportare è velenoso, intrappolato o comunque intrinsecamente pericoloso (anche se normalmente sarebbe pericoloso solo per la creatura che lo riceve e non per l''animale), o se voi o i vostri alleati attaccate l''animale bersaglio, l''incantesimo Ambasciatore Animale fallisce e l''animale diventa ostile nei vostri confronti. L'' Ambasciatore Animale tenta di consegnare il messaggio al suo bersaglio in modo intelligente, ma con una sola mente, e non è possibile affidargli altri compiti come combattere, esplorare, cercare trappole e così via. Una volta ricevuto il messaggio, parte per la consegna.

Una volta che l''ambasciatore animale ha individuato il bersaglio e consegnato il messaggio (e l''oggetto, se desiderato), le sue capacità mentali potenziate svaniscono entro 2d6 minuti. L''incantesimo termina, anche se la sua durata non è ancora scaduta.

Fonte: Animal Ambassador'
WHERE name = 'Ambasciatore Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello o finché non viene scaricato',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Si assorbe la tossicità circostante, diventando di conseguenza tossici. Mentre si è sotto l''effetto di questo incantesimo, si è immuni a Malattie e Veleni con i quali si entra in contatto. Quando si è esposti a una Malattia o un Veleno, si può scegliere di assorbirli. Ciò pone fine all''immunità concessa da questo incantesimo verso altre Malattie e Veleni diversi da quelli assorbiti. Si rimane immuni alla nuova afflizione finché non termina l''incantesimo. Lanciare Assorbire Tossicità su se stessi una seconda volta non permette di assorbire una seconda tossina, mentre ripristina la durata dell''effetto a 10 minuti/livello. 

Quando si è assorbito una Malattia o un Veleno, si può usare un attacco di contatto in mischia per trasferire l''afflizione a un''altra creatura. Un attacco fallito non scarica l''incantesimo e si può ritentare di trasferire l''afflizione nei round successivi. Se si colpisce, questo incantesimo viene scaricato e il bersaglio dell''attacco deve superare un Tiro Salvezza contro l''afflizione trasferita (CD pari a quella del Tiro Salvezza di questo incantesimo o a quella del Tiro Salvezza dell''afflizione, la più alta delle due) o subirne l''effetto o l''effetto iniziale immediatamente. Il bersaglio poi continua a soffrire gli effetti normali dell''afiflizione. 

Se la durata dell''incantesimo termina prima di aver trasferito l''afflizione, si è esposti alla Malattia o al Veleno assorbiti come se fosse stata trasferita a se stessi, ma si ottiene bonus +2 ai Tiri Salvezza contro questo particolare caso di Malattia o Veleno. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/absorb-toxicity'
WHERE name = 'Assorbire Tossicità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si conferisce ad una creatura la capacità di infliggere Sanguinamento con attacchi naturali purché l’attacco infligga danni taglienti o perforanti. Questo danno da Sanguinamento per ogni attacco è pari a metà del livello dell’incantatore (limitato al danno massimo della creatura con quel attacco), tuttavia il danno da Sanguinamento non è cumulabile. Quando due o più attacchi infliggono Sanguinamento, bisogna prendere l’effetto peggiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bloody-claws'
WHERE name = 'Artigli Insanguinati';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Riportando l''Animale bersaglio allo stadio dei suoi antenati, si risveglia una selvaggia macchina di distruzione. L''Animale ottiene immediatamente l''Archetipo Semplice Avanzato. Ottiene bonus +2 a tutti i tiri, inclusi i tiri per i danni e le CD delle capacità speciali, bonus +4 a CA e DMC e +2 Punti Ferita per DV. Gli istinti primitivi dell''Animale permangono per la durata dell''incantesimo: se l''Animale conosce comandi concessi dall''abilità Addestrare Animali, ne perde l''accesso tranne per “attacca”. Questo incantesimo non ha effetto su Animali che hanno già l''Archetipo di creatura avanzata.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/atavism'
WHERE name = 'Atavismo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Lanciando questo incantesimo si assume l''aspetto di un cervo, incluse alcune sue caratteristiche fisiche. I tratti diventano allungati e muscolosi e cresce un paio di corna che si possono usare per difesa. Si ottiene Bonus di Schivare +2 alla CA contro gli Attacchi di Opportunità, la velocità base aumenta di 6 metri, ci si può muovere attraverso qualsiasi sottobosco (incluso quello manipolato magicamente) alla propria velocità normale e si può anche fare un passo di 1,5 metri in simili terreni. Inoltre, quando si viene colpiti da un Attacco di Opportunità, si può effettuare un singolo attacco con le corna contro quell''avversario come azione immediata. Questo attacco utilizza il Bonus di Attacco più alto più il bonus di Forza o di Destrezza (a scelta) e infligge 1d8 danni perforanti (nel caso di taglia Media; 1d6 danni se si è di taglia Piccola) più il modificatore di Forza. Le corna hanno un moltiplicatore per il critico di 19–20/×2.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aspect-of-the-stag'
WHERE name = 'Aspetto del Cervo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si tocca una creatura con almeno una manifestazione di una Corruzione. Si acquisiscono temporaneamente gli stigmi e doni conferiti dalla Corruzione alla creatura, che li mantiene a sua volta. Se i doni hanno utilizzi limitati, si considera di non avere utilizzi rimanenti. Nel lanciare questo incantesimo si subiscono 1d3 punti di risucchio a Saggezza.

Se si adotta il sistema della Sanità Mentale ogni volta che si lancia questo incantesimo, anziché subire risucchio a Saggezza, il proprio punteggio di Sanità Mentale diminuisce di 2 (abbassando il limite di Sanità Mentale di 1). Solo Ristorare Superiore, Miracolo o Desiderio possono annullare tale diminuzione. Un singolo lancio di Ristorare Superiore rimuove 1 punto di diminuzione della Sanità Mentale imposto da Attingere Corruzione, mentre Miracolo o Desiderio li rimuovono tutti. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/b/borrow-corruption/'
WHERE name = 'Attingere Corruzione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '2 ore/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si circondano le creature toccate con un guscio costante e movibile dello spessore di 2,5 cm e le cui condizioni interne sono tollerabili. Questo guscio permette ai soggetti di respirare liberamente, anche sott’acqua o nel vuoto, e li rende immuni ai gas e ai vapori nocivi, incluse le Malattie e i Veleni da inalazione e gli incantesimi come Nube Maleodorante e Nube Mortale. Inoltre, il guscio protegge i soggetti dalle temperature estreme (come Contrastare Elementi) e dalle pressioni estreme. 

Bolla di Vita non fornisce protezione dall’energia negativa o positiva (ad esempio sui piani dell’Energia Negativa e Positiva), la capacità di vedere in condizioni di scarsa visibilità (come nel fumo o nella nebbia), né la capacità di muoversi o agire normalmente in condizioni che impediscono il movimento (come sott’acqua).

Quando si lancia questo incantesimo, esso ha una durata di 2 ore per livello dell’incantatore. Si può suddividere questa durata in ogni modo si desideri, non necessariamente in modo equo, al massimo tra un numero di creature pari al livello dell’incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/life-bubble'
WHERE name = 'Bolla di Vita';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea un banchetto bello e delizioso con antipasti, quattro portate di cibo e bevande abbondanti. Il cibo appare su vassoi ornati o in squisite zuppiere coperte, a seconda del tipo di piatto. Appaiono anche coperti e utensili da portata, in numero sufficiente per ogni creatura che parteciperà al banchetto, oltre a eleganti tovaglie e biancheria da tavola. L''incantesimo non crea mobili, ma il banchetto si adatta per apparire sopra i tavoli esistenti (o oggetti simili nell''ambiente).

Sebbene il banchetto e tutta l''argenteria durino solo 1 ora, le creature che vi partecipano rimangono nutrite e saziate per 24 ore. Sebbene il giocatore abbia scarso controllo sui dettagli del banchetto, può specificare il tipo di piatto che desidera per ogni portata e il tipo di bevande previste. Il banchetto si regola automaticamente in base al tipo di incantatore. Per esempio, un Druido che lancia questo incantesimo di solito crea un banchetto con bacche naturali, animali interi arrostiti e nettare dolce (e possibilmente fermentato) per le bevande, il tutto su piatti di legno grezzo con bacchette al posto dell''argenteria e grandi foglie al posto dei tovaglioli.

Fonte: Bountiful Banquet'
WHERE name = 'Banchetto Abbondante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo fornisce l''immunità temporanea ai danni da fuoco come per Protezione dall''Energia. Come azione standard, è possibile sacrificare 12 punti rimanenti di assorbimento di energia residui dall''incantesimo per curare una creatura toccata di 1d8 danni. Curare una creatura provoca Attacchi d''Opportunità. Quando l''incantesimo ha assorbito 12 punti di danni da fuoco per livello dell''incantatore (fino a un massimo di 120 punti al 10° livello), si esaurisce.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/healing-warmth'
WHERE name = 'Calore Curativo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si evoca un boschetto riparato di alberi che circondano una sorgente poco profonda. Il boschetto appare dal nulla anche sul suolo più arido o roccioso, indipendentemente dalla stagione. L’incantesimo deve, però, essere lanciato su un terreno libero all’aperto.

L’area all’interno del boschetto è temperata e confortevole, come quella di una Capanna, sebbene il boschetto non fornisca illuminazione né protezione dagli elementi. L’acqua nella sorgente del boschetto è limpida e potabile. Inoltre, gli alberi forniscono una varietà di frutti maturi, a prescindere dalla stagione, che funzionano come un incantesimo Bacche Benefiche per al massimo otto persone. Il boschetto è protetto da un incantesimo Allarme che avvisa nel caso una creatura entri nell’area. Quando l’incantesimo termina, il boschetto svanisce, inclusi i frutti, l’acqua e tutto il resto, mentre il nutrimento o la guarigione ottenuta dai suoi effetti rimane.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/grove-of-respite'
WHERE name = 'Boschetto del Riposo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto può camminare nell’aria come se camminasse su terreno solido. Salire più in alto è come Scalare il fianco di una collina. L’angolazione massima di salita o di discesa è 45 gradi, a una velocità pari a metà di quella normale della creatura che sta camminando.

Un forte vento (oltre 31,5 km/h) può spingere il soggetto o tenerlo bloccato. Alla fine del suo turno in ogni round, il soggetto che cammina nell’aria viene spinto di 1,5 metri per ogni 7,5 km/h di velocità del vento. La creatura può essere soggetta ad ulteriori penalità in caso di vento particolarmente forte o turbolento, per esempio può perdere il controllo del movimento, o subire danni fisici nel caso urti contro qualcosa.

Se l’incantesimo termina la sua durata mentre il soggetto è ancora in aria, la magia svanisce lentamente. Il soggetto scende a una velocità di 18 metri per round per 1d6 round. Se in quel lasso di tempo la creatura raggiunge il terreno, atterra senza problemi. Altrimenti, precipita per il resto della distanza, e subisce 1d6 danni ogni 3 metri di caduta. Poiché dissolvere un incantesimo fa sì che questo termini, il soggetto scende in questo modo anche nel caso in cui l’incantesimo Camminare nell''Aria venga dissolto, ma non nel caso che sia negato da un campo antimagia.

È possibile lanciare Camminare nell''Aria su una cavalcatura appositamente addestrata in modo che sia in grado di cavalcare nell’aria. È inoltre possibile addestrare una cavalcatura a muoversi con l’ausilio di Camminare nell''Aria (conta come comando; vedi Addestrare Animali) con una settimana di lavoro e una prova di Addestrare Animali con CD 25.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/air-walk'
WHERE name = 'Camminare nell''Aria';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il bersaglio ottiene la capacità di Respirare Sott''Acqua e una velocità di Nuotare di 9 metri. Questa velocità di Nuotare significa anche che il bersaglio ottiene il normale bonus +8 alle prove di Nuotare e la capacità di prendere 10 sulle prove di Nuotare anche quando è distratto o in pericolo. Il bersaglio può usare l''azione di Correre mentre nuota, purché nuoti in linea retta. L''incantesimo non impedisce al bersaglio di respirare l''aria. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/ride-the-waves'
WHERE name = 'Cavalcare le Onde';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si evoca uno Sciame di Vespe che riempie lo spazio dell''incantatore (fino a 1,5 per 1,5 m) ma non lo attacca. Il denso nugolo di parassiti concede all''incantatore Occultamento Parziale contro gli attacchi a distanza. Tutte le creature che colpiscono l''incantatore con un''attacco in mischia subiscono 2d6 danni dallo sciame e il veleno delle vespe, ma non sono influenzate dalla capacità Distrazione dello sciame. Come Azione Gratuita nel proprio turno, l''incantatore può farsi avvolgere strettamente dallo sciame, ottenendo una velocità di Volare di 6 metri (manovrabilità scarsa); quando usato per Volare, lo sciame non fornisce Occultamento né danneggia le creature che colpiscono l''incantatore. Si può riportare lo sciame nella forma protettiva come Azione Gratuita nel proprio turno. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cape-of-wasps'
WHERE name = 'Cappa di Vespe';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Colpo Infuocato genera una colonna verticale di fuoco divino. L’incantesimo infligge 1d6 danni per livello dell’incantatore (massimo 15d6). La metà sono danni da fuoco, mentre l’altra metà è inflitta direttamente dal potere divino e non è quindi riducibile dalla resistenza agli attacchi basati sul fuoco.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/flame-strike'
WHERE name = 'Colpo Infuocato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 giorno/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo permette un qualche grado di controllo su una o più creature Vegetali. Le creature Vegetali influenzate possono capire e interpretare le vostre parole e le azioni nel modo più benevolo possibile (considerare il loro atteggiamento come amichevole). Non vi attaccheranno per tutta la durata dell’incantesimo. Si può tentare di dare ordini a un soggetto, ma occorre superare una prova contrapposta di Carisma per convincerlo a fare cose che normalmente non farebbe. Non sono ammessi ulteriori tentativi. Un Vegetale comandato non obbedisce mai a ordini suicidi o palesemente nocivi, ma può essere convinto a compiere un’azione particolarmente pericolosa, se pensa ne valga la pena.

Si possono influenzare un numero di creature Vegetali i cui livelli o DV combinati non superino il doppio del proprio livello.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/command-plants'
WHERE name = 'Comandare Vegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo ha due diverse applicazioni, entrambe per controllare l''acqua in modi diversi. La prima versione fa in modo che l''acqua evapori rapidamente o si infiltri nel terreno sottostante, abbassando la profondità. La seconda versione fa sgorgare o alzare l''acqua aumentando la sua profondità globale con la possibilità di esondare nelle aree circostanti.

• Abbassare Acqua: L''acqua, o un liquido simile, riduce la sua profondità di 60 cm per livello dell''incantatore (fino a un minimo di 2,5 cm). L''acqua si abbassa all''interno di una depressione quadrata i cui lati sono lunghi fino a 3 metri per livello dell''incantatore. Nei corpi d''acqua estremamente grandi e profondi come l''oceano, l''incantesimo crea un vortice che risucchia navi e altri vascelli al suo interno, mettendoli a rischio e impedendo loro di allontanarsi con il normale movimento per la sua durata. Se lanciato sugli elementali dell''acqua e su altre creature d''acqua, questo incantesimo ha l''effetto di un incantesimo Lentezza (Volontà nega). L''incantesimo non ha effetto su altre creature.

• Alzare Acqua: L''acqua, o un liquido simile, si alza di livello con lo stesso procedimento della versione precedente. Le barche sollevate in questo modo scivolano via lungo il blocco d''acqua generato dall''incantesimo. Se l''area soggetta all''incantesimo comprende le rive di un fiume, una spiaggia o altre terre vicine al corpo d''acqua sollevato, l''acqua potrebbe riversarsi sulla terraferma.

Per entrambe le versioni si può dimezzare una dimensione orizzontale per raddoppiarne l''altra e cambiare l''intera area di effetto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/control-water'
WHERE name = 'Controllare Acqua';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo fa crescere delle spine dalla propria pelle scoperta. Le creature che colpiscono l’incantatore con un’arma da mischia, un colpo senz’armi o un’arma naturale subiscono 1d6 danni perforanti + 1 danno per livello dell’incantatore (massimo +15). Le creature che usano armi da mischia con portata non sono interessate dall’incantesimo. Le creature che hanno successo nella lotta subiscono 2d6 danni perforanti + 1 danno per livello dell’incantatore (massimo +15). Inoltre, i propri attacchi naturali e i colpi senz’armi infliggono 1d6 danni perforanti aggiuntivi.

Le spine create da questo incantesimo rimangono anche se si assumono nuove forme fisiche, come attraverso Forma Selvatica o effetti di metamorfosi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/thorn-body'
WHERE name = 'Corpo di Spine';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Appoggiando la mano su una creatura vivente, si infonde energia positiva che cura 3d8 danni +1 danno per livello dell’incantatore (massimo +15). Dal momento che i Non Morti sono animati da energia negativa, questo incantesimo infligge loro danni piuttosto che curare le loro ferite. Una creatura Non Morta può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-serious-wounds'
WHERE name = 'Cura Ferite Gravi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantanea',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': È possibile utilizzare Dissolvi Magie per porre fine a incantesimi in atto su una creatura o un oggetto, per sopprimere temporaneamente le capacità di un oggetto magico, oppure per contrastare gli incantesimi di un altro incantatore. Un incantesimo dissolto termina come se il suo tempo di durata si fosse esaurito. Alcuni incantesimi, come riportato nelle loro descrizioni, non possono essere annullati da Dissolvi Magie. Questo incantesimo può dissolvere (ma non contrastare) gli effetti magici così come gli incantesimi. L''effetto di un incantesimo che ha durata istantanea non può essere dissolto, in quanto la magia ha già avuto effetto prima che Dissolvi Magie sia potuto entrare in azione.

Si può scegliere di usare Dissolvi Magie in due modi: come controincantesimo o dissolvere mirato.

• Dissolvere Mirato: Il bersaglio dell''incantesimo è un oggetto, una creatura o un incantesimo. Occorre effettuare una prova di dissolvere (1d20 + il livello dell''incantatore) e paragonarlo con l''incantesimo con il più alto livello dell''incantatore (CD = 11 + livello dell''incantatore dell''incantesimo). Se si ha successo, l''incantesimo termina. Se no, occorre comparare lo stesso risultato all''incantesimo con il successivo livello dell''incantatore più alto. Si deve ripetere questo processo fino a che non sarà stato dissolto un incantesimo che ha effetto sul bersaglio, oppure non sarà stato dissolto alcun incantesimo.

Per esempio, un incantatore di 7° livello lancia Dissolvi Magie, prendendo come bersaglio una creatura sotto l''effetto di Pelle di Pietra (12° livello dell''incantatore) e Volare (6° livello dell''incantatore). La prova di livello dell''incantatore dà come risultato 19. Questa prova non è abbastanza alta per porre fine a Pelle di Pietra (che avrebbe richiesto almeno 23), ma è abbastanza alto per porre fine a Volare (che richiedeva solo un 17). Se la prova avesse avuto come risultato almeno 23, Pelle di Pietra sarebbe stato dissolto, lasciando intatto Volare. Se avesse avuto come risultato 16 o meno, non sarebbe stato dissolto alcun incantesimo.

Si può anche bersagliare uno specifico incantesimo che interessa il bersaglio o un''area (come Muro di Fuoco). Occorre indicare specificamente l''effetto dell''incantesimo che si bersaglia in questo modo. Se la prova di livello dell''incantatore è uguale o superiore alla CD di quell''incantesimo, esso termina. Non viene bersagliato alcun altro incantesimo od effetto sul bersaglio, nel caso la prova non sia abbastanza alta da porre fine all''effetto specificamente dichiarato.

Se si prende a bersaglio un oggetto o una creatura che è effetto di un incantesimo in corso (come un mostro evocato da Evoca Mostri), si effettua una prova di dissolvere per terminare l''incantesimo che ha evocato l''oggetto o la creatura.

Se l''oggetto scelto come bersaglio è un oggetto magico, occorre effettuare una prova di dissolvere contro il livello dell''incantatore dell''oggetto (CD = 11 + il livello dell''incantatore dell''oggetto). Se la si supera, tutte le proprietà magiche dell''oggetto vengono soppresse per 1d4 round. Un oggetto soppresso diventa non magico per la durata di questo effetto. Un''apertura extradimensionale (come una Borsa Conservante) viene temporaneamente chiusa. Le proprietà fisiche di un oggetto magico rimangono immutate: una spada magica soppressa rimane sempre una spada (una spada perfetta, oltretutto). Gli Artefatti e le divinità non sono influenzati dalle magie dei mortali come questa.

Si ottiene un successo automatico in ogni prova di dissolvere che contrasta un incantesimo lanciato da se stessi.

• Controincantesimo: Quando Dissolvi Magie viene usato in questo modo, agisce su un incantatore scelto come bersaglio e viene lanciato come un controincantesimo. A differenza di un vero controincantesimo, tuttavia, c''è il rischio che non funzioni. Occorre superare una prova di dissolvere per contrastare l''incantesimo dell''altro incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dispel-magic'
WHERE name = 'Dissolvi Magie';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': L''incantatore può percepire il mondo creando rumori acuti e ascoltando le loro eco. Questo gli concede Vista Cieca in un raggio di 12 metri. I rumori echeggianti sono troppo acuti per essere sentiti dalla maggior parte delle creature, e possono essere individuati solo dai Draghi, da altre creature con questa capacità (come i Pipistrelli) e da creature con Percezione Cieca o Vista Cieca basate sull''udito. Non si può usare questa capacità se si è Sordi, e non si può individuare niente in un''area di Silenzio. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/echolocation'
WHERE name = 'Ecolocazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '45 m',
  duration = 'istantanea',
  saving_throw = 'Volontà dimezza',
  spell_res = 'sì',
  full_description = ': Questo incantesimo dev''essere usato in aree con vegetazione, altrimenti non ha effetto. Quando lo si lancia, si assorbe tutta l''energia vitale dalla terra circostante per scagliarla contro i propri nemici, infliggendo 1d6 danni da energia positiva per livello dell''incantatore (fino a un massimo di 12d6 al 12° livello) a tutte le creature Non Morte entro l''area dell''incantesimo. Tuttavia, questo fa inaridire la terra intorno a sé entro una propagazione di raggio pari a 1,5 metri per il proprio livello dell''incantatore (fino a un massimo di 18 metri al 12° livello). Tutta la vegetazione nell''area appassisce e muore all''istante. Le creature vegetali non vengono influenzate.

L''esplosione parte dal proprio palmo e riesce ad attraversare oggetti e ostacoli solidi.

Fonte: https://www.d20pfsrd.com/magic/all-spells/l/life-blast/'
WHERE name = 'Esplosione Vitale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'si (innocuo)',
  full_description = ': Imponendo una mano su mascella, artigli, tentacoli o altre armi naturali di una creatura alleata, si aumenta il potere degli attacchi naturali di quella creatura. Ogni attacco naturale effettuato da quella creatura infligge danni come se la creatura fosse di due taglie più grande. Se la creatura è già Mastodontica o Colossale, si raddoppia, invece, la quantità di danno inflitto da ognuno dei suoi attacchi naturali. Questo incantesimo non cambia realmente la taglia della creatura; tutte le sue statistiche tranne la quantità di danno inflitto dai suoi attacchi naturali rimangono invariate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/strong-jaw

Attacco Naturale

Danno Base per Taglia*

Tipo di

Tipo di

Pclm

Mnt

Mns

Pcc

Med

Grd

Enr

Mst

Col

Danno

Attacco

Ala, Tentacolo, Zoccolo

—

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

C

Secondario

Artigli

—

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

T

Primario

Artiglio

—

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

C/T

Primario

Chela, Colpo di Coda

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

4d6

C

Secondario

Corno

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

4d6

P

Primario

Morso

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

4d6

C/P/T

Primario

Pungiglione

—

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

P

Primario

Schianto

—

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

C

Primario

Altro

—

1

1d2

1d3

1d4

1d6

1d8

2d6

2d8

C/P/T

Secondario

* Le singole creature possono deviare da questi valori quando appropriato.'
WHERE name = 'Fauci Robuste';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (vedi testo)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si rivestono i bersagli di spesso fango colloso. Il fango Acceca i bersagli, inoltre le creature possono compiere solo una singola azione di movimento o un''azione standard ogni turno, ma non entrambe (né possono compiere azioni di round completo). Subiscono inoltre penalità -1 ai Tiri per Colpire, alla CA e ai Tiri Salvezza su Riflessi. Le creature soggette a Fango Rallentante si muovono a velocità dimezzata rispetto al normale (arrotondata per difetto al successivo incremento di 1,5 metri) con le normali conseguenze per la capacità di salto della creatura. Una creatura può usare un''azione standard per rimuovere il fango dai suoi occhi o da quelli di una creatura adiacente, ponendo termine alla condizione Accecato per quell''individuo. Per rimuovere abbastanza fango da porre termine all''effetto di Lentezza è necessaria un''azione di round completo. Saltare in un lago o essere soggetti a effetti che creano molta acqua (come Creare Acqua o Spinta Idraulica) rimuove tutto il fango in 1 round.

Un effetto di Velocità lanciato su una creatura rallentata dal fango, gli permette di agire normalmente per la durata di Velocità. Lentezza non si somma con gli effetti di Fango Rallentante. Questo incantesimo non può contrastare o dissolvere Velocità.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/slowing-mud/'
WHERE name = 'Fango Rallentante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale IV';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '36 m',
  duration = '1 round/livello',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': Richiamando il potere della tempesta, si dirige dove si vuole una corrente di vento forte. Questo incantesimo crea una linea di vento del diametro di 1,5 m: la direzione del vento parte dalla propria posizione al momento del lancio dell’incantesimo e rimane costante in quella direzione per la durata dell’incantesimo. Le creature colte in un Fiume di Vento subiscono 4d6 Danni Non Letali e vengono buttate a terra Prone. Un Tiro Salvezza su Tempra riuscito dimezza i danni ed impedisce di cadere Proni.

Una creatura che inizia il suo turno completamente o parzialmente in un Fiume di Vento deve effettuare un Tiro Salvezza su Tempra o è spinta per 6 metri nella direzione del vento e buttata a terra Prona: con un Tiro Salvezza su Tempra riuscito la creatura subisce semplicemente 1d6 Danni Non Letali. Le creature sotto l’effetto di Libertà di Movimento e le creature con il Sottotipo Aria non vengono interessate da Fiume di Vento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/river-of-wind'
WHERE name = 'Fiume di Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Si creano due globi di fulmini che volano nella direzione indicata. Per ogni 4 livelli dell’incantatore oltre il 7°, si crea un ulteriore globo di fulmini (3 globi all’11°, 4 globi al 15°, fino al massimo di 5 globi al 19°). Questi globi volano alla velocità di 6 metri a round e hanno manovrabilità perfetta. Il vento non influisce sul movimento di un globo volante.

Se un globo entra nello spazio di una creatura, si ferma per un round e infligge 3d6 danni da elettricità a quella creatura; un Tiro Salvezza su Riflessi nega il danno. Le creature che indossano armature di metallo subiscono penalità –4 a questo Tiro Salvezza.

Ogni globo si muove finché lo si comanda (dirigere tutti i globi creati con il lancio di un singolo incantesimo è un’azione di movimento); altrimenti rimane fermo. Questi globi non hanno massa e non possono spostare le creature restie o muovere oggetti solidi.

Un Fulmine Globulare si spegne se va oltre il raggio di azione dell’incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/ball-lightning'
WHERE name = 'Fulmine Globulare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi parziale, vedi testo',
  spell_res = 'no',
  full_description = ': Si trasforma un sottile strato di terreno in vetro fuso che si raffredda rapidamente. Le creature nell''area subiscono 1d6 danni da fuoco ogni due livelli dell''incantatore (massimo 10d6) e rimangono Intralciate. Tutte le creature nell''area che superano un Tiro Salvezza su Riflessi subiscono danni dimezzati e non sono Intralciate. Una creatura Intralciata può tentare di liberarsi impiegando un''Azione di Movimento per tentare una prova di Forza o di Artista della Fuga (la CD è pari a quella del Tiro Salvezza dell''incantesimo). 

Il terreno viene ricoperto da una superficie scivolosa e da frammenti taglienti di ossidiana. L''area di effetto è terreno difficile e la CD delle prove di Acrobazia in quest''area aumenta di 5. Una prova riuscita di Acrobazia con CD 15 permette di Correre o Caricare attraverso l''area. Una creatura che cade Prona nell''area subisce 1d6 danni dai frammenti di ossidiana. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/obsidian-flow'
WHERE name = 'Flusso di Ossidiana';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si assume la forma di una creatura di Taglia Minuscola, Piccola, Media o Grande del tipo parassita. Se la forma che si assume ha una una qualunque delle seguenti capacità, si assumono anche queste: Afferrare, Fiuto, Nuotare 18 metri, Percezione Tellurica 9 m, Ragnatela, Risucchio di Sangue, Scalare 18 metri, Scavare 9 metri, Scurovisione 18 m, Stoccata, Stritolare, Trascinare, Travolgere, Veleno, Visione Crepuscolare e Volare 18 metri (buona manovrabilità). Non si ottiene la completa immunità agli effetti di influenza mentale, ma si ottiene bonus +4 a tutti i Tiri Salvezza contro tali effetti.

• Parassita Minuscolo: Se si assume la forma di un parassita di taglia Minuscola, si ottiene bonus di taglia +4 a Destrezza, penalità -2 a Forza e bonus di armatura naturale +1.

• Parassita Piccolo: Se si assume la forma di un parassita di taglia Piccola, si ottiene bonus di taglia +2 a Destrezza e bonus di armatura naturale +2.

• Parassita Medio: Se si assume la forma di un parassita di taglia Media, si ottiene bonus di taglia +2 a Forza e un bonus di armatura naturale +3.

• Parassita Grande: Se si assume la forma di un parassita di taglia Grande, si ottiene bonus di taglia +4 a Forza, penalità -2 a Destrezza e un bonus di armatura naturale +5.

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/vermin-shape-i'
WHERE name = 'Forma Parassitica II';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo funziona come Forma Gassosa, eccetto che l''incantatore assume la forma di una nube Colossale che occupa uno spazio di 9 metri. L''incantatore sceglie l''aspetto generico della nube (bianca, tempestosa, vaporosa, piatta e così via); dopodiché il suo aspetto non può più essere modificato. Persino un controllo ravvicinato non può rivelare che la nube in questione è in realtà una creatura celata magicamente. A ogni controllo l''incantatore risulta in effetti essere una nube, sebbene un incantesimo Individuazione del Magico rivela un''aura di Trasmutazione moderata sulla nube. La velocità di Volare in forma di nube è pari a 9 metri.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cloud-shape'
WHERE name = 'Forma di Nube';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'Concentrazione + 1 round/livello',
  saving_throw = 'Riflessi parziale (vedi sotto)',
  spell_res = 'no',
  full_description = ': Si fa zampillare una colonna di acqua bollente da qualsiasi superficie orizzontale, facendo cadere le creature che si trovano direttamente sopra di essa ed esponendo le creature vicine a gocce bollenti quando lo spruzzo ricade a terra.

Tutte le creature che attraversano il Geyser, o che occupano il quadretto in cui appare, devono effettuare un Tiro Salvezza su Riflessi per evitare di essere scagliate per aria e buttate a terra. Se la creatura fallisce il Tiro Salvezza, subisce 3d6 danni da fuoco a causa dell’acqua bollente e subisce anche i danni da caduta in base all’altezza del Geyser (ad esempio, se il Geyser è alto 15 metri, la creatura subisce 5d6 danni da caduta), atterrando prona in un quadretto a caso adiacente al Geyser. Un Tiro Salvezza riuscito dimezza i danni e nega i danni da caduta, e la creatura è spostata al quadretto più vicino adiacente al geyser (le creature di taglia Grande o più grandi vengono spostate abbastanza, ma non da essere sopra il Geyser anche se comunque adiacenti ad esso). Questo movimento non provoca Attacchi di Opportunità e non conta nel movimento normale della creatura. Inoltre, il Geyser spruzza acqua bollente in un’emanazione semisferica attorno al suo quadretto. Il raggio di questa emanazione è pari a metà dell’altezza del Geyser (ad esempio, un geyser alto 15 metri ha un’emanazione di 7,5 metri di raggio). Tutte le creature entro quest’area, incluso se stessi, subiscono 1d6 danni da fuoco ad ogni round in cui le gocce di acqua bollente cadono addosso.

Si può scegliere di creare un Geyser più piccolo di quanto permesso dal proprio livello, se un ostacolo gli impedisce di raggiungere la sua piena altezza, o se si vuole semplicemente creare uno spruzzo di pioggia bollente più piccolo di quanto un incantesimo Geyser di altezza massima creerebbe.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/geyser'
WHERE name = 'Geyser';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale o contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Questo incantesimo permette a se stessi o alla creatura toccata di muoversi e attaccare normalmente per tutta la sua durata, anche se il soggetto si trova sotto l’effetto di una magia che normalmente gli renderebbe il movimento impossibile, come Lentezza, Nebbia Solida, Paralisi e Ragnatela. Il soggetto supera automaticamente qualsiasi prova di Manovra in Combattimento effettuata per resistere a un tentativo di Lotta, così come tutte le prove di Lottare o di Artista della Fuga per non essere più In Lotta o Immobilizzato.

L’incantesimo permette anche a un personaggio di muoversi e attaccare normalmente sott’acqua, perfino con armi taglienti come asce e spade o con armi contundenti come martelli, mazzafrusti e mazze, purché l’arma venga impugnata e non lanciata. L’incantesimo Libertà di Movimento tuttavia non consente di respirare sott’acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/freedom-of-movement'
WHERE name = 'Libertà di Movimento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra dimezza',
  spell_res = 'sì',
  full_description = ': L’incantesimo fa appassire un singolo Vegetale di qualsiasi taglia. Una creatura Vegetale influenzata subisce 1d6 danni per livello dell’incantatore (fino a un massimo di 15d6) e può tentare un Tiro Salvezza su Tempra per dimezzare i danni. Un Vegetale che non sia una creatura non ha diritto al Tiro Salvezza e avvizzisce immediatamente e muore.

L’incantesimo non ha effetto sul suolo o sulla vita vegetale circostante.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blight'
WHERE name = 'Inaridire';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Si conferisce ai propri polmoni una forza e una capienza inumana, permettendogli di inalare per intero e senza subire danni, gas, nebbia, fumo, foschia o effetti simili a una nube. Se la nube bersaglio è un effetto magico, si deve superare una prova di livello dell''incantatore (CD 11 + il livello dell''incantatore dell''effetto) per inalarla. Inalare la nube la rimuove dall''area, lasciando al suo posto aria normale. Se la nube è troppo grande per essere influenzata con un singolo lancio di questo incantesimo, l''incantatore può inalare una parte della nube, ma deve essere quella più vicina a lui. Questo incantesimo non ha effetto sulle creature gassose. Può influenzare solo una nube dalla durata istantanea (come un soffio) se il personaggio prepara un''azione per lanciare l''incantesimo in risposta. 

Quando viene inalata, la nube non infligge danni all''incantatore, che può contenerla dentro di sé senza subire danni per un massimo di 1 round per livello, ma per farlo deve trattenere il fiato (anche se normalmente non necessita di respirare). Se la nube ha una durata, il tempo che la nube trascorre dentro l''incantatore conta ai fini di tale durata. Come azione standard, l''incantatore può rilasciare la nube contenuta dentro di sé come un soffio, riempiendo un cono di 18 metri (o l''area originale della nube, se minore di un cono di 18 metri). Qualsiasi creatura all''interno dell''area del soffio è soggetta ai suoi normali effetti, effettuando Tiri Salvezza e prove di Resistenza agli Incantesimi come appropriato contro la CD originale della nube. La nube esalata riprende la sua durata, se ne aveva una. Esalare la nube conservata termina questo incantesimo. Se la nube non viene esalata prima che la durata dell''incantesimo giunga al termine, l''incantatore subisce gli effetti della nube e fallisce automaticamente qualsiasi Tiro Salvezza per resisterle. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/absorbing-inhalation'
WHERE name = 'Inalazione Assorbente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '10 minuti/livello',
  saving_throw = 'Riflessi nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Questo incantesimo ricopre il pavimento, il terreno o qualsiasi altra superficie orizzontale imperturbata (come un placido lago o un dolce fiume) con un velo di ghiaccio lentamente crescente. Lo strato iniziale di ghiaccio non si può formare in un''area occupata da oggetti o creature fisiche. Al momento della creazione, la sua superficie deve essere liscia e intatta. Il ghiaccio è duro, resistente e opaco e ha uno spessore di 2,5 centimetri per livello dell''incantatore. Il ghiaccio è abbastanza resistente da sostenere il peso di un cavallo tipico, permettendo così alle creature di attraversare uno specchio d''acqua.

Ogni quadrato di 3 metri di ghiaccio ha 3 Punti Ferita per 2,5 centimetri di spessore. Le creature possono colpire automaticamente il ghiaccio. Una sezione di ghiaccio i cui Punti Ferita scendono a 0, viene distrutta, lasciando un''area con pezzi di ghiaccio, poltiglia e neve che conta come terreno difficile. Se una creatura tenta di irrompere attraverso il ghiaccio con un singolo attacco, la CD della prova di Forza è 15 + il livello dell''incantatore.

Ogni round, al proprio turno, lo strato di ghiaccio cresce di 30 centimetri in tutte le direzioni, ma non verso l''incantatore. Questa crescita è abbastanza lenta da permettere alle creature nell''area di spostarsi dentro o fuori dal ghiaccio. Se il ghiaccio crescente copre interamente il quadretto di una creatura, quest''ultima deve scegliere se salire sulla lastra di ghiaccio, essere buttata a terra dalla lastra di ghiaccio o essere spinta nel quadretto adiacente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/creeping-ice/'
WHERE name = 'Ghiaccio Strisciante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '3 m',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Guscio Antivegetali crea una barriera mobile e invisibile che protegge tutte le creature al suo interno dagli attacchi di creature Vegetali e piante animate. Come in molti incantesimi di abiurazione, spingere una barriera contro una creatura che ne viene tenuta all’esterno provoca il cedimento della barriera.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/antiplant-shell'
WHERE name = 'Guscio Antivegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo anima il ramo di un albero e lo indirizza contro i nemici dell''incantatore. Fino al 10° livello dell''incantatore, si può scegliere come bersaglio un albero Enorme. Tra l''11° e il 15° livello, si può scegliere un albero Mastodontico, e dal 16° livello dell''incantatore un albero Colossale. Il ramo animato effettua attacchi di schianto con un punteggio di Forza pari a 10 + il livello dell''incantatore. Il ramo colpisce una volta per round con un bonus di attacco base pari al livello dell''incantatore + il modificatore di Forza del ramo, corretto dal modificatore di taglia appropriato (2 per Enorme, 4 per Mastodontico, 8 per Colossale). Lo schianto di un albero Enorme infligge 2d6 danni, lo schianto di un albero Mastodontico infligge 3d6 danni e quello di un albero Colossale infligge 4d6 danni; l''albero aggiunge 1 volta e mezza il suo modificatore di Forza a questo danno. Un albero Enorme ha portata 4,5 metri, uno Mastodontico ha portata 6 metri e uno Colossale ha portata 9 metri. L''albero attacca la creatura indicata dall''incantatore al momento del lancio dell''incantesimo, e non si può spostare. Si può indirizzare l''albero verso un nuovo bersaglio con un''azione di movimento. L''albero non ottiene un bonus per il fiancheggiamento, né può aiutare un altro combattente a fiancheggiare. Non può attaccare un nemico che l''incantatore non può vedere. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/arboreal-hammer'
WHERE name = 'Martello Arboreo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi nega e Tempra nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Una crepitante nube temporalesca sferica vola nella direzione indicata e infligge danni da elettricità. Ha una velocità di Volare di 6 m con manovrabilità perfetta. Se entra nello spazio occupato da una creatura, il temporale si ferma per quel round e infligge 6d6 danni da elettricità alla creatura (Riflessi nega). Fornisce Occultamento (20% di probabilità di mancare) a chiunque sia all''interno e, la sua luce tremolante illumina l''area come una Candela.

La prima creatura che subisce danni dalla nube è anche Stordita per 1 round (Tempra nega); questo è un effetto sonoro.

La sfera si muove finché la si dirige attivamente (come azione di movimento); altrimenti resta immobile e crepita di fulmini. Può essere spostata da effetti di vento e si considera come creatura Piccola allo scopo di determinare come i venti la influenzano. La sfera non ha sostanza fisica e non può esercitare alcuna forza su creature o oggetti corporei. Scompare se esce dal raggio di azione dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aggressive-thundercloud/'
WHERE name = 'Nembo Aggressivo Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = '1 giorno (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Toccando il terreno si maledice l''area con quattro Pericoli innaturali, ognuno con GS 6 o inferiore. I pericoli vengono predisposti in modo che, se alcuni o tutti vengono affrontati insieme, l''incontro non può avere un GS effettivo superiore a 7 (per esempio, due pericoli con GS 5 potrebbero essere incontrati assieme).

Sebbene questo faccia apparire i pericoli frequentemente, le loro manifestazioni restano imprevedibili: non si può controllare quando inizino o finiscano i pericoli, né dove appariranno sul terreno maledetto.

Maledire Terreno può essere reso permanente con un incantesimo Permanenza lanciato da un incantatore di 11° livello o superiore al costo di 7.500 mo.

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/curse-terrain/'
WHERE name = 'Maledire Terreno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si invoca il potere mistico della luna per far cadere il bersaglio in preda ad una folle frenesia bestiale. Se il bersaglio fallisce il Tiro Salvezza, rimane Frastornato per 1 round, lasciando cadere gli oggetti che ha in mano nel momento in cui le unghie gli diventano lunghi artigli e i denti zanne affilate. Il bersaglio ottiene un attacco con il morso e due attacchi con gli artigli che infliggono danni appropriati per la taglia della creatura e, per il resto della durata dell’incantesimo, il bersaglio si comporta come se fosse simultaneamente sotto l’effetto degli incantesimi Ira e Confusione, preferendo attaccare con le sue armi naturali piuttosto che compiere altre azioni. Durante il round finale della durata dell’incantesimo, il bersaglio è di nuovo Frastornato quando ritorna al suo stato normale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/moonstruck'
WHERE name = 'Lunaticismo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo caratteristico dei Portalanterna funziona come Luce Diurna, ma dura più a lungo. Inoltre, come Azione Veloce una volta durante la durata dell''incantesimo, si può volere che la luce cerchi di porre fine a un effetto di oscurità magica situato entro 18 metri dalla luce emessa da questo incantesimo. Si tenta un tiro di dissolvere (1d20 + il tuo livello di incantatore), con una CD pari a 11 + il livello di incantatore dell''effetto di oscurità. Se si ha successo, l''effetto di oscurità termina. Indipendentemente dal risultato, la luce di questo incantesimo si attenua fino a raggiungere la luminosità di una torcia per la durata residua dell''incantesimo.

Fonte: Brightest Light'
WHERE name = 'Luce Intensificata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si è in grado di trasformare un certo numero millepiedi, ragni o scorpioni di taglia normale in creature più grosse. È possibile trasformare soltanto un tipo di parassita (quindi lo stesso incantesimo non può influenzare sia un ragno che un millepiedi). Il numero di parassiti che si possono influenzare dipende dal proprio livello dell’incantatore; vedi tabella sotto.

Livello dell’Incantatore

Millepiedi

Ragni

Scorpioni

9° o inferiore

3

2

1

10°-13°

4

3

2

14°–17°

6

4

3

18°–19°

8

5

4

20° o superiore

12

8

6

I parassiti giganti creati da questo incantesimo non tentano di ferire l’incantatore, ma il suo controllo sulle creature è comunque limitato a comandi molto semplici (“attacca”, “difendi”, “fermati”, e così via). Ordini come attaccare un certo tipo di creatura nel momento in cui si presenta, o fare la guardia per uno specifico scopo sono troppo complessi perché i parassiti li possano capire. A meno che non venga loro ordinato diversamente, i parassiti giganti attaccano chiunque o qualsiasi cosa sia loro vicina.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/giant-vermin'
WHERE name = 'Parassiti Giganti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello o finché non viene scaricato',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Protezione dall''Energia conferisce Immunità temporanea al tipo di energia specificato al momento di lanciare l''incantesimo (acido, freddo, elettricità, fuoco o sonora). Una volta che l''incantesimo ha assorbito 12 danni da energia per livello dell''incantatore (massimo 120 danni) per un soggetto, gli effetti dell''incantesimo, per quel soggetto, terminano. 

Protezione dall''Energia si sovrappone (senza sommarsi) a Resistere all''Energia Collettivo. Se un personaggio è protetto da Protezione dall''Energia Collettivo e da Resistere all''Energia Collettivo, è l''incantesimo di protezione ad assorbire i danni fino a che non si è esaurito.

La durata di questo incantesimo si può dividere in intervalli da 10 minuti tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/protection-from-energy'
WHERE name = 'Protezione dall''Energia Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': Con questo incantesimo, si riporta in vita una creatura Morta mettendola in un altro corpo, sempre che al momento del lancio la morte non sia avvenuta da più di una settimana, e che l''anima del soggetto sia libera e disposta a tornare. Se l''anima del soggetto non è disposta a tornare, l''incantesimo non funziona; quindi, i soggetti che desiderano tornare in vita non hanno Tiri Salvezza.

Visto che la creatura morta torna in vita all''interno di un nuovo corpo, tutte le Malattie e i difetti fisici vengono curati. La condizione dei resti non è un fattore determinante. Finché esiste ancora qualche piccola porzione del corpo della creatura, può essere reincarnata, ma la porzione che riceve l''incantesimo deve esser stata parte del corpo della creatura al momento della morte. L''effetto magico di questo incantesimo crea dagli elementi naturali a disposizione un corpo adulto giovane interamente nuovo che la sua anima possa abitare. Questo processo richiede 1 ora per essere completato. Quando il corpo è pronto, il soggetto vi si reincarna.

d%

Incarnazione

Forza

Destrezza

Costituzione

01

Bugbear

+4

+2

+2

02–13

Nano

+0

+0

+2

14–25

Elfo

+0

+2

–2

26

Gnoll

+4

+0

+2

27–38

Gnomo

–2

+0

+2

39–42

Goblin

–2

+2

+0

43–52

Mezzelfo

+0

+2

+0

53–62

Mezzorco

+2

+0

+0

63–74

Halfling

–2

+2

+0

75–89

Umano

+0

+0

+2

90–93

Coboldo

–4

+2

–2

94

Lucertoloide

+2

+0

+2

95–98

Orco

+4

+0

+0

99

Troglodita

+0

–2

+4

100

Altro (a scelta del GM)

?

?

?

Una creatura reincarnata ricorda la maggior parte delle informazioni riguardo alla sua vita e alla sua forma passata. Mantiene tutte le capacità di classe, i Talenti e i gradi di Abilità che già possedeva. La sua classe, il suo Bonus di Attacco Base, i suoi bonus ai Tiri Salvezza base e i suoi Punti Ferita sono immutati. I punteggi di Forza, Destrezza e Costituzione dipendono parzialmente dal suo nuovo corpo. Innanzitutto si eliminano i modificatori razziali del soggetto (visto che non appartiene più necessariamente alla sua razza precedente) e si applicano i modificatori indicati nella tabella sottostante ai Punteggi di Caratteristica rimanenti. Il soggetto ottiene 2 Livelli Negativi Permanenti quando viene reincarnato. Se il soggetto è di 1° livello, gli vengono invece risucchiati 2 punti di Costituzione. (Se questo dovesse ridurre la sua Costituzione a 0 o meno, il soggetto non può essere reincarnato). Un personaggio che è morto mentre aveva degli incantesimi preparati ha il 50% di probabilità di perdere quegli incantesimi dopo essere stato reincarnato. Una creatura che ha la capacità di lanciare incantesimi e che non prepara incantesimi (come uno Stregone) ha il 50% di probabilità di perdere qualunque slot incantesimo non usato come se avesse lanciato quell''incantesimo.

È possibile che il cambiamento delle sue caratteristiche gli impedisca di continuare a portare avanti la sua precedente classe di personaggio, nel qual caso, il soggetto farebbe bene a diventare multiclasse.

Per una creatura Umanoide, la nuova incarnazione viene determinata tirando sulla tabella seguente. Per le creature non umanoidi, si dovrebbe creare una tabella simile.

Una creatura che è stata trasformata in una creatura Non Morta o uccisa con un effetto di morte non può ritornare in vita tramite questo incantesimo. I Costrutti, gli Elementali, gli Esterni e le creature Non Morte non possono essere reincarnate. L''incantesimo può riportare in vita una creatura morta di vecchiaia.

La creatura reincarnata guadagna tutte le capacità associate alla sua nuova forma, incluse le forme di movimento e la velocità, l''Armatura Naturale, gli attacchi naturali, le Capacità Straordinarie e così via, ma non parla automaticamente il linguaggio della nuova forma.

Un incantesimo Desiderio o Miracolo può riportare un personaggio reincarnato alla sua forma originale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reincarnate'
WHERE name = 'Reincarnazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '24 ore',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ignorano i danni fisici della mezz''età. Questo incantesimo non fa apparire più giovani, né evita di morire di vecchiaia, ma finché l''incantesimo è attivo, si ignorano:

• Le penalità -1 a Forza, Destrezza e Costituzione che derivano dalla mezz''età.

Mentre si è sotto gli effetti di questo incantesimo si mantengono i bonus a Intelligenza, Saggezza e Carisma relativi all''età.

Le penalità addizionali derivanti dalla vecchiaia o dall''età venerabile si applicano interamente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/age-resistance'
WHERE name = 'Resistenza all''Invecchiamento Inferiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '3 m',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno o Volontà nega',
  spell_res = 'sì',
  full_description = ': Una barriera invisibile respinge i parassiti. Un parassita con meno di un terzo del proprio livello dell’incantatore in Dadi Vita non può oltrepassarla.

Se invece ha almeno un terzo del proprio livello dell’incantatore in Dadi Vita può oltrepassare la barriera superando un Tiro Salvezza su Volontà. Anche così, oltrepassare la barriera infligge al parassita 2d6 danni, e premere contro di essa gli provoca dolore, il che è sufficiente a far desistere la maggior parte dei parassiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/repel-vermin'
WHERE name = 'Respingere Parassiti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '90 m',
  duration = 'Concentrazione + 1 round/livello (I)',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo genera un''accattivante canzone ultraterrena che attira in modo seducente tutti coloro che la sentono. Il richiamo del nixie influenza un massimo di 24 Dadi Vita di creature. Le creature presenti nell''area che falliscono il Tiro Salvezza vengono attratte dalla canzone, e si muovono verso l''incantatore utilizzando il metodo più rapido a loro disponibile. Se il percorso li conduce attraverso una area pericolosa, come dentro un fuoco o giù da un precipizio, ciascuna creatura avrà diritto a un ulteriore Tiro Salvezza, per porre termine all''effetto prima di entrare nella zona di pericolo. Le creature attratte dalla canzone dell''incantesimo non possono intraprendere alcuna azione, tranne che difendersi. Una vittima che si trova entro 1,5 metri dall''incantatore si limita a restare immobile e rimanere Affascinata per la durata dell''incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/nixie-s-lure'
WHERE name = 'Richiamo del Nixie';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 ora/livello (I)',
  saving_throw = 'Riflessi parziale',
  spell_res = 'sì',
  full_description = ': Il terreno roccioso, i pavimenti di pietra e le superfici simili modificano la loro forma fino a coprirsi di lunghe punte affilate che spuntano dalla roccia.

Questi spuntoni di pietra impediscono i movimenti attraverso un’area e infliggono danni. Qualunque creatura si sposti a piedi all’interno o attraverso l’area dell’incantesimo si muove a velocità dimezzata. Inoltre, qualunque creatura si sposti attraverso l’area subisce 1d8 danni perforanti per ogni 1,5 metri di movimento in quest’area.

Qualunque creatura subisca danni da questo incantesimo deve anche superare un Tiro Salvezza su Riflessi per evitare ferite ai piedi e alle gambe. Un Tiro Salvezza fallito riduce la velocità della creatura alla metà rispetto al normale per 24 ore oppure finché la creatura ferita non riceve un incantesimo curare (che restituisce anche i Punti Ferita persi). Un altro personaggio può rimuovere questa penalità impiegando 10 minuti a medicare le ferite e superando una prova di Guarire contro la CD del Tiro Salvezza dell''incantesimo.

Le trappole magiche come rocce aguzze sono difficili da individuare. Un personaggio con Scoprire Trappole può usare la sua Abilità Percezione per trovare le Rocce Aguzze. La CD è 25 + il livello dell’incantesimo, o CD 29 per Rocce Aguzze. Rocce Aguzze è una trappola magica che non può essere disattivata con l’Abilità Disattivare Congegni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/spike-stones'
WHERE name = 'Rocce Aguzze';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il bersaglio può attraversare pietra, terriccio o qualsiasi tipo di terra tranne il metallo, con la stessa facilità di un pesce nell''acqua e muovendosi alla velocità di 1,5 metri. Se è protetto dai danni da fuoco può muoversi anche attraverso la lava incandescente, il suo passaggio non lascia buchi o gallerie, né produce increspature o altri segni della sua presenza. Richiede la sola concentrazione necessaria a camminare, quindi il soggetto è in grado di attaccare o lanciare incantesimi normalmente, anche se non può correre. Lanciare Muovere il Terreno su un''area che contiene il bersaglio lo spinge indietro di 9 metri, Stordendolo per 1 round (Tempra CD 15 nega). Questo incantesimo non conferisce al bersaglio la capacità di respirare sottoterra, quindi quando passa attraverso la materia solida, la creatura deve trattenere il fiato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/earth-glide'
WHERE name = 'Scorrere sulla Terra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'vedi testo',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si è in grado di vedere e sentire creature che possono trovarsi a qualunque distanza. Se il soggetto supera un Tiro Salvezza su Volontà, il tentativo fallisce. La difficoltà del Tiro Salvezza cambia a seconda di quanto bene si conosca il soggetto e del tipo di connessione fisica (se presente) con quella creatura. Inoltre, se il soggetto si trova su un altro piano, ottiene bonus +5 al Tiro Salvezza su Volontà.

Conoscenza

Modificatore al Tiro Salvezza

Nessuna*

+10

Di seconda mano (lo si conosce per sentito dire)

+5

Di prima mano (lo si è incontrato una volta)

+0

Familiare (lo si conosce molto bene)

–5

Connessione

Modificatore al Tiro Salvezza su Volontà

Descrizione o immagine

–2

Oggetto personale o abito

–4

Parte del corpo, ciocca di capelli, unghie ecc.

–10

*Occorre avere un qualche tipo di connessione (vedi sotto) con una creatura di cui non si sa nulla.

Se il Tiro Salvezza fallisce, si può vedere e sentire il soggetto e le immediate vicinanze del soggetto (approssimativamente 3 metri in tutte le direzioni dal soggetto). Se il soggetto si muove, il sensore lo segue ad una velocità fino a 45 metri.

Come tutti gli incantesimi di Divinazione (scrutamento), il sensore ha la vostra completa capacità visiva, inclusi tutti gli effetti magici. Inoltre, i seguenti incantesimi hanno una probabilità del 5% per livello dell''incantatore di funzionare attraverso il sensore: Individuazione del Bene, Individuazione del Caos, Individuazione del Magico, Individuazione del Male, Individuazione della Legge e Messaggio.

Se il Tiro Salvezza ha successo, non si può tentare di Scrutare di nuovo un soggetto per almeno 24 ore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/scrying'
WHERE name = 'Scrutare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Un globo di fuoco bruciante rotola in qualsiasi direzione indicata e brucia coloro che colpisce. Si muove a una velocità di 9 metri per round e, come parte del suo movimento, può salire o saltare fino a 9 metri per colpire un bersaglio. Se entra in uno spazio occupato da una creatura, smette di avanzare per il resto del round e le infligge 6d6 danni da fuoco, sebbene il soggetto possa negare i danni superando un Tiro Salvezza su Riflessi. Le creature che falliscono il Tiro Salvezza contro la sfera Prendono Fuoco. Se una creatura Prende Fuoco, la CD per estinguere le fiamme è pari alla CD di questo incantesimo. 

La sfera infuocata è in grado di rotolare oltre le barriere più basse di 120 cm. Incendia eventuali sostanze infiammabili che tocca ed illumina l''area in cui si trova con la stessa intensità di una torcia.

La sfera si muove fino a quando la si continua a dirigerla (con un''azione di movimento), altrimenti rimane immobile e continua a bruciare; può essere spenta con qualsiasi metodo che spegnerebbe un normale fuoco delle sue dimensioni. La sua superficie ha una consistenza spugnosa e morbida che non causa altri danni che quelli da fuoco, e non è in grado di spingere via creature che le si oppongono o di abbattere grossi ostacoli. La sfera infuocata svanisce se esce dal raggio di azione dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/flaming-sphere'
WHERE name = 'Sfera Infuocata Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Una violenta grandine magica comincia a cadere per un round completo, infliggendo 3d6 danni contundenti e 2d6 danni da freddo ad ogni creatura nell’area. Questo danno si verifica solo una volta quando viene lanciato l’incantesimo. Per la durata residua dell’incantesimo, neve pesante e nevischio si abbattono sull’area. Viene applicata penalità -4 ad ogni prova di Percezione effettuata all’interno dell’effetto di Tempesta di Ghiaccio che viene trattata come terreno difficile. Alla fine della durata, la grandine scompare, non lasciando dietro di sé nessun effetto permanente (se non i danni inflitti).

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/ice-storm'
WHERE name = 'Tempesta di Ghiaccio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Pezzi roventi di roccia vulcanica e nubi di cenere precipitano quando si lancia questo incantesimo, infliggendo 3d6 danni contundenti e 2d6 danni da fuoco a ogni creatura nell''area. Questo danno si infligge una sola volta, quando l''incantesimo viene lanciato. Per la restante durata dell''incantesimo, una fitta pioggia di cenere cade nell''area. Le creature al suo interno subiscono penalità -4 alle prove di Percezione e l''intera area è considerata terreno difficile. Al termine della durata, le rocce e la cenere spariscono senza lasciare conseguenze (oltre al danno inflitto). 

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/volcanic-storm'
WHERE name = 'Tempesta Vulcanica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Si crea uno strato di fanghiglia sulla propria mano. Quando si colpisce con un attacco di contatto in mischia con la fanghiglia, questa si stacca e si attacca al bersaglio, a questo punto funziona come Fanghiglia Verde, infliggendo 1d3 danni a Costituzione per round. Qualsiasi cosa distrugga la Fanghiglia Verde (raschiatura, congelamento, combustione, taglio, la luce solare o Rimuovi Malattia) distrugge questa fanghiglia. Se la fanghiglia uccide una creatura, consuma il corpo e poi muore. Non può trasferirsi a una creatura diversa dal bersaglio, e muore se si separa dal bersaglio originario.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/touch-of-slime'
WHERE name = 'Tocco di Fanghiglia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = 'no',
  full_description = ': Quando si lancia questo incantesimo, le proprie ghiandole salivari si trasformano e si riempiono istantaneamente di un potente Veleno. Si effettua un attacco di contatto a distanza contro un singolo bersaglio nel raggio d''azione; se si colpisce, il bersaglio subisce una dose di Soffio del Dio Mantide. Il tiro salvezza su Tempra per questo veleno è lo stesso del tiro salvezza dell''incantesimo, non il tiro salvezza standard per il veleno.

Fonte: Crimson Breath'
WHERE name = 'Soffio Cremisi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'vedi testo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Qualunque oggetto di ferro o di lega di ferro che venga toccato si arrugginisce istantaneamente. Se l''oggetto è così grande da non entrare in un volume del raggio di 90 cm, un volume del raggio di 90 cm del metallo si arrugginisce ed è distrutto. Gli oggetti magici di metallo sono immuni a questo incantesimo.

Per mezzo di un attacco di contatto in mischia compiuto con successo è possibile usare Stretta Corrosiva in combattimento. Se usato in questo modo, distrugge istantaneamente 1d6 punti di Classe Armatura ottenuti da un''armatura di metallo (fino al massimo grado di protezione che offre l''armatura) tramite corrosione.

Le armi usate da un avversario fatto bersaglio dell''incantesimo sono più difficili da afferrare. Si deve compiere con successo un attacco di contatto in mischia contro l''arma. Un''arma di metallo che venga colpita viene istantaneamente distrutta. Colpire l''arma di un avversario provoca un attacco di opportunità. Inoltre, bisogna toccare l''arma e non basta esserne toccati.

Contro le creature di ferro, Stretta Corrosiva infligge istantaneamente 3d6 danni +1 danno per livello dell''incantatore (massimo +15) per ogni attacco riuscito. L''incantesimo dura 1 round per livello, e si può compiere un attacco di contatto in mischia ogni round.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/rusting-grasp'
WHERE name = 'Stretta Corrosiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Gli attacchi naturali del bersaglio portano la Febbre Lurida (CD 10 + ½ DV della creatura + modificatore di Cos della creatura).

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/plague-carrier'
WHERE name = 'Untore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si fa increspare l''aria nell''area in cui le creature hanno volato fino a 1 giorno fa per Livello dell''Incantatore. Queste increspature aeree sono colorate da ciuffi luminosi, che forniscono un''illuminazione sufficiente a seguire le tracce senza penalità dovute alla scarsa illuminazione. L''area si muove con voi, permettendovi di seguire le tracce in aria per lunghe distanze, a patto che possiate Volare o seguire il percorso lungo il terreno entro il raggio d''azione per leggere le tracce aeree. Anche altre creature possono seguire le tracce, purché si muovano con voi. La CD base delle prove di Sopravvivenza per seguire le creature nell''aria con questo incantesimo è la stessa di seguire le creature sul terreno morbido.

Fonte: Aerial Tracks'
WHERE name = 'Tracce Aeree';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Vera Forma rimuove tutti gli effetti di metamorfosi da una creatura, ridandole la sua vera forma, anche contro la sua volontà. Contro le creature interessate da effetti magici di metamorfosi (come Metamorfosi Funesta o Forma di Gigante I), si deve effettuare una prova di livello dell’incantatore (1d20 + livello dell’incantatore, massimo +15) contro CD 11 + il livello dell’incantatore dell’effetto. Il successo significa che l’effetto di metamorfosi termina immediatamente.

Una creatura con la Capacità Soprannaturale di mutare forma (come un Licantropo) deve effettuare un Tiro Salvezza su Volontà o cambiare immediatamente forma. Se fallisce questo primo Tiro Salvezza, la creatura può tentare un altro Tiro Salvezza su Volontà per sopraffare l’incantesimo come azione di round completo che non provoca Attacchi di Opportunità. Se questo Tiro Salvezza riesce, l’incantesimo termina e la creatura è in grado di mutare ancora forma. Se il secondo Tiro Salvezza fallisce, la creatura rimane bloccata nella sua vera forma per la durata dell’incantesimo, impedendo che ulteriori effetti di metamorfosi mutino la sua forma.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/true-form'
WHERE name = 'Vera Forma';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si assume l’aspetto di un lupo, incluse alcune sue caratteristiche fisiche. I tratti diventano più marcati, le orecchie si allungano e spuntano zanne aguzze e pelliccia. Si ottiene Bonus di Potenziamento +4 a Forza e Destrezza, la capacità Fiuto, Bonus di Potenziamento +2 agli attacchi per Sbilanciare e si può effettuare una manovra di Sbilanciare come azione veloce senza provocare Attacchi di Opportunità. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/aspect-of-the-wolf'
WHERE name = 'Aspetto del Lupo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo funziona come Alleato Planare Inferiore, tranne che per il fatto che si attira un Folletto di 6 DV o meno a prestarvi il suo aiuto con un''offerta di musica o di qualcos''altro che trova attraente. Come Alleato Planare Inferiore, questo incantesimo è imprevedibile e il folletto che risponde al richiamo dipende dai capricci della natura e dei folletti, non dalla vostra scelta. Oltre alla componente materiale dell''incantesimo, è necessario superare una prova di Conoscenze (natura) o una prova di Intrattenere (CD = 20 + DV del bersaglio) per invogliare il folletto a comparire, dopodiché si può negoziare il servizio e il pagamento. La DV massima del folletto che si può richiamare con questo lancio è pari al risultato della prova -20. Ad esempio, se il risultato del tiro è 24, la DV massima del folletto chiamato è 4. Un risultato alto non consente di superare la DV massima dell''incantesimo, mentre un risultato di 20 o inferiore significa che non è possibile chiamare alcun folletto. Se il folletto non gradisce la vostra offerta, può semplicemente scegliere di rifiutare, nel qual caso non si spendono le componenti materiali dell''incantesimo, né le offerte né il pagamento.

Fonte: Entice Fey, Lesser'
WHERE name = 'Attirare Folletti Inferiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo, poi 1 ora o fino all''attivazione più 6 round',
  saving_throw = NULL,
  spell_res = 'si (innocuo)',
  full_description = ': Si curano le ferite del bersaglio, curando 3d8 Punti Ferita + 1 punto per Livello dell''Incantatore (massimo +15) come Cura Ferite Gravi, ma lasciando sul suo corpo una sottile tossina che rimane inerte finché non la si attiva. Un bersaglio che decide di superare il Tiro Salvezza su Volontà e lo supera, viene guarito per metà (come Curare Ferite Gravi) e annulla la tossina. Altrimenti, è possibile attivare la tossina concentrandosi sull''incantesimo come Azione Standard; a quel punto la vittima subisce 1d3 danni alla Forza per 6 round. Una volta che il veleno è attivo, il bersaglio può tentare un tiro salvezza su Tempra ogni round per annullare i danni di quel round e porre fine all''afflizione. Se non si attiva il Veleno per 1 ora, l''incantesimo termina e lascia il bersaglio illeso.

Individuazione del Veleno rivela Balsamo Velenoso inerte solo se l''incantatore riesce a effettuare una prova di livello dell''incantatore contro una CD pari a 15 + il proprio livello dell''incantatore. I tentativi di identificare il balsamo velenoso con una prova di Abilità lo identificano erroneamente come Cura Ferite Gravi. Un osservatore ingannato scambia l''aura del balsamo velenoso come l''aura persistente di un effetto istantaneo.

Fonte: Poisonous Balm'
WHERE name = 'Balsamo Velenoso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = '1 round',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo funziona come Visione del Vero, tranne che per quanto indicato sopra. 

Fonte: Glimpse of Truth'
WHERE name = 'Barlume di Verità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Quando si lancia questo incantesimo su una creatura, la sua pelle diventa lucida e viscida ed è in grado di rigenerare i danni ad ogni round. Quando è sotto gli effetti dell’incantesimo, la creatura ottiene Guarigione Rapida 5, Resistenza al Fuoco 20 e Bonus di Competenza +2 alla DMC.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blessing-of-the-salamander'
WHERE name = 'Benedizione della Salamandra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Con un lungo sussurro sibilante, si trasformano comuni pezzi di legno in vari tipi di serpenti che immediatamente attaccano i propri nemici. Finché i serpenti rimangono in vista, si possono dirigere telepaticamente le loro azioni come azione gratuita. Si può applicare questo incantesimo solo ad oggetti di legno che non siano in possesso di una creatura o che non siano parte di una struttura più grande o di una pianta. Ogni volta che si lancia questo incantesimo si può creare una quantità di serpenti pari al proprio livello dell’incantatore. Serpenti più potenti costano più della norma, come indicato di seguito.

• Serpente Velenoso: Un rametto o pezzo di legna da ardere. Conta come 1 serpente.

• Serpente Strangolatore: Un bastone o un ramo. Conta come 2 serpenti.

• Serpente Velenoso Avanzato: Un rametto o pezzo di legna da ardere. Conta come 2 serpenti.

• Serpente Strangolatore Avanzato: Un bastone o un ramo. Conta come 3 serpenti.

• Serpente Velenoso Gigante Avanzato: Un pezzo di legna o un mucchio di detriti. Conta come 4 serpenti.

• Serpente Strangolatore Gigante Avanzato: Un albero caduto o un grosso mucchio di detriti. Conta come 5 serpenti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/snake-staff'
WHERE name = 'Bastone Serpente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì (innocuo)',
  full_description = ': I soggetti possono camminare nell''aria come se camminassero su terreno solido. Salire più in alto è come Scalare il fianco di una collina. L''angolazione massima di salita o di discesa è 45 gradi, a una velocità pari a metà di quella normale della creatura che sta camminando.

Un forte vento (oltre 31,5 km/h) può spingere i soggetti o tenerli bloccati. Alla fine del loro turno in ogni round, i soggetti che camminano nell''aria vengono spinti di 1,5 metri per ogni 7,5 km/h di velocità del vento. Le creature possono essere soggette ad ulteriori penalità in caso di vento particolarmente forte o turbolento, per esempio possono perdere il controllo del movimento, o subire danni fisici nel caso urti contro qualcosa.

Se l''incantesimo termina la sua durata mentre i soggetti sono ancora in aria, la magia svanisce lentamente. I soggetti scendono a una velocità di 18 metri per round per 1d6 round. Se in quel lasso di tempo le creatura raggiungono il terreno, atterrano senza problemi. Altrimenti, precipitano per il resto della distanza, e subiscono 1d6 danni ogni 3 metri di caduta. Poiché dissolvere un incantesimo fa sì che questo termini, i soggetti scendono in questo modo anche nel caso in cui l''incantesimo Camminare nell''Aria Collettivo venga dissolto, ma non nel caso che sia negato da un Campo Antimagia.

È possibile lanciare Camminare nell''Aria Collettivo su una cavalcatura appositamente addestrata in modo che sia in grado di Cavalcare nell''aria. È inoltre possibile addestrare una cavalcatura a muoversi con l''ausilio di Camminare nell''Aria Collettivo (conta come comando) con una settimana di lavoro e una prova di Addestrare Animali con CD 25.

La durata di questo incantesimo si può dividere in intervalli da 10 minuti tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/air-walk'
WHERE name = 'Camminare nell''Aria Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'personale',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si diventa tutt’uno con la natura, ottenendo una conoscenza approfondita del territorio circostante. Si ottiene la consapevolezza immediata relativa a un massimo di 3 informazioni sugli argomenti seguenti: terreno e territorio, vegetali, minerali, corsi d’acqua, abitanti, specie generiche di animali presenti, presenza di creature boschive, presenza di potenti creature innaturali o perfino lo stato di salute generale dell’ambiente circostante.

Negli ambienti esterni, l’incantesimo agisce in un raggio di 1,5 km per livello dell’incantatore. In ambienti naturali sotterranei (caverne, grotte e simili) il raggio di azione è limitato a 30 metri per livello dell’incantatore. L’incantesimo non funziona laddove la natura sia stata rimpiazzata da costruzioni o insediamenti (dungeon o città).

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/commune-with-nature'
WHERE name = 'Comunione con la Natura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': L''incantatore trasferisce temporaneamente una delle sue capacità di Percorso Mitico a un''altra creatura, che la può usare come se facesse parte del proprio Percorso. Se il bersaglio non è in grado di spendere Potere Mitico, non può attivare nessuna parte della capacità che richieda la spesa di usi del Potere Mitico, ma altrimenti la capacità funziona come se la creatura fosse di 1° Categoria. Quando la capacità di Percorso è trasferita in questo modo, l''incantatore non la può usare (anche se è una capacità automatica o una che non richiede di spendere usi del Potere Mitico).

Fonte: http://www.d20pfsrd.com/mythic/mythic-magic/mythic-spells/lend-path/'
WHERE name = 'Concedere Percorso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione veloce',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'si',
  full_description = ': Il soggetto contrae una delle seguenti Malattie: febbre da gallina, febbre lurida, fuoco mentale, infermità accecante, lebbra, malattia rossa, peste bubbonica o tremarella che lo colpisce immediatamente (senza periodo di insorgenza). La vittima non può superare la Malattia senza la magia (superare i Tiri Salvezza richiesti non la curano). La CD per rimuovere la Malattia con la magia è pari alla CD del Tiro Salvezza +5.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/contagion'
WHERE name = 'Contagio Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '12 m/livello',
  duration = '10 minuti/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'no',
  full_description = ': Con questo incantesimo si è in grado di alterare la Forza del vento nell''area circostante. Si può far soffiare il vento in una determinata direzione o in un modo preciso, oppure aumentare o diminuire la sua forza. La nuova direzione e la nuova intensità del vento persistono finché l''incantesimo non ha termine o finché non si decide di cambiare ciò che si ha appena creato, il che necessita di Concentrazione. Si può creare un “occhio” di aria calma fino a 24 metri di diametro al centro dell''area, se lo si desidera, e si può decidere di limitare l''effetto a un''area cilindrica minore di quella massima consentita.

Direzione del Vento: si può scegliere una delle quattro direzioni basilari da impartire al vento nell''area interessata.

• Il vento soffi a dal centro verso l''esterno con pari intensità in tutte le direzioni.

• Il vento soffia dal bordo esterno verso il centro con eguale intensità da tutte le direzioni, impennandosi verso l''alto subito prima di raggiungere l''occhio al centro dell''area.

• Una rotazione fa sì che il vento giri attorno al centro in senso orario o antiorario.

• Una raffica di vento orientata verso una direzione precisa da un lato all''altro dell''area.

Forza del Vento: Per ogni 3 livelli dell''incantatore, si può aumentare o diminuire la forza del vento di un livello d''intensità. Ad ogni round nel proprio turno, una creatura nel vento deve superare un Tiro Salvezza su Tempra oppure subirne gli effetti. Vedi Ambiente per ulteriori dettagli.

• I venti forti (31,5 o più km/h) rendono difficile la navigazione a vela.

• Un vento impetuoso (46,5 o più km/h) provoca danni minori alle abitazioni e alle barche.

• Una bufera (76,5 o più km/h) spazza via dai cieli gran parte delle creature volanti, sradica gli alberi più piccoli, abbatte le strutture in legno più fragili, scoperchia i tetti e mette in pericolo le navi.

• Gli uragani (112,5 o più km/h) distruggono edifici in legno, sradicano grossi alberi e provocano l''affondamento della maggior parte delle navi.

• Un tornado (262,5 o più km/h) distrugge tutti gli edifici non fortificati e sradica spesso gli alberi più grossi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/control-winds'
WHERE name = 'Controllare Venti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': L’Animale bersaglio cresce fino a due volte la sua normale taglia e otto volte il suo normale peso. Questa alterazione modifica la categoria di Taglia dell’animale alla successiva più grande e fornisce Bonus di Taglia +8 a Forza e Bonus di Taglia +4 a Costituzione (e quindi 2 Punti Ferita aggiuntivi per DV), ma impone penalità di taglia –2 a Destrezza. Il Bonus di Armatura Naturale già esistente della creatura aumenta di 2. Questo cambiamento di taglia influenza anche il modificatore alla CA e ai Tiri per Colpire dell’animale e il suo danno base. Lo spazio e la portata dell’Animale cambiano come indicato dalla nuova Taglia, ma non cambia la sua velocità. Se non è disponibile uno spazio sufficiente alla crescita desiderata, la creatura raggiunge la massima Taglia possibile e può effettuare una prova di Forza (sfruttando la sua Forza accresciuta) per tentare di rompere qualsiasi barriera che la trattenga mentre cresce. Se fallisce, è costretta senza alcun danno dai materiali che la contengono: l’incantesimo non può essere usato per schiacciare una creatura aumentandone la Taglia.

Tutto l’Equipaggiamento indossato o trasportato da un Animale viene allo stesso modo ingrandito dall’incantesimo, anche se questo cambiamento non ha effetto sulle proprietà magiche dell’Equipaggiamento stesso.

Qualsiasi oggetto ingrandito che non è più in possesso della creatura ingrandita ritorna istantaneamente alla sua taglia normale.

Questo incantesimo non conferisce in alcun modo il potere di comandare o influenzare un Animale ingrandito.

Non si possono cumulare più effetti magici che aumentino la Taglia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-growth'
WHERE name = 'Crescita Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Appoggiando la mano su una creatura vivente, si infonde energia positiva che cura 4d8 danni +1 danno per livello dell’incantatore (massimo +20). Dal momento che i Non Morti sono animati da energia negativa, questo incantesimo infligge loro danni piuttosto che curare le loro ferite. Una creatura Non Morta può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-critical-wounds'
WHERE name = 'Cura Ferite Critiche';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Questo incantesimo rimuove il peso di atti malvagi o colpevoli che gravano sull’anima del soggetto. La creatura in cerca di espiazione deve essere sinceramente pentita e desiderosa di porre rimedio al suo errore. Se la creatura in cerca di espiazione ha commesso l’atto malvagio involontariamente o sotto qualche forma di coercizione, espiazione funziona normalmente e senza alcun costo. Tuttavia, nel caso di una creatura che vuole espiare per crimini deliberati, occorre intercedere per lei presso la propria divinità (al costo di 2.500 mo in incensi rari ed offerte di varia natura).

Espiazione può essere lanciato per uno degli scopi seguenti, a seconda della versione selezionata:

• Invertire un Cambio Magico di Allineamento: Se una creatura ha subito un cambio dell’Allineamento tramite mezzi magici, Espiazione riporta l’Allineamento al suo stato originario senza costi aggiuntivi.

• Ripristinare una Classe: Un Paladino, o un’altra classe, che abbia perso i suoi privilegi di classe per aver violato le restrizioni del precedente allineamento, può recuperare il suo status di Paladino mediante questo incantesimo.

• Ripristinare i Poteri Magici di un Chierico o di un Druido: Un Chierico o un Druido che abbiano perso la loro capacità di lanciare incantesimi per essere incorsi nell’ira della loro divinità possono recuperare i propri poteri cercando Espiazione presso un altro Chierico della stessa divinità o un altro Druido. Se la trasgressione è stata intenzionale, il Chierico che lancia l’incantesimo deve spendere 2.500 mo in incensi rari e offerte per l’intercessione della sua divinità.

• Redenzione o Tentazione: Si può lanciare questo incantesimo su una creatura di Allineamento opposto per offrirle l’opportunità di cambiare Allineamento e adottarne uno equivalente al proprio. Il soggetto deve essere presente per tutto il tempo di lancio dell’incantesimo. Al termine, spetta comunque a lui scegliere liberamente se mantenere il suo Allineamento originale o accettare l’offerta e diventare dell’Allineamento dell’incantatore. Nessuna violenza, coercizione o influenza magica possono costringere il soggetto ad accettare l’opportunità offerta, se egli non desidera abbandonare il suo vecchio Allineamento. Quest’uso dell’incantesimo non funziona sugli Esterni o su qualsiasi altra creatura impossibilitata a cambiare naturalmente il proprio allineamento.

Sebbene la descrizione dell’incantesimo faccia riferimento ad atti malvagi, Espiazione può essere usato anche su qualsiasi creatura che abbia compiuto atti contro il proprio Allineamento, indipendentemente dall’Allineamento in questione.

Nota: Normalmente cambiare l’allineamento è una scelta che spetta al giocatore. Quest’uso di Espiazione offre semplicemente un metodo per un personaggio per cambiare il suo Allineamento in maniera drastica, improvvisa e definitiva.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/atonement'
WHERE name = 'Espiazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'contatto',
  duration = 'istantanea',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si trasforma il Mezzorco bersaglio in un Orco purosangue. Il bersaglio perde tutti i tratti razziali da Mezzorco e ottiene quelli degli Orchi. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/half-blood-extraction'
WHERE name = 'Estrazione del Sangue Umano';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale V';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 round/livelllo (I) (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si evocano centinaia di millepiedi di taglia Minuta, che si aggrappano l''un l''altro a formare una frusta fatta per una creatura della taglia dell''incantatore. Si può impugnare questo oggetto come se fosse una vera frusta, ma si effettuano attacchi di contatto in mischia al posto dei normali attacchi. Le creature colpite con la frusta subiscono danni da sciame come se fossero attaccate da uno Sciame di Millepiedi (2d6 danni più Veleno e Distrazione). La frusta di sciame è in grado di danneggiare creature con armatura o Armatura Naturale, anche se una normale frusta non potrebbe. Non può essere usata per Lottare, Sbilanciare o Spingere e (diversamente da uno sciame) è soggetta a mancare per Occultamento o Copertura.

La frusta è immune ai danni di tutte le armi, non è mai Barcollante o ridotta allo stato Morente dai danni, ed è immune a qualsiasi incantesimo o effetto che prenda come bersaglio un numero specifico di creature (inclusi gli incantesimi a bersaglio singolo come Disintegrazione). La frusta subisce ancora danno dimezzato da incantesimi o effetti che influenzano un''area, ma dato che è considerata parte dell''Equipaggiamento, subisce danni solo se si fallisce un Tiro Salvezza tirando un 1 o se è specificatamente posta come bersaglio da un avversario. La frusta non ha la suscettibilità dello sciame ai venti forti.

Come azione standard, si può trasformare la frusta in uno Sciame di Millepiedi (tutti i quadretti dello sciame devono essere entro 4,5 m dall''incantatore); per il resto funziona come Evoca Sciame. Lo Sciame di Millepiedi ha 10 Punti Ferita e persiste in quella forma per 2 round o finché non termina la durata dell''incantesimo, quale dei due eventi accada prima.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/whip-of-centipedes/'
WHERE name = 'Frusta di Millepiedi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = '1 ora/livello o finché non viene scaricato',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': All''interno della gola cresce una ghiandola speciale che assorbe i Veleni ingeriti e può essere usata per espellerli in uno getto tossico. Ogni volta che si ingerisce un veleno durante la durata dell''incantesimo, si può fare un tiro di Livello dell''Incantatore contro la CD del TS del veleno per assorbirlo in modo innocuo, ignorandone gli effetti. L''incantesimo può assorbire fino a 1 dose di veleno ogni 3 livelli dell''incantatore, dopodiché la ghiandola non è più in grado di elaborare altro veleno e ogni ulteriore dose di veleno ingerita ha effetti normali.

Ogni dose di veleno assorbita viene conservata all''interno della ghiandola e si può terminare l''incantesimo per spruzzare una dose di veleno assorbito dalla bocca come Azione Standard. Questo spruzza il veleno in un cono di 3 metri. Ogni creatura nell''area deve riuscire a superare un tiro salvezza su Riflessi (alla CD di Inghiottire Veleno) o diventa esposta al veleno spruzzato, che a questo scopo viene trattato come se fosse un veleno da contatto. Tutto ciò che riguarda il veleno, a parte il suo tipo, compresa la frequenza, l''effetto e la CD del tiro salvezza, non è influenzato da questo incantesimo. Qualsiasi altra dose di veleno assorbita diventa immediatamente inerte al termine dell''incantesimo. Se la durata dell''incantesimo termina senza che sia stato spruzzato un veleno, tutti i veleni assorbiti diventano inerti.

Fonte: Swallow Poison'
WHERE name = 'Inghiottire Veleno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo deve essere lanciato si attiva Forma Selvatica per assumere le sembianze di un animale di taglia almeno Grande. Quando si assume la forma animale, essa assume molte delle caratteristiche primitive delle creature selvagge e preistoriche che dimorano nel regno dei Signori dei Mammut. Quando la durata di questo incantesimo finisce, si torna automaticamente alla propria forma naturale: in effetti, quando si lancia Invocare Potere Primitivo, si riduce la durata di quell''uso di forma selvatica alla durata di questo incantesimo.

Oltre ai normali effetti che si ottiene quando si assume la forma selvatica, si ottiene anche un bonus +4 alla Costituzione e si aumenta di 2 il bonus di Armatura Naturale concesso dall''effetto (quindi, se si assume le dimensioni di un animale di taglia Grande come se fosse Forma Ferina II, il proprio bonus di armatura naturale è +6 invece che +4). Inoltre, ottieni una delle seguenti qualità aggiuntive mentre si è nella forma selvatica potenziata. Al livello di incantatore 13, si ottengono due delle seguenti capacità e al livello di incantatore 17 se ne ottengono tre.

• Carica Potente: si sceglie uno degli Attacchi Naturali che si ottiene dalla nuova forma. Quando si effettua un attacco in Carica, questo attacco naturale infligge 2d6 danni aggiuntivi oltre ai normali benefici e pericoli di una carica. Questo danno si applica solo al primo attacco che si effettua quando si esegue la carica.

• Ferocia: si rimane cosciente e si può continuare a combattere anche se il totale dei Punti Ferita è inferiore a 0. Si è comunque Barcollante e si perde 1 punto ferita ogni round, e si muore comunque quando il totale dei punti ferita raggiunge un valore negativo pari al proprio punteggio di Costituzione.

• Rapido: la velocità base della nuova forma aumenta di 6 metri.

• Resistenza al Freddo: il proprio nuovo corpo è ricoperto da spessi strati di pelliccia e grasso isolante. Si ottiene Resistenza al Freddo 30.

• Sbilanciare: Si sceglie uno degli attacchi naturali concessi dalla nuova forma. Una volta per round, si può tentare di Sbilanciare un avversario come Azione Gratuita senza provocare un Attacchi di Opportunità se si colpisce con l''attacco specificato. Se il tentativo fallisce, non si viene fatti inciampare a propria volta.

• Squartare: una volta per round, se si colpisce lo stesso bersaglio con due o più attacchi naturali in un round, si Squarcia il bersaglio di quegli attacchi, infliggendo 2d6 danni aggiuntivi.

• Travolgere: come Azione di Round Completa, si può tentare di Travolgere qualsiasi creatura che sia di almeno una categoria di taglia inferiore alla propria. Funziona proprio come la Manovra in Combattimento Oltrepassare, ma non è necessario tentare un tiro di prova; si deve semplicemente spostarsi sopra i propri avversari. I bersagli subiscono un danno pari a 2d6 più una volta e mezzo il proprio modificatore di Forza e provoca Attacchi di Opportunità, ma con una penalità -4. Se un bersaglio rinuncia a un attacco di opportunità, può tentare un tiro salvezza su Riflessi per evitare il travolgimento e subire metà del danno. Il tiro salvezza contro questo effetto è pari a 10 + metà del proprio livello di incantatore + il proprio modificatore di Forza. Si possono infliggere solo danni da oltrepassare a ciascun bersaglio una volta per round, indipendentemente dal numero di volte in cui il proprio movimento porta sopra una creatura bersaglio.

• Uccisore di Giganti: la nuova forma è particolarmente adatta per uccidere i giganti. Contro le creature con il Sottotipo Gigante, si ottiene Bonus Cognitivo +2 sui Tiri per Colpire e sui tiri per il danno con gli attacchi naturali della nuova forma.

Fonte: Invoke Primal Power'
WHERE name = 'Invocare Potere Primitivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto acquisisce Bonus Morale +4 ai Tiri Salvezza contro tutti gli incantesimi e gli effetti magici di morte, e può effettuare un Tiro Salvezza anche se non sarebbe normalmente previsto. Il soggetto è immune a Risucchi di Energia e a qualunque effetto di energia negativa, inclusa l''energia negativa incanalata.

Questo incantesimo non rimuove eventuali Livelli Negativi che il soggetto abbia già acquisito, ma rimuove le penalità derivate dai Livelli Negativi per la durata del suo effetto.

L''incantesimo non offre protezione contro altri tipi di attacchi, nemmeno se questi dovessero rivelarsi letali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/death-ward'
WHERE name = 'Interdizione alla Morte';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = '(120 m + 12 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Al completamento dell''incantesimo, e per il round seguente, si è in grado di richiamare una saetta verticale larga 1,5 m e lunga 9 m, che infligge 5d6 danni da elettricità. Il fulmine si getta dall''alto e colpisce qualunque bersaglio si indichi entro il raggio di azione (misurato rispetto alla propria posizione). Qualunque creatura nel quadretto di bersaglio o sul percorso del fulmine è soggetta al danno.

Il fulmine non deve essere chiamato immediatamente al completamento dell''incantesimo: si possono compiere altre azioni, anche lanciare altri incantesimi, prima di invocare il fulmine. Ogni round dopo il primo si può usare un''azione standard (concentrandosi sull''incantesimo) per chiamare un fulmine. Si può chiamare un numero totale di fulmini pari al proprio livello dell''incantatore (massimo 15 fulmini).

Se ci si trova all''aperto o in un''area interessata da una tempesta, se sta piovendo, se ci sono vento o nuvole minacciose, condizioni di caldo–umido, oppure un tornado (anche un Turbine creato da un Djinni o da un elementale dell''aria almeno di taglia Grande), ciascun fulmine infligge 5d10 danni da elettricità invece di 5d6.

Questo incantesimo funziona anche al chiuso o sotto terra, ma non sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/call-lightning'
WHERE name = 'Invocare Tempesta di Fulmini';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si indurisce l''aria attorno al bersaglio, trasformandola in frastagliate lame invisibili, che infliggono danni in base a quanto rapidamente si muove. Nel suo turno il bersaglio subisce 1d6 danni taglienti se si muove di almeno 1,5 metri, più 1d6 danni taglienti per ogni 3 metri aggiuntivi della sua velocità di movimento. Il movimento che non attraversa l''aria (come scavare, nuotare o teletrasportarsi) non causa questo danno.

In un''area di vento molto forte, il bersaglio subisce danno nel suo turno anche se non si muove. Il vento infligge 1d8 danni taglienti nel caso di vento forte, più 1d8 per ogni categoria di vento sopra forte. Questo danno aggiuntivo non viene inflitto nel caso di effetti di vento istantanei (come Folata di Vento), ma solo per effetti di vento che durano almeno 1 round. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wind-blades'
WHERE name = 'Lame di Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'illimitato (vedi testo)',
  duration = '1 giorno/livello (I)',
  saving_throw = 'Volontà nega',
  spell_res = 'no',
  full_description = ': Il primo bersaglio dell''incantesimo dev''essere un ostaggio: una creatura vincolata, Immobilizzata o Indifesa entro la propria portata (sebbene l''incantesimo non termini se la creatura successivamente esce dalla portata). Il secondo bersaglio dev''essere un familiare del primo. Se nessuna delle due creature supera il Tiro Salvezza, il secondo bersaglio subisce qualsiasi danno venga inferto all''ostaggio, purché siano entrambi vivi, fino a un massimo di 10 danni per livello dell''incantatore al giorno (i danni eccedenti quelli necessari a uccidere il primo bersaglio non vengono trasferiti). Il danno trasferito è generico e ignora Riduzione del Danno e resistenze della seconda creatura. Se uno dei bersagli supera il Tiro Salvezza, non sarà mai più possibile tentare di sfruttare il legame tra quelle due specifiche creature. Il legame tra i bersagli si indebolisce se i due hanno scarsa confidenza reciproca. Ciascun bersaglio ottiene bonus +2 al proprio Tiro Salvezza se sono parenti alla lontana o acquisiti per matrimonio; se invece sono genitori e figli o fratelli, subiscono penalità -2. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/b/blood-ties/'
WHERE name = 'Legami di Sangue';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'permanente',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si infligge una maledizione del mare agitato al bersaglio, rendendolo permanentemente Infermo. Ogni volta che il bersaglio si trova sull''acqua o in acqua a più di 1,5 chilometri dalla riva, diventa anche Barcollante per il mal di mare. Questa maledizione non può essere dissolta, ma Rimuovi Maledizione o Spezzare Incantamento possono negarla. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/o/old-salt-s-curse'
WHERE name = 'Maledizione dell''Uomo di Mare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'permanente',
  saving_throw = 'Tempra nega, Volontà parziale, vedi testo',
  spell_res = 'sì',
  full_description = ': Come Forma Ferina III, ma permette di mutare il soggetto in un Animale Piccolo o inferiore con non più di 1 DV. Se la nuova forma risultasse letale per la creatura, come trasformare una creatura terrestre in un pesce che non si trovi in acqua, il soggetto riceve bonus +4 al Tiro Salvezza.

Se l''incantesimo ha successo, il soggetto deve effettuare anche un Tiro Salvezza su Volontà. Se questo secondo Tiro Salvezza fallisce, la creatura perde le sue Capacità Straordinarie, Soprannaturali e Magiche, la capacità di lanciare incantesimi (se la possedeva), e guadagna l''allineamento, le Capacità Speciali e i punteggi di Intelligenza, Saggezza e Carisma della sua nuova forma al posto dei propri. Mantiene comunque la sua classe e livello (o DV), così come tutti i benefici che ne derivano (come Bonus di Attacco Base, bonus ai Tiri Salvezza base e Punti Ferita). Conserva anche qualsiasi privilegio di classe (a parte il lancio di incantesimi) che non sia una capacità straordinaria, soprannaturale o magica.

Qualunque effetto di metamorfosi su un bersaglio viene automaticamente dissolto quando il bersaglio non riesce a resistere agli effetti di Metamorfosi Funesta e, fintanto che Metamorfosi Funesta resta in effetto, il bersaglio non può usare altri incantesimi di metamorfosi o effetti per assumere una nuova forma. Le creature Incorporee o Gassose sono immuni a Metamorfosi Funesta e una creatura del Sottotipo Mutaforma può ritornare alla sua forma naturale con un''azione standard.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/baleful-polymorph'
WHERE name = 'Metamorfosi Funesta';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'Concentrazione + 1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Una barriera immobile di fiamme violacee crepitanti si materializza sul posto. Un lato della barriera, a propria scelta, emana ondate di calore che infliggono 2d4 danni da fuoco alle creature entro 3 metri e 1d4 danni a quelle tra i 3 metri e i 6 metri. Il muro infligge questi danni quando appare e nel proprio turno ad ogni round a tutte le creature nell''area. Inoltre, il muro infligge 2d6 danni +1 danno da fuoco per livello dell''incantatore (massimo +20) a qualsiasi creatura che lo attraversa. Alle creature non morte il muro infligge danni raddoppiati.

Se si invoca il muro in modo che compaia in un punto dove sono presenti delle creature, ogni creatura subisce i danni come se stesse tentando di attraversarlo. Se un segmento di 1,5 metri del muro subisce 20 o più danni da freddo in 1 round, quel segmento scompare. (Non si devono dividere i danni da freddo per 2, come si fa normalmente con gli oggetti.)

Muro di Fuoco può essere reso permanente con un incantesimo Permanenza. Un Muro di Fuoco permanente che viene estinto a causa dei danni da freddo diventa inattivo per 10 minuti, poi si riforma normalmente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-fire'
WHERE name = 'Muro di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L’incantesimo Muro di Spine crea una barriera di arbusti intrecciati molto flessibili e resistenti, dotati di spine acuminate lunghe quanto un dito di un umano. Se una creatura viene spinta nel muro o tenta di attraversarlo subisce danni taglienti per ogni round di movimento pari a 25 meno la CA della creatura. I bonus di Destrezza e i Bonus di Schivare alla CA non devono essere conteggiati in questo calcolo (le creature con una CA pari o superiore a 25, senza considerare i bonus di Destrezza e di Schivare, non subiscono alcun danno dal contatto con il muro).

Si può creare un muro spesso fino a 1,5 metri, il che permette di dargli una qualsiasi forma composta da un numero di blocchi di 3 × 3 × 1,5 metri pari al doppio del proprio livello dell’incantatore. Anche se questo non comporta nessun effetto sui danni inflitti dalle spine, le creature che tentano di aprire un varco nel muro impiegano molto meno tempo ad aprirsi una via attraverso la barriera.

Una creatura che tenta di attraversarlo lentamente deve superare una prova di Forza come azione di round completo. Per ogni 5 punti con cui la prova supera 20, la creatura si muove di 1,5 metri (fino a una distanza massima pari alla sua normale velocità sul terreno). Naturalmente questi tentativi di movimento infliggono i danni delle spine nella maniera descritta sopra. Una creatura intrappolata nel groviglio di spine può decidere di rimanere immobile per non subire ulteriori danni.

Qualsiasi creatura che si trovi nell’area dell’incantesimo quando il muro viene evocato subisce i relativi danni come se avesse tentato di entrarvi e vi fosse rimasta intrappolata. Per scappare, deve aprirsi la strada spingendo o attendere che l’incantesimo termini. Le creature dotate della capacità di attraversare aree intricate senza subire danni possono oltrepassare un Muro di Spine alla loro normale velocità senza subire alcun danno.

È possibile aprire un varco in un muro di spine usando con cautela armi appuntite. Falciare gli arbusti spinosi crea un passaggio sicuro profondo 30 cm ogni 10 minuti di lavoro. Il fuoco normale non ha effetto sulla barriera, mentre il fuoco magico brucia tutta la barriera nel giro di 10 minuti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-thorns'
WHERE name = 'Muro di Spine';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello o finché non viene scaricato',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La creatura protetta acquisisce resistenza ai colpi, ai tagli, agli affondi e ai fendenti. Il soggetto acquisisce RD 10/adamantio. Ignora i primi 10 danni ogni volta che subisce danni da un''arma, anche se un''arma di Adamantio è in grado di oltrepassare la riduzione. Una volta che l''incantesimo ha impedito un totale di 10 danni per livello dell''incantatore (fino a un massimo di 150 danni), si esaurisce.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stoneskin'
WHERE name = 'Pelle di Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si evoca uno Sciame di Vespe (1 ogni 3 livelli, fino a un massimo di 6 sciami al 18° livello). Gli sciami devono essere evocati in modo che ognuno di essi sia adiacente ad almeno un altro (in pratica, gli sciami devono coprire un''area contigua). È possibile evocare uno sciame di vespe in modo che compaia su un''area condivisa da altre creature. Ciascuno sciame attacca qualunque creatura che occupi quest''area. Gli sciami rimangono stazionari dopo essere stati evocati, e non inseguiranno le creature che fuggono.

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/insect-plague'
WHERE name = 'Piaga degli Insetti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '24 ore',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'vedi testo',
  spell_res = 'vedi testo',
  full_description = ': Profanare rende sacrilego un luogo, un edificio o una struttura in particolare. Questo produce tre effetti importanti.

• Primo, il luogo o la struttura viene protetto dall’effetto di Cerchio Magico Contro il Bene.

• Secondo, la CD per resistere all’energia negativa incanalata entro l’area di effetto ottiene Bonus Sacro +4 e la CD per resistere all’energia positiva è ridotta di 4. La Resistenza agli Incantesimi non si applica a questo effetto. Questo effetto non si applica alla versione da Druido.

• Terzo, si può scegliere di collocare l’effetto di un singolo incantesimo sul luogo soggetto a Profanare. L’effetto di questo incantesimo dura un anno e funziona in tutta l’area sconsacrata del sito, indipendentemente dalla sua normale durata e area d’effetto. Si può decidere che l’effetto si applichi a tutte le creature, solo alle creature che con dividono la propria fede o il proprio allineamento, o solo alle creature che osservano fedi e allineamenti diversi. Alla fine dell’anno l’effetto scelto si esaurisce, ma può essere rinnovato o cambiato lanciando di nuovo Profanare. Gli effetti di incantesimi che possono essere legati a profanare includono Aiuto, Anatema, Ancora Dimensionale, Benedizione, Contrastare Elementi, Dissolvi Magie, Epurare Invisibilità, Incuti Paura, Individuazione del Bene, Individuazione del Magico, Interdizione alla Morte, Libertà di Movimento, Linguaggi, Luce Diurna, Oscurità, Oscurità Profonda, Protezione dall''Energia, Resistere all''Energia, Rimuovi Paura, Rivela Bugie, Silenzio e Zona di Verità.

La Resistenza agli Incantesimi e i Tiri Salvezza possono ancora essere applicati ai rispettivi effetti (vedi la descrizione di ogni singolo incantesimo per i dettagli).

Un’area può ricevere un solo incantesimo Profanare (e il suo effetto magico associato) alla volta.

Profanare contrasta ma non dissolve Santificare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/unhallow'
WHERE name = 'Profanare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno, vedi testo',
  spell_res = 'sì (innocuo)',
  full_description = ': L’incantesimo restituisce la vita ad un Compagno Animale, Famiglio o la cavalcatura di un Paladino deceduta. Può ridare la vita ad un Compagno Animale, Famiglio o la cavalcatura di un Paladino che non è rimasta Morta per oltre 1 giorno per livello dell’incantatore. Inoltre, l’anima del soggetto deve essere libera e desiderosa di tornare. Se l’anima non vuole tornare, l’incantesimo non funziona; perciò un soggetto che vuole tornare non deve effettuare alcun Tiro Salvezza.

Ritornare dalla morte è un’ordalia. Il soggetto dell’incantesimo ottiene 2 Livelli Negativi Permanenti quando viene rianimato, proprio come se fosse stato colpito da una creatura che risucchia energia. Se invece il soggetto è di 1° livello, subisce 2 punti di risucchio di Costituzione (e se questo lo porta a Costituzione zero o meno, non può essere rianimato). Un personaggio che muore avendo degli incantesimi preparati ha una probabilità del 50% di perderli una volta rianimato. Una creatura che è in grado di lanciare incantesimi che non deve preparare (come uno Stregone) ha la probabilità del 50% di perdere gli slot incantesimi che non ha usato come se avesse impiegato quegli slot per lanciare un incantesimo.

Un Compagno Animale, Famiglio o la cavalcatura di un Paladino rianimata ha un numero di Punti Ferita uguale ai suoi DV. Tutti i punteggi delle caratteristiche ridotti a 0 vengono portati a 1. Veleni normali e Malattie normali vengono curati nel processo di rianimazione, ma non le malattie magiche e le Maledizioni. Anche se l’incantesimo chiude le ferite mortali e ripara i danni locali di molti tipi, il corpo della creatura deve comunque essere integro, altrimenti le parti mancanti sono ancora mancanti quando la creatura viene rianimata. Nessuno degli oggetti, né l’Equipaggiamento né ciò che era in possesso della creatura, viene in alcun modo influenzato da questo incantesimo.

Un Compagno Animale, Famiglio o la cavalcatura di un Paladino che è stata trasformata in una creatura Non Morta o è stata uccisa da un effetto di morte non può essere riportata in vita con questo incantesimo. Non Morti, Costrutti, Elementali ed Esterni non possono essere rianimati. L’incantesimo non può riportare in vita chi è morto di vecchiaia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/raise-animal-companion'
WHERE name = 'Rianimare Compagno Animale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'contatto',
  duration = 'permanente',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si infligge una maledizione ad una creatura Morta che impedisce al suo spirito di ritornare. Chiunque lanci un incantesimo per comunicare con la creatura morta, riportarla in vita o mutarla in creatura Non Morta deve superare una prova di livello dell’incantatore con CD 11 più il livello dell’incantatore che ha lanciato Riposo Eterno. Riposo Eterno non può essere dissolto, ma può essere annullato con Rimuovi Maledizione o Spezzare Incantamento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/rest-eternal'
WHERE name = 'Riposo Eterno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'permanente',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si espelle il bersaglio dalla religione dell''incantatore come maledizione e punizione per atti o misfatti contro i principi della fede. Questo ha tre effetti.

In primo luogo, il bersaglio viene marchiato con un simbolo magico visibile solo ai membri della fede dell''incantatore. Questo simbolo indica che il bersaglio è un trasgressore e che il fedele non lo deve aiutare. Comunque, il bersaglio non viene perseguitato a causa del marchio (sebbene ciò non impedisce ai membri di una fede legale di imprigionare un noto criminale se si sa che questi crimini hanno avuto luogo dopo aver ottenuto il marchio).

In secondo luogo, il bersaglio non viene più influenzato da incantesimi utili lanciati da un fedele ed è sempre trattato come nemico relativamente ad altri incantesimi lanciati da quelli della fede dell''incantatore. Per esempio, Cura Ferite Leggere lanciato da un membro della fede dell''incantatore non ha effetto sul bersaglio. Se il bersaglio viaggia con un Chierico della fede dell''incantatore che lancia Preghiera, l''incantesimo penalizza invece di aiutare il bersaglio, nonostante la sua amicizia con il Chierico.

In terzo luogo, se il bersaglio è un incantatore divino o un membro di una classe di prestigio della fede dell''incantatore, o se possiede in altro modo capacità dovute all''appartenenza a quella fede, non può usarle finché è marchiato. Per esempio, un Paladino della fede dell''incantatore non sarebbe in grado di lanciare incantesimi da Paladino o usare Imposizione delle Mani o altri privilegi di classe. Il bersaglio può unirsi a un''altra fede per riottenere l''utilizzo di queste capacità, ma il marchio rimane visibile a quelli della fede precedente, anche se quelli della nuova fede lo accettano.

Questo potente incantesimo senza Tiro Salvezza viene usato per punire gravi trasgressioni che non meritano la morte o quando l''incantatore preferisce essere clemente invece di impartire una punizione più severa. Tuttavia, l''incantesimo ha uno svantaggio che ne evita l''abuso. Se il bersaglio non ha commesso alcun atto o misfatto contro la fede dell''incantatore, l''incantesimo non influisce su di lui ma sull''incantatore, anche se innocente. Questo potente contraccolpo impedisce inquisizioni da parte di membri corrotti della fede, e fa sì che la maggior parte delle accuse di cattiva condotta vengano attentamente investigate (e di solito verificate con la magia) prima di pronunciare questa sentenza.

Questo marchio può essere rimosso come ogni altro effetto di maledizione. Inoltre, un membro della fede dell''incantatore può usare Espiazione per spezzare la maledizione se effettua una prova di livello contro il livello dell''incantatore; anche Rimuovi Maledizione richiede un incantatore della fede dell''incantatore e una prova di livello per terminare la Riprovazione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reprobation'
WHERE name = 'Riprovazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '24 ore',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si risveglia un albero o un Animale portandolo a un grado di consapevolezza umano. Per riuscirci, occorre effettuare un Tiro Salvezza sulla Volontà (CD 10 + i DV attuali dell''Animale o i DV che l''albero avrà una volta risvegliato). L''albero o l''Animale risvegliato è amichevole nei propri confronti, ma non si avrà alcuna connessione o empatia speciale con esso; esso eseguirà comunque compiti specifici o incarichi da svolgere per vostro conto, se gli si comunicheranno le proprie intenzioni. Se si lancia di nuovo Risveglio su una creatura già risvegliata dall''incantesimo, essa rimarrà amichevole nei vostri confronti, ma non eseguirà altri compiti per vostro contro a meno che non siano nel suo interesse.

Un albero risvegliato mantiene le sue caratteristiche come se fosse un Oggetto Animato, tranne per il fatto che acquisisce il Tipo Vegetale e che i suoi punteggi di Intelligenza, Saggezza e Carisma sono ognuno 3d6. I vegetali risvegliati ottengono la capacità di muovere rami, radici, liane, viticci e così via, e hanno sensi simili a quelli umani.

Un Animale risvegliato ottiene 3d6 di Intelligenza, +1d3 al Carisma e +2 DV. Il suo tipo diventa Bestia Magica (animale aumentato). Un animale risvegliato non può servire come Compagno Animale, Famiglio o cavalcatura speciale.

Un albero o un Animale risvegliato è in grado di parlare uno dei propri linguaggi conosciuti, più un altro di quelli che conosce per ogni punto di bonus di Intelligenza (se presente). Questo incantesimo non funziona su un Animale o una pianta con Intelligenza superiore a 2.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/awaken'
WHERE name = 'Risveglio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Si crea una sinuosa linea di fiamme che è possibile plasmare come si vuole. Il Serpente di Fuoco influenza un quadretto di 1,5 metri per livello dell’incantatore, ed ogni quadretto deve essere adiacente all’altro, a partire da quello dell’incantatore. Il Serpente di Fuoco non può estendersi oltre il raggio di azione.

Le creature sul percorso del Serpente di Fuoco subiscono 1d6 danni da fuoco per livello dell’incantatore (massimo 15d6).

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-snake'
WHERE name = 'Serpente di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '24 ore',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'vedi testo',
  spell_res = 'vedi testo',
  full_description = ': Santificare rende sacro un luogo, un edificio o una struttura in particolare. Questo produce quattro effetti importanti.

• Primo, il luogo o la struttura viene protetto da un effetto di Cerchio Magico Contro il Male.

• Secondo, la CD per resistere all’energia positiva incanalata entro l’area ottiene Bonus Sacro +4 e la CD per resistere all’energia negativa è ridotta di 4. La Resistenza agli Incantesimi non si applica a questo effetto. Quest’ultimo effetto non si applica alla versione dell’incantesimo da Druido.

• Terzo, qualsiasi cadavere seppellito in un luogo soggetto a santificare non può essere trasformato in un Non Morto.

• Infine, è possibile scegliere di collocare l’effetto di un singolo incantesimo sul luogo protetto da Santificare. L’effetto di questo incantesimo dura 1 anno e funziona in tutta l’area, indipendentemente dalla sua normale durata o area di effetto. Si può decidere se avrà effetto su tutte le creature, solo sulle creature che condividono la propria fede o il proprio allineamento, o solo sulle creature che aderiscono a fedi o allineamenti diversi. Alla fine dell’anno l’effetto scelto si esaurisce, ma può essere rinnovato o cambiato lanciando di nuovo Santificare.

Gli effetti di incantesimi che possono essere legati a Santificare includono Aiuto, Anatema, Ancora Dimensionale, Benedizione, Contrastare Elementi, Dissolvi Magie, Epurare Invisibilità, Incuti Paura, Individuazione del Magico, Individuazione del Male, Interdizione alla Morte, Libertà di Movimento, Linguaggi, Luce Diurna, Oscurità, Oscurità Profonda, Protezione dall''Energia, Resistere all''Energia, Rimuovi Paura, Rivela Bugie, Silenzio e Zona di Verità. Potrebbero essere richiesti Tiri Salvezza e si potrebbe dover applicare ai singoli effetti la Resistenza agli Incantesimi (vedi la descrizione di ogni singolo incantesimo per i dettagli).

Un’area può ricevere un solo incantesimo Santificare (e il suo effetto di incantesimo associato) alla volta. Santificare contrasta ma non dissolve Profanare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/hallow'
WHERE name = 'Santificare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo ha come bersaglio un''area di terra, metallo, pietra o legno, facendo sì che lunghe lame seghettate spuntino da punti casuali all''interno dell''area d''effetto. Qualsiasi creatura presente nell''area quando l''incantesimo viene lanciato per la prima volta deve tentare un Tiro Salvezza su Riflessi per evitare di subire 3d8 danni taglienti dalle lame e ulteriori 2d6 danni da Sanguinamento. Una creatura che fallisce il tiro salvezza vede anche la sua velocità ridotta della metà per 24 ore o fino a quando la creatura ferita non beneficia di un incantesimo di cura (che ripristina i Punti Ferita persi come di consueto). Un''altra creatura può rimuovere la penalità riuscendo in un tiro di Guarire contro la CD del tiro salvezza dell''incantesimo come Azione Standard.

Gli arti frustanti rimangono attivi nell''area per il resto della durata dell''incantesimo, durante il quale l''area viene trattata come Terreno Difficile e qualsiasi creatura che si muove all''interno o attraverso l''area subisce 1d8 danni perforanti. L''area trasformata può essere situata su qualsiasi superficie visibile entro il raggio d''azione, inclusi pavimenti, pareti, porte, soffitti o altre superfici generalmente piatte.

Fonte: Sawtooth Terrain'
WHERE name = 'Terreno di Sciabole';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = '1 ora/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Uno o più cani vengono trasformati in creature mostruose e malvagie. Ognuno effettua un Tiro Salvezza su Volontà per negare la trasformazione, ma se i cani si fidano dell''incantatore (perché li ha addestrati per qualche scopo o se ne è occupato per almeno 30 giorni, generalmente trattandoli bene) subiscono penalità -4 al Tiro Salvezza. Ogni cane trasformato ha le statistiche del Segugio Infernale eccetto Immunità al Fuoco e Vulnerabilità al Freddo, sostituite da Resistenza 5 ad Acido, Freddo e Fuoco. Inoltre, ogni cane trasformato infligge 1d6 danni aggiuntivi con l''attacco morso (anziché danni da Fuoco), mentre il Soffio è sostituito da una Nube di Vapore che si spande davanti alla creatura in un cono di 3 metri, infliggendo 2d4 danni da acido. La creatura non comprende l''Infernale ma capisce eventuali linguaggi conosciuti dall''incantatore. Normalmente il cane è NM, ma diventa CM o LM se lo è l''incantatore. 

E possibile trasformare un cane ogni 3 livelli dell''incantatore (fino a un massimo di 5 al 15° livello). Al termine della durata dell''incantesimo i cani si dissolvono immediatamente in una pila maleodorante di ossa insanguinate.

L''incantatore può comandare la creatura esattamente come farebbe con una creatura evocata con Evoca Mostri. Se compra i cani da usare per l''incantesimo, paga 15 mo per un cagnolino, 25 per un cane da guardia o 150 mo per uno da Galoppo. Ogni tipo di cane può essere trasformato con l''incantesimo e ha le stesse caratteristiche.

Fonte: https://www.d20pfsrd.com/magic/all-spells/v/vile-dog-transformation'
WHERE name = 'Trasformazione del Mastino Infame';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 ora/livello o finché non termina',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ottiene la capacità di entrare negli alberi e di muoversi dall''interno di un albero all''interno di un altro albero. Il primo albero in cui si entra e tutti gli altri in cui ci si sposta devono essere tutti della stessa specie, devono essere vivi e devono avere un tronco grosso almeno delle propria taglia. Muovendosi all''interno di una quercia, ad esempio, si apprende istantaneamente dove si trovano tutte le altre querce entro la portata di trasporto consentita (vedi sotto) e si può scegliere se passare ad una di queste o semplicemente riemergere dall''albero nel quale si è entrati. Si può scegliere di passare ad ogni albero della specie appropriata entro la portata di trasporto consentita secondo la tabella seguente.

Tipo di Albero

Portata di Trasporto

Quercia, frassino, tasso

900 m

Olmo, tiglio

600 m

Altri a foglia caduca

450 m

Qualsiasi conifera

300 m

Ci si può spostare di un albero una volta per livello dell''incantatore (passare da un albero a un altro conta solo come muoversi in un albero). L''incantesimo dura finché la durata non termina o finché non si esce da un albero.

A scelta si può rimanere all''interno di un albero senza spostarsi, ma si è costretti ad uscirne quando l''incantesimo ha termine. Se l''albero in cui ci si trova viene abbattuto o bruciato, si viene uccisi a meno che non si riesca ad uscire prima che il procedimento sia completo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/tree-stride'
WHERE name = 'Traslazione Arborea';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'permanente',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Questo incantesimo trasforma del fango normale o delle sabbie mobili in pietra friabile (arenaria o materiali simili) in modo permanente.

Le creature nel fango hanno diritto a un Tiro Salvezza su Riflessi per scappare prima che la pietra si solidifichi attorno a loro.

Trasmutare Fango in Roccia contrasta e dissolve Trasmutare Roccia in Fango.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/transmute-mud-to-rock'
WHERE name = 'Trasmutare Fango in Roccia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'permanente',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Questo incantesimo trasforma qualsiasi tipo di roccia naturale, non scolpita e non lavorata in un eguale volume di fango. La pietra magica non viene influenzata dall''incantesimo. La profondità del fango creato non può superare i 3 metri. Le creature incapaci di Volare, levitare o allontanarsi in qualche modo dal fango affondano fino alla vita o fino al petto; la loro velocità viene ridotta a 1,5 metri e subiscono penalità –2 ai Tiri per Colpire e alla CA. Sterpaglie o simili lanciate nel fango possono essere d''aiuto alle creature che riescono ad arrampicarvisi in cima. Le creature abbastanza grandi da camminare sul fondo della pozza di fango possono guadare l''area alla velocità di 1,5 metri.

Se Trasmutare Roccia in Fango viene lanciato sul soffitto di una caverna o di un tunnel, il fango si riversa sul pavimento e si espande fino a formare una pozza della profondità di 1,5 metri. Il fango in caduta e la frana che ne segue infliggono 8d6 danni contundenti a chiunque si trovi direttamente sotto l''area, o danni dimezzati a chi supera un Tiro Salvezza su Riflessi.

I castelli e i grandi edifici in pietra sono generalmente immuni agli effetti dell''incantesimo, in quanto Trasmutare Roccia in Fango non funziona sulla pietra lavorata e non arriva abbastanza in profondità da minare le fondamenta. Tuttavia altri edifici più piccoli spesso poggiano su fondamenta abbastanza superficiali da poter essere danneggiate o perfino distrutte dagli effetti dell''incantesimo.

Il fango rimane finché non viene usato con successo un incantesimo Dissolvi Magie o Trasmutare Fango in Roccia, che ripristina la sua sostanza, ma non necessariamente la sua forma. L''evaporazione naturale trasforma il fango in terreno normale nel giro di alcuni giorni. Il tempo preciso dipende dall''esposizione al sole, al vento e all''essiccazione naturale.

Trasmutare Roccia in Fango contrasta e dissolve Trasmutare Fango in Roccia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/transmute-rock-to-mud'
WHERE name = 'Trasmutare Roccia in Fango';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '24 ore (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Triplice Aspetto permette di spostare il proprio aspetto tra la propria età naturale e tre categorie ideali di età: giovane adulto (ragazzo/ragazza), maturo (padre/madre) o anziano (vecchio/vecchia). In ogni caso, l’aspetto è il proprio dell’età adeguata, e non quello di un nuovo individuo.

Si può cambiare tra questi tre aspetti o la propria età reale come azione standard. Come giovane adulto, si ottiene Bonus di Potenziamento +2 a Destrezza e Costituzione, ma si subisce penalità –2 a Saggezza. Nell’aspetto maturo, si ottiene Bonus di Potenziamento +2 a Saggezza ed Intelligenza, ma si subisce penalità –2 a Destrezza. Con l’aspetto anziano, si ottiene Bonus di Potenziamento +4 a Saggezza ed Intelligenza, ma si subisce penalità –2 a Forza e Destrezza. In quanto Bonus di Potenziamento, si sommano con altri bonus o penalità che possono derivare dalla propria età reale (che sono senza tipo); i bonus conferiti da questo incantesimo rappresentano la propria forma ideale in questo tre aspetti e non semplicemente il duplicato dei propri punteggi di caratteristica in una di queste particolari età.

Visione del Vero rivela l’aspetto naturale mascherato da quello nuovo, riconoscendo che entrambi appartengono alla stessa persona. Gli individui che studiano da vicino l’incantatore e hanno interagito con lui in un’altra età apparente, notano una somiglianza (come se appartenessero alla stessa famiglia) con una prova riuscita di Percezione con CD 20. Triplice Aspetto non altera i vestiti o l''Equipaggiamento, e non cura deformità o ferite non legate all’età.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/threefold-aspect'
WHERE name = 'Triplice Aspetto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = NULL,
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno (vedi testo)',
  spell_res = 'sì',
  full_description = ': Si crea un cilindro mobile di vento che avvolge i bersagli dell''incantesimo e li protegge come Muro di Vento, ma senza interferire in alcun modo con essi. Per esempio, frecce e quadrelli scagliati contro i bersagli vengono deviati verso l''alto e dispersi, ma le frecce o i quadrelli dei bersagli attraverso il muro come se non ci fosse. 

Una creatura Grande conta come 4 creature Medie ai fini di quanti bersagli si possono influenzare con l''incantesimo; una creatura Enorme conta come 8, una creatura Mastodontica come 16 e una creatura Colossale come 32. Questo incantesimo non ha effetto in un''area di un incantesimo di vento o tempo atmosferico di livello superiore. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fickle-winds'
WHERE name = 'Venti Mutevoli';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = '0 m o 3 m/livello',
  duration = '1 minuto/livello o finché non viene scaricato (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea uno spettro di solida luce multicolore che può essere usato per uno tra due effetti.

• Arco: L''incantesimo crea un Arco Corto o Lungo appropriato per la propria taglia e si ottiene la competenza nell''uso dell''arma. Tendendolo, l''arco crea automaticamente una freccia di Energia Luminosa Ricercante+1, non può scagliare altre frecce. Una creatura colpita da una di queste frecce è circondata da Luminescenza e Abbagliata per 1 minuto. Questa versione dell''incantesimo termina quando si è scagliato un numero di frecce pari al proprio livello dell''incantatore.

• Ponte: La luce forma un ponte o una rampa larga 1,5 metri e lunga fino a 3 metri per livello. Le creature sul ponte sono Abbagliate. Gli alleati ottengono un bonus alle prove, ai Tiri Salvezza e alla DMC per evitare di essere spostati dal ponte contro la loro volontà, pari al modificatore di Saggezza (minimo 1) dell''incantatore. I nemici subiscono una penalità alle prove, ai Tiri Salvezza e alla DMC per evitare di essere spostati dal ponte contro la loro volontà, pari al modificatore di Saggezza (minimo 1) dell''incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blazing-rainbow/'
WHERE name = 'Arcobaleno Splendente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = 'permanente finché non viene scaricato (I)',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Si può immagazzinare all''interno di un Bastone Ferrato di legno un qualsiasi incantesimo che si è normalmente in grado di lanciare. Nel bastone in questione ci può essere un solo incantesimo alla volta, e non è possibile possedere più di un Bastone dell’Incantesimo alla volta. Si può lanciare l’incantesimo immagazzinato all''interno del bastone come se fosse stato preparato, senza che ciò influisca sul totale giornaliero a propria disposizione. Qualsiasi componente materiale sia necessaria per lanciare l’incantesimo deve essere utilizzata nel momento in cui l’incantesimo viene immagazzinato all''interno del Bastone dell’Incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/spellstaff'
WHERE name = 'Bastone dell''Incantesimo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '7 giorni (vedi testo)',
  saving_throw = 'Tempra parziale (vedi testo)',
  spell_res = 'si',
  full_description = ': Per infettare il bersaglio, e con il tempo trasformandolo in un vegetale, occorre colpirlo con un attacco di contatto in mischia. Se il bersaglio supera un Tiro Salvezza su Tempra, subisce 1d4 danni a ciascun punteggio di caratteristica fisica (Forza, Destrezza e Costituzione) e l''incantesimo termina; se invece lo fallisce, subisce immediatamente 1d4 danni a ciascun punteggio di caratteristica fisica e ogni giorno continua a subire 1d4 danni alle stesse caratteristiche fino al termine dell''incantesimo. Finché l''incantesimo dura, il bersaglio non può riprendersi da questi danni alle caratteristiche, neanche con la magia, e assume le caratteristiche fisiche delle piante tipiche dell''ambiente in cui si trova. Inizia quindi a diminuire di statura e il suo corpo assume tratti vegetali: per esempio la pelle potrebbe diventare verde e i capelli venir lentamente rimpiazzati da erba o foglie, oppure la pelle potrebbe farsi liscia, pallida e flaccida mentre la creatura si trasforma in un grosso fungo dentro un ambiente sotterraneo. 

Se il danno subito da un singolo punteggio di caratteristica pareggia o supera il punteggio stesso, il bersaglio si trasforma completamente in un piccolo albero o arbusto normale. Questa metamorfosi finale è istantanea e fa terminare Carezza Verde. Il bersaglio resta vivo ma si considera al pari di un normale albero, arbusto o pianta d''altro tipo. I danni alle caratteristiche provocati da altre fonti, come veleni o malattie, contano ai fini della trasformazione. Se il bersaglio conserva almeno 1 punto in ogni punteggio di caratteristica fisica al termine dei 7 giorni, la trasformazione finale è scongiurata e l''incantesimo termina. I cambiamenti nell''aspetto recedono gradualmente man mano che i danni alle caratteristiche guariscono. 

Spezzare Incantamento, Dissolvi Magie e Rimuovi Maledizione possono far terminare l''effetto prima dello spirare della durata, ma l''incantesimo è contagioso. Se la prova di livello dell''incantatore per rimuovere Carezza Verde viene fallita di 5 punti o più, la creatura che tenta di annullare l''effetto deve effettuare un Tiro Salvezza su Tempra come se ne fosse diventata il bersaglio. Se il bersaglio dell''incantesimo tenta di rimuovere l''effetto da se stesso e fallisce, Carezza Verde si comporta come se fosse oggetto di Crescita Vegetale (come descritto più avanti). 

Metamorfosi Suprema fa terminare l''incantesimo e guarisce completamente il bersaglio senza rischi per l''incantatore, anche dopo la trasformazione finale, cosi come Desiderio Limitato Desiderio e Miracolo (si considera che Metamorfosi Suprema abbia durata istantanea se viene usato in questo modo). Se il bersaglio viene ricompreso nell''area di un incantesimo Crescita Vegetale mentre viene lanciato, deve effettuare un Tiro salvezza su Tempra con la CD di Carezza Verde o subiste immediatamente altri 1d4 danni a ciascun punteggio di caratteristica fisica, che si cumulano nel caso di più lanci di Crescita Vegetale. Se invece il bersaglio rientra nell''area di un incantesimo Rimpicciolire Vegetali mentre viene lanciato, ignora i successivi danni inflitti da Carezza Verde a uno del suoi tre punteggi di caratteristica fisica (scelto casualmente); questo effetto non si cumula in caso di lanci multipli di Rimpicciolire Vegetali.

Fonte: https://www.d20pfsrd.com/magic/all-spells/g/green-caress/'
WHERE name = 'Carezza Verde';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantanea',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': È possibile utilizzare Dissolvi Magie Superiore per porre fine a incantesimi in atto su più creature od oggetti, per sopprimere temporaneamente le capacità di un oggetto magico, oppure per contrastare gli incantesimi di un altro incantatore. Un incantesimo dissolto termina come se il suo tempo di durata si fosse esaurito. Alcuni incantesimi, come riportato nelle loro descrizioni, non possono essere annullati da Dissolvi Magie Superiore. Questo incantesimo può dissolvere (ma non contrastare) gli effetti magici così come gli incantesimi. L''effetto di un incantesimo che ha durata istantanea non può essere dissolto, in quanto la magia ha già avuto effetto prima che Dissolvi Magie Superiore sia potuto entrare in azione.

Si può usare in tre modi: dissolvere ad area, a bersaglio o controincantesimo:

• Area: Quando Dissolvi Magie Superiore viene impiegato in questo modo, l''incantesimo ha effetto in un''esplosione con raggio di 6 metri. Occorre effettuare una prova di dissolvere ed applicare quella prova a ciascuna delle creature presenti nell''area, come se fossero ciascuna il bersaglio di un Dissolvi Magie. Per ciascuno degli oggetti presenti entro l''area che è soggetto ad uno o più incantesimi, si deve applicare la prova di dissolvere come si fa con le creature. Gli oggetti magici non sono interessati da dissolvere ad area.

Per ciascuna area o effetto di incantesimo attivi il cui punto di origine si trova entro l''area d''effetto di Dissolvi Magie Superiore, si applichi la prova di dissolvere per annullare l''incantesimo. Per ciascun incantesimo in corso la cui area si sovrappone a quella di dissolvi magie superiore, si applichi la prova di dissolvere per terminare l''effetto, ma solo entro l''area che coincide.
Se c''è una creatura nell''area che è effetto di un incantesimo in corso (come un mostro evocato da Evoca Mostri), si applica la prova di dissolvere per terminare l''incantesimo che ha evocato l''oggetto o la creatura (che tornano da dove sono venuti) in aggiunta a tentare di dissolvere un incantesimo bersagliando la creatura o l''oggetto.
• Dissolvere Mirato: Si può dissolvere fino ad 1 incantesimo ogni 4 livelli da incantatore. Il bersaglio dell''incantesimo è un oggetto, una creatura o un incantesimo. Occorre effettuare una prova di dissolvere (1d20 + il livello dell''incantatore) e paragonarlo con l''incantesimo con il più alto livello dell''incantatore (CD = 11 + livello dell''incantatore dell''incantesimo). Se si ha successo, l''incantesimo termina. Se no, occorre comparare lo stesso risultato all''incantesimo con il successivo livello dell''incantatore più alto. Si deve ripetere questo processo fino a che non sarà stato dissolto un incantesimo che ha effetto sul bersaglio, oppure non sarà stato dissolto alcun incantesimo.

Inoltre, Dissolvi Magie Superiore può dissolvere qualunque effetto che possa essere dissolto da Rimuovi Maledizione. La CD di questa prova è uguale alla CD della maledizione.
Per esempio, un incantatore di 7° livello lancia Dissolvi Magie Superiore, prendendo come bersaglio una creatura sotto l''effetto di Pelle di Pietra (12° livello dell''incantatore) e Volare (6° livello dell''incantatore). La prova di livello dell''incantatore dà come risultato 19. Questa prova non è abbastanza alta per porre fine a Pelle di Pietra (che avrebbe richiesto almeno 23), ma è abbastanza alto per porre fine a Volare (che richiedeva solo un 17). Se la prova avesse avuto come risultato almeno 23, Pelle di Pietra sarebbe stato dissolto, lasciando intatto Volare. Se avesse avuto come risultato 16 o meno, non sarebbe stato dissolto alcun incantesimo, ma egli potrà riprovare con le successive prove.
Si può anche bersagliare uno specifico incantesimo che interessa il bersaglio o un''area (come Muro di Fuoco). Occorre indicare specificamente l''effetto dell''incantesimo che si bersaglia in questo modo. Se la prova di livello dell''incantatore è uguale o superiore alla CD di quell''incantesimo, esso termina. Non viene bersagliato alcun altro incantesimo od effetto sul bersaglio, nel caso la prova non sia abbastanza alta da porre fine all''effetto specificamente dichiarato.
Se si prende a bersaglio un oggetto o una creatura che è effetto di un incantesimo in corso (come un mostro evocato da Evoca Mostri), si effettua una prova di dissolvere per terminare l''incantesimo che ha evocato l''oggetto o la creatura.
Se l''oggetto scelto come bersaglio è un oggetto magico, occorre effettuare una prova di dissolvere contro il livello dell''incantatore dell''oggetto (CD = 11 + il livello dell''incantatore dell''oggetto). Se la si supera, tutte le proprietà magiche dell''oggetto vengono soppresse per 1d4 round. Un oggetto soppresso diventa non magico per la durata di questo effetto. Un''apertura extradimensionale (come una Borsa Conservante) viene temporaneamente chiusa. Le proprietà fisiche di un oggetto magico rimangono immutate: una spada magica soppressa rimane sempre una spada (una spada perfetta, oltretutto). Gli Artefatti e le Divinità non sono influenzati dalle magie dei mortali come questa.
• Controincantesimo: Quando Dissolvi Magie Superiore viene usato in questo modo, agisce su un incantatore scelto come bersaglio e viene lanciato come un controincantesimo. A differenza di un vero controincantesimo, tuttavia, c''è il rischio che non funzioni. Occorre superare una prova di dissolvere con un bonus +4 per contrastare l''incantesimo dell''altro incantatore.

Si ottiene un successo automatico in ogni prova di dissolvere che contrasta un incantesimo lanciato da se stessi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dispel-magic'
WHERE name = 'Dissolvi Magie Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo) o Volontà dimezza',
  spell_res = 'sì (innocuo)',
  full_description = ': Si incanala energia positiva per curare 1d8 danni +1 danno per livello dell’incantatore (massimo +25) ad ogni creatura selezionata. Come gli altri incantesimi di cura, Cura Ferite Leggere di Massa infligge danni ai Non Morti nella sua area di effetto anziché curarli. Ogni Non Morto influenzato può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-light-wounds'
WHERE name = 'Cura Ferite Leggere di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'si',
  full_description = ': Il bersaglio contrae una delle seguenti Malattie: Devastazione Vischiosa, Febbre da Gallina, Febbre Lurida, Fuoco Mentale, Infermità Accecante, Lebbra, Malattia Rossa, Peste Bubbonica o Tremarella, come per l''incantesimo Contagio. La malattia, però, è altamente contagiosa, e tutte le creature che toccano o vengono toccate dal bersaglio infetto, o trascorrono più di un''ora in uno spazio confinante con il soggetto devono superare un Tiro Salvezza contro la normale CD della Malattia (non la CD dell''incantesimo) o contraggono la Malattia. Se il bersaglio iniziale guarisce dalla Malattia superando il numero previsto di Tiri Salvezza, rimane un portatore sano della malattia per un lasso di tempo pari alla frequenza della Malattia, durante il quale può continuare a infettare gli altri.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/epidemic'
WHERE name = 'Epidemia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': L''incantatore evoca 1d4+1 Aquile Giganti come cavalcature per le creature indicate. Gli uccelli evocati non combattono da soli, ma conducono i loro cavalieri in battaglia come se fossero addestrati al combattimento. 

Fonte: Summon Flight of Eagles'
WHERE name = 'Evoca Stormo di Aquile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale VI';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Dopo aver lanciato questo incantesimo, si mantiene la propria forma relativa, ma si diventa, con il proprio equipaggiamento, composti interamente di polvere. Mentre si è in Forma di Polvere, non si subiscono penalità per stringersi e ci si può muovere attraverso degli spazi come se si fosse di tre categorie di Taglia più piccoli senza penalità. Si è anche considerati Incorporei, però gli attacchi non magici effettuati infliggono metà del danno (50%). Gli attacchi magici non sono influenzati e si possono anche usare Oggetti Magici e altro equipaggiamento. 

Se la durata termina in un quadretto che il proprio spazio normale non potrebbe occupare, si subiscono 3d6 danni e si viene deviati verso lo spazio libero occupabile più vicino. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dust-form'
WHERE name = 'Forma di Polvere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': I soggetti diventano più forti. L''incantesimo conferisce Bonus di Potenziamento +4 a Forza, aggiungendo i relativi benefici ai Tiri per Colpire in mischia, ai tiri per i danni in mischia e ad altri usi del modificatore di Forza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bull-s-strength'
WHERE name = 'Forza del Toro di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 round/livelllo (I) (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si evocano centinaia di formiche legionarie di taglia Minuta, che si aggrappano l''un l''altro a formare una frusta fatta per una creatura della taglia dell''incantatore. Si può impugnare questo oggetto come se fosse una vera frusta, ma si effettuano attacchi di contatto in mischia al posto dei normali attacchi. Le creature colpite con la frusta subiscono danni da sciame come se fossero attaccate da uno Sciame di Formiche Legionarie (3d6 danni più Veleno e Distrazione). La frusta di sciame è in grado di danneggiare creature con armatura o Armatura Naturale, anche se una normale frusta non potrebbe. Non può essere usata per Lottare, Sbilanciare o Spingere e (diversamente da uno sciame) è soggetta a mancare per Occultamento o Copertura.

La frusta è immune ai danni di tutte le armi, non è mai Barcollante o ridotta allo stato Morente dai danni, ed è immune a qualsiasi incantesimo o effetto che prenda come bersaglio un numero specifico di creature (inclusi gli incantesimi a bersaglio singolo come Disintegrazione). La frusta subisce ancora danno dimezzato da incantesimi o effetti che influenzano un''area, ma dato che è considerata parte dell''Equipaggiamento, subisce danni solo se si fallisce un Tiro Salvezza tirando un 1 o se è specificatamente posta come bersaglio da un avversario. La frusta non ha la suscettibilità dello sciame ai venti forti.

Come azione standard, si può trasformare la frusta in uno Sciame di Formiche Legionarie (tutti i quadretti dello sciame devono essere entro 4,5 m dall''incantatore); per il resto funziona come Evoca Sciame. Lo Sciame di Formiche Legionarie ha 16 Punti Ferita e persiste in quella forma per 2 round o finché non termina la durata dell''incantesimo, quale dei due eventi accada prima.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/whip-of-ants/'
WHERE name = 'Frusta di Formiche';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Le creature interessate da questo incantesimo diventano più aggraziate, agili e coordinate. L''incantesimo conferisce bonus di potenziamento +4 a Destrezza, aggiungendo i normali benefici a CA, Tiri Salvezza su Riflessi ed altri usi del modificatore di Destrezza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cat-s-grace'
WHERE name = 'Grazia del Gatto di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = '3 m',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si crea un campo di energia mobile di forma semisferica che blocca l’accesso a gran parte delle creature viventi.

L’effetto respinge Aberrazioni, Animali, Bestie Magiche, Draghi, Folletti, Giganti, Melme, Parassiti, Umanoidi, Umanoidi Mostruosi e Vegetali, ma non Costrutti, Elementali, Esterni o Non Morti.

Questo incantesimo può essere usato solo in maniere difensiva e non offensiva. Spingere una barriera contro delle creature che la barriera dovrebbe tenere lontane fa collassare la barriera.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/antilife-shell'
WHERE name = 'Guscio Antivita';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'personale',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Durante la durata di questo incantesimo, si può toccare il segno del passaggio di una creatura che si ha identificato usando l''abilità Sopravvivenza per rendere perfettamente chiari gli altri passi del percorso della creatura, per quanto minuscoli. Questa traccia non può avere più di 24 ore. Si può seguire la traccia a qualsiasi velocità, purché si abbia una linea di visuale sul sentiero. È possibile distinguere la traccia della particolare creatura seguita anche se si unisce e si divide con altre tracce. Una volta scelta la traccia da seguire con questo incantesimo, non è possibile cambiarla.

L''incantesimo non è in grado di seguire teletrasporti o viaggi interplanari per qualsiasi distanza. La traccia sembra terminare nel punto in cui la creatura si è teletrasportata (anche se una prova di Sapienza Magica riuscita permette di determinare il metodo di teletrasporto, se è stato usato un incantesimo). Inseguitore Infallibile non può seguire le creature sotto l''effetto di un incantesimo Passare Senza Tracce, poiché queste creature non lasciano alcuna traccia, ma può seguire le creature che utilizzano anti-individuazioni (sebbene non Vuoto Mentale).

Questo incantesimo può essere usato per seguire creature volanti, ma la traccia deve almeno iniziare su una superficie solida.

L''incantesimo non rivela la posizione attuale della creatura o un percorso più breve di quello seguito (ad esempio, non rivela che la creatura è tornata indietro sul sentiero finché non si raggiunge il punto in cui la creatura si è girata). Non rivela Trappole o altri pericoli lungo il sentiero.

Fonte: Unerring Tracker'
WHERE name = 'Inseguitore Infallibile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto per ogni 0,5 kg creati',
  range = '0 m',
  duration = '1 giorno/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Legno di Ferro è un materiale magico creato dai Druidi a partire dal legno normale. Pur rimanendo legno naturale a tutti gli effetti, il Legno di Ferro è forte, pesante e resistente al fuoco come l''acciaio. Gli incantesimi che colpiscono il metallo o il ferro non hanno effetto sul Legno di Ferro. Sono invece efficaci gli incantesimi che influenzano il legno, anche se il Legno di Ferro non può bruciare. Usando questo incantesimo con Scolpire Legno o con una prova di Artigianato relativa alla lavorazione del legno, si possono creare oggetti di legno che funzionano allo stesso modo degli oggetti di acciaio. Si possono quindi creare armature di piastre di legno e spade di legno che hanno la stessa resistenza di quelle di acciaio. Questi oggetti possono essere usati dai Druidi senza alcuna limitazione.

Infine, se si decide di creare solo metà del Legno di Ferro che questo incantesimo permetterebbe di creare, qualunque arma, scudo o armatura così creata è da considerarsi un oggetto magico con Bonus di Potenziamento +1.

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/ironwood'
WHERE name = 'Legno di Ferro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = '1 giorno (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Toccando il terreno si maledice l''area con sei Pericoli innaturali, ognuno con GS 10 o inferiore. I pericoli vengono predisposti in modo che, se alcuni o tutti vengono affrontati insieme, l''incontro non può avere un GS effettivo superiore a 11 (per esempio, due pericoli con GS 9 potrebbero essere incontrati assieme).

Sebbene questo faccia apparire i pericoli frequentemente, le loro manifestazioni restano imprevedibili: non si può controllare quando inizino o finiscano i pericoli, né dove appariranno sul terreno maledetto. 

Maledire Terreno Superiore può essere reso permanente con un incantesimo Permanenza lanciato da un incantatore di 15° livello o superiore al costo di 17.500 mo.

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/curse-terrain/'
WHERE name = 'Maledire Terreno Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = 'vedi testo',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Muovere il Terreno è in grado di smuovere cumuli di terra (argilla, terriccio, sabbia), far crollare argini, muovere collinette, spostare dune di sabbia e così via.

In nessun caso è possibile spostare formazioni rocciose o farle crollare. Le dimensioni dell’area soggetta all’incantesimo determinano il tempo di lancio. Per ogni quadrato con il lato di 45 metri (fino a 3 metri di profondità) sono necessari 10 minuti di tempo di lancio. Per spostare la superficie massima, 225 metri × 225 metri, occorrono 4 ore e 10 minuti.

Questo incantesimo non rompe la superficie del terreno con violenza. La copre invece di creste e avvallamenti, mentre il terreno reagisce con la fluidità di un ghiacciaio fino a ottenere il risultato desiderato. Gli alberi, le strutture, le formazioni rocciose e così via non ne subiscono l’effetto, se non per i cambiamenti di elevazione e di topografia.

Questo incantesimo non può essere usato per scavare tunnel, e solitamente è troppo lento per intrappolare o seppellire creature. Viene solitamente usato per scavare o riempire fossati o per modificare le caratteristiche del terreno prima di una battaglia.

Questo incantesimo non ha effetto sulle creature di terra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/move-earth'
WHERE name = 'Muovere il Terreno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea un muro di roccia che si fonde alle superfici rocciose circostanti. Il muro di pietra è spesso 2,5 cm ogni 4 livelli dell''incantatore e ampio fino a un quadrato con lato di 1,5 metri per livello. Si può raddoppiare la sua estensione dimezzandone lo spessore. Il muro non può essere evocato in modo da occupare lo stesso spazio di una creatura o di un altro oggetto.

A differenza di un Muro di Ferro, è possibile creare un Muro di Pietra in qualsiasi forma si desideri. Il muro creato non ha bisogno di essere verticale, né di poggiare su nessun fondamento solido; deve tuttavia fondersi ed essere solidamente sostenuto da altre rocce già esistenti. Può essere usato, ad esempio, per creare un ponte o una rampa attraverso un baratro. Per questo scopo, se l''arco da coprire è più ampio di 6 metri, il muro deve avere forma arcuata ed essere sostenuto da speroni rocciosi, nel qual caso l''area dell''incantesimo necessita di essere dimezzata.

Come ogni altro Muro di Pietra, anche questo può essere distrutto da Disintegrazione o da altri mezzi normali come la demolizione e lo sfondamento. Ogni quadrato del muro con lato di 1,5 metri ha 15 Punti Ferita ogni 2,5 cm di spessore e Durezza 8. Se una sezione del muro raggiunge 0 Punti Ferita viene infranta. Se una creatura tenta di aprire un varco nel muro con un singolo attacco, la CD per la sua prova di Forza è di 20 + 2 ogni 2,5 cm di spessore.

È possibile, anche se difficile, intrappolare avversari mobili entro o sotto un muro di pietra, purché il muro venga plasmato in modo da bloccare eventuali creature. Le creature possono evitare l''imprigionamento superando un Tiro Salvezza su Riflessi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-stone'
WHERE name = 'Muro di Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si evoca uno stormo di aquile giganti (una ogni tre livelli dell''incantatore, massimo sei) perchè trasportino l''incantatore e i suoi alleati attraverso i cieli. Le aquile evitano di combattere se possibile, ma si difendono se attaccate; se le aquile attaccano, il resto della durata dell''incantesimo cambia da 1 ora per livello a 1 round per livello (così se all''incantesimo rimangono 5 ore piene, le aquile rimangono in combattimento per 5 round prima che l''incantesimo termini).

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/eagle-aerie'
WHERE name = 'Nido d''Aquila';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello o finché non viene scaricato',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Le creature protette acquisiscono resistenza ai colpi, ai tagli, agli affondi e ai fendenti. I soggetti acquisiscono RD 10/Adamantio. Ignorano i primi 10 danni ogni volta che subisce danni da un''arma, anche se un''arma di Adamantio è in grado di oltrepassare la riduzione. Una volta che l''incantesimo ha impedito un totale di 10 danni per livello dell''incantatore (massimo 150 danni) su un soggetto, gli effetti dell''incantesimo, per quel soggetto, terminano. 

La durata di questo incantesimo si può dividere in intervalli da 10 minuti tra le creature toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stoneskin'
WHERE name = 'Pelle di Pietra Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = 'vedi testo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si convertono tutti i propri tessuti molli in sciami di insetti o di altre creature e li si manda ad eseguire i propri comandi, lasciandosi dietro solamente le ossa e l’attrezzatura. Questi sciami hanno tutte le loro qualità e capacità ma mantengono anche una minuscola porzione della propria coscienza che gli permette di percepire cosa fanno e controllare le loro azioni.

Mentre si è in questa forma, non si possono usare le proprie capacità o eseguire azioni diverse dal controllare gli sciami.

Ogni volta che si lancia questo incantesimo si ottiene un totale di livelli da distribuire pari al proprio livello dell’incantatore ed ogni sciame che si sceglie di creare costa uno o più di questi livelli. Si possono “spendere” questi livelli per creare una qualsiasi combinazione di sciami purché il loro totale non superi il proprio livello dell’incantatore.

Numero di Livelli

Tipo/i di Sciame

2 livelli dell’incantatore

Sciame di Ragni

4 livelli dell’incantatore

Sciame di Ratti

6 livelli dell’incantatore

Sciame di Granchi, Sciame di Vespe

8 livelli dell’incantatore

Sciame di Millepiedi, Sciame di Sanguisughe

10 livelli dell’incantatore

Sciame di Formiche Legionarie

Una volta creati, questi sciami rimangono in vita finché non vengono distrutti o si ordina loro di tornare nel proprio corpo. Quando tutti gli sciami sono ritornati nel proprio corpo o sono stati distrutti, la propria carne si riattacca alle ossa e si ottiene nuovamente la capacità di agire normalmente. Se le proprie ossa non sono più dove erano state lasciate, bisogna prima ritrovarle per poter tornare in possesso del proprio corpo. Si sa sempre se le proprie ossa sono state distrutte e la propria coscienza rimane a controllare gli sciami finché non vengono distrutti (e si muore). Se si riesce ad usare gli sciami per ottenere aiuto e accordarsi con qualcuno affinché ripari le ossa (usando qualsiasi cosa che normalmente riporterebbe in vita), allora li si può far tornare nel proprio corpo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/swarm-skin'
WHERE name = 'Pelle di Sciami';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '30 m',
  duration = NULL,
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Con un ampio gesto, si richiamano forti venti per sgomberare la strada davanti a sé. I venti sono l''equivalente di una Bufera. Durante il primo round dell''incantesimo, i venti spazzano via dall''area designata qualsiasi cosa di Taglia Piccola o inferiore, mandandola verso l''esterno ai lati appena fuori dall''area di effetto dell''incantesimo (50% di probabilità di atterrare a uno dei due lati). L''incantatore può spostarsi attraverso l''area di effetto dell''incantesimo senza subire penalità, sebbene tutte le altre creature siano soggette agli effetti del vento. Nel secondo round e in quelli successivi, i lati dell''effetto sono da considerarsi come un muro di vento. Se l''effetto include una massa d''acqua o di altro liquido, i venti creano un canale profondo fino a 12 metri dentro il liquido. Durante il suo turno, come azione di movimento, l''incantatore può spostare l''effetto di questo incantesimo, ruotandolo di 45 gradi su una delle sue estremità oppure spostandolo fino a 15 metri in linea con il suo attuale orientamento (verso l''incantatore o allontanandosi da esso).

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/path-of-the-winds'
WHERE name = 'Percorso dei Venti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si guadagna la capacità di parlare con le pietre, le quali riferiscono chi o cosa le abbia toccate, oltre a rivelare cosa sia coperto o nascosto dietro o sotto di loro. Se viene loro richiesto, le pietre fanno descrizioni complete e accurate. Da notare che la prospettiva, la capacità di Percezione e le Conoscenze di una pietra potrebbero impedirle di fornire i dettagli desiderati. Si è in grado di parlare con le pietre naturali o con quelle lavorate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-tell'
WHERE name = 'Pietre Parlanti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = '1 giorno/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo trasforma una quercia in un protettore o guardiano. Può essere lanciato solo su un albero alla volta; Querciaviva non può essere lanciato su una quercia finché continua ad essere attivo su un''altra. Querciaviva deve essere lanciato su una quercia Enorme in piena salute. Una frase di attivazione con fino a una parola per livello dell''incantatore viene posta sulla quercia bersaglio. L''incantesimo dà vita all''albero trasformandolo in un Treant.

Se Querciaviva viene dissolto, l''albero mette radici immediatamente, ovunque si trovi. Se lasciato libero, prima di mettere radici cerca di tornare al suo luogo di origine.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/liveoak'
WHERE name = 'Querciaviva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni due livelli)',
  duration = '1 round/livello',
  saving_throw = 'Riflessi parziale, vedi testo',
  spell_res = 'no',
  full_description = ': Si converte uno strato di terreno in catrame bollente. Le creature nell''area quando appare il catrame subiscono 1d6 danni da fuoco ogni due livelli dell''incantatore (massimo 10d6) e devono superare un Tiro Salvezza su Riflessi o diventano Intralciate. Una creatura Intralciata riceve un Tiro Salvezza ogni round per liberarsi dal catrame, e può anche tentare di liberarsi impiegando un''Azione di Movimento per effettuare una prova di Forza o di Artista della Fuga (CD = CD del Tiro Salvezza dell''incantesimo). 

Entrare in un quadretto dell''area di effetto costa 2 quadretti di movimento, e la CD delle prove di Acrobazia nell''area di effetto aumenta di 5. L''area è terreno difficile. Una creatura che entra o inizia il suo turno nell''area subisce 2d6 danni da fuoco e deve ritentare il Tiro Salvezza su Riflessi per non essere Intralciata. Una creatura che cade [Prono|Prona]] nell''area subisce penalità -4 al Tiro Salvezza su Riflessi contro il catrame e alle prove di Forza e Artista della Fuga per uscire dal catrame.

Una creatura che esce dal catrame continua a subire i danni da fuoco finché non termina l''incantesimo o finché la creatura non impiega un''Azione di Round Completo per rimuoversi di dosso il catrame. Una creatura con del catrame subisce penalità -4 alle prove di Acrobazia e Volare effettuate per volare con ali o appendici simili. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/tar-pool'
WHERE name = 'Pozza di Catrame';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno (vedi testo)',
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Reincarnazione, tranne per il fatto che si può far sì che il nuovo corpo assomigli a una particolare creatura, corrispondendo alla sua categoria di età e al suo sesso e ritirando qualsiasi risultato di razza che sarebbe la categoria di taglia sbagliata. Il soggetto ottiene inoltre un bonus +5 alle prove di Camuffare per impersonare la creatura scelta, grazie alle caratteristiche simili, anche se potrebbe subire una penalità per essere della Razza sbagliata.

L''incantesimo lascia automaticamente un piccolo pezzo del nuovo corpo della creatura, in genere una ciocca di capelli (utile per Scrutare e altri incantesimi simili).

Fonte: Reincarnate Spy'
WHERE name = 'Reincarnazione Spia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'si',
  full_description = ': Questo incantesimo segrega la capacità d maggiore raziocinio dei bersagli, permettendo ai loro più oscuri impulsi di venire a galla. Un bersaglio influenzato diventa un feroce mostro: selvaggio, assetato di sangue e brutale. Fino al termine dell''incantesimo, i bersagli hanno tutti i seguenti benefici e svantaggi.

I punteggi di Intelligenza e Carisma dei bersagli scendono a 3 (se erano più alti) e questi ultimi non sono in grado di usare abilità basate su Intelligenza e Carisma, lanciare incantesimi, comprendere linguaggi o comunicare in modo coerente.

I Bersagli subiscono penalità -4 ai Tiri Salvezza su Volontà.

I bersagli ottengono bonus di potenziamento +6 alla Forza, bonus di armatura naturale +2 alla CA e 2d8 Punti Ferita temporanei. Questi punti ferita scompaiono al termine della durata dell''incantesimo. Quando l''incantesimo termina, ogni creatura influenzata deve superare un Tiro Salvezza su Volontà o subisce 1d4 punti di Risucchio a Intelligenza e 1d4 danni al Carisma.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/primal-regression'
WHERE name = 'Regressione Primordiale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '24 ore',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ignorano i danni fisici della mezz''età e della vecchiaia. Questo incantesimo non fa apparire più giovani, né evita di morire di vecchiaia, ma finché l''incantesimo è attivo, si ignorano:

• Le penalità -1 a Forza, Destrezza e Costituzione che derivano dalla mezz''età.

• Le penalità -2 a Forza, Destrezza e Costituzione che derivano dalla vecchiaia.

Mentre si è sotto gli effetti di questo incantesimo si mantengono i bonus a Intelligenza, Saggezza e Carisma relativi all''età.
Le penalità addizionali derivanti dall''età venerabile si applicano interamente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/age-resistance'
WHERE name = 'Resistenza all''Invecchiamento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Dalla propria persona hanno origine ondate di energia che si muovono nella direzione che si è scelta, spingendo lontano tutti gli oggetti di legno che si trovano sul percorso dell''incantesimo, fino ai limiti del suo raggio di azione. Gli oggetti di legno con un diametro superiore a 7,5 cm e che sono stati fissati saldamente non ne subiscono l''effetto, al contrario degli oggetti liberi. Gli oggetti di legno fissi con diametro di 7,5 cm o meno, si piegano e si spezzano e i loro pezzi si muovono con l''onda di energia. Gli oggetti che subiscono l''effetto dell''incantesimo vengono respinti alla velocità di 12 metri per round.

Gli scudi di legno, le lance, i foderi e le impugnature delle armi, i dardi e le frecce saranno tutti respinti, e porteranno con sé i loro possessori. Una creatura trascinata da un oggetto che sta portando può lasciarlo andare. Una creatura trascinata da uno scudo può sganciarlo con un''azione di movimento e lasciarlo cadere come azione gratuita. Se una lancia è piantata a terra o in qualche modo fissata per impedire questo movimento forzato, si spezza. Anche gli Oggetti Magici con parti in legno vengono respinti, anche se un Campo Antimagia è sufficiente a bloccare gli effetti dell''incantesimo.

Le ondate di energia continuano a percorrere la direzione specificata per tutta la durata dell''incantesimo. Dopo avere lanciato questo incantesimo e una volta che la direzione è stata decisa, si possono fare altre cose o andarsene senza che questo modifichi il potere dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/repel-wood'
WHERE name = 'Respingere Legno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ':Le creature che subiscono l''effetto ottengono una vitalità e una resistenza fisica maggiori. L''incantesimo conferisce ai soggetti Bonus di Potenziamento +4 a Costituzione, insieme a tutti i benefici che questo comporta per i Punti Ferita, Tiri Salvezza su Tempra, prove di Costituzione e così via. I punti ferita ottenuti attraverso un aumento temporaneo della Costituzione non sono Punti Ferita Temporanei, scompaiono quando la Costituzione del soggetto torna al livello normale, ma non devono essere perduti per primi come accade con i Punti Ferita Temporanei.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bear-s-endurance'
WHERE name = 'Resistenza dell''Orso di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì',
  full_description = ': Le creature trasmutate diventano più sagge. L''incantesimo conferisce ai soggetti Bonus di Potenziamento +4 alla Saggezza, aggiungendo i normali benefici alle Abilità basate sulla Saggezza. Chierici, Druidi, Paladini e Ranger (e altri incantatori che si affidano alla Saggezza) che ricevono Saggezza del Gufo di Massa non guadagnano ulteriori incantesimi bonus per l''incremento alla Saggezza, ma le CD dei Tiri Salvezza per i loro incantesimi aumentano.

Fonte: http://www.d20pfsrd.com/magic/all-spells/o/owl-s-wisdom'
WHERE name = 'Saggezza del Gufo di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': Una folata di vento rovente soffia verso il basso, infliggendo 4d6 danni da fuoco +1 danno per livello dell’incantatore a tutte le creature nell''area e buttandole a terra Prone. Un Tiro Salvezza su Tempra dimezza i danni da fuoco e nega l’essere buttati a terra Proni. Le creature volanti costrette a scendere a terra dalla forte corrente d’aria subiscono danni come se cadessero a meno che non superino una prova di Volare con CD 15, rimanendo alla loro quota originaria. Le creature che subiscono danni da Scirocco diventano Affaticate (o Esauste, se sono già Affaticate, come per un precedente round di esposizione all''incantesimo Scirocco). Le creature con il Sottotipo Acqua subiscono penalità –4 ai Tiri Salvezza contro questo incantesimo ed il doppio dei danni normali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sirocco'
WHERE name = 'Scirocco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '3 round',
  range = 'personale o contatto',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno o Volontà nega (innocuo)',
  spell_res = 'no o sì (innocuo)',
  full_description = ': Il soggetto di questo incantesimo è in grado di individuare la strada fisica più corta e più diretta verso una rilevante destinazione specifica, come una città, una fortezza, un lago o un dungeon. Il luogo può essere all''esterno o sottoterra, basta che sia rilevante. Per esempio, la capanna di un cacciatore non è abbastanza rilevante, ma lo è il campo di raccolta dei tronchi. L''incantesimo funziona basandosi sul luogo, non sugli oggetti o sulle creature contenuti in esso. La locazione deve trovarsi sullo stesso piano su cui il soggetto si trova nel momento in cui si lancia l''incantesimo.

L''incantesimo permette al soggetto di percepire la direzione esatta che lo condurrà a destinazione, indicando di volta in volta la strada giusta da seguire o le azioni fisiche da compiere. Ad esempio, l''incantesimo permette al soggetto di percepire quale corridoio prendere in una caverna quando deve scegliere fra due vie. L''incantesimo ha termine quando la destinazione viene raggiunta o quando si esaurisce la sua durata, a seconda di ciò che si verifica prima. L''incantesimo può essere usato per rimuovere il soggetto e coloro che si trovano con lui dall''effetto di un incantesimo Labirinto nel giro di un singolo round, specificando come destinazione “fuori dal labirinto”. Questa divinazione opera in funzione del suo soggetto principale, non dei suoi compagni, e quindi non prevede e non si adatta alle azioni di altre creature (compresi eventuali guardiani) che potrebbero effettuare delle azioni per opporsi all''incantatore mentre segue il percorso rivelato dall''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/find-the-path'
WHERE name = 'Scopri il Percorso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Come per Spie Insetto, si possono prendere in prestito i sensi degli insetti evocati. Come Azione di Movimento, si può scegliere di ricevere input sensoriali da uno degli insetti, vedendo ciò che vede e sentendo ciò che sente. In questo caso, si è trattati come se si fosse Ciechi e Sordi. Con un''altra azione di movimento si può passare a un altro insetto o tornare ai propri sensi. 

Fonte: Insect Spies, Greater'
WHERE name = 'Spie Insetto Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello o finché non vengono usate',
  saving_throw = 'nessuno o Riflessi dimezza',
  spell_res = 'no',
  full_description = ': In base alla versione scelta, si possono trasformare delle ghiande in armi a spargimento che l’incantatore o un altro personaggio possono lanciare, o delle bacche di agrifoglio in bombe da far detonare a comando.

• Ghiande Deflagranti: Fino a 4 ghiande vengono trasformate in speciali armi a spargimento che possono essere scagliate fino a 30 metri di distanza. È richiesto un tiro per colpire di contatto a distanza per raggiungere il bersaglio scelto. Insieme, le ghiande possono infliggere 1d4 danni da fuoco per ogni livello dell’incantatore (massimo 20d4) ripartito tra le varie ghiande nella maniera prescelta. Nessuna ghianda può infliggere più di 10d4 danni.
Ogni ghianda esplode nel momento in cui tocca una superficie dura. In aggiunta ai normali danni da fuoco, ognuna infligge 1 danno da spargimento per dado e incendia qualsiasi materiale combustibile nel raggio di 3 metri.

• Bacche di Agrifoglio in Bombe: Si possono trasformare fino a 8 bacche di agrifoglio in bombe speciali. Le bacche vengono normalmente collocate a mano, essendo troppo leggere per funzionare come armi da lancio efficaci (possono essere lanciate a un massimo di 1,5 metri). Se ci si trova entro 60 metri e si pronuncia una parola di comando, le bacche esplodono istantaneamente in una fiammata e infliggono 1d8 danni da fuoco +1 danno per livello dell’incantatore a ogni creatura in un’esplosione con raggio di 1,5 metri, e incendiano qualsiasi materiale combustibile nel raggio di 1,5 metri. Le creature presenti nell’area che superano un Tiro Salvezza su Riflessi subiscono solo danni dimezzati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-seeds'
WHERE name = 'Semi di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello e istantaneo (vedi testo)',
  saving_throw = 'Tempra nega',
  spell_res = 'no',
  full_description = ': Si crea una spaventosa nube grigia, simile a Nube di Nebbia, che ogni tanto crepita con fetide saette verde pallido. Le creature nell''area devono superare un Tiro Salvezza o contraggono una delle seguenti Malattie: Brividi Diabolici, Devastazione Vischiosa, Febbre da Gallina, Febbre Demoniaca, Febbre Lurida, Fuoco Mentale, Infermità Accecante, Lebbra, Malattia Rossa, Peste Bubbonica e Tremarella (la Malattia è scelta dall''incantatore quando lancia l''incantesimo e si applica a tutte le creature che falliscono il Tiro Salvezza). La Malattia viene contratta immediatamente (il periodo di insorgenza non si applica) ed è un effetto istantaneo. Usate la frequenza indicata della Malattia per determinare effetti ulteriori, ma la CD del Tiro Salvezza della Malattia aumenta di +2. 

Diversamente da Nube di Nebbia, la Tempesta Infettiva si allontana dall''incantatore per 3 metri a round, rotolando sulla superficie del terreno.

Ipotizzate lo spostamento della nube a ogni round sulla base del nuovo punto di origine, che è 3 metri più lontano dal punto di origine dove era stato lanciato l''incantesimo.

Dato che i vapori sono più pesanti dell''aria, si abbassano al livello più basso del terreno, e riescono a infiltrarsi in tane o buchi di ogni genere. Non penetra i liquidi e non può essere lanciata sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/plague-storm'
WHERE name = 'Tempesta Infettiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = '30 metri',
  duration = '1 giorno/livello (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L''incantatore altera il terreno e il clima dell''area in un nuovo tipo di terreno e clima appropriato al pianeta o piano. Per esempio, potrebbe trasformare un deserto in pianura. Per lanciare questo incantesimo, l''incantatore deve spendere 10 usi del Potere Mitico insieme al costo materiale. Questo altera magicamente il clima e le piante normali dell''area in quelli appropriati al nuovo terreno, ma non influisce sulle creature o sulla configurazione della terra. Trasformare delle colline rocciose in aree boschive converte l''erba in arbusti e piccoli alberi, ma non spiana le colline né cambia gli animali per soddisfare il nuovo ambiente.

L''incantatore può alterare il clima di un livello (caldo, temperato o freddo). Il grado massimo del cambiamento di terreno dipende dal GM, ma in generale è in un tipo di terreno simile o un livello da quel tipo di terreno (come da terreno boschivo con alberi tipici a terreno boschivo con alberi grossi o sottobosco rado, da terreno paludoso con stagno basso a terreno paludoso con stagno profondo, e così via). L''incantatore potrebbe essere in grado di cambiare la regione in un tipo di terreno simile, come cambiare un bosco rado in brughiera relativamente asciutta. Le creature locali influenzate nocivamente da questa alterazione fuggono dall''area o muoiono rapidamente, a seconda della loro mobilità e consapevolezza del cambiamento.

Più lanci dell''incantesimo nella stessa area possono creare un''area con terreno e clima radicalmente diversi dalla regione circostante. Il GM può stabilire che alcuni cambiamenti di terreno non siano sostenibili e accorciarne la durata o che alcuni siano adatti per l''area ed estenderla. 

Questo incantesimo potrebbe avere molti effetti secondari in base alla natura del cambiamento, del tipo di terreno confinante e così via; questi dovrebbero essere determinati dal GM di volta in volta. Per esempio, trasformare un deserto richiede che venga prelevata acqua dal sottosuolo per sostenere le piante, il che potrebbe abbassare il livello dell''acqua nelle aree vicine. Creare un deserto caldo nel mezzo di una tundra nevosa creerebbe un''area confinante di fango e frequenti tempeste per lo scontro tra i fronti di aria fredda e aria calda. 

Se l''incantatore è almeno di 8° Categoria, può spendere 20 usi del Potere Mitico invece di 10 per aumentare il raggio di azione a 1,5 chilometri, l''area in un''emanazione del raggio di 1,5 chilometri centrata su di sé e la durata a 1 mese per livello dell''incantatore.

Fonte: http://www.d20pfsrd.com/mythic/mythic-magic/mythic-spells/terraform/'
WHERE name = 'Terraformare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'illimitato',
  duration = '1 round',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si può entrare in qualsiasi pianta normale (della propria taglia o superiore) e attraversare ogni distanza fino a un’altra pianta della stessa specie in un singolo round, indipendentemente dalla distanza che separa i due vegetali. Le piante devono essere vive. Non occorre conoscere la pianta di destinazione. In caso di dubbio sulla locazione di una particolare pianta di destinazione, è sufficiente indicare la direzione e la distanza e l’incantesimo è in grado di trasportare il più vicino possibile alla destinazione indicata. Se si desidera una particolare pianta di destinazione, ma la pianta non è più in vita, l’incantesimo fallisce e si viene spinti fuori dalla pianta d’entrata.

Si possono trasportare degli oggetti, purché non si superi il proprio carico massimo. È possibile anche trasportare un’altra creatura consenziente di taglia Media o inferiore (che a sua volta può trasportare oggetti o Equipaggiamento fino al suo carico massimo) o il suo equivalente ogni 3 livelli dell’incantatore. Per determinare il numero di creature che è possibile portare, si usano i seguenti valori: una creatura Grande conta come 2 creature Medie, una creatura Enorme conta come 2 creature Grandi e cosi via. Tutte le creature da trasportare devono essere in contatto l’una con l’altra, e bisogna essere in contatto con almeno una delle creature.

Questo incantesimo non funziona per viaggiare attraverso le creature vegetali.

La distruzione della pianta occupata uccide tutti (incantatore e creature che porta con sé), espellendo dall’albero tutti i corpi e gli oggetti trasportati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/transport-via-plants'
WHERE name = 'Trasporto Vegetale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Se i bersagli di questo incantesimo falliscono il loro Tiro Salvezza su Tempra, le aree di terreno in pietra e in terra per loro funzionano come un pantano pronto ad inghiottirlo, che cerca di tirarli giù e li danneggia se cercano di spostarsi attraverso un simile terreno.

Se i bersagli sono delle creature, considerare tutte le zone di terra e pietra che attraversa come terreno difficile. Inoltre, per ogni 1,5 metri che hanno percorso su questo terreno, le creature subisce 1d6 danni. Le creature con una velocità di Scavare o con la capacità Scorrere sulla Terra non sono influenzate da Vincolare alla Terra.

Se lanciato su degli oggetti incustoditi che sono posati su terreno di pietra o di terra, questo li avvolge, inghiottendoli. È richiesta una prova di Forza con CD 15 per liberare gli oggetti dalla terra o dalla pietra che cercano di inghiottirli. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/binding-earth'
WHERE name = 'Vincolare alla Terra di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo aumenta la virulenza della dose di veleno bersaglio, rendendo il Veleno più difficile da contrastare. Il veleno non è influenzato da ritardare il veleno e la CD per rimuoverlo con Neutralizza Veleno è aumentata di 5. Inoltre, il veleno utilizza la propria CD di Tiro Salvezza o la CD del Veleno Soverchiante, a seconda di quale sia più alta.

Se lanciato su una creatura che sta soffrendo per l''esposizione a una o più dosi di veleno, l''incantesimo si applica a una delle dosi a scelta, o a una dose casuale di veleno che colpisce il bersaglio se non si sa quali veleni lo stiano affliggendo.

Se lanciato su una creatura velenosa, l''incantesimo agisce sulla prima dose di veleno che la creatura emette prima della fine della durata dell''incantesimo.

Fonte: Overwhelming Poison'
WHERE name = 'Veleno Soverchiante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si infonde in Vegetali inanimati una limitata mobilità e una parvenza di vita. Ogni Vegetale bersaglio agisce come una Catapulta Leggera fino al termine della durata dell''incantesimo, anche se si deve impiegare un''Azione Standard per prendere la mira con ognuno di queste catapulte albero prima che sparino la prima volta e ogni volta successiva quando si vuole cambiare bersaglio. Con un''Azione Gratuita, si può comandare a uno o a tutti gli alberi sotto il proprio controllo di smettere di sparare. Non è necessario fornire munizioni a queste catapulte vegetali, si ricaricano automaticamente con rocce e massi in zona, scavandoli dalle profondità del terreno se necessario. Se lo si desidera si possono fornire munizioni agli alberi. L''albero non carica munizioni fiammeggianti, e queste catapulte vegetali non possono essere influenzate da Colpo di Energia d''Assedio se l''energia prescelta è fuoco.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/siege-of-trees'
WHERE name = 'Assedio di Alberi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello o 1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L’incantesimo infonde nei Vegetali inanimati la mobilità e una parvenza di vita. I Vegetali così animati attaccano chiunque o qualsiasi cosa all’inizio gli venga indicato come se fossero oggetti animati della categoria di Taglia appropriata. Si può animare un Vegetale Grande o più piccolo, o un numero equivalente di Vegetali più grandi, come indicato: un Vegetale Enorme conta come 2 Vegetali Grandi o inferiori, un Vegetale Mastodontico come 4, e uno Colossale come 8. Si può cambiare il bersaglio o i bersagli designati come azione di movimento, come se si stesse dirigendo un incantesimo attivo.

Usate le statistiche degli Oggetti Animati, ma i Vegetali più piccoli della Taglia Grande sono privi della Durezza.

Animare Vegetali non può influenzare le creature Vegetali, né il materiale Vegetale non vivo.

• Intralciare: In alternativa, si può infondere in tutti i Vegetali presenti nel raggio di azione un certo grado di mobilità che permetta loro di attorcigliarsi attorno alle creature che si trovano nell’area. Quest’uso dell’incantesimo duplica l’effetto di un incantesimo Intralciare. La Resistenza agli Incantesimi non impedisce alle creature di essere Intralciate. L’effetto dura un’ora per livello dell’incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animate-plants'
WHERE name = 'Animare Vegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo funziona come Attirare Folletti Inferiore, tranne che per il fatto che la chiamata capricciosa dell''incantesimo può produrre un singolo Folletto di 12 Dadi Vita o meno, o due folletti dello stesso tipo il cui totale di Dadi Vita non superi i 12.

Fonte: Entice Fey'
WHERE name = 'Attirare Folletti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = '1 round/livello o finché tutti i bagliori non si esauriscono',
  saving_throw = 'Riflessi nega e dimezza',
  spell_res = 'sì',
  full_description = ': Per tutta la durata dell’incantesimo, si può utilizzare un’azione standard per invocare un bagliore di luce intensa ogni round. È possibile creare uno di questi bagliori ogni 3 livelli dell’incantatore (fino a un massimo di 6 bagliori al 18° livello). L’incantesimo termina quando la sua durata si esaurisce oppure quando sono terminati i bagliori a disposizione.

Tutte le creature presenti all’interno del bagliore vengono Accecate e subiscono 4d6 danni. Tutte le creature per cui la luce solare è nociva o innaturale subiscono danni raddoppiati. Un Tiro Salvezza su Riflessi effettuato con successo annulla la Cecità e dimezza i danni.

I Non Morti colti all’interno del bagliore subiscono 1d6 danni per livello dell’incantatore (massimo 20d6), o danni dimezzati se superano un Tiro Salvezza su Riflessi. Inoltre, il bagliore è in grado di distruggere le creature Non Morte specificamente vulnerabili alla luce intensa,in caso di fallimento del loro Tiro Salvezza.

La luce ultravioletta generata da questo incantesimo è anche in grado di infliggere danni a funghi, muffe, Melme e fanghiglie come se fossero creature Non Morte.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sunbeam'
WHERE name = 'Bagliore Solare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea un massiccio bastione di terra compatta e pietre dello spessore di 1,5 metri. Il bastione non può essere evocato in modo che occupi lo stesso spazio di un’altra creatura od oggetto. Ogni sezione di 1,5 metri del bastione ha Durezza 0 e 180 Punti Ferita. Una sezione del bastione i cui Punti Ferita vengono ridotti a 0 viene abbattuta. Se una creatura tenta di sfondare il bastione con un singolo attacco, la CD per la prova di Forza è 60. Una creatura può scalare il bastione con una prova di Scalare con CD 20.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/rampart'
WHERE name = 'Bastione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'no e Volontà nega (innocuo)',
  spell_res = 'no e sì (innocuo)',
  full_description = ': Si può alterare la sostanza del proprio corpo e farla diventare simile al vapore di una nube (come per l''incantesimo Forma Gassosa), consentendo di camminare nell''aria, anche a grandi velocità. Si possono portare con sé altre creature, che agiscono in modo indipendente.

Generalmente, chi cammina nel vento vola a una velocità di 3 metri con manovrabilità perfetta. Se il soggetto lo desidera, un vento magico lo sospinge a una velocità fino a 180 metri per round (90 km/h) con manovrabilità scarsa. Egli non è invisibile, ma piuttosto appare nebuloso e traslucido. Se è vestito interamente di bianco, esiste una probabilità dell''80% che venga scambiato per un semplice cumulo di vapori, un banco di nebbia o una nuvola.

Il soggetto può tornare alla sua forma fisica quando lo desidera e poi ritrasformarsi di nuovo in forma di nube. Ogni cambiamento richiede 5 round, che contano nella durata dell''incantesimo (come avviene per qualsiasi lasso di tempo trascorso in forma fisica). Come già indicato sopra, si può interrompere l''incantesimo, e si può anche decidere di interrompere l''incantesimo su alcuni soggetti e di mantenerlo su altri.

Nell''ultimo minuto di durata dell''incantesimo, il soggetto che si trova in forma di nube scende automaticamente di 18 metri per round (per un totale di 180 metri), o più velocemente, se lo desidera. Questa discesa funge come avvertimento per l''imminente esaurimento dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wind-walk'
WHERE name = 'Camminare nel Vento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = '3 km',
  duration = '4d12 ore',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si può cambiare il tempo atmosferico nell''area locale. Sono necessari 10 minuti per lanciare l''incantesimo e altri 10 minuti perché gli effetti comincino a manifestarsi. Le condizioni atmosferiche del momento vengono determinate dal GM. Si può solo invocare un tempo appropriato al clima e alla stagione dell''area in cui si trova, oppure si può impiegare questo incantesimo per fare in modo che il tempo nell''area si calmi e torni ad adeguarsi alla stagione.

Stagione

Tempo possibile

Primavera

Tornado, tempesta di fulmini, tempesta di nevischio o caldo

Estate

Pioggia torrenziale, calore intenso o grandinata

Autunno

Clima caldo o freddo, nebbia, nevischio

Inverno

Freddo intenso, tormenta di neve, disgelo

Tardo inverno o Primavera Precoce

Vento tipo Uragano

Si controllano le tendenze generali del tempo, come la direzione e l''intensità del vento, ma non le sue applicazioni specifiche (dove colpiranno i fulmini, ad esempio, o il percorso preciso di un tornado). Il tempo continuerà così come è stato generato per la durata dell''incantesimo o finché non si userà un''azione standard per decidere una nuova condizione atmosferica (che si manifesterà pienamente 10 minuti dopo). Condizioni contraddittorie tra loro non possono essere presenti contemporaneamente.

Controllare Tempo Atmosferico può eliminare fenomeni atmosferici (che avvengono naturalmente o in altro modo) allo stesso modo in cui può crearli.

I Druidi che lanciano questo incantesimo raddoppiano la sua durata e influenzano un cerchio del raggio di 4,5 km.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/control-weather'
WHERE name = 'Controllare Tempo Atmosferico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo) o Volontà dimezza',
  spell_res = 'sì (innocuo)',
  full_description = ': Si incanala energia positiva per curare 2d8 danni +1 danno per livello dell’incantatore (massimo +30) ad ogni creatura selezionata. Come gli altri incantesimi di cura, cura ferite moderate di massa infligge danni ai non morti nella sua area di effetto anziché curarli. Ogni non morto influenzato può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-moderate-wounds'
WHERE name = 'Cura Ferite Moderate di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Guarigione permette di Incanalare Energia positiva in una creatura per Guarire ferite e afflizioni. L’incantesimo fa immediatamente cessare tutte le seguenti condizioni avverse sul bersaglio: Abbagliato, Accecato, Affaticato, Assordato, Avvelenato, Confuso, Danni alle Caratteristiche, Demente, Esausto, Frastornato, Folle, Infermo, Malato, Nauseato e Stordito. Cura anche 10 danni per livello dell’incantatore, fino a un massimo di 150 danni al 15° livello.

Guarigione non rimuove Livelli Negativi e non ripristina livelli o Punteggi di Caratteristica risucchiati permanentemente.

Se utilizzato contro una creatura Non Morta, Guarigione funziona come Ferire.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/heal'
WHERE name = 'Guarigione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale VII';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Un''esplosione di neve riempie improvvisamente un''area di 4,5 metri, assumendo immediatamente la forma di un mammut lanoso fatto di neve con zanne di ghiaccio solido. Il mammut ha statistiche identiche a quelle di un Mastodonte, tranne per il fatto che ha anche il Sottotipo Freddo (e quindi ottiene Immunità al Freddo e Vulnerabilità al Fuoco). Il mammut di ghiaccio obbedisce ai comandi telepatici dell''incantatore. Permette a te o a chiunque tu designi di cavalcarlo ed è considerato addestrato al combattimento. Al 17° livello, un mammut di ghiaccio evocato infligge 1d6 danni da freddo aggiuntivi con ogni attacco fisico.

Fonte: Frost Mammoth'
WHERE name = 'Mammut di Ghiaccio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)/30 m',
  duration = '1 round/livello',
  saving_throw = 'Tempra parziale',
  spell_res = 'no',
  full_description = ': L''incantesimo richiama 4 imponenti sciami di insetti che strisciano e mordono. Gli sciami compaiono l''uno accanto all''altro, ma possono essere indirizzati a muoversi indipendentemente. Trattate questi sciami come Sciami di Millepiedi con le seguenti modifiche. Gli sciami hanno 60 Punti Ferita ciascuno e infliggono 4d6 danni con il loro attacco. Il Tiro Salvezza per resistere al loro Veleno e agli effetti di Distrazione è uguale alla CD del Tiro Salvezza di questo incantesimo. Le creature che si trovano in mezzo a vari sciami subiscono il danno solo una volta ed effettuano il Tiro Salvezza solo una volta.

Si possono evocare gli sciami in modo che occupino aree già occupate da altre creature. Come azione standard, si può ordinare a un numero qualsiasi di sciami di dirigersi verso una qualsiasi preda entro 30 metri da sé. Non si può ordinare agli sciami di allontanarsi a più di 30 metri da sé, e se ci si allontana a più di 30 metri da uno sciame, quello sciame rimane stazionario, attaccando qualsiasi creatura all''interno della sua area (si potranno impartire altri ordini se si torna entro 30 metri da quello sciame).

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/creeping-doom'
WHERE name = 'Piaga Strisciante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si evoca un prato extradimensionale a cui si può accedere da un singolo ingresso sul piano da cui l''incantesimo è stato lanciato. Il punto di ingresso assomiglia a un cerchio di funghi velenosi che racchiude un quadrato di 3 metri. Solo chi è stato designato può entrare nel prato prima dell''incantatore e il portale si chiude e viene reso invisibile dopo che quest''ultimo è entrato. Una volta che i visitatori hanno varcato il punto di ingresso, si ritrovano in un idilliaco praticello al crepuscolo circondato da un invalicabile boschetto di alberi da frutto e noci. L''atmosfera è pura, limpida e calda. 

Si può configurare il prato in qualsiasi forma desiderata, fino al limite dell''effetto dell''incantesimo. Il luogo è confortevole e mite. Gli alberi possono fornire sufficiente cibo per sostenere quattro persone per livello dell''incantatore per un giorno. Un gruppo di servitori animali o simili a folletti quasi trasparenti (due per livello dell''incantatore) attendono chiunque entri. Gli inservienti funzionano come degli incantesimi Servitore Inosservato, ma sono visibili e possono andare ovunque nel prato.

Dato che il luogo può essere raggiunto solo attraverso il suo portale speciale, le condizioni esterne non influiscono sul prato, né le sue condizioni interne passano al piano dall''altra parte.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fairy-ring-retreat/'
WHERE name = 'Riparo Fatato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '24 ore',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ignorano i danni fisici della mezz''età, della vecchiaia e dell''età venerabile. Questo incantesimo non fa apparire più giovani, né evita di morire di vecchiaia, ma finché l''incantesimo è attivo, si ignorano:

• Le penalità -1 a Forza, Destrezza e Costituzione che derivano dalla mezz''età

• Le penalità -2 a Forza, Destrezza e Costituzione che derivano dalla vecchiaia

• Le penalità -3 a Forza, Destrezza e Costituzione che derivano dall''età venerabile.

Mentre si è sotto gli effetti di questo incantesimo si mantengono i bonus a Intelligenza, Saggezza e Carisma relativi all''età.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/age-resistance'
WHERE name = 'Resistenza all''Invecchiamento Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = '1 giorno/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'no',
  full_description = ': Occorre sacrificare una creatura subito dopo aver terminato di lanciare l''incantesimo. Quando la vittima muore, il suo sangue o icore si raccoglie e solidifica in un unico eliotropio rosso. La pietra contiene l''essenza e lo spirito della creatura sacrificata: chiunque la impugni può utilizzare la capacità magica razziale ad attivazione di livello più alto posseduta dalla vittima sacrificale, purché compia le azioni necessarie per attivare la capacità magica immagazzinata nell''eliotropio. Ogni creatura che impugni la pietra può attivarla, ma solo una volta al giorno (o con la frequenza prevista dalla capacità magica della creatura, quale delle due sia inferiore). Se la creatura possiede diverse capacità magiche razziali di pari livello, quella conservata nella pietra viene selezionata casualmente tra esse. L''eliotropio può contenere solo capaciti magiche razziali che replicano un incantesimo, comprese versioni modificate come Invisibilità (solo sé stessi), ma non capacità magiche uniche possedute dalla creatura. Le capacità con effetti modificati operano comunque di conseguenza, pertanto una creatura che attivi l''eliotropio per usare Teletrasporto Superiore (solo sé stessi) risulta l''unica beneficiaria dell''effetto, cosi come un eliotropio contenente Evoca Mostri II (solo Elementali del Fuoco Piccoli) evocherà solo le creature in questione. Inoltre, l''eliotropio non può contenere capacità magiche che duplicano incantesimi con componenti dal costo superiore a 250 mo.

La CD del Tiri Salvezza, il livello dell''incantatore e altri parametri della capacità restano gli stessi di quando la vittima era in vita, sebbene la creatura che attiva l''eliotropio possa scegliere i bersagli, l''area o la forma dell''incantesimo, nonché prendere altre decisioni, per esempio come controllare il bersaglio di Dominare Persone. L''eliotropio può eseguire le azioni necessarie per manipolare certi aspetti dell''incantesimo, concentrarsi su di esso, ridirigerlo e così via, fino a completare le azioni di un round normale. 

Se la vittima sacrificale non muore durante il lancio (per esempio perché era solo una creatura evocata) o viene riportata in vita prima che la durata dell''incantesimo scada, l''eliotropio perde il suo potere magico. Il frammento dello spirito della creatura imprigionato nella pietra non ostacola i tentativi di riportare quest''ultima in vita.

Fonte: https://www.d20pfsrd.com/magic/all-spells/p/plundered-power/'
WHERE name = 'Potere Rubato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vedi testo',
  duration = '1 ora/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si è in grado di vedere e sentire creature che possono trovarsi a qualunque distanza. Se il soggetto supera un Tiro Salvezza su Volontà, il tentativo fallisce. La difficoltà del Tiro Salvezza cambia a seconda di quanto bene si conosca il soggetto e del tipo di connessione fisica (se presente) con quella creatura. Inoltre, se il soggetto si trova su un altro piano, ottiene bonus +5 al Tiro Salvezza su Volontà.

Conoscenza

Modificatore al Tiro Salvezza

Nessuna*

+10

Di seconda mano (lo si conosce per sentito dire)

+5

Di prima mano (lo si è incontrato una volta)

+0

Familiare (lo si conosce molto bene)

–5

Connessione

Modificatore al Tiro Salvezza su Volontà

Descrizione o immagine

–2

Oggetto personale o abito

–4

Parte del corpo, ciocca di capelli, unghie ecc.

–10

*Occorre avere un qualche tipo di connessione (vedi sotto) con una creatura di cui non si sa nulla.

Se il Tiro Salvezza fallisce, si può vedere e sentire il soggetto e le sue immediate vicinanze (approssimativamente 3 metri in tutte le direzioni dal soggetto). Se il soggetto si muove, il sensore lo segue ad una velocità fino a 45 metri.

Come tutti gli incantesimi di Divinazione (scrutamento), il sensore ha la vostra completa capacità visiva, inclusi tutti gli effetti magici. Inoltre, i seguenti incantesimi funzionano attraverso il sensore: Individuazione del Bene, Individuazione del Caos, Individuazione del Magico, Individuazione del Male, Individuazione della Legge, Lettura del Magico, Linguaggi e Messaggio.

Se il Tiro Salvezza ha successo, non si può tentare di Scrutare Superiore di nuovo un soggetto per almeno 24 ore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/scrying'
WHERE name = 'Scrutare Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'permanente',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si marchia il bersaglio con un sigillo nero sulla sua pelle; l''aspetto preciso del sigillo è lasciato all''incantatore, ma non può essere più grande della propria mano. Il sigillo nero funziona come Sigillo di Giustizia, e quando il sigillo viene attivato, il bersaglio diventa Scosso ogni volta che si trova sull''acqua o in acqua a più di 1,5 metri dalla riva. In aggiunta, finché il sigillo nero è attivo, il bersaglio viene influenzato come se fosse soggetto a Esilio dalla Natura ma tutte le creature con il Sottotipo Acquatico o Acqua o con una velocità di Nuotare vengono rese ostili, anche quelle che non sono del Tipo Animale; gli animali non acquatici non vengono resi ostili. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/black-mark'
WHERE name = 'Sigillo Nero';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si conferisce al soggetto la capacità di vedere tutte le cose per quello che sono veramente. Il soggetto vede attraverso il buio naturale e quello magico, nota porte segrete celate dalla magia, vede le locazioni esatte delle creature o degli oggetti sotto l''effetto di Distorsione o di Sfocatura, vede le creature e gli oggetti Invisibili normalmente, vede attraverso le illusioni e le vere forme degli esseri soggetti a metamorfosi, trasformati o trasmutati. Inoltre, il soggetto è in grado di concentrarsi e di osservare ciò che accade sul Piano Etereo (ma non negli spazi extradimensionali). Il raggio di azione accordato a Visione del Vero è di 36 metri.

Visione del Vero, tuttavia, non permette di vedere attraverso oggetti solidi. Non conferisce in alcun modo vista a raggi X o un suo qualsiasi equivalente. Non nega l''Occultamento, nemmeno quello causato da nebbia o effetti simili. Visione del Vero non aiuta il soggetto a vedere attraverso camuffamenti normali, a individuare creature che sono semplicemente nascoste o a trovare porte segrete nascoste con mezzi normali. Inoltre, gli effetti di questo incantesimo non possono essere potenziati con magie conosciute, quindi non è possibile usare Visione del Vero attraverso una Sfera di Cristallo o in combinazione con Chiaroudienza/Chiaroveggenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/true-seeing'
WHERE name = 'Visione del Vero';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Quando viene lanciato Tempesta di Fuoco, l’area intera viene investita da lingue di fiamme impetuose. Le fiamme che infuriano non danneggiano la vegetazione naturale, il sottobosco o qualunque creatura vegetale nell’area che si desidera tenere al riparo dal danno dell’incantesimo. Qualunque altra creatura nell’area subisce 1d6 danni da fuoco per livello dell’incantatore (massimo 20d6). Le creature che falliscono un Tiro Salvezza su Riflessi Prendono Fuoco, subendo 4d6 danni da fuoco ogni round finché le fiamme non vengono estinte. Estinguere le fiamme è un’azione di round completo che richiede un Tiro Salvezza su Riflessi con CD 20.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-storm'
WHERE name = 'Tempesta di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì (oggetto)',
  full_description = ': Questo incantesimo permette di trasformare tutti gli oggetti in metallo all’interno dell’area in oggetti di legno. Anche le armi, le armature e gli altri oggetti di metallo trasportati dalle creature vengono trasformati. Gli oggetti magici di metallo hanno una Resistenza agli Incantesimi effettiva di 20 + il livello dell’incantatore contro questo incantesimo. Gli Artefatti non possono essere trasmutati. Le armi convertite da metallo in legno subiscono penalità –2 ai Tiri per Colpire e per i danni. Le armature convertite da metallo in legno perdono 2 punti di bonus di armatura. Le armi trasformate da questo incantesimo si scheggiano e si rompono ad ogni Tiro per Colpire naturale di 1 o 2 e le armature trasformate perdono un ulteriore punto di bonus di armatura ogni volta che vengono colpite da un Tiro per Colpire naturale di 19 o 20.

Solo Desiderio, Desiderio Limitato,Miracolo o magie simili possono ripristinare un oggetto trasmutato al suo stato metallico.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/transmute-metal-to-wood'
WHERE name = 'Trasmutare Metallo in Legno';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si trasforma un Bastone Ferrato appositamente preparato in una creatura di taglia Enorme simile a un Treant alta circa 7,2 metri. Quando si pianta una punta del bastone nel terreno e si pronuncia una parola di comando speciale per concludere l''incantesimo, il bastone si trasforma in una creatura che ha l''aspetto di un Treant e combatte come un Treant. La creatura difende l''incantatore ed esegue qualsiasi sua istruzione. Tuttavia non è in realtà un vero Treant, e non è quindi in grado di conversare con altri Treant o di comandare gli alberi. Se il bastone/treant raggiunge 0 Punti Ferita o meno, il Treant si dissolve in polvere e il bastone viene distrutto. Altrimenti, il bastone ritorna alla sua forma normale quando l''incantesimo si esaurisce (o quando viene interrotto) e può essere utilizzato di nuovo come focus per un altro lancio dell''incantesimo. Il bastone/treant viene sempre creato al pieno delle forze, indipendentemente dal numero di ferite che aveva subito l''ultima volta che è apparso.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/changestaff'
WHERE name = 'Trasforma Bastone';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì (vedi testo)',
  full_description = ': Questo incantesimo produce una tempesta di sabbia pungente che blocca la visuale. Si può spostare la tempesta fino a 9 metri ogni round come Azione di Movimento.

Le creature nell''area subiscono 3d6 danni perforanti ogni round. L''area è considerata una bufera (vedere Tabella Effetti del Vento).

Se una creatura con Resistenza agli Incantesimi resiste a questo incantesimo, il vento e la sabbia non hanno effetto su di essa, ma rimane comunque incapace di vedere all''interno dell''area dell''incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/scouring-winds'
WHERE name = 'Venti Erosivi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'no',
  full_description = ': L''incantesimo permette di controllare le azioni di una o più creature Vegetali per un breve periodo di tempo. Le creature vengono comandate a voce e sono in grado di capire, in qualsiasi lingua si stia parlando. Anche se la comunicazione vocale non è possibile, i Vegetali controllati non attaccano l''incantatore. Alla fine dell''incantesimo i soggetti controllati tornano al loro normale comportamento.

Comandi suicidi o autodistruttivi vengono semplicemente ignorati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/control-plants'
WHERE name = 'Controllare Vegetali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'Personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si diventa una spaventosa versione più grande di se stessi. Si cresce fino alla Taglia Grande, e si assumono sembianze che terrorizzano i propri nemici. Si ottengono le seguenti capacità: Bonus di Taglia +6 alla Forza, Bonus di Taglia +4 alla Costituzione, Bonus di Armatura Naturale +6, RD 10/magia e RI pari a 10 + metà del livello da incantatore. Si emette anche un''aura che si diffonde fino a 9 m. Le creature nemiche nell''area sono Scosse. Ogni volta che una creatura Scossa da quest''aura colpisce l''incantatore con un attacco in mischia,diventa Spaventata per 1d4 round, anche se al termine della durata non è più influenzata dall''aura. L''effetto dell''aura è un effetto di paura e di influenza mentale

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/frightful-aspect'
WHERE name = 'Aspetto Terrificante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Si crea un potente ed immobile gorgo in qualsiasi massa di liquido sufficientemente ampia da contenere l’effetto dell’incantesimo. Le creature Grandi o inferiori che entrano in contatto con l’effetto dell’incantesimo devono superare un Tiro Salvezza su Riflessi o subiscono 3d6 danni contundenti. Una creatura di taglia Media o inferiore che fallisce il suo primo Tiro Salvezza deve superarne un secondo o viene trascinata nel gorgo e rimanere sospesa nelle sue potenti correnti, subendo ogni round al suo turno 1d8 danni senza alcun Tiro Salvezza.

Si può comandare al gorgo di espellere le creature contenute in qualsiasi momento si desideri. Una imbarcazione lunga quanto l’ampiezza del gorgo o più corta che passi attraverso di esso subisce 6d6 danni e rimane bloccata nella corrente. Se il capitano dell’imbarcazione supera una prova di Professione (marinaio) con CD 25 (o se l’imbarcazione è più lunga dell’ampiezza del Vortice), l’imbarcazione subisce solo metà danni e non rimane bloccata nel vortice.

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/vortex'
WHERE name = 'Vortice';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Riportando gli Animali bersaglio allo stadio dei loro antenati, si risveglia una selvaggia macchina di distruzione. Gli Animali ottengono immediatamente l''Archetipo Semplice Avanzato. Ottengono bonus +2 a tutti i tiri, inclusi i tiri per i danni e le CD delle capacità speciali, bonus +4 a CA e DMC e +2 Punti Ferita per DV. Gli istinti primitivi degli Animalì permangono per la durata dell''incantesimo: se gli Animali conoscono comandi concessi dall''abilità Addestrare Animali, ne perdono l''accesso tranne per “attacca”. Questo incantesimo non ha effetto su Animali che hanno già l''Archetipo di creatura avanzata.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/atavism'
WHERE name = 'Atavismo di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo) o Volontà dimezza',
  spell_res = 'sì (innocuo)',
  full_description = ': Si incanala energia positiva per curare 3d8 danni +1 danno per livello dell’incantatore (massimo +35) ad ogni creatura selezionata. Come gli altri incantesimi di cura, Cura Ferite Gravi di Massa infligge danni ai Non Morti nella sua area di effetto anziché curarli. Ogni Non Morto influenzato può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-serious-wounds'
WHERE name = 'Cura Ferite Gravi di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 metri',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': Quando si lancia questo incantesimo, dei fulmini scaturiscono dal proprio corpo in tutte le direzioni. I dardi non danneggiano la vegetazione o le creature naturali nell''area che si desidera escludere dal danno. Tutte le altre creature nell''area subiscono 1d8 danni da elettricità per livello dell''incantatore (massimo 20d8) e sono Stordite per 1 round. Un Tiro Salvezza riuscito dimezza il danno e nega l''effetto di Stordimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stormbolts'
WHERE name = 'Dardi Tempestosi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': L’incantesimo infligge immediatamente 10 danni per livello dell’incantatore. Il bersaglio ha diritto a un Tiro Salvezza su Tempra per sopravvivere all’attacco. Se il tiro ha successo, la creatura subisce solo 3d6 danni +1 danno per livello dell’incantatore (massimo +25). Il soggetto potrebbe morire a causa dei danni subiti pur avendo superato il Tiro Salvezza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/finger-of-death'
WHERE name = 'Dito della Morte';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi parziale',
  spell_res = 'sì',
  full_description = ': Esplosione Solare crea un globo di luce accecante e incandescente, che esplode silenziosamente a partire dal punto scelto. Tutte le creature all’interno del globo vengono Accecate e subiscono 6d6 danni. Una creatura per cui la luce del sole è nociva o innaturale subisce danni raddoppiati. Un Tiro Salvezza su Riflessi riuscito nega l''Accecamento e dimezza i danni.

I Non Morti all’interno del globo subiscono 1d6 danni per livello dell’incantatore (massimo 25d6), o danni dimezzati se superano un Tiro Salvezza su Riflessi. Inoltre, l’esplosione è in grado di distruggere le creature Non Morte specificamente vulnerabili alla luce intensa in caso di fallimento del proprio Tiro Salvezza.

La luce ultravioletta generata da questo incantesimo è anche in grado di infliggere danni a funghi, muffe, Melme, fanghiglie, come se fossero creature Non Morte.

Esplosione Solare dissolve qualsiasi incantesimo di oscurità di livello inferiore al 9° all’interno della sua area.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sunburst'
WHERE name = 'Esplosione Solare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale VIII';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Questo incantesimo richiama una nuvola di alghe tossiche color ruggine. Tutte le creature all''interno della foschia ne vengono ricoperte, assumendo lo stesso colore rossastro. Tutti i bersagli nella foschia ottengono occultamento. Le creature nella foschia devono superare il tiro salvezza o subiscono 1d4 danni a Saggezza e sono adirate, attaccando tutte le creature che individuano nei paraggi (come per "attaccare la creatura più vicina" della condizione confuso). Una creatura rimane adirata finché dura l''incantesimo. Una creatura deve effettuare il tiro salvezza solo una volta ogni volta che è all''interno della foschia (quindi uscire e rientrare richiede un altro tiro salvezza). 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blood-mist'
WHERE name = 'Foschia di Sangue';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno, vedi testo',
  spell_res = 'sì (innocuo)',
  full_description = ': Quando si lancia questo incantesimo, si può trasformare fino a una creatura consenziente per livello dell''incantatore in un animale a propria scelta; l''incantesimo non ha effetto se la creatura non è consenziente. Tutte le creature devono assumere lo stesso tipo di forma animale. I bersagli rimangono in forma animale finché l''incantesimo non svanisce o finché non si decide di interrompere l''incantesimo su tutti i soggetti. Inoltre, ogni soggetto può scegliere di riassumere la sua forma normale come azione di round completo; il farlo pone fine all''incantesimo solo su quella creatura.

Si può far assumere la forma di una creatura del Tipo Animale Minuta o Enorme. L''incantesimo consente anche di assumere la forma di una creatura del Tipo Bestia Magica Piccola o Media. Se questa forma ha una delle seguenti capacità, si ottiene anche la capacità indicata: Afferrare, Balzare, Ferocia, Fiuto, Nuotare 27 m, Percezione Cieca 9 m, Ragnatela, Sbilanciare, Scalare 27 m, Scavare 18 m, Scurovisione 18 m, Sperone, Propulsione, Stritolare, Travolgere, Veleno Visione Crepuscolare e Volare 27 m (manovrabilità buona).

• Animale Minuto: Se la forma è quella di un animale di taglia Minuta, si ottiene Bonus di Taglia +6 a Destrezza, penalità –4 a Forza e Bonus di Armatura Naturale +1.

• Animale Enorme: Se la forma è quella di un animale di taglia Enorme, si ottiene Bonus di Taglia +6 a Forza, penalità –4 a Destrezza e Bonus di Armatura Naturale +6.

• Bestia Magica Piccola: Se la forma è quella di una bestia magica di taglia Piccola, si ottiene Bonus di Taglia +4 a Destrezza e Bonus di Armatura Naturale +2.

• Bestia Magica Media: Se la forma è quella di una bestia magica di taglia Media, si ottiene Bonus di Taglia +4 a Forza e Bonus di Armatura Naturale +4.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/animal-shapes'
WHERE name = 'Forme Animali';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = '1 giorno (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Toccando il terreno si maledice l''area con sette Pericoli innaturali, ognuno con GS 14 o inferiore. I pericoli vengono predisposti in modo che, se alcuni o tutti vengono affrontati insieme, l''incontro non può avere un GS effettivo superiore a 15 (per esempio, due pericoli con GS 13 potrebbero essere incontrati assieme).

Sebbene questo faccia apparire i pericoli frequentemente, le loro manifestazioni restano imprevedibili: non si può controllare quando inizino o finiscano i pericoli, né dove appariranno sul terreno maledetto. 

Maledire Terreno Supremo può essere reso permanente con un incantesimo Permanenza lanciato da un incantatore di 19° livello o superiore al costo di 27.500 mo.

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/curse-terrain/'
WHERE name = 'Maledire Terreno Supremo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo inverte la gravità nella sua area, facendo cadere verso l’alto tutte le creature e gli oggetti che non siano fissati a terra, facendo loro raggiungere il punto più alto dell’area in 1 round. Se nel corso di questa caduta incontrano qualche oggetto solido (come un soffitto), oggetti e creature in caduta lo colpiscono con la stessa forza che avrebbero subito in una normale caduta verso il basso. Se un oggetto o una creatura raggiunge il punto più alto dell’area senza colpire nulla, rimane lì, ondeggiando leggermente, fino al termine dell’incantesimo. Alla fine dell’incantesimo, le creature e gli oggetti ricadono verso il basso.

Posto che vi sia nei paraggi qualcosa a cui aggrapparsi, le creature all’interno dell’area possono tentare un Tiro Salvezza su Riflessi per afferrare qualcosa quando l’incantesimo ha effetto. Le creature in grado di Volare o levitare possono evitare di cadere.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reverse-gravity'
WHERE name = 'Inversione della Gravità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = 'permanente (I)',
  saving_throw = 'nessuno (vedi testo della maledizione)',
  spell_res = 'no',
  full_description = ': Toccando il terreno si maledice un''area che rimane avvolta da fosche tenebre. Le fonti luminose comuni e magiche che producono luce normale generano solo luce fioca; persino la luce solare diretta crea solo una luce ambientale fioca nell''area (paragonabile alla luna piena). Il crepuscolo e la notte sono sempre bui. Le creature ferite o indebolite dalla luce diurna possono muoversi nell''area durante il giorno e l''unico svantaggio che subiscono dall''attenuamento della luce solare è che diventano Abbagliate all''interno dell''area. La crescita dei vegetali nell''area viene rallentata, come con l''effetto rallentare la crescita di Rimpicciolire Vegetali. I tentativi di lanciare Luce Diurna o incantesimi che creino vera luce diurna o luce intensa nell''area falliscono a meno che l''incantatore non superi un Tiro Salvezza su Volontà contro la maledizione. Un successo produce comunque luce normale anziché intensa. Il focus si fonde con l''area maledetta come parte dell''incantesimo e può essere recuperato solo annullando la maledizione. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/curse-of-night/'
WHERE name = 'Maledizione della Notte';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Ci si riveste di una turbinante colonna di pura acqua elementale alta fino a 9 metri che riempie il proprio spazio. Si ottiene una velocità di Nuotare pari alla propria velocità sul terreno e si può vedere, sentire e respirare normalmente all’interno del manto del mare, ma gli attacchi diretti su di sé vengono considerati come se si fosse sotto la superficie dell’acqua. Si ottiene copertura migliorata (bonus di Copertura +8 alla CA, bonus +4 ai Tiri Salvezza su Riflessi) contro i nemici privi degli effetti di Libertà di Movimento. La copertura conferita da manto del mare non consente di effettuare prove di Forza o evitare Attacchi di Opportunità. Gli attacchi magici non vengono influenzati a meno che non richiedano tiri per colpire o sia specificato che non funzionano sott’acqua (come Nube Mortale).

Manto del Mare blocca la linea di effetto di incantesimi di fuoco o effetti di fuoco soprannaturale, ma i nemici possono tentare di usare incantesimi di fuoco all’interno di manto del mare; ciò richiede una prova di livello dell’incantatore (CD 20 + livello dell’incantesimo) e, se si supera la prova, l’incantesimo di fuoco ha un effetto simile ad una bolla di vapore contenuta all’interno di manto del mare al posto di quello normale.

Manto del Mare permette di effettuare attacchi di schianto formando pseudopodi d’acqua, che infliggono danni in base alla taglia dell’incantatore. Questo attacco di schianto ha portata 9 metri. Inoltre, come azione standard, si può tentare di estinguere il fuoco con il tocco. Si estinguono automaticamente il fuoco normale contenuto in un volume pari a quello di un cubo di spigolo fino a 3 metri. Contro gli effetti di fuoco magico, il proprio tocco agisce come Dissolvi Magie; ciò si applica anche a qualsiasi effetto non istantaneo di fuoco con cui si entra in contatto (come Lama Infuocata, Nube Incendiaria o Sfera Infuocata). Anche se non si riesce ad estinguere un fuoco, non si viene comunque feriti da esso. Le capacità speciali Infuocata o Esplosione di Fiamme di un’arma che colpisce l’incantatore vengono soppresse per 1d4 round se il possessore fallisce un Tiro Salvezza su Tempra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/seamantle'
WHERE name = 'Manto del Mare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea un muro di lava verticale spesso 2,5 centimetri ogni 4 livelli dell’incantatore e con una superficie massima pari ad un quadrato con lato di 1,5 metri per livello.

L’altezza massima di un muro di lava non può superare la metà della sua ampiezza (con un’altezza minima di 1,5 m). Il muro non può essere evocato in modo che occupi lo stesso spazio di una creatura o di un oggetto. Una sezione di un Muro di Lava può essere distrutto (Durezza 4, Punti Ferita 90), ma la lava rimanente riempie immediatamente la breccia creatasi, riducendo la taglia complessiva del muro di 1,5 metri quadrati, che rimane una barriera continua. Ogni volta che un’arma colpisce un muro di lava, subisce 2d6 danni da fuoco (se l’attacco avviene con colpi senz’armi o armi naturali, la creatura che colpisce subisce 2d6 danni da fuoco).

Una creatura può attraversare un Muro di Lava come azione di round completo effettuando una prova di Forza con CD 25: un fallimento indica che la creatura è stata respinta dal muro fino al punto di partenza. Una creatura con una velocità di Scavare può attraversare il muro usando questa velocità. Un tentativo di attraversare un Muro di Lava infligge 20d6 danni da fuoco. Un Muro di Lava emana anche calore come se fosse un Muro di Fuoco, anche se esso si irradia da entrambi i lati.

Una volta a round come azione di movimento, si può ordinare al Muro di Lava di eruttare. Questo fa sì che un pennacchio di lava colpisca ogni bersaglio entro 18 metri su entrambi i lati del muro, ma riduce la taglia complessiva del muro di 1d4 sezioni da 1,5 metri. Bisogna effettuare un attacco di contatto a distanza per colpire il bersaglio, che, se colpito, subisce 10d6 danni da fuoco. Le brecce create in un muro di lava da questo effetto si risigillano istantaneamente, riducendo la sua taglia complessiva.

Tutti i danni inflitti dal contatto fisico con un Muro di Lava continuano per 1d3 round dopo l’esposizione, ma questo danno addizionale è solo metà di quello inflitto durante il vero contatto (cioè 1d6, o 5d6 o 10d6 danni a round).

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-lava'
WHERE name = 'Muro di Lava';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'illimitato',
  duration = 'istantaneo',
  saving_throw = 'nessuno o Volontà nega (innocuo, oggetto)',
  spell_res = 'no o sì (innocuo, oggetto)',
  full_description = ': La Parola del Ritiro teletrasporta istantaneamente al proprio santuario nel momento in cui viene pronunciata. Bisogna designare il santuario nel momento in cui si prepara l’incantesimo, che deve essere un luogo molto familiare. Il punto di arrivo effettivo è un’area designata non più grande di 3 metri per 3 metri. Si può essere trasportati a qualsiasi distanza all’interno di un piano, ma non è possibile viaggiare tra i piani. Oltre a sé, anche gli oggetti posseduti vengono trasportati, purché non superino il proprio carico massimo. È possibile anche trasportare un’altra creatura consenziente di taglia Media o inferiore (che a sua volta può trasportare oggetti o Equipaggiamento fino al suo carico massimo) o il suo equivalente ogni 3 livelli dell’incantatore. Una creatura Grande conta come 2 creature Medie, una creatura Enorme conta come 2 creature Grandi e così via. Tutte le creature da trasportare devono essere in contatto l’una con l’altra, e occorre essere in contatto con almeno una delle creature. Se si supera questo limite, l’incantesimo fallisce.

Una creatura non consenziente non può essere teletrasportata con Parola del Ritiro. Allo stesso modo, un Tiro Salvezza su Volontà (o la Resistenza agli Incantesimi) di una creatura può impedire agli oggetti in suo possesso di essere teletrasportati. Gli oggetti non magici incustoditi non hanno diritto ad alcun Tiro Salvezza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/word-of-recall'
WHERE name = 'Parola del Ritiro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Come Respingere Legno, questo incantesimo crea ondate di energia invisibili e intangibili che hanno origine da sé. Tutti gli oggetti di metallo o di pietra che si trovano sul percorso dell''incantesimo vengono respinti lontano, fino ai limiti del suo raggio di azione. Gli oggetti fissi di metallo o di pietra con diametro superiore a 7,5 cm e quelli liberi più pesanti di 250 kg non ne subiscono l''effetto. Tutto il resto, inclusi oggetti animati, piccoli macigni e creature in armatura di metallo vengono respinti. Gli oggetti fissi con diametro di 7,5 cm o meno si piegano e si spezzano e i loro pezzi si muovono con l''onda di energia. Gli oggetti che subiscono l''effetto dell''incantesimo vengono respinti alla velocità di 12 metri per round.

Gli oggetti come le armature di metallo, le spade e simili vengono respinti trascinando i loro possessori con sé. Anche gli oggetti magici con parti di metallo vengono respinti, anche se un Campo Antimagia è sufficiente a bloccare gli effetti dell''incantesimo. Una creatura che viene trascinata da uno scudo può scioglierlo come azione di movimento e lasciarlo cadere come azione gratuita.

Le ondate di energia continuano a percorrere la direzione specificata per tutta la durata dell''incantesimo. Dopo avere lanciato questo incantesimo e una volta che la direzione è stata decisa, si possono fare altre cose o andarsene senza che questo modifichi il potere dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/repel-metal-or-stone'
WHERE name = 'Respingere Metallo o Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Quando si lancia Terremoto, il terreno viene scosso da un tremito localizzato molto intenso che butta a terra le creature, e fa crollare le strutture, apre crepacci e ha altri effetti. La scossa dura 1 round, nel corso del quale le creature sul terreno non sono in grado di muoversi o attaccare. Gli incantatori sul terreno devono superare un prova di Concentrazione (CD 20 + livello dell''incantesimo) o perdono gli incantesimi che tentano di lanciare. Il terremoto agisce su tutti i tipi di terreno, vegetazione, strutture e creature presenti all''interno dell''area. Gli effetti esatti dipendono dalle caratteristiche dal terreno.

• Caverne, Grotte o Tunnel: L''incantesimo fa crollare il soffitto, infliggendo 8d6 danni contundenti a qualsiasi creatura che rimanga sotto la frana (Riflessi CD 15 dimezza), immobilizzando la creatura sotto i detriti (vedi sotto). Un Terremoto lanciato sul soffitto di una caverna molto ampia potrebbe mettere in pericolo coloro che si trovano al di fuori dell''area ma sotto le macerie che stanno crollando.

• Rupi: Le pareti delle rupi franano, provocando uno smottamento che si sposta orizzontalmente della stessa distanza per cui cade dall''alto. Qualsiasi creatura coinvolta nella frana subisce 8d6 danni contundenti (Riflessi CD 15 dimezza) e rimane immobilizzata sotto le macerie (vedi sotto).

• Terreno Aperto: Tutte le creature in piedi all''interno dell''area devono superare un Tiro Salvezza su Riflessi con CD 15, altrimenti cadono a terra. Nel terreno si aprono dei crepacci e ogni creatura a terra ha una probabilità del 25% di cadere nel crepaccio (Tiro Salvezza su Riflessi con CD 20 per evitare la spaccatura). I crepacci sono profondi 12 m. Alla fine dell''incantesimo tutte le spaccature si richiudono. Considerate tutte le creature come se fossero nell''area investita da una valanga, intrappolate sotto la neve e senz''aria (vedi Ambiente per altri dettagli).

• Struttura: Gran parte delle strutture su terreno aperto subiscono 100 danni, di solito sufficienti a far crollare un tipico edificio in legno o in mattoni, ma non una struttura costruita in pietra o in pietra rinforzata. La durezza non riduce questo danno, e non viene dimezzato come solitamente accade ai danni agli oggetti. Qualsiasi creatura intrappolata in una struttura che crolla subisce 8d6 danni contundenti (Riflessi CD 15 dimezza) e rimane immobilizzata sotto o tra le macerie (vedi sotto).

• Fiume, Lago o Palude: Sotto il livello dell''acqua si aprono delle spaccature che prosciugano l''acqua da quell''area formando una zona di terreno fangoso. Il terreno sabbioso degli stagni e delle paludi diventa una zona di sabbie mobili per la durata dell''incantesimo, e le creature devono superare un Tiro Salvezza su Riflessi con CD 15 altrimenti affondano nella melma e nel banco di sabbie mobili che si viene a creare. Alla fine dell''incantesimo il resto del corpo d''acqua dilaga nella zona riempiendo di nuovo l''area prosciugata, con buone possibilità di far affogare coloro che sono rimasti intrappolati nel fango.

Immobilizzati Sotto le Macerie: Qualsiasi creatura intrappolata sotto le macerie subisce 1d6 Danni Non Letali al minuto finché rimane immobilizzata. Se un personaggio Immobilizzato perde i sensi, deve superare una prova di Costituzione con CD 15, altrimenti subirà 1d6 danni letali ad ogni minuto successivo finché non viene liberato o non muore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/earthquake'
WHERE name = 'Terremoto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'nessuno e Volontà parziale (vedi sotto)',
  spell_res = 'sì',
  full_description = ': Una creatura sotto l’effetto di questo ammaliamento entra in uno stato di euforia. Il bersaglio considera tutte le creature come cari amici e detesta la violenza, ma può ribellarsi per difendersi da violenze. Fino al termine della durata dell’incantesimo, la velocità della creatura è dimezzata e non può effettuare attacchi o lanciare incantesimi. Se la creatura viene attaccata, ottiene un Tiro Salvezza su Volontà. Se supera il Tiro Salvezza, la creatura può agire normalmente per 1 round. Se il Tiro Salvezza fallisce, la creatura, come sua azione successiva, si allontana dall’attaccante a metà della sua velocità.

Inoltre, se si interagisce o si interroga la creatura mentre è sotto l’effetto di questo incantesimo, la si considera come se avesse atteggiamento Premuroso (vedi l’Abilità Diplomazia), ma i consigli o le risposte potrebbero essere incoerenti oppure un fiume di parole a causa della sua euforia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/euphoric-tranquility'
WHERE name = 'Tranquillità Euforica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo crea un possente ciclone che infuria nell’aria, lungo il terreno o sull’acqua a una velocità di 18 metri per round. Ci si può concentrare per controllare ogni movimento del ciclone o per specificare un semplice schema di movimento. Dirigere il movimento del ciclone o cambiare il suo movimento programmato è un’azione standard. Il ciclone si muove sempre nel turno dell’incantatore. Se il ciclone esce dal raggio di azione dell’incantesimo, si muove in modo incontrollato e casuale per 1d3 round e poi si dissolve (non è possibile riprendere il controllo del ciclone, nemmeno se rientra nel raggio di azione).

Qualsiasi creatura di taglia Grande o inferiore che entri in contatto col ciclone deve superare un Tiro Salvezza su Riflessi o subisce 3d6 danni. Le creature di taglia Media o inferiore che falliscono il loro primo Tiro Salvezza devono superarne un secondo altrimenti verranno sollevate in aria dal ciclone e rimarranno sospese in balia del vento, subendo ad ogni round 1d8 danni senza possibilità di Tiro Salvezza. Si può ordinare al ciclone di espellere una qualsiasi creatura catturata in qualsiasi momento. Il ciclone deposita la sfortunata creatura nel punto in cui si trova il Turbine quando viene liberata.

Nota: In genere le navi sono troppo grandi per essere influenzate da questo incantesimo, tuttavia oggetti e creature sul ponte della nave potrebbero esserne influenzate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/whirlwind'
WHERE name = 'Turbine';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 Ora',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello (I)',
  saving_throw = 'Volontà parziale',
  spell_res = 'sì',
  full_description = ': Si possono far scaturire da un oggetto o da una locazione delle vibrazioni magiche che respingono un particolare tipo di creature intelligenti o di un particolare allineamento, a propria scelta. Il tipo di creatura che si intende respingere deve essere nominato specificamente. Il sottotipo di una creatura non è abbastanza specifico. Analogamente, anche l’allineamento specifico deve essere nominato.

Le creature del tipo o dell’allineamento scelto sentono un bisogno irrefrenabile di allontanarsi dall’area o di evitare l’oggetto influenzato.

Una forza li obbliga ad abbandonare l’area o l’oggetto, a evitarlo e a non volervi mai più ritornare volontariamente finché l’incantesimo permane. Una creatura che supera il Tiro Salvezza può rimanere nell’area o toccare l’oggetto, pur sentendosi molto a disagio. L’inquietudine che subisce riduce la sua Destrezza di 4 punti.

Antipatia contrasta e dissolve Simpatia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/antipathy'
WHERE name = 'Antipatia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si investe un certo numero di creature con il Potere Mitico, concedendo loro la 1° Categoria in un Percorso Mitico. Le creature ottengono immediatamente i benefici del Percorso scelto. La durata viene divisa equamente tra tutti i bersagli. I bersagli mantengono la Categoria Mitica solo se restano entro 30 metri dal focus dell''incantesimo. Un bersaglio che esce dal raggio di azione perde la Categoria Mitica, ma la recupera istantaneamente se vi rientra. Se il focus viene distrutto mentre l''incantesimo è attivo, quest''ultimo termina immediatamente e tutti i bersagli ottengono 1d4 Livelli Negativi Permanenti.

Fonte: http://www.d20pfsrd.com/mythic/mythic-magic/mythic-spells/ascension/'
WHERE name = 'Ascensione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si infonde in Vegetali inanimati una limitata mobilità e una parvenza di vita. Ogni Vegetale bersaglio agisce come una Catapulta della stella taglia fino al termine della durata dell''incantesimo, anche se si deve impiegare un''Azione Standard per prendere la mira con ognuno di queste catapulte albero prima che sparino la prima volta e ogni volta successiva quando si vuole cambiare bersaglio. Con un''Azione Gratuita, si può comandare a uno o a tutti gli alberi sotto il proprio controllo di smettere di sparare. Non è necessario fornire munizioni a queste catapulte vegetali, si ricaricano automaticamente con rocce e massi in zona, scavandoli dalle profondità del terreno se necessario. Se lo si desidera si possono fornire munizioni agli alberi. L''albero non carica munizioni fiammeggianti, e queste catapulte vegetali non possono essere influenzate da Colpo di Energia d''Assedio se l''energia prescelta è fuoco.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/siege-of-trees'
WHERE name = 'Assedio di Alberi Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo funziona come Attirare Folletti Inferiore, tranne che per il fatto che la chiamata capricciosa dell''incantesimo può produrre un singolo Folletto di 18 Dadi Vita o meno, o fino a tre folletti dello stesso tipo il cui totale di Dadi Vita non superi i 18.

Fonte: Entice Fey, Greater'
WHERE name = 'Attirare Folletti Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà dimezza (innocuo) o Volontà dimezza',
  spell_res = 'sì (innocuo)',
  full_description = ': Si incanala energia positiva per curare 4d8 danni +1 danno per livello dell’incantatore (massimo +40) ad ogni creatura selezionata. Come gli altri incantesimi di cura, Cura Ferite Critiche di Massa infligge danni ai Non Morti nella sua area di effetto anziché curarli. Ogni Non Morto influenzato può applicare la sua Resistenza agli Incantesimi, e tentare un Tiro Salvezza su Volontà per dimezzare i danni subiti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cure-critical-wounds'
WHERE name = 'Cura Ferite Critiche di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '7 giorni o 7 mesi (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea 1d4+2 Cumuli Striscianti da 11 DV ognuno. Queste creature aiutano volontariamente in combattimento, accettando di compiere una missione indicata o di proteggere chi li ha creati come guardie del corpo. Le creature rimangono al proprio seguito per 7 giorni a meno che non le si congedi. Tuttavia, se i Cumuli Striscianti sono stati creati per proteggere qualcosa, la durata dell’incantesimo sarà di 7 mesi. In questo caso, può essere ordinato loro solamente di sorvegliare un posto o una locazione specifica. Se sono stati evocati per mansioni di guardia non possono uscire dal raggio di azione dell’incantesimo, che si estende a partire dal punto in cui sono apparsi la prima volta. Si può avere attivo solo un effetto per questo incantesimo. Se si lancia un altro Cumulo Strisciante mentre uno è ancora attivo, il precedente viene dissolto. I Cumuli Striscianti evocati da questo incantesimo hanno la stessa resistenza al fuoco di quelli normali, ma solo se il terreno è bagnato, paludoso o umido.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shambler'
WHERE name = 'Cumulo Strisciante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questi sono in realtà 9 incantesimi differenti, rispettivamente dal 1° al 9° livello.

Indice

• 1 Evoca Alleato Naturale

• 2 Evoca Alleato Naturale I

• 3 Evoca Alleato Naturale II

• 4 Evoca Alleato Naturale III

• 5 Evoca Alleato Naturale IV

• 6 Evoca Alleato Naturale V

• 7 Evoca Alleato Naturale VI

• 8 Evoca Alleato Naturale VII

• 9 Evoca Alleato Naturale VIII

• 10 Evoca Alleato Naturale IX

Evoca Alleato Naturale I

Tabella: Evoca Alleato Naturale

1° livello

Sottotipo

Aquila

—

Cane

—

Delfino

—

Gnefro (gremlin)

—

Millepiedi Gigante

—

Pony (cavallo)

—

Rana Velenosa

—

Ratto Crudele

—

Scarabeo del Fuoco

—

Strige

—

Vipera (famiglio)

—

2° Livello

Sottotipo

Calamaro

—

Cane Goblin

—

Cavallo

—

Elementale dell''Acqua Piccolo

Acqua

Elementale dell''Aria Piccolo

Aria

Elementale dell''Etere Piccolo

Etere

Elementale del Fango Piccolo

Acqua, Terra

Elementale del Fulmine Piccolo

Aria

Elementale del Fuoco Piccolo

Fuoco

Elementale del Ghiaccio Piccolo

Acqua, Aria, Freddo

Elementale del Magma Piccolo

Fuoco, Terra

Elementale della Terra Piccolo

Terra

Formica Gigante Operaia

—

Iena

—

Lupo

—

Piovra

—

Ragno Gigante

—

Rana Gigante

—

3° Livello

Sottotipo

Anguilla Elettrica

—

Cinghiale

—

Coccodrillo

—

Formica Gigante Soldato

—

Ghepardo

—

Ghiottone

—

Gorilla

—

Granchio Gigante

—

Leopardo (felino)

—

Lucertola, Varano

—

Pipistrello Crudele

—

Serpente Strangolatore

—

Squalo

—

Uro (animale da pascolo)

—

4° Livello

Sottotipo

Bisonte (animale da pascolo)

—

Cervo Volante Gigante

—

Cinghiale Crudele

—

Deinonico (dinosauro)

—

Elementale dell''Acqua Medio

Acqua

Elementale dell''Aria Medio

Aria

Elementale dell''Etere Medio

Etere

Elementale del Fango Medio

Acqua, Terra

Elementale del Fulmine Medio

Aria

Elementale del Fuoco Medio

Fuoco

Elementale del Ghiaccio Medio

Acqua, Aria, Freddo

Elementale del Magma Medio

Fuoco, Terra

Elementale della Terra Medio

Terra

Formica Gigante Maschio

—

Gorilla Crudele

—

Grifone

—

Leone

—

Lupo Crudele

—

Mephit dell''Acqua

Acqua

Mephit dell''Aria

Aria

Mephit del Fuoco

Fuoco

Mephit del Ghiaccio

Freddo

Mephit del Magma

Fuoco

Mephit della Melma

Acqua

Mephit della Polvere

Aria

Mephit del Sale

Terra

Mephit della Terra

Terra

Mephit del Vapore

Fuoco

Orso Grigio

—

Orsogufo

—

Pteranodonte (dinosauro)

—

Rinoceronte

—

Satiro

—

Scorpione Gigante

—

Tigre

—

Vespa Gigante

—

5° Livello

Sottotipo

Anchilosauro (dinosauro)

—

Ciclope

—

Elementale dell''Acqua Grande

Acqua

Elementale dell''Aria Grande

Aria

Elementale dell''Etere Grande

Etere

Elementale del Fango Grande

Acqua, Terra

Elementale del Fulmine Grande

Aria

Elementale del Fuoco Grande

Fuoco

Elementale del Ghiaccio Grande

Acqua, Aria, Freddo

Elementale del Magma Grande

Fuoco, Terra

Elementale della Terra Grande

Terra

Ettin

—

Girallon

—

Leone Crudele

—

Manticora

—

Murena Gigante

—

Orca (delfino)

—

Rinoceronte Lanoso

—

6° livello

Sottotipo

Bulette

—

Calamaro Gigante

—

Elasmosauro (dinosauro)

—

Elefante

—

Elementale dell''Acqua Enorme

Acqua

Elementale dell''Aria Enorme

Aria

Elementale dell''Etere Enorme

Etere

Elementale del Fango Enorme

Acqua, Terra

Elementale del Fulmine Enorme

Aria

Elementale del Fuoco Enorme

Fuoco

Elementale del Ghiaccio Enorme

Acqua, Aria, Freddo

Elementale del Magma Enorme

Fuoco, Terra

Elementale della Terra Enorme

Terra

Gigante delle Colline

—

Gigante delle Rocce

Terra

Orso Crudele

—

Stegosauro (dinosauro)

—

Tigre Crudele

—

Triceratopo (dinosauro)

—

7° Livello

Sottotipo

Brachiosauro (dinosauro)

—

Coccodrillo Crudele

—

Elementale dell''Acqua Superiore

Acqua

Elementale dell''Aria Superiore

Aria

Elementale dell''Etere Superiore

Etere

Elementale del Fango Superiore

Acqua, Terra

Elementale del Fulmine Superiore

Aria

Elementale del Fuoco Superiore

Fuoco

Elementale del Ghiaccio Superiore

Acqua, Aria, Freddo

Elementale del Magma Superiore

Fuoco, Terra

Elementale della Terra Superiore

Terra

Gigante del Fuoco

Fuoco

Gigante del Gelo

Freddo

Mastodonte (elefante)

—

Piovra Gigante

—

Roc

—

Squalo Crudele

—

Tirannosauro (dinosauro)

—

8° Livello

Sottotipo

Elementale dell''Acqua Anziano

Acqua

Elementale dell''Aria Anziano

Aria

Elementale dell''Etere Anziano

Etere

Elementale del Fango Anziano

Acqua, Terra

Elementale del Fulmine Anziano

Aria

Elementale del Fuoco Anziano

Fuoco

Elementale del Ghiaccio Anziano

Acqua, Aria, Freddo

Elementale del Magma Anziano

Fuoco, Terra

Elementale della Terra Anziano

Terra

Gigante delle Nuvole

Aria

Verme Purpureo

—

9° Livello

Sottotipo

Gigante delle Tempeste

—

Pixie (con Danza Irresistibile e frecce del Sonno)

—

Scuola: Evocazione (convocazione)

Livello: Cacciatore 1, Druido 1, Ranger 1, Sciamano 1

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Questo incantesimo convoca una creatura naturale che compare al proprio fianco (normalmente un Animale, un Folletto, una Bestia Magica, un Esterno con Sottotipo Elementale o un Gigante). La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Una creatura convocata non può convocare, o in altro modo evocare un’altra creatura, né può utilizzare alcun teletrasporto o capacità di viaggio planare. Le creature non possono essere evocate in un ambiente che non sia in grado di sostenerle. Le creature evocate con questo incantesimo non possono usare incantesimi o Capacità Magiche che replichino incantesimi con componenti materiali costose (come Desiderio).

Questo incantesimo evoca una delle creature della lista di 1° livello nella Tabella: Evoca Alleato Naturale. Si sceglie quale genere di creatura evocare, e si può cambiare la scelta ogni volta che si lancia l’incantesimo. Tutte le creature nella tabella sono Neutrali, se non specificato diversamente.

Quando si usa l’incantesimo per convocare una creatura con un sottotipo allineamento o elementale, diventa un incantesimo di quel tipo. Le creature evocate con questo incantesimo senza sottotipo allineamento hanno sempre un allineamento che si combina con quello dell’incantatore, indipendentemente dal loro allineamento normale. Evocare queste creature fa sì che il tipo dell’incantesimo si adatti all’allineamento dell’incantatore.

Evoca Alleato Naturale II
Scuola: Evocazione (convocazione)

Livello: Cacciatore 2, Druido 2, Ranger 2, Sciamano 2

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 2° livello o 1d3 creature dello stesso tipo di 1° livello.

Evoca Alleato Naturale III
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 3, Druido 3, Ranger 3, Sciamano 3

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 3° livello, 1d3 creature dello stesso tipo di 2° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IV
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 4, Druido 4, Ranger 4, Sciamano 4

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 4° livello, 1d3 creature dello stesso tipo di 3° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale V
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 5, Druido 5, Sciamano 5

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 5° livello, 1d3 creature dello stesso tipo di 4° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VI
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Cacciatore 6, Druido 6, Sciamano 6

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 6° livello, 1d3 creature dello stesso tipo di 5° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 7, Sciamano 7

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 7° livello, 1d3 creature dello stesso tipo di 6° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale VIII
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 8, Sciamano 8

Dominio: Animale 8

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 8° livello, 1d3 creature dello stesso tipo di 7° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Evoca Alleato Naturale IX
Scuola: Evocazione (convocazione) [vedi testo]

Livello: Druido 9, Sciamano 9

Tempo di Lancio: 1 round

Componenti: V, S, FD

Raggio di Azione: vicino (7,5 m + 1,5 m ogni 2 livelli)

Effetto: 1 creatura evocata

Durata: 1 round/livello (I)

Tiro Salvezza: nessuno

Resistenza agli Incantesimi: no

Descrizione: Funziona come Evoca Alleato Naturale I, tranne per il fatto che convoca una creatura di 9° livello, 1d3 creature dello stesso tipo di 8° livello, o 1d4+1 creature dello stesso tipo di livello inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-natures-ally'
WHERE name = 'Evoca Alleato Naturale IX';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo convoca un Froghemoth che compare al proprio fianco. La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Il Froghemoth non può essere evocate in un ambiente che non sia in grado di sostenerlo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-froghemoth'
WHERE name = 'Evoca Froghemoth';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo evoca un Verme Purpureo con l''Archetipo Semplice Gigante che compare al proprio fianco. La creatura appare nel punto designato e agisce immediatamente, nel turno dell’incantatore. Attacca gli avversari dell’incantatore sempre al meglio delle sue capacità. Se si può comunicare con la creatura, si può ordinarle di non attaccare, di attaccare alcuni nemici in particolare o di compiere altre azioni.

Il Verme Purpureo non può essere evocate in un ambiente che non sia in grado di sostenerlo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/summon-elder-worm'
WHERE name = 'Evoca Verme Antico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'contatto',
  duration = 'permanente',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Toccando il terreno si cambia drasticamente il tempo atmosferico nell''area, tanto da far nevicare nel deserto rovente. A propria scelta nell''area possono insistere Condizioni Atmosferiche fredde, molto calde o tempeste violente ricorrenti. Le condizioni metereologiche rimangono imprevedibili e possono cambiare col tempo (come stabilito dal GM), ma finché la maledizione è attiva il tempo atmosferico di partenza risulta comunque alterato. Il focus si fonde con l''area maledetta come parte dell''incantesimo e può essere recuperato solo annullando la maledizione. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/curse-of-fell-seasons/'
WHERE name = 'Maledizione delle Stagioni Inclementi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': Si fa piombare un''area nel brutale gelo della notte artica. Le condizioni di illuminazione vengono abbassate di due gradi (ma solo fino a buio, non innaturalmente buio), e tutte le creature nell''area subiscono 5d6 danni da freddo e 1d6 danni a Destrezza per round. Un tiro salvezza su Tempra ogni round permette di negare il danno a Destrezza ma non i danni da freddo. Le creature che non si muovono nel proprio turno vengono ricoperte da un involucro di ghiaccio simile a Muro di Ghiaccio, sono indifese e non possono respirare. I cadaveri che rimangono nell''area per più di 1 round vengono trasformati in ghiaccio; riportare in vita i cadaveri congelati richiede Desiderio, Miracolo o Resurrezione Pura. Come azione di movimento, l''incantatore può spostare l''area di effetto fino a 3 metri in qualsiasi direzione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/polar-midnight'
WHERE name = 'Mezzanotte Polare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vedi testo',
  duration = '1 round/livello o 1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si fa ondeggiare sotto i propri piedi ogni sorta di terreno naturale (inclusi acqua, foresta, deserto, tundra, e così via) che così sospinge l’incantatore con Forza devastante per lunghe distanze. Questa onda di terreno passa sul mondo, sollevando e stirando in modo innocuo gli oggetti, le creature e i fenomeni connessi alla natura, ma lacera e danneggia ogni altra cosa incontri. Quando si lancia l’incantesimo bisogna scegliere il tipo di onda, uno tsunami o un flutto. Se si sceglie uno tsunami, si crea un’ondata di marea di terra o di acqua alta 9 metri, che piomba ovunque e dura 1 round per livello. Se si sceglie un flutto, si crea un’onda più controllata e mite dell’altezza di 1,5 metri che dura 1 ora per livello. Indipendentemente dalla sua forma o composizione, la cresta dell’onda si estende per 3 metri avanti ed altrettanto dietro l’incantatore e 1,5 metri per livello a destra e a sinistra. Si può stare in piedi o seduti sulla cresta dell’onda senza temere di cadere, o anche stendersi e dormire (o eseguire ogni altra azione che si potrebbe compiere sul terreno solido) mentre si viaggia. Ci si può far accompagnare in tutta sicurezza da una creatura addizionale per livello.

Quando si crea l’onda, bisogna scegliere il suo percorso mettendosi frontalmente nella direzione verso cui si desidera viaggiare. Una volta effettuata, questa scelta non può essere cambiata. L’onda, in ogni versione, si muove a otto volte la velocità sul terreno dell’incantatore. Gli oggetti, le creature o i fenomeni strettamente legati al mondo naturale o parte di esso semplicemente si innalzano e si riabbassano al passaggio dell’onda, senza subire danni. Tuttavia, ogni altra cosa che entri in contatto con l’onda subisce 6d8 danni contundenti (se tsunami) o 1d6 danni contundenti (se flutto). L’onda danneggia ogni oggetto o struttura. Sul Piano Materiale, danneggia anche le creature del tipo Aberrazione, Costrutto, Esterno o Non Morto o con il Sottotipo Extraplanare. Le creature con il tipo Costrutto o Non Morto subiscono danni doppi dall’onda. Le altre creature, o quelle con almeno un livello di classe da Druido (indipendentemente dal loro tipo), sono considerate parte del mondo naturale e non sono interessate dall’onda. Si noti che sugli altri piani di esistenza, ciò che è considerato come parte del mondo naturale può variare a discrezione del GM.

L’onda può viaggiare in salita o in discesa su elementi naturali purché non superino un angolo di 45°. Non è possibile alterare le dimensioni dell’onda mentre viaggia. Se l’onda incontra terreno che non può incorporare, viaggia semplicemente sopra o attorno all’ostacolo (le creature che cavalcano l’onda vengono spostate di lato in modo innocuo per evitare l’ostacolo) a meno che il terreno occupi metà o più dell’area della cresta d’onda. In questi casi l’incantesimo termina in 1d6 round dato che l’onda vacilla o collassa, a meno che la sua durata non termini prima. L’impeto dell’onda trasporta l’incantatore attraverso questo nuovo terreno senza danni finché non collassa, a quel punto si subiscono i normali effetti del terreno sul quale si viene depositati. Il terreno che l’onda non può incorporare include quello fatto soprattutto di fuoco (come la lava), aria (come la superficie aperta di una rupe), o qualcosa di artificiale (come una città). Si può creare l’onda solo stando in piedi sul terreno. Non è possibile crearla sottoterra o su un terreno che non può incorporare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/world-wave'
WHERE name = 'Onda del Mondo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale o contatto',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno o Volontà nega (innocuo)',
  spell_res = 'no o sì (innocuo)',
  full_description = ': Questo incantesimo conferisce un potente sesto senso a sé o a un''altra persona. Una volta lanciato l''incantesimo, si ricevono avvertimenti istantanei dei pericoli imminenti che potrebbero incombere sul soggetto dell''incantesimo. Quindi se si è il soggetto dell''incantesimo, non si è mai sorpresi o Impreparati. Inoltre, l''incantesimo fornisce un''idea generale dell''azione da intraprendere per meglio proteggersi e conferisce Bonus Cognitivo +2 alla CA e ai Tiri Salvezza su Riflessi. Questo bonus di precognizione va perduto se capita di perdere il bonus di Destrezza alla CA.

Quando è un''altra creatura ad essere l''oggetto dell''incantesimo, gli avvertimenti che si ricevono riguardano quella creatura. Occorre comunicare ciò che si percepisce all''altra creatura affinché gli avvertimenti siano utili, e se l''avvertimento non viene trasmesso in tempo la creatura potrebbe trovarsi impreparata. Urlare un avvertimento, tirare via una persona e comunicare telepaticamente (grazie a un apposito incantesimo) sono tutte azioni che possono essere effettuate prima che il pericolo si abbatta sul soggetto dell''incantesimo, purché si agisca immediatamente. Il soggetto tuttavia guadagna il Bonus Cognitivo alla CA e ai Tiri Salvezza su Riflessi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/foresight'
WHERE name = 'Previsione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '3 round completi',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Le parti del corpo del bersaglio che sono state tagliate (dita, braccia, mani, piedi, code o anche teste di creature a più teste), le ossa rotte e gli organi danneggiati ricrescono. Dopo il lancio dell''incantesimo, la rigenerazione fisica si completa in 1 round, se le parti del corpo danneggiate sono presenti e a contatto con la creatura. In caso contrario, sono necessari 2d10 round.

Rigenerazione cura anche 4d8 danni +1 danno per livello dell''incantatore (massimo +35), elimina dal soggetto qualsiasi Esaurimento e/o Affaticamento, ed elimina tutti i Danni Non Letali subiti dal soggetto. Non ha alcun effetto sulle creature non viventi (compresi i Non Morti).

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/regenerate'
WHERE name = 'Rigenerazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi parziale, vedi testo',
  spell_res = 'no',
  full_description = ': Si creano due ammassi di roccia di taglia Colossale, pietre e terra che si schiantano contro una creatura posta tra i due. Le Rocce Cozzanti appaiono entro 9 metri dal bersaglio su lati opposti e si precipitano verso di esso con un potente schianto stritolante. Si deve effettuare un attacco di contatto a distanza per colpire il bersaglio con le rocce. Le Rocce Cozzanti ignorano Occultamento e Copertura e, se c''è una barriera solida tra il bersaglio ed entrambe le Rocce Cozzanti, l''incantesimo ha bonus +28 alla prova di Forza per infrangere la barriera e continuare senza ostacoli verso il bersaglio. Una creatura colpita dalle Rocce Cozzanti subisce 20d6 danni contundenti e viene buttata a terra Prona. Se il bersaglio fallisce il Tiro Salvezza su Riflessi, viene anche seppellito dalle macerie come per un Crollo.

Se le Rocce Cozzanti mancano il bersaglio, esso subisce comunque 10d6 danni contundenti per le rocce che cadono ed è buttato a terra Prono. Un Tiro Salvezza su Riflessi riuscito riduce questo danno della metà ed il bersaglio rimane in piedi. Anche le creature diverse dal bersaglio che occupano lo spazio dove appaiono le Rocce Cozzanti o lungo il loro percorso (larghezza 9 metri, altezza 9 metri e lunghezza fino a 18 metri) devono effettuare un Tiro Salvezza su Riflessi o subiscono 10d6 danni contundenti e vengono buttate a terra Prone (il Tiro Salvezza dimezza e permette di restare in piedi). Una creatura può subire danni dalle Rocce Cozzanti solo una volta, non importa quante volte esse passino sopra al bersaglio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/clashing-rocks'
WHERE name = 'Rocce Cozzanti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = 'medio (30 m + 3 m/livello)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo apre un portale su un Piano Elementale e da lì evoca degli Elementali. Un Druido può scegliere qualunque piano (Acqua, Aria, Fuoco o Terra), mentre un Chierico apre il portale del piano corrispondente al suo Dominio.

Quando l’incantesimo viene completato, appaiono 2d4 Elementali Grandi. Dieci minuti dopo, compaiono 1d4 Elementali Enormi. Dieci minuti dopo, appare un Elementale superiore. Ogni Elementale ha il massimo di Punti Ferita per DV. Una volta che gli Elementali appaiono, rimangono al proprio servizio per tutta la durata dell’incantesimo.

Gli Elementali vi obbediscono alla lettera e non vi attaccano mai, nemmeno se qualcuno riesce ad ottenere il controllo su di loro. Non occorre mantenere la Concentrazione sugli Elementali ed è possibile congedarli singolarmente o in gruppo in qualsiasi momento.

Quando si usa un incantesimo di convocazione per evocare una creatura di acqua, di aria, di fuoco o di terra, si considera come un incantesimo di quel tipo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-swarm'
WHERE name = 'Sciame Elementale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 ora',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello (I)',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si è in grado di far scaturire da un oggetto o da una locazione delle vibrazioni magiche che attraggano un particolare tipo di creature intelligenti o di un particolare Allineamento, a propria scelta. Il tipo di creatura che si intende attrarre deve essere nominato specificamente. Il sottotipo di una creatura non è sufficientemente specifico. Analogamente, anche l’allineamento specifico deve essere nominato.

Le creature del tipo o dell’allineamento scelto sentono un bisogno irrefrenabile di rimanere nell’area, o provano il desiderio di toccare o possedere l’oggetto. Il desiderio di rimanere nell’area o di toccare l’oggetto è talmente forte che non può essere contrastato. Se il Tiro Salvezza riesce, la creatura è libera dall’ammaliamento, ma deve ripetere un secondo Tiro Salvezza dopo 1d6 x 10 minuti. Se questo Tiro Salvezza fallisce, la creatura soggetta all’incantesimo tenta di tornare nell’area o vicino all’oggetto.

Simpatia contrasta e dissolve Antipatia.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sympathy'
WHERE name = 'Simpatia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantanea',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Intonando una litania sacrilega, si allunga il braccio verso il bersaglio nel gesto di afferrare: il cuore della vittima balza fuori dal petto e lo si afferra con la mano. Se un bersaglio con 200 punti ferita o meno fallisce il Tiro Salvezza, viene ridotto immediatamente a un numero di punti ferita negativi pari al proprio livello dell''incantatore o al punteggio di Costituzione del bersaglio -1, quale dei due valori risulti meno basso. Fino all''inizio del turno successivo dell''incantatore la creatura è Barcollante, dopodiché muore. Se prima dell''inizio del proprio successivo dell''incantatore il bersaglio riceve un incantesimo Rigenerazione, ne ricava i normali benefici e dato che il cuore si riforma non muore istantaneamente all''inizio del turno successivo dell''incantatore. Se una creatura uccisa da Stretta della Morte viene riportata in vita con Respiro di Vita o Rianimare Morti, nel round successivo dev''essere anche sottoposta a Rigenerazione per ripristinare il cuore mancante, altrimenti non può tornare in vita. 

Se un bersaglio con 201 punti ferita o più fallisce il Tiro Salvezza riesce a trattenere il cuore nel petto ma diventa comunque Barcollante per 1 minuto e subisce 1d4 punti di risucchio a Costituzione e 1d4 punti di sanguinamento a Costituzione. 

A prescindere dai suoi punti ferita attuali, se il bersaglio supera il Tiro Salvezza su Tempra diventa comunque Barcollante fino all''inizio del turno successivo dell''incantatore per via del dolore lancinante che avverte nel petto.

Fonte: https://www.d20pfsrd.com/magic/all-spells/d/death-clutch'
WHERE name = 'Stretta della Morte';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'Concentrazione (massimo 10 round) (I)',
  saving_throw = 'vedi testo',
  spell_res = 'sì',
  full_description = ': Questo incantesimo crea un’enorme nube nera tempestosa nell’area. Le creature nell’area interessata dalla tempesta devono superare un Tiro Salvezza su Tempra o vengono Assordate per 1d4x10 minuti. Ogni round dopo aver lanciato l’incantesimo in cui si mantiene la Concentrazione, l’incantesimo crea effetti addizionali, come descritto in seguito. Tutti gli effetti si verificano nel corso del proprio turno.

• 2° Round: Pioggia acida nell’area che infligge 1d6 danni da acido. Non è concesso alcun Tiro Salvezza.

• 3° Round: Si evocano 6 fulmini dalla nube tempestosa e si decide dove colpiscono. Non possono essere diretti 2 fulmini allo stesso bersaglio. Ogni fulmine infligge 10d6 danni da elettricità. Le creature colpite possono tentare un Tiro Salvezza su Riflessi per dimezzare i danni.

• 4° Round: Chicchi di grandine all’interno dell’area, che infliggono 5d6 danni (nessun Tiro Salvezza).

• Dal 5° al 10° Round: Vento e pioggia violenti riducono notevolmente la visibilità. La pioggia oscura qualunque tipo di vista oltre 1,5 metri, inclusa la Scurovisione. Una creatura a 1,5 metri di distanza viene considerata Occultata (gli attacchi subiscono una probabilità del 20% di mancare il bersaglio). Le creature ancora più distanti hanno Occultamento Totale (probabilità del 50% di essere mancate e l’attaccante non può usare la vista per individuarle). La velocità è ridotta di tre quarti.

Gli attacchi a distanza all’interno della tempesta sono impossibili. Il lancio degli incantesimi all’interno dell’area viene interrotto a meno che l’incantatore non superi una prova di Concentrazione con una CD pari alla CD del Tiro Salvezza di Tempesta di Vendetta + il livello dell’incantesimo che sta provando a lanciare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/storm-of-vengeance'
WHERE name = 'Tempesta di Vendetta';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': L’incantesimo permette di assumere la forma di una gran varietà di creature. Funziona come Alterare Se Stesso, Forma Ferina IV, Corpo Elementale IV, Forma di Drago III, Forma di Gigante II e Forma di Vegetale III, a seconda di quale si sceglie. La forma può variare in base a come si decide una volta ogni round come azione gratuita. Il cambiamento avviene o immediatamente prima la normale azione o immediatamente dopo, ma non durante l’azione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shapechange'
WHERE name = 'Trasformazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '5 round',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Si crea una gigantesca onda d’acqua che poi si muove in linea retta attraverso l’acqua o la terra: si sceglie la direzione dell’onda (che deve essere perpendicolare alla sua ampiezza), ma una volta messa in moto, l’onda non può cambiare il suo percorso. Sulla superficie d’acqua libera, l’onda viaggia alla velocità di 18 metri per round; sulla terra o sott’acqua, l’onda viaggia alla velocità di 9 metri per round.

Le creature colpite da uno Tsunami subiscono 8d6 danni contundenti (un Tiro Salvezza su Tempra dimezza questo danno). Inoltre, lo Tsunami effettua una speciale prova di BMC pari al livello dell’incantatore + il modificatore della sua caratteristica rilevante da incantatore (quale sia il più alto) +8 (per la taglia dell’onda). Se questa prova di BMC supera la DMC di una creatura, la creatura viene buttata a terra Prona e trasportata dall’onda. Una creatura trasportata da uno Tsunami può tentare di sfuggire all’onda al suo turno come azione standard effettuando una prova di BMC o di Nuotare contrapposta alla prova di BMC dell’onda; se una creatura non riesce a fuggire, subisce altri 6d6 danni contundenti (Tiro Salvezza su Tempra dimezza) e continua ad essere trasportata dall’onda.

Gli oggetti colpiti da uno Tsunami vengono spazzati via se sono Enormi o inferiori e trasportati dall’onda e depositati in un mucchio al termine del percorso dell’onda. Gli oggetti Mastodontici o più grandi, così come le strutture o gli oggetti saldamente ancorati al terreno, subiscono 8d6 danni contundenti quando lo Tsunami passa nel loro spazio; se ciò è sufficiente a distruggere l’oggetto o la struttura, i resti vengono trasportati dall’onda. La Durezza non riduce questo danno, né viene dimezzato come di solito capita per gli oggetti. Libertà di Movimento evita che una creatura venga trasportata da uno Tsunami, ma non evita il danno causato dall’essere colpiti. Una solida barriera più alta dello Tsunami che non viene distrutta dall’onda, ferma quella porzione di onda, lasciando un vuoto nell’onda mentre il resto prosegue.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/tsunami'
WHERE name = 'Tsunami';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Ci si riveste di un tormentato sudario di venti soprannaturali della Forza di un tornado. Questi venti conferiscono una velocità di Volare di 18 m con manovrabilità perfetta. Né l’armatura né il carico influiscono su questa velocità di Volare. I venti proteggono dagli effetti di altri venti e formano un guscio di aria respirabile attorno a sé, permettendo di volare e respirare sott’acqua o nello spazio esterno. Le armi a distanza (inclusi i massi scagliati dai giganti, i proiettili delle armi da assedio e altre armi a distanza massicce) che attraversano i venti vengono deviate e mancano automaticamente l’incantatore. I gas e la maggior parte delle armi a soffio gassose non possono attraversare i venti.

Inoltre, quando una creatura colpisce l’incantatore con un’arma da mischia, si possono modellare i venti in modo che possano sferzarla come azione immediata. La creatura deve effettuare un Tiro Salvezza su Tempra o subisce 5d8 danni contundenti e viene buttata a terra Prona (se a terra). Se falliscono il Tiro Salvezza su Tempra, le creature Enormi volanti vengono fermate e quelle di taglia Grande o inferiore vengono portate via invece di essere buttate a terra. Se il Tiro Salvezza su Tempra viene superato, il danno è dimezzato e la creatura non viene buttata a terra (o fermata o portata via).

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/winds-of-vengeance'
WHERE name = 'Venti di Vendetta';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (oggetto)',
  spell_res = 'si (oggetto)',
  full_description = ': Si apre o chiude (a propria scelta) una porta, un forziere, una scatola, una finestra, una borsa, un borsellino, una bottiglia, un barile o un qualsiasi altro contenitore. Se qualcosa ne impedisce l''apertura (una spranga su una porta o un lucchetto su un forziere), l''incantesimo fallisce. Inoltre, l''incantesimo può aprire o chiudere solo oggetti che pesino 15 kg o meno. Pertanto porte, forzieri e oggetti simili più pesanti o creati per creature enormi potrebbero essere oltre la portata dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/o/open-close'
WHERE name = 'Aprire/Chiudere';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'si',
  full_description = ':
Si dirige un raggio di energia positiva. Bisogna compiere un attacco di contatto a distanza per colpire, e quando il raggio investe una creatura Non Morta, le infligge 1d6 danni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/disrupt-undead'
WHERE name = 'Distruggere Non Morti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Un piccolo globo di acido viene scagliato all''istante contro un bersaglio designato non appena si completa l''Incantesimo. Occorre colpire il bersaglio con un attacco di contatto a distanza. Se colpisce, il globo infligge 1d3 Danni da acido. L’acido scompare dopo 1 round.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/acid-splash'
WHERE name = 'Fiotto Acido';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Questo ammaliamento annebbia la mente di una creatura Umanoide con 4 Dadi Vita o meno in modo da non farle compiere alcuna azione. Non ha però effetto sugli Umanoidi con 5 DV o più. Il soggetto Frastornato non è Stordito, quindi chi lo attacca non ottiene alcun vantaggio speciale contro di lui. Dopo che una creatura è rimasta Frastornata da questo incantesimo, è immune agli effetti dell''incantesimo per 1 minuto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/daze'
WHERE name = 'Frastornare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': In base alla versione scelta, si possono creare fino a 4 luci simili a lanterne o torce (che proiettano una pari quantità di luce), oppure fino a 4 sfere luminose (simili a fuochi fatui), oppure una forma luminescente vagamente umanoide. Le Luci Danzanti devono rimanere entro un''area del raggio di 3 metri le une dalle altre, ma per il resto possono muoversi come si desidera (non è necessaria alcuna Concentrazione): avanti, indietro, su, giù, dritte o dietro un angolo e così via. Le luci possono raggiungere una velocità di 30 metri per round; una luce scompare, se si allontana dall''incantatore oltre il raggio di azione dell''incantesimo.

Si può avere solo un incantesimo Luci Danzanti attivo di volta in volta. Se si lancia questo incantesimo mentre un altro uguale è in effetto il precedente viene dissolto. Se il precedente è reso permanente, non conta per questa limitazione.

Luci Danzanti può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dancing-lights'
WHERE name = 'Luci Danzanti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'Concentrazione',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Puntando il dito verso un oggetto, si può sollevarlo e muoverlo a distanza a piacimento. Come azione di movimento, si può spostarlo fino a 4,5 metri in qualsiasi direzione, sebbene l''incantesimo finisca non appena la distanza fra sé e l''oggetto supera il raggio di azione dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mage-hand'
WHERE name = 'Mano Magica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '3 m',
  duration = '1 ora',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': I giochi di prestigio sono trucchi minori che gli incantatori novizi apprendono per fare pratica. Una volta lanciato, l''incantesimo Prestidigitazione rende capaci di mettere in atto semplici effetti magici per un''ora. Questi effetti sono minori e hanno molte limitazioni. Questi giochi di prestigio possono sollevare lentamente 0,5 kg di materiale. Possono colorare, ripulire o sporcare oggetti in un cubo con spigolo di 30 cm ogni round. Possono raffreddare, riscaldare, o insaporire 0,5 kg di materiale non vivente. Non possono infliggere danni o interrompere la concentrazione di un incantatore. Prestidigitazione può creare piccoli oggetti, che sembrano però rozzi e artificiali. I materiali creati tramite Prestidigitazione sono estremamente fragili, e non possono essere usati come attrezzi, armi o componenti di incantesimi. Infine, questo incantesimo non può duplicare alcun effetto magico. Qualunque modifica reale ad un oggetto (a parte spostarlo, pulirlo o sporcarlo) dura solo per 1 ora.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/prestidigitation'
WHERE name = 'Prestidigitazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'permanente',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo permette di scrivere la runa o il sigillo personale, purché non sia composto da più di 6 caratteri. La scritta può essere visibile o invisibile. Sigillo Arcano permette di imprimere la runa su qualsiasi sostanza (perfino pietra o metallo) senza danneggiare il materiale in questione. Se viene posto un sigillo invisibile, un incantesimo di Individuazione del Magico lo rende visibile e luminoso (ma non necessariamente comprensibile). 

Incantesimi od oggetti come Vedere Invisibilità, Visione del Vero, una Gemma della Visione o una Tunica degli Occhi sono analogamente in grado di rendere il Sigillo Arcano visibile a chi ne fa uso. Un incantesimo Lettura del Magico rivela le parole, se ve ne sono. Il sigillo non può essere dissolto, ma può essere rimosso da colui che l''ha lanciato o con un incantesimo Cancellare.

Se viene lanciato su un essere vivente, la normale usura del tempo fa scomparire il sigillo nel giro di un mese.

Sigillo Arcano deve essere lanciato su un oggetto prima che questo riceva l''incantesimo Evocazioni Istantanee.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/arcane-mark'
WHERE name = 'Sigillo Arcano';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Un raggio di aria gelida scaturisce dal proprio dito puntato. Occorre effettuare con successo un attacco di contatto a distanza per infliggere danni al bersaglio. Il raggio infligge 1d3 danni da freddo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/ray-of-frost'
WHERE name = 'Raggio di Gelo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = 'Volontà dubita',
  spell_res = 'no',
  full_description = ': Suono Fantasma permette di creare un suono continuato che può salire di tono, scendere, allontanarsi, avvicinarsi o rimanere fisso sul posto. Si può scegliere che tipo di suono l''incantesimo creerà al momento di lanciarlo, e non si potranno cambiare le sue caratteristiche di base in seguito.

Il volume del suono creato dipende dal livello dell''incantatore. Si è in grado di produrre un rumore pari a quello generato da 4 umani normali per livello (fino a un massimo di 40 umani). Si possono quindi ricreare suoni che simulino il parlare, il cantare, il gridare, il camminare, il marciare e il correre. Il rumore generato da Suono Fantasma può produrre, praticamente qualsiasi tipo di suono entro i limiti di volume definiti. Il rumore di un''orda di topi che corrono e squittiscono è pari più o meno al volume di 8 umani che corrono e gridano. Il ruggito di un leone è pari al rumore prodotto da 16 umani, e quello di un drago ruggente è il boato di 32 umani. Chi sente Suono Fantasma riceve un Tiro Salvezza su Volontà per dubitare.

Suono Fantasma può potenziare l''efficacia di un incantesimo Immagine Silenziosa.

Suono Fantasma può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/ghost-sound'
WHERE name = 'Suono Fantasma';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'lungo (120 metri + 12 m/livello)',
  duration = NULL,
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Si fa in modo che i bersagli credano di sentire un suono qualsiasi da voi immaginato. Il suono può includere un discorso comprensibile. Invece di immaginare con precisione un suono, si può identificare un suono che i soggetti conoscono e che loro immaginano mentre si lancia l''incantesimo. Ad esempio, si può lanciare questo incantesimo sui combattenti Orchi e far loro immaginare il suono del loro capo tribù che chiama aiuto, anche se non si è mai sentito il loro capo tribù e anche se il capo tribù parla in una lingua che non si capisce. Tutti i bersagli sentono la stessa allucinazione. È possibile cambiare il suono durante la concentrazione sull''incantesimo.

Fonte: Auditory Hallucination'
WHERE name = 'Allucinazione Uditiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = 'nessunoa',
  spell_res = 'no',
  full_description = ': Si crea un oggetto a una mano che ci si aspetta di vedere nell''ambiente in cui ci si trova, e che si può usare come Arma Improvvisata. L''incantesimo evoca un oggetto simile vicino alla vostra mano, in modo che si possa recuperare mentre si completa l''incantesimo. Indipendentemente dal tipo di oggetto scelto, funziona come un''arma improvvisata a una mano adatta alla propria taglia e che infligge 1d6 danni per una creatura Media (1d4 per le creature Piccole). L''oggetto infligge il tipo di danno scelto dall''incantatore (contundenti, perforanti o taglienti) al momento del lancio dell''incantesimo, anche se l''oggetto richiesto deve essere conforme al tipo di danno.

L''incantesimo termina prematuramente se l''arma improvvisata lascia la presa. L''oggetto non ha alcun valore e non può essere utilizzato per altre funzioni oltre a quella di arma improvvisata (per esempio, questo incantesimo non permette di evocare un costoso cannocchiale e di venderlo o di utilizzare le sue altre capacità, ma si potrebbe comunque usarlo per colpire qualcuno in testa). L''oggetto evocato non può essere già un''arma fabbricata, nemmeno in un luogo dove ci si aspetterebbe di vedere armi fabbricate. Può essere un oggetto che normalmente sarebbe un''insolita arma improvvisata, come un''aringa al mercato del pesce, e infligge comunque tutti i suoi danni.

Fonte: Desperate Weapon'
WHERE name = 'Arma Disperata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Arma Magica conferisce a un''arma Bonus di Potenziamento +1 ai Tiri per Colpire e per i danni. Un Bonus di Potenziamento non si somma al bonus +1 ai Tiri per Colpire di un''Arma Perfetta.

Non si può lanciare questo incantesimo su un''arma naturale, come un colpo senz''armi (invece, vedi Zanna Magica). Il colpo senz''armi di un Monaco è considerato un''arma, e quindi può essere potenziato da questo incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/magic-weapon'
WHERE name = 'Arma Magica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino(7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Questo incantesimo consente a un''arma di virare verso zone vitali, aumentando il risultato di una minaccia di critico. Questa trasmutazione concede bonus +2 ai Tiri per Colpire per confermare i colpi critici più 1 punto bonus addizionale ogni quattro livelli dell''incantatore (bonus massimo totale +7). Se l''incantesimo viene lanciato su proiettili, l''effetto su uno specifico proiettile termina quando viene usato per effettuare un attacco, che vada a segno o meno. Per questo incantesimo, gli Shuriken sono considerati proiettili.

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/unerring-weapon'
WHERE name = 'Arma Infallibile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Il focus di questo incantesimo vola in alto sopra la testa dell''incantatore e assume una posizione difensiva nel suo spazio. Balza verso gli avversari, come se fosse guidato da una mano addestrata, parando e respingendo gli attacchi in mischia che prendono di mira l''incantatore, ma senza colpire né danneggiare gli avversari. L''arma serve solo come difesa. Mentre si è protetti, si possono lanciare incantesimi senza provocare Attacchi d''Opportunità, e senza doverli lanciare sulla difensiva.

Una creatura con il talento Dirompente può facilmente superare le difese di questo incantesimo. Lanciare incantesimi contro queste creature provoca Attacchi d''Opportunità anche se si è soggetti a questo incantesimo, sebbene si possa comunque scegliere di lanciare sulla difensiva.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/warding-weapon'
WHERE name = 'Arma Protettiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Per la durata dell''incantesimo, l''arma Ritornante fluttua nell''aria per tornare dalla creatura che l''ha lanciata. Ritorna appena prima che inizi il turno successivo di chi l''ha lanciata, e in questo modo è pronta per essere usata di nuovo in quel turno. Riprendere un''arma Ritornante mentre torna indietro è un''azione gratuita. Se il personaggio non può afferrarla, o se il personaggio si è spostato dopo averla lanciata, l''arma cade a terra nel quadretto dal quale è stata lanciata.

Questo incantesimo può essere usato come prerequisito per la capacità speciale delle armi Ritornante. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/returning-weapon'
WHERE name = 'Arma Ritornante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Questo incantesimo fa spuntare una folta barba di rigido ferro sulla faccia di un bersaglio consenziente. La barba di ferro concede Bonus di Armatura +1 alla CA, e questo bonus si cumula con quello di qualsiasi armatura indossata dalla creatura. La barba di ferro può anche essere usata come un''arma equivalente a delle Chiodature per Armatura di Ferro Freddo. La barba di ferro rende difficile parlare quindi ogni lancio di un incantesimo con una componente verbale ha il 20% di probabilità di fallimento. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/ironbeard'
WHERE name = 'Barba di Ferro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione immediata',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'fino all''atterraggio o 1 round/livello',
  saving_throw = 'Volontà nega (innocuo) o Volontà nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Le creature o gli oggetti sotto l''effetto dell''incantesimo cadono lentamente. La velocità di caduta viene istantaneamente ridotta a 18 metri per round (equivalente alla fine di una caduta da pochi metri), che non infligge alcun danno al momento dell''atterraggio, purché l''incantesimo sia ancora in funzione. Quando la durata dell''incantesimo cessa, tuttavia, la caduta riprende alla sua velocità normale.

L''incantesimo ha effetto su una o più creature od oggetti di Taglia Media o inferiore (compresi Equipaggiamento e oggetti trasportati fino al carico massimo di ogni creatura), o sull''equivalente in creature più grandi: una creatura od oggetto Grande conta come 2 creature od oggetti Medi, una creatura od oggetto Enorme conta come 2 creature od oggetti Grandi e così via.

Questo incantesimo non ha alcun effetto speciale sulle armi a distanza a meno che non stiano cadendo da una certa altezza. Se l''incantesimo viene lanciato su un oggetto in caduta, l''oggetto infligge metà dei danni normali in base al peso e senza alcun bonus per la lunghezza della caduta.

Questo incantesimo funziona solo su oggetti in caduta libera. Non ha effetto su colpi di spada o su una creatura in Carica o in Volo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/feather-fall'
WHERE name = 'Caduta Morbida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si costringe il bersaglio a fissare solo e soltanto l''incantatore per la durata dell''incantesimo o finché non viene scaricato. Partendo dal turno dell''incantatore, si considera che il bersaglio distoglie lo sguardo da tutte le creature a parte l''incantatore, concedendo alle altre creature Occultamento contro gli attacchi del bersaglio. Se il bersaglio abbandona volontariamente la linea di visuale sull''incantatore, è Accecato per 1 round e l''incantesimo termina. Se l''incantatore abbandona volontariamente la linea di visuale del bersaglio o diventa Privo di Sensi o Morto, la creatura incantata non subisce alcun effetto dannoso. Le creature cieche o immuni agli attacchi con lo sguardo sono immuni a questo incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/lock-gaze'
WHERE name = 'Bloccare Sguardo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'contatto',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si fa apparire un''arma manufatta come una diversa della stessa taglia e ingombro relativo (leggera, a una mano, a due mani). Per esempio, si potrebbe far apparire uno Spadone Piccolo come un Bastone Ferrato Piccolo, un Randello Medio o un Pugnale Grande. È possibile conferire perfino l''aspetto di un''arma improvvisata. L''entità del cambiamento esteriore dipende dall''incantatore. Si potrebbe aggiungere o celare una caratteristica minore o far sembrare l''oggetto come se fosse composto da materiali diversi (pietra, legno, Adamantio e così via). L''incantesimo non fornisce alcuna capacità della forma scelta, né altera le proprietà tattili o udibili percepite dell''oggetto o come viene impugnato. Una creatura che interagisce con il mascheramento può tentare un Tiro Salvezza su Volontà per riconoscere che si tratta di un''illusione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/disguise-weapon/'
WHERE name = 'Camuffare Arma';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Le braccia crescono temporaneamente in lunghezza, aumentando la portata di quegli arti di 1,5 m.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/long-arm/'
WHERE name = 'Braccio Lungo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = 'vedi testo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ottiene un''intuizione temporanea dell''immediato futuro relativamente al proprio prossimo attacco. Al successivo Tiro per Colpire singolo (da effettuarsi entro la fine del round seguente) si ottiene Bonus Cognitivo +20. Inoltre, non si è soggetti alla probabilità di mancare il bersaglio che si applica quando si tenta di colpire un nemico Occultato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/true-strike'
WHERE name = 'Colpo Accurato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello(I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Viene evocato un Cavallo Leggero o un Pony (a propria scelta) che funge da Cavalcatura. Il destriero serve fedelmente l''incantatore. La cavalcatura è dotata di Morso e Briglie e di una Sella da Galoppo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mount'
WHERE name = 'Cavalcatura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Riflessi nega',
  spell_res = 'no',
  full_description = ': Si lancia una palla di ragnatele contro il bersaglio, che deve superare un Tiro Salvezza o viene influenzato come per gli effetti di un incantesimo Ragnatela che occupa però solo lo spazio della creatura. Se la creatura supera il Tiro Salvezza o si libera dalla ragnatela, quello che ne rimane si dissolve e il quadretto non viene considerato terreno difficile. L''incantesimo non ha effetto se il bersaglio non si trova su o adiacente a una superficie solida in grado di sostenere le ragnatele. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/web-bolt'
WHERE name = 'Colpo di Ragnatela';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Un dardo di energia magica scaturisce dalle proprie dita e colpisce il bersaglio, infliggendo 1d4+1 danni da forza. 

Il dardo non manca mai il bersaglio anche se quest''ultimo è in mischia oppure beneficia di una Copertura o di un Occultamento inferiore a Totale. Non possono essere colpite parti specifiche di una creature. Questo incantesimo non è in grado di danneggiare oggetti inanimati.

Ogni 2 livelli dell''incantatore oltre il 1°,si ottiene un ulteriore dardo: 2 al 3° livello, 3 al 5°, 4 al 7° fino a un massimo di 5 al 9° livello e oltre. Se si è in grado di lanciare più dardi, si può decidere che colpiscano una o più creature. Un dardo singolo può colpire una sola creatura. Bisogna designare i bersagli prima di tirare per la Resistenza agli Incantesimi o per i danni.

FAQ &#160;

Si può usare l''incantesimo Dardo Incantato per distruggere una o più immagini dell''incantesimo Immagine Speculare?

No. Dardo Incantato colpisce una creatura e non richiede un Tiro per Colpire, quindi oltrepassa tutte le immagini e colpisce sempre l''incantatore.
[Fonte]

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/magic-missile'
WHERE name = 'Dardo Incantato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = 'vedi testo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si altera brevemente il corso del tempo per dividere in due un attacco in mischia. Prima della fine del turno successivo, quando si effettua il Tiro per Colpire in mischia, si compara il risultato con la CA di due avversari entro portata. Se gli avversari scelti stanno fiancheggiando l''incantatore, si ottiene bonus +2 al Tiro per Colpire (e ai tiri per confermare il critico, vedi sotto). Se si colpiscono entrambi gli avversari, si può infliggere metà del danno a entrambi. Colpire un solo avversario permette di infliggergli il danno normale. Su una minaccia di critico, si può effettuare un solo tiro per confermare il colpo critico contro entrambi gli avversari. Se si conferma contro tutti e due, si infligge metà del danno da colpo critico a entrambi. Se si conferma il colpo critico solo per un avversario, allora il colpo è normale e non critico. Se si fallisce nell''utilizzo dell''effetto prima del termine del proprio turno successivo, l''incantesimo termina.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mirror-strike'
WHERE name = 'Colpo Riflesso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I) o finché non viene scaricato',
  saving_throw = 'Volontà nega (innocuo) e vedi testo',
  spell_res = 'sì (innocuo) e vedi testo',
  full_description = ': Si colloca sul bersaglio una protezione invisibile. La volta successiva in cui una creatura supera una prova di Manovra in Combattimento di Spezzare contro il bersaglio, l''arma dell''attaccante subisce 1d6 danni per livello dell''incantatore (massimo 10d6). Se l''attaccante usa un''arma naturale per Spezzare, l''attaccante subisce metà di questo danno. La Resistenza agli Incantesimi si applica a questo danno. L''attaccante può tentare un Tiro Salvezza su Tempra per dimezzare il danno.

La protezione sul bersaglio conta come trappola magica e può essere individuata e disattivata come tale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sunder-breaker/'
WHERE name = 'Frantuma Spezzare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea un piano di forza circolare leggermente concavo che vi segue e trasporta pesi per voi. Il disco ha un diametro di 90 cm ed è profondo 2,5 cm al centro. È in grado di reggere 50 kg di peso per livello dell’incantatore (se viene utilizzato per trasportare un liquido ha una capacità di 9 litri). Il disco fluttua a circa 90 cm dal terreno e rimane sempre orizzontale. Si sposta orizzontalmente fluttuando entro il raggio di azione dell’incantesimo e vi segue ogni round a una velocità mai superiore alla propria normale velocità. Se non riceve istruzioni diverse, si mantiene sempre ad una distanza costante di 1,5 metri. Il disco cessa di esistere nel momento in cui la durata dell’incantesimo si esaurisce, quando si esce dal suo raggio di azione, oppure quando si tenta di allontanare il disco a più di 90 cm dalla superficie su cui fluttua. Quando il disco scompare, qualunque cosa trasportasse cade per terra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/floating-disk'
WHERE name = 'Disco Fluttuante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'Concentrazione',
  saving_throw = 'Volontà dubita (se si interagisce)',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea l’illusione visiva di un oggetto, di una creatura o di una forza, come la si visualizza. L’illusione non crea suoni, odori, sensazioni tattili o di temperatura. Si può muovere l’immagine entro i limiti dell’area di effetto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/silent-image'
WHERE name = 'Immagine Silenziosa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà dubita (se colpito',
  spell_res = 'no',
  full_description = ': Lanciando questo incantesimo, si crea un clone illusorio che occupa lo stesso spazio dell''incantatore. Il clone fa sembrare che l''incantatore resti immobile, anche se in realtà non lo è. Mentre è sotto l''effetto di questo incantesimo, l''incantatore non provoca Attacchi d''Opportunità quando lancia un incantesimo, effettua un attacco a distanza con un''arma da lancio o si sposta dal suo quadretto originario durante un''Azione di Movimento. L''effetto non cela gli attacchi a distanza effettuati con qualsiasi tipo di proiettile. Quando una creatura colpisce l''incantatore con un attacco di qualsiasi tipo, ottiene un Tiro Salvezza per dubitare della finzione. Se supera il Tiro Salvezza, dubita e l''effetto dell''incantesimo termina per quella creatura. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/illusion-of-calm'
WHERE name = 'Illusione di Calma';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo provoca la crescita istantanea di una creatura Umanoide, raddoppiando la sua altezza e moltiplicando per 8 il suo peso. Questa alterazione modifica la categoria di taglia della creatura alla successiva più grande. Il bersaglio ottiene Bonus di Taglia +2 a Forza, subisce penalità di taglia –2 a Destrezza (fino a un minimo di 1) e penalità –1 ai Tiri per Colpire e alla CA in seguito al suo incremento di taglia secondo la seguente progressione:

Danni Arma Media

Danni Arma Minuscola

Danni Arma Grande

1d2

—

1d3

1d3

1

1d4

1d4

1d2

1d6

1d6

1d3

1d8

1d8

1d4

2d6

1d10

1d6

2d8

1d12

1d8

3d6

2d4

1d4

2d6

2d6

1d8

3d6

2d8

1d10

3d8

2d10

2d6

4d8

Modificatore di Taglia
I Modificatori di Taglia che si applicano al Tiro per Colpire ed alla Classe Armatura sono i seguenti: 

Taglia

Modificatore di Taglia

Colossale

–8

Mastodontica

–4

Enorme

–2

Grande

–1

Media

+0

Piccola

+1

Minuscola

+2

Minuta

+4

Piccolissima

+8

Una creatura Umanoide la cui taglia aumenti a Grande occupa uno spazio di 3 metri e ha una portata naturale di 3 metri. Questo incantesimo non cambia la velocità del bersaglio.

Se non è disponibile uno spazio sufficiente alla crescita desiderata, la creatura raggiunge la massima taglia possibile e può effettuare una prova di Forza (sfruttando la sua Forza accresciuta) per rompere qualsiasi forma di contenimento nel processo. Se fallisce, è costretta senza alcun danno dai materiali che la contengono: l''incantesimo non può essere usato per schiacciare una creatura aumentandone la taglia.

Tutto l''Equipaggiamento indossato o trasportato da una creatura viene allo stesso modo ingrandito dall''incantesimo. Le armi da mischia infliggono più danni. Altre proprietà magiche non vengono influenzate da questo incantesimo. Qualsiasi oggetto ingrandito che non è più in possesso di una creatura ingrandita (incluso un proiettile o un''arma da lancio) ritorna istantaneamente alla sua taglia normale. Ciò significa che un proiettile o un''arma da lancio infliggono danni normali. Le proprietà magiche di oggetti ingranditi non vengono aumentate.

Molteplici effetti magici che aumentano la taglia non sono cumulativi.

Ingrandire Persone contrasta e dissolve Ridurre Persone.

Ingrandire Persone può essere reso permanente con un incantesimo Permanenza.

FAQ &#160;

Come determino di quanto si deve aumentare/diminuire il danno dell''arma o degli attacchi naturali in base alla nuova taglia?

Per determinare il nuovo danno dell''arma o di un attacco naturale, considera le seguenti regole e la seguente tabella:

• Se la taglia aumenta di 1 grado, cerca nella tabella il danno originale e aumentalo di 2 gradi. Aumenta invece il danno di 1 solo grado se la taglia originale dell''arma era Piccola o inferiore, o se il danno originale dell''arma è 1d6 o inferiore.

• Se la taglia diminuisce di 1 grado, cerca nella tabella il danno originale e diminuiscilo di 2 gradi. Diminuisci invece il danno di 1 solo grado se la taglia originale dell''arma era Media o inferiore, o se il danno originale dell''arma è 1d8 o inferiore.

• Se il numero esatto di dadi non compare in tabella, applicare questa regola: 
Se il danno è un numero di d6 non presente in tabella, considerate i d6 di un valore più BASSO e fateli diventare d8; per esempio, 5d6 non compare in tabella, quindi prendete il valore basso più vicino (4d6) e cambiatelo in d8. 5d6 quindi corrisponde a 4d8.
Se il danno è un numero di d8 non presente in tabella, considerate i d8 di un valore più ALTO e fateli diventare d6; per esempio, 5d8 non compare in tabella, quindi prendete il valore alto più vicino (6d8) e cambiatelo in d6. 5d8 quindi corrisponde a 6d6.
Una volta trovato il valore di riferimento, aumentate o diminuite il danno ingrandito/rimpicciolito seguendo le prime due regole sul cambio di taglia.

• Se la combinazione di dadi non compare in tabella, considera le seguenti regole: 2d4 conta come 1d8, 3d4 conta come 2d6, e così via per altri valori di d4; 1d12 conta come 2d6 e così via per altri valori di d12; infine, 2d10 aumenta a 4d8 e diminuisce a 2d8, indipendentemente dalla taglia originale, e così via per altri valori di d10.

Tabella di Progressione dei Danni

• 1

• 1d2

• 1d3

• 1d4

• 1d6

• 1d8

• 1d10

• 2d6

• 2d8

• 3d6

• 3d8

• 4d6

• 4d8

• 6d6

• 6d8

• 8d6

• 8d8

• 12d6

• 12d8

• 16d6

[Fonte]

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/enlarge-person'
WHERE name = 'Ingrandire Persone';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '4,5 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Un cono di fiamme incandescenti si sprigiona dalle proprie dita. Ogni creatura nell’area delle fiamme subisce 1d4 danni da fuoco per livello dell’incantatore (massimo 5d4). I materiali infiammabili prendono fuoco se toccati dalla fiamma. Un personaggio può spegnere un oggetto che ha preso fuoco come azione di round completo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/burning-hands'
WHERE name = 'Mani Brucianti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '1,5 m',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea una brillante linea cremisi attorno all''area. Contro le creature nell''area, si può tentare un numero addizionale di Attacchi di Opportunità per round pari al punteggio del­ la propria caratteristica dell''incantatore (Intelligenza per Maghi e Magus, Carisma per Iracondi di Stirpe e Stregoni). L''incantesimo non permette di effettuare più di un attacco contro una creatura per ogni azione compiuta che provochi tali attacchi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/line-in-the-sand/'
WHERE name = 'Linea nella Sabbia';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello o finché non viene scaricato',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo crea un sottile ma complesso effetto di forza, molto più efficace quando viene usato da un incantatore calmo o lento. Quando si influenzati da questo incantesimo, si possono fare due passi da 1,5 metri ogni round e lanciare comunque incantesimi e usare capacità magiche senza provocare Attacchi d''Opportunità. Questo incantesimo si scarica automaticamente nel momento in cui si effettua un attacco, si lancia un incantesimo dannoso contro un''altra creatura, o ci si muove per più di 1,5 metri con una singola Azione di Movimento. Se l''azione che scarica l''incantesimo provoca anche Attacchi d''Opportunità, quell''azione li provoca normalmente. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/abjuring-step'
WHERE name = 'Passo Scongiurante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La sagoma del soggetto diventa sfocata, oscillante e mutevole. Questa distorsione garantisce al soggetto Occultamento (probabilità del 20% di essere mancato).

L''effetto di sfocatura avviene solo quando ci si muove almeno di 3 metri nel proprio turno e cessa al termine del movimento. Per questo, viene usato principalmente per proteggersi dagli attacchi nel proprio turno, come gli Attacchi di Opportunità. Se ci si muove almeno del doppio della propria velocità nel proprio turno, la sfocatura dura fino all''inizio del turno successivo.

Un incantesimo Vedere Invisibilità non contrasta l''effetto di Movimento Sfocato, a differenza di Visione del Vero.

Gli avversari che non possono vedere il soggetto ignorano l''effetto dell''incantesimo (e comunque combattere contro un avversario che non si può vedere comporta le normali penalità).

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blurred-movement/'
WHERE name = 'Movimento Sfocato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Originariamente ideata da un magus di Aldori che ammirava da tempo gli Intrepidi per la loro capacità nel deviare i colpi, la Parata del Deivon ha rapidamente guadagnato popolarità tra bardi e magus. I propri riflessi entrano in azione, permettendo di deviare un colpo. Questo incantesimo può essere lanciato solo quando un avversario attacca in mischia e solo prima che venga effettuato il tiro per colpire. Si tenta una parata con un''arma leggera o a una mano che si sta brandendo, come se si utilizzasse la gesta di Parata e Risposta di Opportunità dell''Intrepido (tranne che questo non richiede Eleganza). Non si può rispondere come parte dell''effetto di questo incantesimo.

Fonte: Deivon''s Parry'
WHERE name = 'Parata del Deivon';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra dimezza',
  spell_res = 'sì',
  full_description = ': Un raggio di energia brillante scaturisce dalla propria mano. Occorre effettuare con successo un attacco di contatto a distanza per colpire il bersaglio. Il soggetto subisce una penalità alla Forza pari a 1d6+1 ogni 2 livelli dell’incantatore (massimo 1d6+5). Il punteggio di Forza del soggetto non può scendere a meno di 1. Se il soggetto supera un Tiro Salvezza su Tempra la penalità viene dimezzata. Questa penalità non si cumula con se stessa: si applica invece la penalità più alta.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/ray-of-enfeeblement'
WHERE name = 'Raggio di Indebolimento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Le azioni e le parole del bersaglio non riescono ad impressionare. Il bersaglio di questo incantesimo subisce penalità di -10 alle prove di Diplomazia, Intimidire e Raggirare così come a qualsiasi tentativo di prova di Esibizione in Combattimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/n/negative-reaction'
WHERE name = 'Reazione Negativa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Quando si lancia questo incantesimo, una forza spettrale fascia un''arma Rotta, mitigando la condizione Rotto per un breve periodo. Mentre è sotto gli effetti di questo incantesimo, un oggetto con la condizione Rotto non ne subisce effetti dannosi ed è considerato come se non fosse Rotto. L''oggetto non ottiene alcun Punto Ferita, e i danni possono comunque distruggere l''oggetto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/j/jury-rig'
WHERE name = 'Riparazione di Fortuna';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Si rinforza un''arma o un''armatura per concederle un miglioramento temporaneo o per mitigarne la qualità Fragile. Ad un''armatura o ad un''arma toccata che ha la qualità Fragile non è considerata tale qualità per la durata dell''incantesimo. Le armature o le armi naturali soggette a questo incantesimo ottengono invece la qualità perfetta per la durata dell''incantesimo e la loro Durezza raddoppia. Se questo incantesimo viene lanciato su armature o armi perfette o magiche, la loro Durezza raddoppia per la durata dell''incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reinforce-armaments'
WHERE name = 'Rinforzare Armamenti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo provoca un immediato rimpicciolimento in una creatura Umanoide, dimezzando la sua altezza, la sua lunghezza e la sua larghezza e dividendo per 8 il suo peso. Questa diminuzione modifica la categoria di taglia della creatura alla successiva più piccola. Il bersaglio ottiene Bonus di Taglia +2 a Destrezza, penalità di taglia –2 a Forza (fino a un minimo di 1) e bonus +1 ai Tiri per Colpire e alla CA grazie alla sua taglia ridotta.

Danni Arma Media

Danni Arma Minuscola

Danni Arma Grande

1d2

—

1d3

1d3

1

1d4

1d4

1d2

1d6

1d6

1d3

1d8

1d8

1d4

2d6

1d10

1d6

2d8

1d12

1d8

3d6

2d4

1d4

2d6

2d6

1d8

3d6

2d8

1d10

3d8

2d10

2d6

4d8

Modificatore di Taglia
I Modificatori di Taglia che si applicano al Tiro per Colpire ed alla Classe Armatura sono i seguenti: 

Taglia

Modificatore di Taglia

Colossale

–8

Mastodontica

–4

Enorme

–2

Grande

–1

Media

+0

Piccola

+1

Minuscola

+2

Minuta

+4

Piccolissima

+8

Una creatura Umanoide Piccola la cui taglia diminuisca a Minuscola ha uno spazio di 75 cm e una portata naturale di 0 cm (che significa che deve entrare nel quadretto di un avversario per attaccare). Una creatura umanoide Grande la cui taglia diminuisca a Media ha uno spazio di 1,5 metri e una portata naturale di 1,5 metri. Questo incantesimo non modifica la velocità del bersaglio.

Tutto l''Equipaggiamento indossato o portato da una creatura viene similmente rimpicciolito da questo incantesimo.

Le armi da mischia e da tiro infliggono meno danni. Altre proprietà magiche non sono influenzate da questo incantesimo. Qualsiasi oggetto ridotto che non sia più in possesso della creatura ridotta (compreso un proiettile o un''arma da lancio) ritorna immediatamente alla sua taglia normale. Questo significa che le armi da lancio infliggono danni normali (i proiettili infliggono danni in base alla taglia dell''arma che li tira).

Molteplici effetti magici che riducono la taglia non sono cumulativi. Ridurre Persone contrasta e dissolve Ingrandire Persone.

Ridurre Persone può essere reso permanente con un incantesimo Permanenza.

FAQ &#160;

Come determino di quanto si deve aumentare/diminuire il danno dell''arma o degli attacchi naturali in base alla nuova taglia?

Per determinare il nuovo danno dell''arma o di un attacco naturale, considera le seguenti regole e la seguente tabella:

• Se la taglia aumenta di 1 grado, cerca nella tabella il danno originale e aumentalo di 2 gradi. Aumenta invece il danno di 1 solo grado se la taglia originale dell''arma era Piccola o inferiore, o se il danno originale dell''arma è 1d6 o inferiore.

• Se la taglia diminuisce di 1 grado, cerca nella tabella il danno originale e diminuiscilo di 2 gradi. Diminuisci invece il danno di 1 solo grado se la taglia originale dell''arma era Media o inferiore, o se il danno originale dell''arma è 1d8 o inferiore.

• Se il numero esatto di dadi non compare in tabella, applicare questa regola: 
Se il danno è un numero di d6 non presente in tabella, considerate i d6 di un valore più BASSO e fateli diventare d8; per esempio, 5d6 non compare in tabella, quindi prendete il valore basso più vicino (4d6) e cambiatelo in d8. 5d6 quindi corrisponde a 4d8.
Se il danno è un numero di d8 non presente in tabella, considerate i d8 di un valore più ALTO e fateli diventare d6; per esempio, 5d8 non compare in tabella, quindi prendete il valore alto più vicino (6d8) e cambiatelo in d6. 5d8 quindi corrisponde a 6d6.
Una volta trovato il valore di riferimento, aumentate o diminuite il danno ingrandito/rimpicciolito seguendo le prime due regole sul cambio di taglia.

• Se la combinazione di dadi non compare in tabella, considera le seguenti regole: 2d4 conta come 1d8, 3d4 conta come 2d6, e così via per altri valori di d4; 1d12 conta come 2d6 e così via per altri valori di d12; infine, 2d10 aumenta a 4d8 e diminuisce a 2d8, indipendentemente dalla taglia originale, e così via per altri valori di d10.

Tabella di Progressione dei Danni

• 1

• 1d2

• 1d3

• 1d4

• 1d6

• 1d8

• 1d10

• 2d6

• 2d8

• 3d6

• 3d8

• 4d6

• 4d8

• 6d6

• 6d8

• 8d6

• 8d8

• 12d6

• 12d8

• 16d6

[Fonte]

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reduce-person'
WHERE name = 'Ridurre Persone';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Ritirata Rapida aumenta la propria velocità base sul terreno di 9 metri. (Questa modifica viene considerata Bonus di Potenziamento). Non ha alcun effetto su altre forme di movimento, come Nuotare, Scalare, Scavare o Volare. Come qualsiasi altro effetto che aumenta la velocità, questo incantesimo influenza la distanza di salto (vedi Acrobazia).

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/expeditious-retreat'
WHERE name = 'Ritirata Rapida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '10 minuti/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si rinforza la propria energia vitale. Se la perdita di Punti Ferita al termine di un effetto temporaneo che modifica la Costituzione (come Ira Barbarica o l''Ira di Stirpe dell''Iracondo di Stirpe) renderebbe Privi di Sensi o morti, si ottengono Punti Ferita Temporanei pari al proprio livello dell''incantatore (massimo 10). Ogni lancio di questo incantesimo concede Punti Ferita Temporanei solo una volta.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/phantom-blood/'
WHERE name = 'Sangue Fantomatico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Il Servitore Inosservato è una forza invisibile, priva di forma e di volontà propria che esegue alcuni semplici compiti assegnati. Può correre, riportare degli oggetti, aprire porte che non siano bloccate, tenere una sedia, pulire o fare piccole riparazioni. Il servitore è in grado di eseguire solo un compito alla volta, ma può ripetere la stessa attività in continuazione, se così gli viene ordinato. Il servitore è in grado di aprire porte, cassetti, coperchi normali e ha un punteggio effettivo di Forza pari a 2 (è quindi in grado di sollevare fino a 10 kg o di trascinare 50 kg). Può far scattare trappole e meccanismi simili, ma può esercitare sempre solo 10 kg di forza, che potrebbero non essere sufficienti a far scattare alcuni meccanismi a pressione. Non può svolgere alcun incarico che richieda una Prova di Abilità con una CD superiore a 10 né che richieda una prova che sfrutta un''Abilità che non può essere usata senza addestramento. La sua velocità è 4,5 metri. Non può Volare, arrampicarsi o Nuotare (anche se può camminare sull''acqua).

Il servitore non è in grado di attaccare in alcun modo; non effettua mai Tiri per Colpire. Non può essere ucciso, ma si dissolve se subisce almeno 6 danni da un attacco ad area (non ha diritto ad alcun Tiro Salvezza contro gli attacchi). Se si tenta di inviarlo oltre il raggio di azione dell''incantesimo (misurato dalla propria attuale posizione), il servitore cessa di esistere.

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/unseen-servant'
WHERE name = 'Servitore Inosservato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo crea uno scudo invisibile simile a quello dell''incantesimo Scudo, ma non altrettanto forte. Questo scudo si libra davanti all''incantatore e nega gli attacchi da Dardo Incantato. Il disco fornisce Bonus di Scudo +2 alla CA. Questo bonus si applica contro attacchi di contatto Incorporei. 

In qualsiasi momento, come Azione Gratuita, si può eliminare lo scudo, che a quel punto infligge 1d6 danni da elettricità a tutte le creature in un''esplosione di 1,5 metri, compreso l''incantatore. Un Tiro Salvezza su Riflessi dimezza il danno. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shock-shield'
WHERE name = 'Scudo Scossa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Scudo crea un disco di forza Invisibile delle dimensioni di uno Scudo Torre, che vi fluttua davanti. Nega gli attacchi di Dardo Incantato diretti contro di voi. Inoltre, fornisce Bonus di Scudo +4 alla CA, che si applica anche agli attacchi di contatto Incorporei, poiché è un effetto di forza. Lo scudo non ha penalità di armatura alla prova né probabilità di fallimento degli incantesimi arcani.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shield'
WHERE name = 'Scudo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': La propria arma si allunga e diventa come una Frusta. Come parte del lancio di questo incantesimo, si può usare l''arma per tentare una Manovra in Combattimento di Sbilanciare contro una creatura entro 6 metri e si ottiene bonus + 10 al tiro, dopodiché l''arma ritorna alla sua forma precedente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blade-lash/'
WHERE name = 'Sferza di Lame';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = '(vedi testo)',
  spell_res = 'no',
  full_description = ': Si ricopre una superficie solida con uno strato di colla appiccicosa. Chiunque è nell''area al momento del lancio dell''incantesimo deve effettuare un Tiro Salvezza su Riflessi. Chi fallisce diventa Intralciato, ma può liberarsi superando una prova di Manovra in Combattimento o di Artista della Fuga come azione standard contro la CD di questo incantesimo. L''area dell''incantesimo è considerata terreno difficile. Una creatura che tenta di attraversare la colla deve superare una prova di Manovra in Combattimento o di Artista della Fuga come parte della sua azione di movimento (CD = CD dell''incantesimo). Le creature che falliscono perdono il loro movimento e diventano Intralciate nel primo quadretto in cui sono entrate.

L''incantesimo può anche essere usato per creare un rivestimento appiccicoso su un oggetto. Una creatura che ha in mano un oggetto bersaglio può tentare un Tiro Salvezza su Riflessi contro la CD dell''incantesimo. Se il Tiro Salvezza iniziale ha successo, l''oggetto non viene influenzato. Se fallisce, l''oggetto viene fissato sul posto. Se un oggetto influenzato è connesso a un altro oggetto (come una spada nel fodero o un turacciolo in una bottiglia di pozioni), non può essere separato dall''altro oggetto a meno che la creatura non superi una prova di Manovra in Combattimento o una prova di Forza come azione di movimento per liberarlo (CD = CD dell''incantesimo). Una creatura deve superare un Tiro Salvezza ogni volta che tenta di usare l''oggetto incollato; altrimenti, l''oggetto resta fissato alla creatura. Armatura o vestiti incollati impongono a chi li indossa penalità di circostanza -10 a prove di Artista della Fuga e Manovre in Combattimento per sfuggire alla Lotta e alla DMC per evitare di essere presi In Lotta.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/glue-seal/'
WHERE name = 'Sigillo di Colla';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ottiene bonus +6 metri alla propria velocità base quando si Carica e bonus +2 alle prove di manovra in combattimento per Oltrepassare o Spingere. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/linebreaker'
WHERE name = 'Spezzalinee';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = NULL,
  range = NULL,
  duration = NULL,
  saving_throw = NULL,
  spell_res = NULL,
  full_description = NULL
WHERE name = 'Spruzzo Colorato';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Un attacco di contatto in mischia compiuto con successo infligge 1d6 danni da elettricità per livello dell''incantatore (massimo 5d6). Quando si scarica l''energia, si ottiene bonus +3 al Tiro per Colpire se l''avversario sta indossando un''armatura di metallo (o se sta trasportando un''arma di metallo).

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shocking-grasp'
WHERE name = 'Stretta Folgorante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello o finché non viene scaricato',
  saving_throw = 'Riflessi nega (vedi testo)',
  spell_res = 'sì',
  full_description = ': Si incanala il potere in un''arma da mischia. Se chi impugna l''arma distrugge un oggetto superando una prove di Manovra in Combattimento di Spezzare, rilascia il potere aggiunto nell''arma, frantumando l''oggetto spezzato in schegge frastagliate che infliggono 1d6 danni perforanti e taglienti alla creatura che indossa, trasporta o impugna l''oggetto ora frantumato. Le creature (diverse da chi impugna l''arma bersaglio di questo incantesimo) adiacenti a quella creatura devono superare un Tiro Salvezza su Riflessi o subiscono 1d6 danni perforanti e taglienti dalle schegge volanti. Le schegge contano anche come i Materiali Speciali di cui era fatto l''oggetto spezzato (per esempio, le schegge di un''arma di ferro freddo sono di ferro freddo). Quando il potere aggiuntivo dell''arma viene rilasciato, l''incantesimo si scarica.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sundering-shards/'
WHERE name = 'Spezzare in Frammenti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello (fino a 5 round) (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La creatura o l’oggetto toccato diventano Invisibili, sparendo alla vista. Se la creatura bersaglio dell’incantesimo porta con sé dell’Equipaggiamento, anch’esso svanisce. Se l’incantesimo viene lanciato su qualcun altro, né l’incantatore né i suoi compagni sono più in grado di vederlo, a meno che non siano normalmente in grado di vedere cose Invisibili o possiedano mezzi magici che lo consentano.

Gli oggetti che cadono o vengono lasciati a terra da una creatura Invisibile tornano immediatamente visibili; gli oggetti che invece vengono raccolti spariscono solo se vengono messi in tasca o nascosti in mezzo ai vestiti. La luce, però, non può essere in alcun modo resa invisibile, nemmeno se la sua fonte lo diventa (l’effetto che ne risulta è quello di una luce diffusa senza alcuna sorgente visibile). Se una parte degli oggetti in possesso di chi è sono l’effetto di questo incantesimo si estende oltre 3 metri dal suo corpo, questa parte torna immediatamente visibile.

Naturalmente, il bersaglio dell’incantesimo non è sotto l’effetto di un incantesimo Silenzio ed esistono determinate condizioni che possono rivelare la sua presenza (come mettere il piede in una pozzanghera). Se è richiesta una prova, una creatura immobile Invisibile ha bonus +40 alle sue prove di Furtività. Il bonus si riduce a +20 se la creatura si sta muovendo.

L’incantesimo ha termine immediatamente se il soggetto compie un attacco contro una qualsiasi creatura. Ai fini di questo incantesimo, la definizione di “attacco” include qualsiasi incantesimo lanciato contro un bersaglio nemico o la cui area o il cui effetto comprendano un nemico. Il concetto di “nemico” dipende dalla percezione del personaggio Invisibile. Azioni dirette verso oggetti incustoditi non pongono fine all’incantesimo. Ferire in modo indiretto non è considerato un attacco. Un personaggio Invisibile può quindi aprire porte, parlare, mangiare, salire scale, evocare mostri e mandarli all’attacco, tagliare le corde che reggono un ponte sospeso mentre i suoi nemici sono ancora su di esso, attivare trappole a distanza, aprire una saracinesca che tiene rinchiusi dei cani da combattimento e così via. Comunque, nel momento in cui il bersaglio attacca direttamente diventa visibile con tutto il suo Equipaggiamento. Incantesimi come Benedizione, che hanno effetto solo sugli alleati e non sui nemici, non sono considerati attacchi ai fini di questa magia, anche se includono i nemici presenti nell’area.

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/vanish'
WHERE name = 'Svanire';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo aumenta l''effetto della gittata, concedendo bonus di +3 metri all''incremento di gittata di ogni arma usata.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/longshot'
WHERE name = 'Tiro Lungo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Un attacco di contatto in mischia infligge 1d4 danni da acido per livello dell''incantatore (massimo 5d4).

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/corrosive-touch'
WHERE name = 'Tocco Corrosivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale o Volontà nega',
  spell_res = 'sì',
  full_description = ': Il tocco della mano, che risplende di energia blu, devasta l''energia vitale delle creature viventi. Con un attacco di contatto in mischia si infonde energia negativa che infligge 1d6 danni. La creatura toccata subisce anche 1 danno temporaneo alla Forza, a meno che non superi un Tiro Salvezza su Tempra. Si può usare questo attacco di contatto in mischia un numero di volte pari al proprio livello.

I Non Morti toccati non subiscono danni, ma devono superare un Tiro Salvezza su Volontà, altrimenti fuggono In Preda al Panico per 1d4 round + 1 round per livello dell''incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/chill-touch'
WHERE name = 'Tocco Gelido';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Un incantesimo Unto ricopre una superficie solida con una patina di grasso scivoloso. Qualsiasi creatura che si trovi nell''area quando viene lanciato l''incantesimo deve effettuare un Tiro Salvezza su Riflessi altrimenti cade. Una creatura può entrare o attraversare l''area di Unto a metà della sua velocità normale superando una prova di Acrobazia con CD 10. Se fallisce questa prova, non può muoversi in quel turno (e dovrà superare un Tiro Salvezza su Riflessi per non cadere). Se fallisce la prova di 5 o più, cadrà. Le creature che non si muovono nel loro turno non devono effettuare queste prove e non sono considerate impreparate.

Questo incantesimo può anche essere usato per creare un rivestimento scivoloso su un oggetto. Quegli oggetti materiali che sono incustoditi subiscono automaticamente l''effetto di questo incantesimo, mentre quelli che sono impugnati o utilizzati da una creatura hanno diritto a un Tiro Salvezza su Riflessi per evitare l''effetto. Se il Tiro Salvezza iniziale fallisce, la creatura lascia cadere l''oggetto immediatamente. Il Tiro Salvezza va effettuato di nuovo a ogni round in cui la creatura tenta di raccogliere o di usare l''oggetto reso viscido. Se una creatura indossa un''armatura o dei vestiti su cui è stato lanciato unto ottiene un Bonus di Circostanza +10 alle prove di Artista della Fuga e alle prove di Manovra in Combattimento effettuate per sfuggire alla Lotta o alla DMC per evitare di essere afferrata.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/grease'
WHERE name = 'Unto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m',
  duration = '1 round/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Acume Tattico concede all''incantatore e ai suoi alleati una padronanza delle tattiche del campo di battaglia. Ogni volta che si otterrebbe un bonus ai Tiri per Colpire o alla CA per la posizione sul campo di battaglia, come per Attaccare ai Fianchi, posizione sopraelevata o Copertura, si ottiene un ulteriore Bonus Cognitivo +1. Questo bonus aumenta di +1 per ogni cinque livelli dell''incantatore oltre il 5° (massimo +4).

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/tactical-acumen'
WHERE name = 'Acume Tattico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'Vicino (7,5 m + 1,5 m/2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo ostacola il modo in cui il bersaglio si muove, dimezzandone la velocità base (arrotondata per difetto al multiplo di 1,5 m più vicino), pur permettendogli di compiere passi da 1,5 m come normale. Le creature Incorporee e quelle che volano con manovrabilità perfetta sono immuni all’effetto. Ogni round, il bersaglio può effettuare un nuovo tiro salvezza per terminare l’effetto.

Fonte: Hobble'
WHERE name = 'Zoppicare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una qualunque creatura di Taglia Piccola o Media di Tipo Umanoide. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Fiuto, Nuotare 9 m, Scurovisione 18 m e Visione Crepuscolare.

• Creatura di Taglia Piccola: Se si assume la forma di una creatura Umanoide di Taglia Piccola, si ottiene Bonus di Taglia +2 a Destrezza.

• Creatura di Taglia Media: Se si assume la forma di una creatura Umanoide di Taglia Media, si ottiene bonus +2 a Forza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/alter-self'
WHERE name = 'Alterare Se Stesso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Volontà parziale',
  spell_res = 'si',
  full_description = ': Questo incantesimo collega alla mente del bersaglio così da trasmettere una sensazione delle azioni che eseguirà. Si ottiene un Bonus Cognitivo +2 alla CA contro gli attacchi del bersaglio. Se il bersaglio fallisce il Tiro Salvezza su Volontà, si vede anche come reagirà alle azioni dell''incantatore e il bonus si applica ai suoi Tiri per Colpire e per i danni contro il bersaglio. Questi bonus si applicano solo mentre il bersaglio rimane nel raggio di azione dell''incantesimo, tuttavia anche se esce dal raggio d''azione, i bonus ritornano una volta che rientra. Ogni volta che il bersaglio manca l''incantatore con un attacco, questi bonus aumenteranno di 1 fino al termine dell''incantesimo (massimo +5).

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/anticipate-thoughts'
WHERE name = 'Anticipare Pensieri';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Per la durata dell''incantesimo, le armi funzionano come se avessero la capacità speciale delle armi Ritornante. 

Questo incantesimo può essere usato come prerequisito per la capacità speciale delle armi Ritornante. 

Si può dividere la durata in intervalli da 1 minuto tra le armi toccate.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/returning-weapon'
WHERE name = 'Arma Ritornante Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Nessuno',
  spell_res = 'no',
  full_description = ': 
Si evocano sulle proprie mani un paio di artigli formati da materiale semireale. Ciò garantisce due attacchi primari con gli artigli che infliggono 1d4 danni se l''incantatore è di taglia Media (1d3 se Piccola) più 1 danno alla Forza. Un Tiro Salvezza su Tempra effettuato con successo annulla il danno alla Forza (CD = CD di questo incantesimo).

Fonte: Shadow Claws'
WHERE name = 'Artigli d''Ombra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': L''armatura indossata non riduce più la velocità. Si riduce anche la penalità di armatura alla prova di 1 +1 ogni cinque livelli dell''incantatore (massimo 5). 

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/effortless-armor'
WHERE name = 'Armatura Passiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 minuto',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si assembla una Macchina d''Assedio, usando fino a un operatore in meno ogni due livelli dell''incantatore posseduti. Si può fare a meno di un altro operatore se si possiedono gradi in Conoscenze (ingegneria), più un ulteriore operatore ogni 5 gradi posseduti in quella Abilità. Se il livello dell''incantatore combinato con Conoscenze (ingegneria) non riesce a eliminare la necessità di operatori, l''incantesimo fallisce.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/telekinetic-assembly'
WHERE name = 'Assemblaggio Telecinetico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 ora/livello o finché non viene scaricato',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'no',
  full_description = ': Strati invisibili di forza solida circondano e proteggono il bersaglio, conferendogli bonus di armatura di +2 alla CA. Inoltre, i primi 5 danni letali subiti dal bersaglio da ogni attacco vengono convertiti in Danno Non Letale. Contro attacchi che infliggono già Danni Non Letali, il bersaglio ottiene RD 5/—. Una volta che questo incantesimo ha convertito 5 danni per livello dell''incantatore (massimo 50 danni) in Danni Non Letali, l''incantesimo si scarica.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/ablative-barrier'
WHERE name = 'Barriera Ablativa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '2 ore/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Vengono evocati fino a sei Cavalli Leggeri o Pony (a propria scelta) che fungono da cavalcatura. I destrieri servono fedelmente l''incantatore. Le cavalcature sono dotate di Morso e Briglie e di una Sella da Galoppo.

La durata di questo incantesimo si può dividere in intervalli da 2 ore tra i cavalli evocati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mount'
WHERE name = 'Cavalcatura Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Si conferisce al soggetto la capacità di usare un singolo tipo di arma del quale non è competente come se invece lo fosse. L''arma può essere di qualsiasi tipo, anche esotica, ma il soggetto dell''incantesimo deve impugnare l''arma al momento del lancio

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/bestow-weapon-proficiency'
WHERE name = 'Conferire Competenza nelle Armi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si ottiene Bonus di Schivare +1 alla CA, Bonus di Competenza +4 alle prove di Artista della Fuga e alle prove di Manovra in Combattimento per sfuggire alla Lotta e Bonus di Circostanza +4 alla DMC contro i tentativi di Lottare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/extreme-flexibility/'
WHERE name = 'Flessibilità Estrema';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Volontà nega (oggetto), oppure Tempra dimezza',
  spell_res = 'sì',
  full_description = ': Frantumare genera un suono forte ed estremamente acuto che manda in pezzi tutti gli oggetti fragili non magici, riduce in frantumi un singolo oggetto solido e non magico oppure danneggia una creatura cristallina.

Usato come attacco ad area, Frantumare distrugge gli oggetti non magici di cristallo, vetro, ceramica o porcellana. Tutti gli oggetti incustoditi entro 1,5 metri di distanza dal punto di origine vengono ridotti in mille pezzi dall’incantesimo. Gli oggetti che pesano più di 0,5 kg per livello dell’incantatore non ne subiscono l’effetto, ma tutti quelli che possiedono le caratteristiche suddette vengono frantumati.

In alternativa, si può dirigere Frantumare contro un singolo oggetto solido a prescindere dalla sua composizione, ma che pesi fino a 5 kg per livello dell’incantatore. Lanciato contro una creatura cristallina (di qualsiasi peso), frantumare infligge 1d6 danni sonori per livello dell’incantatore (massimo 10d6), concedendo un Tiro Salvezza su Tempra per dimezzare i danni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shatter'
WHERE name = 'Frantumare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1 round + 1 round ogni 3 livelli',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Dalla propria mano scaturisce una freccia magica d’acido che si dirige sul bersaglio. Occorre colpire il bersaglio con un attacco di contatto a distanza. Se si colpisce, la freccia infligge 2d4 danni da acido, senza danni da spargimento. Ogni 3 livelli dell’incantatore, l’acido, a meno che non venga in qualche modo neutralizzato, permane per un altro round (fino a un massimo di 6 round addizionali al 18° livello) infliggendo altri 2d4 danni a round.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/acid-arrow'
WHERE name = 'Freccia Acida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m',
  duration = '1 round',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si crea un''increspatura nel tempo che influenza tutte le creature nell''area. All''inizio del turno di ogni creatura, c''è una probabilità del 50% che la creatura sia velocizzata (come per Velocità); altrimenti è rallentata (come per Lentezza).

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/time-shudder/'
WHERE name = 'Fremito del Tempo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Una bianca sferza lunga 4,5 m di evanescenza spettrale appare nelle mani dell''incantatore. Quest''arma è considerata come una frusta del tocco fantasma senza bonus di potenziamento. La si può maneggiare come una frusta come se si fosse competenti. Gli attacchi con una Frusta Fantasma si risolvono come attacchi di contatto incorporei. La frusta influenza solo le creature attaccate, passando attraverso oggetti e altre creature sul suo percorso e quindi permettendo di ignorare la Copertura tra l''incantatore e il suo bersaglio. Quando l''attacco di una Frusta Fantasma attraversa una Copertura Totale, il bersaglio è considerato avere Occultamento Totale (50% di probabilità di mancare). Contro creature incorporee e non morte, una Frusta Fantasma infligge danno letale e può essere usata per effettuare Manovre in Combattimento di Riposizionare e Trascinare (oltre alle manovre di Disarmare e Sbilanciare di una frusta normale). Una Frusta Fantasma non può essere disarmata o spezzata.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/ghost-whip'
WHERE name = 'Frusta Fantasma';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '0 m',
  duration = '1 minuto/livelllo (I) o finché non viene scaricato (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea una spira di acqua fresca, che funziona come una frusta adatta alla propria taglia, ma si effettuano attacchi di contatto in mischia invece di attacchi normali. Qualsiasi cosa venga colpita con la frusta subisce danni e viene bagnata da 0,5 litri d''acqua. Una creatura con il Sottotipo Fuoco subisce 1d6 danni addizionali. Se il bersaglio sta bruciando, ottiene bonus +2 al suo successivo Tiro Salvezza per estinguere le fiamme.

Dopo aver usato con successo la frusta per colpire una creatura un numero di volte pari al proprio livello dell''incantatore, l''acqua si esaurisce e l''incantesimo si scarica. L''acqua creata da questo incantesimo è identica a quella prodotta da Creare Acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/river-whip/'
WHERE name = 'Frusta Fluviale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 più 1,5 m/2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': La casualità dei colpi critici ha a lungo infastidito alcuni duellanti dell''Accademia Aldori, che considerano la fortuna un elemento sgradito nei duelli, da loro visti come prove di abilità piuttosto che di fortuna. La creatura bersaglio di questo incantesimo viene infusa di potere magico, alterando le probabilità di combattimento per indebolire i colpi fortunati. Le minacce di Colpo Critico effettuate dalla creatura colpita falliscono automaticamente la conferma. Le minacce di critico che si confermano automaticamente grazie a previlegi di classe o talenti, come Padronanza nelle Armi, non sono influenzate da questo incantesimo.

Inoltre, quando il bersaglio iniziale di questo incantesimo fallisce il suo Tiro Salvezza su Volontà per resistere alla Gara di Abilità, può selezionare un''altra creatura entro la portata dell''incantesimo che subirà anch''essa gli effetti dell''incantesimo (Volontà nega). Se questo bersaglio secondario nega l''incantesimo con un tiro salvezza riuscito, la durata di Gara di Abilità sul bersaglio primario viene ridotta a 1 round.

Fonte: Contest of Skill'
WHERE name = 'Gara di Abilità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si crea una palla di metallo fuso rosso brillante delle dimensioni di un pugno che si può immediatamente scagliare come un''arma a spargimento. Un colpo diretto infligge 2d6 danni da fuoco. Ogni creatura entro 1,5 m da dove la palla ha colpito subisce 1d6 danni da fuoco dallo spargimento (Riflessi dimezza). Ognuna di queste creature subisce 1d6 danni da fuoco addizionali al proprio turno per i successivi 1d3 round, a meno che non venga raffreddata (con acqua, neve o qualsiasi effetto che infligga 5 o più danni da freddo).

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/molten-orb/'
WHERE name = 'Globo Fuso';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'Concentrazione + 2 round',
  saving_throw = 'Volontà dubita (se si interagisce)',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea l’illusione visiva di un oggetto, di una creatura o di una forza, come la si visualizza comprensiva di suoni minori ma non discorsi intelligibili. L’illusione non crea odori, sensazioni tattili o di temperatura. Si può muovere l’immagine entro i limiti dell’area di effetto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/minor-image'
WHERE name = 'Immagine Minore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Dal nulla scaturiscono diversi duplicati illusori di se stessi, che rimangono vicini, rendendo difficile per i nemici determinare chi attaccare, e scompaiono una volta colpiti.

Immagine Speculare crea 1d4 immagini più 1 ogni 3 livelli dell''incantatore (massimo 8 immagini). Queste finzioni restano vicine e si muovono all''unisono, mimando esattamente i movimenti, i rumori e le azioni che si effettuano. Ogni volta che si viene attaccati o si subisce un incantesimo che richiede un tiro per colpire, c''è una probabilità che venga colpita invece una delle immagini. Se l''attacco va a segno, tirate a caso il dado per vedere se il bersaglio è reale o finto. Se è finto, si distrugge un''immagine. Se l''attacco manca di 5 o meno, viene distrutta un''immagine. Gli incantesimi ad area colpiscono normalmente e non distruggono nessuna immagine. Gli incantesimi e gli effetti che non richiedono Tiro per Colpire non distruggono nessuna immagine e colpiscono invece il bersaglio reale. Gli incantesimi che richiedono un attacco a contatto vengono scaricati senza alcun danno se vengono usati per distruggere un''immagine.

Chi attacca deve essere in grado di vedere le immagini per essere ingannato. Se si è Invisibili o l''attaccante è Accecato, l''incantesimo non ha alcun effetto (anche se si applica la normale probabilità di mancare).

FAQ &#160;

Si può usare l''incantesimo Dardo Incantato per distruggere una o più immagini dell''incantesimo Immagine Speculare?

No. Dardo Incantato colpisce una creatura e non richiede un Tiro per Colpire, quindi oltrepassa tutte le immagini e colpisce sempre l''incantatore.
[Fonte]

FAQ &#160;

Si può usare Incalzare o Incalzare Potenziato per incalzare da o verso un''immagine creata da un incantesimo Immagine Speculare?

No. Se l''attacco iniziale ha colpito l''incantatore, non si può incalzare su un''immagine come se fosse una creatura reale. Se l''attacco iniziale ha colpito un''immagine, si è fallito nel colpire il bersaglio desiderato (l''incantatore) e quindi non è possibile incalzare. Poiché non è possibile focalizzarsi su un''immagine (perché non è possibile distinguere le immagini dall''incantatore reale), allo stesso modo non è possibile cercare un''immagine e cercare di incalzare su un''altra immagine.
[Fonte]

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mirror-image'
WHERE name = 'Immagine Speculare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '24 ore o finché non viene scaricato (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Funziona come Infondere Capacità Magiche, tranne che l''incantatore può trasferire al bersaglio l''uso della sua capacità Assalto Elementale. Per usare la capacità, il bersaglio deve avere un punteggio di Intelligenza almeno pari a 5. L''assalto elementale infuso funziona esattamente come quello dell''incantatore, eccetto che la durata della capacità si basa sul livello del bersaglio o sui suoi Dadi Vita. Una volta che ha lanciato l''incantesimo, l''incantatore non può usare la sua capacità assalto elementale finché la durata dell''incantesimo non si è esaurita.

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/imbue-with-elemental-might'
WHERE name = 'Infondere Possanza Elementale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questa barriera fornisce maggiore manovrabilità quando si evitano gli attacchi di nemici più grandi. Mentre si è sotto gli effetti di questo incantesimo e si viene attaccati e mancati da una creatura di almeno una taglia più grande della propria, si può, come azione immediata, muoversi fino a 1,5 metri lontano dalla creatura attaccante. Si può aumentare questo movimento di 1,5 metri per ogni 5 livelli dell''incantatore. Questo movimento non provoca Attacchi d''Opportunità. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/escaping-ward'
WHERE name = 'Interdizione della Fuga';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale o contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo) o Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo) o sì (innocuo, oggetto)',
  full_description = ': La creatura o l''oggetto toccato diventano Invisibili, sparendo alla vista. Se la creatura bersaglio dell''incantesimo porta con sé dell''Equipaggiamento, anch''esso svanisce. Se l''incantesimo viene lanciato su qualcun altro, né l''incantatore né i suoi compagni sono più in grado di vederlo, a meno che non siano normalmente in grado di vedere cose Invisibili o possiedano mezzi magici che lo consentano.

Gli oggetti che cadono o vengono lasciati a terra da una creatura Invisibile tornano immediatamente visibili; gli oggetti che invece vengono raccolti spariscono solo se vengono messi in tasca o nascosti in mezzo ai vestiti. La luce, però, non può essere in alcun modo resa invisibile, nemmeno se la sua fonte lo diventa (l''effetto che ne risulta è quello di una luce diffusa senza alcuna sorgente visibile). Se una parte degli oggetti in possesso di chi è sono l''effetto di questo incantesimo si estende oltre 3 metri dal suo corpo, questa parte torna immediatamente visibile.

Naturalmente, il bersaglio dell''incantesimo non è sotto l''effetto di un incantesimo Silenzio ed esistono determinate condizioni che possono rivelare la sua presenza (come mettere il piede in una pozzanghera). Se è richiesta una prova, una creatura immobile Invisibile ha bonus +40 alle sue prove di Furtività. Il bonus si riduce a +20 se la creatura si sta muovendo.

L''incantesimo ha termine immediatamente se il soggetto compie un attacco contro una qualsiasi creatura. Ai fini di questo incantesimo, la definizione di “attacco” include qualsiasi incantesimo lanciato contro un bersaglio nemico o la cui area o il cui effetto comprendano un nemico. Il concetto di “nemico” dipende dalla percezione del personaggio Invisibile. Azioni dirette verso oggetti incustoditi non pongono fine all''incantesimo. Ferire in modo indiretto non è considerato un attacco. Un personaggio Invisibile può quindi aprire porte, parlare, mangiare, salire scale, evocare mostri e mandarli all''attacco, tagliare le corde che reggono un ponte sospeso mentre i suoi nemici sono ancora su di esso, attivare trappole a distanza, aprire una saracinesca che tiene rinchiusi dei cani da combattimento e così via. Comunque, nel momento in cui il bersaglio attacca direttamente diventa visibile con tutto il suo Equipaggiamento. Incantesimi come Benedizione, che hanno effetto solo sugli alleati e non sui nemici, non sono considerati attacchi ai fini di questa magia, anche se includono i nemici presenti nell''area.

Invisibilità può essere reso permanente (solo sugli oggetti) con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/invisibility'
WHERE name = 'Invisibilità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale o vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Levitazione permette di spostare se stessi, un''altra creatura o un oggetto in su e in giù, come si desidera. Una creatura deve essere consenziente perché Levitazione possa venire usato su di lei e un oggetto deve essere incustodito o in possesso di una creatura consenziente. 

È possibile muovere mentalmente il bersaglio verso l''alto o verso il basso fino a 6 metri per round; farlo è un''azione di movimento. Non è possibile muovere il bersaglio orizzontalmente, ma esso potrebbe comunque aggrapparsi per spostarsi lateralmente lungo un dirupo, oppure fare forza su un soffitto per muoversi lateralmente (di solito a metà della sua velocità base sul terreno).

Una creatura che durante la levitazione cerca di attaccare con un''arma da mischia o a distanza si trova in una posizione sempre più instabile; il primo attacco ha penalità –1 ai Tiri per Colpire, il secondo –2 e così via, fino a una penalità massima di –5. Un round completo utilizzato per riportarsi in equilibrio consente alla creatura di ricominciare da –1.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/levitate'
WHERE name = 'Levitazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round /livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si provocano fluttuazioni imprevedibili nell''illuminazione dell''area, che varia dal buio assoluto a una brillantezza abbagliante. Il livello di luce nell''area cambia all''inizio del turno di ogni creatura, in base al risultato del tiro percentuale sulla seguente tabella.

d%

Livello di Illuminazione

1-10

Oscurità Soprannaturale

11-25

Oscurità

26-50

Luce Fioca

51-90

Luce normale

91-100

Luce Intensa

L''oscurità soprannaturale (come Oscurità Profonda) è impervia anche alla Scurovisione. La luce intensa influenza le creature con Cecità alla Luce o Sensibilità alla Luce. Al fine di soppiantare i suoi effetti con incantesimi di luce od oscurità di livello superiore, Luci Sfarfallanti si considera un incantesimo di luce quando aumenta l''intensità della luce ambientale o uno di oscurità se invece la diminuisce. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/f/flickering-lights/'
WHERE name = 'Luci Sfarfallanti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello (I)',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Una volta per round, mani fantomatiche caricano una singola arma da lancio o da fuoco con una munizione evocata. Questa munizione è magica al fine di superare la Riduzione del Danno e di attaccare creature Incorporee, ma è normale per il suo tipo (un normale proiettile o Pallini e Polvere Nera nel caso di Armi da Fuoco). La munizione evocata cessa di esistere 1 round dopo aver lasciato l''arma o al termine della durata, in base a ciò che accade prima.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reloading-hands'
WHERE name = 'Mani Ricaricanti';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'vedi testo',
  saving_throw = 'nessuno',
  spell_res = 'sì (oggetto)',
  full_description = ': Si crea e si controlla una forza telecinetica invisibile, manipolabile con impressionante aggressività o con attenta cautela, in grado di prendere un oggetto da un avversario o manipolare un oggetto dalla distanza. Si può usare questa forza per uno o due intenti. 

• Manovra Aggressiva: Si tenta istantaneamente una Manovra in Combattimento di Disarmare o Rubare contro un bersaglio entro il raggio di azione. Si usa il proprio livello dell''incantatore come BMC, aggiungendo il modificatore di Carisma (Bardo, Oracolo, Stregone), il modificatore di Intelligenza (Mago, Magus) o il modificatore di Saggezza (Chierico) al posto del modificatore di Forza o Destrezza. Questo tentativo di Manovra in Combattimento non provoca Attacchi d''Opportunità da parte del bersaglio, ma lanciare l''incantesimo li provoca. Se ha successo, si attira a sé l''oggetto bersaglio e, se si hanno sufficienti mani libere, si lo si può afferrare. Altrimenti, l''oggetto atterra nel quadretto dell''incantatore come se l''avesse fatto cadere.

• Manovra Accurata: Si tenta eseguire una prova di Disattivare Congegni o una prova di Rapidità di Mano per derubare un bersaglio nel raggio di azione. Questo incantesimo dura per il tempo richiesto per svolgere il proprio compito, richiedendo la piena concentrazione per quella durata. Una volta risolta la Prova di Abilità, l''incantesimo termina. Se si riesce nella prova di Rapidità di Mano, si attira a sé l''oggetto bersaglio come per la Manovra Aggressiva. Il bersaglio ottiene bonus +2 alla prova di Percezione per notare il tentativo riuscito.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pilfering-hand'
WHERE name = 'Mano Sgraffignante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo fa sì che un oggetto inizi a irradiare penombra attorno a sé nel raggio di 6 metri. L’oscurità porta il livello di illuminazione dell’area a scendere di un grado, da luce intensa a normale, da normale a fioca, da fioca a buio. Questo incantesimo non ha effetto in un’area che è già buia. Le creature con vulnerabilità o sensibilità alla luce non hanno penalità della luce normale. Tutte le creature nell’area ottengono Occultamento (probabilità del 20% di mancare il bersaglio) nella luce fioca. Tutte le creature nell’area ottengono Occultamento Totale (probabilità del 50% di mancare il bersaglio) nel buio. Le creature che hanno Scurovisione riescono a vedere in un’area di luce fioca o nel buio senza penalità. Le sorgenti di luce non magica, come le torce e le lanterne, non possono aumentare il livello di luce in un’area di Oscurità. Le sorgenti magiche di luce aumentano il livello della luce nell’area solo se sono di un livello superiore rispetto ad Oscurità.

Se l’incantesimo viene lanciato su un piccolo oggetto che poi viene posto al di sotto o all’interno di una copertura in grado di bloccare la luce, gli effetti dell’incantesimo vengono bloccati finché la Copertura non viene rimossa.

L’incantesimo non si cumula con se stesso. Oscurità contrasta e dissolve qualsiasi incantesimo di luce di livello pari o inferiore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/darkness'
WHERE name = 'Oscurità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = NULL,
  saving_throw = NULL,
  spell_res = 'no',
  full_description = ': Si fa in modo che il bersaglio faccia rumore come se si trovasse altrove nel raggio d''azione, compresi i movimenti, la voce e tutti gli altri suoni. Finché ci si Concentra, si può far sì che la posizione apparente del suono cambi a piacimento nel raggio d''azione della propria posizione attuale. Una volta cessata la concentrazione, il suono si sposta in modo da mantenere la stessa distanza e direzione relativa dal bersaglio. Questo incantesimo può ingannare qualsiasi Percezione Cieca o Vista Cieca basata sul suono (inclusa Ecolocazione), ma non può ingannare altre forme di rilevamento come altre forme di percezione o vista cieca, Percepire Vita, vista normale e Percezione Tellurica. Il bersaglio riceve un Tiro Salvezza contro l''effetto se non desidera che il suono venga spostato, e qualsiasi creatura che interagisce con l''illusione riceve un tiro salvezza su Volontà per non credere al mascheramento. 

Fonte: Shifted Steps'
WHERE name = 'Passi Spostati';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = '1d4+1 round, o 1d4+1 round dopo che le creature hanno lasciato la nube di fumo',
  saving_throw = 'Volontà nega o Tempra nega',
  spell_res = 'sì o no',
  full_description = ': Pirotecnica trasforma un fuoco in una scarica accecante di fuochi d''artificio o in una nube di fumo soffocante, a seconda della versione dell''incantesimo scelta. L''incantesimo sfrutta una sorgente di fuoco, che viene immediatamente spenta. Un fuoco talmente grande da superare le dimensioni di un cubo con spigolo di 6 metri viene spento solo parzialmente. I fuochi magici non vengono spenti, anche se una creatura basata sul fuoco (come un elementale del fuoco) usata come sorgente subisce 1 danno per livello dell''incantatore.

• Fuochi d''Artificio: I fuochi d''artificio sono lampeggianti scoppi momentanei e infuocati di abbaglianti luci aeree colorate. Questo effetto Acceca tutte le creature a meno di 36 metri dalla sua fonte per 1d4+1 round (Volontà nega). Queste creature devono essere in linea di visuale con l''esplosione per subirne l''effetto. La Resistenza agli Incantesimi può evitare l''Accecamento.

• Nube di Fumo: Un flusso di fumo in continuo movimento scaturisce dal punto desiderato andando a formare una nube soffocante. La nube si propaga per 6 metri in ogni direzione e dura 1 round per livello dell''incantatore. Ogni tipo di vista, inclusa la Scurovisione, è inefficace all''interno o attraverso la nube. Tutte le creature all''interno subiscono penalità –4 ai punteggi di Forza e Destrezza (Tempra nega). Questi effetti durano per altri 1d4+1 round dopo che la nube si è dissolta o dopo che il personaggio lascia l''area della nube. La Resistenza agli Incantesimi non si applica.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pyrotechnics'
WHERE name = 'Pirotecnica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega (solo',
  spell_res = 'no',
  full_description = ': Una nuvola di pulviscolo dorato si posa su tutto ciò che si trova all''interno dell''area, Accecando le creature ed evidenziando le sagome di eventuali oggetti o creature Invisibili per la durata dell''incantesimo. Tutti coloro che si trovano all''interno dell''area vengono ricoperti dalla polvere, che non può essere rimossa e continua a brillare finché non scompare. Ogni round alla fine del loro turno, le creature Accecate possono tentare un nuovo Tiro Salvezza per mettere fine all''effetto dell''Accecamento.

Qualsiasi creatura ricoperta dalla polvere subisce penalità –40 alle prove di Furtività.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/glitterdust'
WHERE name = 'Polvere Luccicante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': L''energia di questo incantesimo accelera i propri passi, consentendo di eseguire movimenti agili. Si ottiene un Bonus di Potenziamento +3 metri alla propria velocità e Bonus di Schivare +1 alla CA. Questi bonus non sono cumulabili con quelli concessi da incantesimi come Velocità o effetti simili. Mentre si è sotto l''effetto Prontezza Aldori, ci si può muovere di 1,5 metri su Terreni Difficili.

Fonte: Aldori Alacrity'
WHERE name = 'Prontezza Aldori';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si colpiscono i nemici con raggi incandescenti. Si può scagliare un raggio, più un raggio aggiuntivo ogni 4 livelli oltre il 3° (fino a un massimo di 3 raggi all''11° livello). Ogni raggio necessita di un attacco di contatto a distanza per colpire e infligge 4d6 danni da fuoco. I raggi possono essere scagliati contro lo stesso bersaglio o contro bersagli differenti, ma tutti devono essere mirati contro bersagli che siano entro 9 metri l''uno dall''altro e scagliati simultaneamente.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/scorching-ray'
WHERE name = 'Raggio Rovente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '10 minuti/livello (I)',
  saving_throw = 'Riflessi nega',
  spell_res = 'no',
  full_description = ': Ragnatela crea numerosi strati di filamenti resistenti e appiccicosi, che intrappolano le creature che vi rimangono invischiate. I filamenti sono simili a quelli delle ragnatele tessute da un ragno, ma sono molto più grossi e resistenti. Devono essere ancorati a due o più punti solidi diametralmente opposti altrimenti la ragnatela si affloscia su se stessa e scompare. Le creature che rimangono intrappolate all’interno di una Ragnatela sono Intrappolate tra i filamenti viscosi. Se si attacca una creatura in una Ragnatela, non si rimane invischiati.

Chiunque si trovi all''interno dell''area di effetto nel momento in cui l’incantesimo viene lanciato deve effettuare un Tiro Salvezza su Riflessi. Se lo supera, la creatura si trova nella ragnatela ma è libera di agire. Se il Tiro Salvezza fallisce, la creatura ottiene la condizione In Lotta, ma può liberarsi effettuando una prova di Manovra in Combattimento o di Artista della Fuga, come azione standard contro la CD dell’incantesimo. L’intera area coperta dalla Ragnatela è considerata terreno difficile. Chiunque si stia muovendo attraverso una Ragnatela deve effettuare una prova di Manovra in Combattimento o di Artista della Fuga come parte della sua azione di movimento, con una CD uguale alla CD dell’incantesimo. Le creature che non la superano, perdono il loro movimento e diventano In Lotta nel primo quadretto di ragnatela in cui entrano.

La Ragnatela fornisce Copertura per ogni 1,5 metri di sostanza tra sé e un avversario; se ci sono almeno 6 metri fornisce Copertura Totale. I filamenti di una ragnatela sono infiammabili. Una spada Infuocata può farsi strada tra i filamenti proprio come una mano fa con una ragnatela normale. Qualsiasi fuoco può incendiare e bruciare in 1 round 1 quadretto di 1,5 m di lato di ragnatela. Tutte le creature intrappolate in una ragnatela in fiamme subiscono 2d4 danni da fuoco.

Ragnatela può essere reso permanente con un incantesimo Permanenza. Una Ragnatela permanente che viene danneggiata (ma non distrutta) si riforma in 10 minuti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/web'
WHERE name = 'Ragnatela';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Si rinforza le armi o le armature per concederle un miglioramento temporaneo o per mitigarne la qualità Fragile. Alle armature o alle armi toccate che hanno la qualità Fragile non sono considerate tale qualità per la durata dell''incantesimo. Le armature o le armi naturali soggette a questo incantesimo ottengono invece la qualità perfetta per la durata dell''incantesimo e la loro Durezza raddoppia. Se questo incantesimo viene lanciato su armature o armi perfette o magiche, la loro Durezza raddoppia per la durata dell''incantesimo. 

La durata di questo incantesimo si può dividere in intervalli da 10 minuti tra gli oggetti toccati.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reinforce-armaments'
WHERE name = 'Rinforzare Armamenti Collettivo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello o finché non viene scaricato',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Dell''energia elettrica fluisce nel corpo dell''incantatore, dando una scossa alla prossima creatura che lo tocca. Tutte le creature che colpiscono l''incantatore con il loro corpo o un''arma impugnata subiscono 1d6 danni da elettricità per ogni due livelli dell''incantatore (massimo 6d6).

Se l''attaccante ha Resistenza agli Incantesimi, si applica contro questo danno. Ogni volta che l''incantesimo lancia una scarica, il numero di dadi di danno inflitti si dimezza (arrotondando per difetto); quando i dadi di danno dell''incantesimo raggiungono lo 0, l''incantesimo termina. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/defensive-shock'
WHERE name = 'Scossa Difensiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La sagoma del soggetto diventa sfocata, oscillante e mutevole. Questa distorsione garantisce al soggetto Occultamento (probabilità del 20% di essere mancato).

Un incantesimo Vedere Invisibilità non contrasta l''effetto di Sfocatura, a differenza di Visione del Vero.

Gli avversari che non possono vedere il soggetto ignorano l''effetto dell''incantesimo (e comunque combattere contro un avversario che non si può vedere comporta le normali penalità).

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blur'
WHERE name = 'Sfocatura';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '4,5 m',
  duration = '1 round/livello o finché non viene scaricato',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Fino a tre volte entro la durata di questo incantesimo, si può emettere un cono di fuoco come Azione Standard. Il primo cono infligge 4d6 danni da fuoco alle creature nell''area. Il secondo cono di fiamme infligge 2d6 danni da fuoco alle creature nell''area. Il terzo cono di fiamme infligge 1d6 danni da fuoco alle creature nell''area. Un Tiro Salvezza riuscito su Riflessi dimezza i danni. Dopo il terzo cono di fiamme, l''incantesimo termina.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-breath

Cono da 4,5 metri'
WHERE name = 'Soffio di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Si distorce lo spazio attorno a una creatura, alterando in modo imprevedibile il percorso dei suoi attacchi in mischia, ma sempre verso una creatura vicina che il bersaglio minaccia. Fino all''inizio del turno successivo dell''incantatore, gli attacchi in mischia del bersaglio colpiscono un bersaglio casuale invece di quello previsto. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/twisted-space'
WHERE name = 'Spazio Contorto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello o finché non viene scaricato',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Si infonde in un''arma da mischia tagliente la capacità di infliggere un''orrenda ferita alla testa. Quando l''arma bersaglio colpisce una creatura vivente, oltre ai normali effetti del colpo, l''attaccante può scaricare questo incantesimo come Azione Gratuita per aprire uno squarcio sulla fronte del bersaglio che infligge danni da Sanguinamento pari a metà del proprio livello dell''incantatore. All''inizio di ogni turno del bersaglio, quando subisce danni da Sanguinamento, subisce anche penalità cumulativa -1 ai Tiri per Colpire. Quando la penalità raggiunge -3, il bersaglio considera anche tutti i suoi bersagli come se avessero Occultamento (20% di mancare). Quando la penalità raggiunge -5, il bersaglio è Accecato. Fermare il danno da sanguinamento pone termine gli effetti di questo incantesimo sulla creatura sanguinante. Un bersaglio immune al danno da Sanguinamento è immune anche agli effetti di questo incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/brow-gasher'
WHERE name = 'Squarcia Fronte';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello (I)',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Completando questo incantesimo, l’energia elementale viene infusa nelle proprie mani. Bisogna scegliere un tipo di energia: acido, elettricità, freddo o fuoco. Si ottiene un attacco di contatto in mischia che infligge 1d6 danni di quel tipo di energia, insieme ad un effetto speciale indicato di seguito. Si infligge il danno da energia ed il relativo effetto speciale anche quando si attacca con le proprie mani usando un colpo senz’armi, un singolo artiglio o un singolo attacco di schianto. Questo danno bonus non può mai essere applicato a più armi.

• Acido: L’attacco di contatto infligge un danno progressivo da acido ogni round per 1 round ogni 3 livelli dell’incantatore. Il bersaglio deve effettuare un Tiro Salvezza su Tempra o diventa Infermo per la durata dei danni continuativi da acido.

• Elettricità: Il bersaglio deve effettuare un Tiro Salvezza su Tempra o diventa Barcollante per 1 round.

• Freddo: Il bersaglio deve effettuare un Tiro Salvezza su Tempra o diventa Affaticato. Una creatura già Affaticata non subisce questo effetto addizionale.

• Fuoco: Le proprie mani si incendiano ed emanano luce come una torcia. Il proprio tocco fa Prendere Fuoco al bersaglio.

Gli attacchi successivi infliggono il danno normale, mentre gli effetti addizionali non si cumulano. Questo incantesimo non conferisce particolari protezioni a ciò che si trasporta nelle mani o si indossa su di esse. Quando si lancia questo incantesimo per infliggere danni da acido, elettricità, freddo o fuoco, l’incantesimo è di quel tipo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-touch'
WHERE name = 'Tocco Elementale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '4,5 m',
  duration = '1 round/livello o finché non viene scaricato (vedi testo)',
  saving_throw = 'Riflessi dimezza (vedi testo)',
  spell_res = 'sì',
  full_description = ': Fino a tre volte entro la durata di questo incantesimo, si può emettere un cono di suono possente come azione standard. Il primo cono infligge 4d4 danni sonori a ogni creatura nell''area. Il secondo infligge 2d4 danni sonori a ogni creatura nell''area. Il terzo infligge 1d4 danni sonori a ogni creatura nell''area. Superare un Tiro Salvezza su Riflessi contro un cono ne dimezza il danno. Dopo il terzo cono di suono, l''incantesimo termina. Finché non si sono usati i tre coni, non si può usare la propria voce per qualsiasi scopo relativo alla magia (Esibizione Bardica, lancio verbale di incantesimi, e così via) e non si può parlare a un volume inferiore a un urlo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/sonic-scream/'
WHERE name = 'Urlo Sonico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '24 ore',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Utilizzando 0,5 litri di sangue di un incantatore ucciso nelle ultime 24 ore, si può tentare di apprendere un incantesimo conosciuto da esso. Si seleziona un incantesimo posseduto dall''incantatore morto (che deve essere sulla propria lista degli incantesimi): se ne ottiene la conoscenza per 24 ore. 

Durante questo periodo, si può trascrivere (o insegnare al proprio Famiglio, se si è un Fattucchiere) usando le normali regole per copiare un incantesimo da un''altra fonte. Una volta imparato, si può preparare l''incantesimo come di norma. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blood-transcription'
WHERE name = 'Trascrivere con il Sangue';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello (I)',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il bersaglio guadagna un''aura del raggio di 1,5 metri che fa sì che il sangue delle creature nell''area prenda fuoco a contatto con l''aria. Qualsiasi creatura (compreso il bersaglio dell''incantesimo) entro l''aura che subisca almeno 5 danni perforanti, taglienti o da Sanguinamento da un singolo attacco, crea automaticamente uno spruzzo di sangue infuocato. Lo spruzzo colpisce una creatura in una dei quadretti adiacenti alla creatura ferita, determinato in modo casuale. Lo spruzzo infligge 1d6 danni da fuoco a qualsiasi creatura presente in quel quadretto, e 1 danno da spargimento a tutte le creature entro 1,5 metri dal bersaglio dello spruzzo, compreso il bersagliò di questo incantesimo. Una creatura può produrre un solo spruzzo di sangue infuocato per round. Le creature che non hanno sangue (comprese le Melme e la maggior parte dei Costrutti e dei Non Morti) non creano spruzzi di sangue quando vengono attaccate. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blood-blaze'
WHERE name = 'Vampata di Sangue';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo è stato sviluppato da uno studente dell''Accademia Aldori dopo diverse settimane passate a osservare (e occasionalmente partecipare) alle risse nei bar di Restov. Si attinge alle riserve nascoste della propria mente, padroneggiando istantaneamente tecniche di combattimento avanzate. Quando si lancia questo incantesimo, si sceglie un Talento di Combattimento. Devi soddisfare tutti i prerequisiti per questo talento, considerando il proprio livello da magus come Bonus di Attacco Base a questo scopo. Per tutta la durata dell''incantesimo, si è considerati come se si avesse il talento scelto. Una volta lanciato l''incantesimo, non si può cambiare il talento scelto (o qualsiasi decisione relativa a quel talento) per ulteriori lanci dell''incantesimo nello stesso giorno.

Una creatura può beneficiare di un solo incantesimo di Adattamento Tattico alla volta.

Fonte: Tactical Adaptation'
WHERE name = 'Adattamento Tattico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'lungo (120 metri + 12 m/livello)',
  duration = NULL,
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Allucinazione Uditiva, tranne per il fatto che si può includere l''immagine di qualsiasi oggetto, creatura o forza che si immagina o si identifica per essere immaginata dai bersagli. È possibile muovere l''immagine mentre ci si Concentra. Dopo aver cessato la concentrazione, si possono definire semplici movimenti o cambiamenti che il fantasma deve eseguire e che possono essere spiegati in 25 parole o meno.

L''immagine scompare quando viene colpita da un avversario, a meno che non si faccia reagire l''illusione in modo appropriato o la si istruisca in tal senso. La sua CA è pari a 10 + il livello di questo incantesimo.

Fonte: Audiovisual Hallucination'
WHERE name = 'Allucinazione Audiovisiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 ora/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Arma Magica Superiore conferisce a un’arma un Bonus di Potenziamento +1 ogni 4 livelli dell’incantatore (massimo +5) ai Tiri per Colpire e per i danni. Il Bonus di Potenziamento non si somma al bonus ai Tiri per Colpire di un’arma perfetta. Questo bonus non permette ad un’arma di superare la Riduzione del Danno, a parte quello da magia.

In alternativa, è possibile lanciare l’incantesimo su un massimo di 50 frecce, quadrelli o proiettili. Essi devono essere tutti dello stesso tipo e devono essere tutti radunati in gruppo (nella stessa faretra o altro contenitore). I proiettili, ma non le armi da lancio, perdono la loro trasmutazione una volta utilizzati. Considerare gli Shuriken come proiettili, piuttosto che come armi da lancio, ai fini di questo incantesimo.

Non si può lanciare questo incantesimo su un’arma naturale, come un colpo senz’armi (invece, vedi Zanna Magica). Il colpo senz’armi di un Monaco è considerato un’arma, e quindi può essere potenziato da questo incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/magic-weapon#TOC-Magic-Weapon-Greater'
WHERE name = 'Arma Magica Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di qualsiasi creatura corporea di Taglia Piccola o Media del Tipo Non Morto, che deve avere una sagoma vagamente umanoide (come un Ghoul, Scheletro o Zombie). Si ottiene l''attacco col morso (1d6 per le forme Medie, 1d4 per quelle Piccole), due attacchi con gli artigli o di schianto (1d6 per le forme Medie, 1d4 per quelle Piccole), e Scurovisione 18 metri. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Fiuto, Nuotare 9 metri, Scalare 9 metri, Visione Crepuscolare e Volare 9 metri (manovrabilità media). 

In questa forma, si viene individuati come creatura Non Morta (come con Individuazione dei Non Morti, ma non con la magia che rivela la vera forma come Visione del Vero) e considerati come tali per quanto riguarda Incanalare Energia, incantesimi di Cura e incantesimi di Infliggi, ma non per altri effetti con bersaglio specifico o che reagiscono diversamente con i Non Morti (come Luce Incandescente).

• Non Morto di Taglia Piccola: Se la forma che si assume è quella di un Non Morto di Taglia Piccola, si ottiene un Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Non Morto di Taglia Media: Se la forma che si assume è quella di un Non Morto di Taglia Media, si ottiene un Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/undead-anatomy-i'
WHERE name = 'Anatomia Non Morta I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Si trasforma la struttura fisica di un''arma a proprio piacimento. Conferisce a un''arma un Bonus di Potenziamento +1 ogni 4 livelli dell''incantatore (massimo +5) ai Tiri per Colpire e per i danni. Il Bonus di Potenziamento non si somma al bonus ai Tiri per Colpire di un''arma perfetta. Questo altera le proprietà fisiche di un''arma, consentendole di superare la riduzione del danno di uno dei seguenti tipi: argento, contundente, ferro freddo, perforante o tagliente. L''arma interessata infligge comunque il suo tipo di danno normale e la sua durezza e punti ferita rimangono immutati. Questo incantesimo può essere lanciato su un''arma naturale o su un colpo senz''armi.

In alternativa, è possibile lanciare l''incantesimo su un massimo di 50 frecce, quadrelli o proiettili. Essi devono essere tutti dello stesso tipo e devono essere tutti radunati in gruppo (nella stessa faretra o altro contenitore). I proiettili, ma non le armi da lancio, perdono la loro trasmutazione una volta utilizzati. Considerare gli Shuriken come proiettili, piuttosto che come armi da lancio, ai fini di questo incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/versatile-weapon'
WHERE name = 'Arma Versatile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello (I)',
  saving_throw = 'Riflessi dimezza, vedi testo',
  spell_res = 'sì',
  full_description = ': Questo incantesimo forma un’aura di energia attorno all’incantatore, danneggiando tutti coloro che gli si avvicinano. Scegliere un tipo di energia: acido, elettricità, freddo o fuoco.

Le creature adiacenti, quando viene lanciato questo incantesimo e all’inizio del proprio turno, subiscono 2d6 danni da energia del tipo selezionato. Questa aura ha un effetto aggiuntivo, a seconda del tipo di energia scelto.

• Acido: Le creature interessate dall''aura subiscono 1 danno progressivo da acido ad ogni round per 1 round ogni 3 livelli dell’incantatore e sono inferme per la durata del danno progressivo da acido.

• Elettricità: Le creature interessate dall''aura sono Barcollanti per 1 round.

• Freddo: Le creature interessate dall''aura sono Affaticate. Una creatura già Affaticata non subisce ulteriori effetti.

• Fuoco: Le creature interessate dall''aura Prendono Fuoco.

Alle creature adiacenti all''incantatore è permesso un Tiro Salvezza su Riflessi per dimezzare il danno e negare l’effetto aggiuntivo. Gli effetti aggiuntivi dell’aura non si sommano se una creatura subisce più volte danni dall’aura. Si può avere una sola aura elementale attiva per volta. Quando si lancia questo incantesimo per infliggere danni da acido, elettricità, freddo o fuoco, l’incantesimo è di quel tipo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-aura'
WHERE name = 'Aura Elementale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello (I)',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La coda del bersaglio si muove e agisce rapidamente, come se possedesse una mente propria. Quando effettua un''azione di attacco completo, il bersaglio può utilizzare la propria coda per effettuare una manovra in combattimento Rubare o Sporco Trucco come Azione Veloce. Ai fini di questo attacco, la coda del bersaglio è considerata un''arma naturale con una portata di 1,5 metri. L''incantesimo non ha effetto sulle creature prive di una coda prensile. Se il bersaglio possiede già un attacco aggiuntivo conferito da Velocità o effetti simili, l''incantesimo consente semplicemente alla sua coda di effettuare manovre in combattimento Rubare o Sporco Trucco, senza concedergli alcun attacco ulteriore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/prehensile-pilfer'
WHERE name = 'Borseggio Prensile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'concentrazione, fino a 1 round/livello (I)',
  saving_throw = 'Riflessi parziale, vedi testo',
  spell_res = 'si',
  full_description = ': Si scatena un viticcio di ectoplasma fremente che entra in lotta con una creatura bersaglio o la intralcia. Si deve effettuare un attacco di contatto a distanza per colpire un bersaglio. Se si ha successo, il bersaglio può tentare un Tiro Salvezza su Riflessi. Se lo supera, il bersaglio è Intralciato per il resto della durata dell''incantesimo e non subisce altri effetti. Se il bersaglio fallisce il Tiro Salvezza, il tentacolo è più reattivo, rendendo il bersaglio in lotta e infliggendogli 1d6+4 danni contundenti. Ogni round che ci si concentra per mantenere l''incantesimo, il viticcio effettua una prova di manovra di combattimento di lottare per mantenere la presa. Come di norma quando si è in lotta, il viticcio ottiene bonus +5 alle prove di manovra in combattimento di Lottare contro avversari già in lotta. La BMC del viticcio è pari a 6 + il livello dell''incantatore e la sua DMC è pari a 16 + il livello dell''incantatore. Dato che l''ectoplasma attraversa i piani, questo incantesimo influenza normalmente le creature eteree e incorporee.

Si rimane legati al bersaglio per la durata dell''incantesimo. Su può accorciare o allungare il viticcio, ma se la distanza del bersaglio supera il raggio d''azione dell''incantesimo, il viticcio scompare. Il legaccio ectoplasmatico ha durezza 10 e un numero di Punti Ferita pari a 10 + il livello dell''incantatore + il suo modificatore di Costituzione e può essere danneggiato o reciso ovunque lungo la sua estensione. L''incantatore non è considerato in lotta mentre è legato al bersaglio. Si possono effettuare azioni di movimento o di danno su un bersaglio in lotta, muovendolo fino alla metà della propria velocità e infliggendogli 1d6+4 danni contundenti aggiuntivi superando una prova di manovra in combattimento di Lottare. Non si può immobilizzare il bersaglio.

Fonte: https://www.d20pfsrd.com/magic/all-spells/e/ectoplasmic-snare/'
WHERE name = 'Calappio Ectoplasmatico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si crea un uncino di forza che colpisce il bersaglio e trascina l''incantatore in uno spazio adiacente ad esso. Si effettua un attacco di contatto a distanza contro il bersaglio; se l''attacco di contatto va a segno, il bersaglio subisce 1 danno da forza per livello dell''incantatore. Che l''attacco di contatto vada a segno o meno, l''uncino di forza trascina l''incantatore in linea retta verso un quadretto adiacente al bersaglio. Questo movimento provoca Attacchi d''Opportunità come di norma. L''uncino trainante, come parte di questo movimento, evita che l''incantatore cada; quindi l''incantatore lo può usare per attraversare una fossa o un crepaccio, o per raggiungere una quota superiore o inferiore. Se la linea di effetto tra lui e il bersaglio attraversa un''area che è troppo piccola per il corpo dell''incantatore (come una saracinesca o una feritoia), l''uncino lo trascina in quel punto e l''incantatore subisce danni come se fosse caduto da una distanza pari a quella tra il punto di partenza e quello di arresto. Se si viene trattenuti, come per l''essere incatenati a un muro, l''uncino trascina l''incantatore fino all''estensione massima della restrizione, ma non la rompe.

Se il tragitto verso la destinazione non è ostruito, si atterra sui propri piedi, illesi dal movimento improvviso. L''incantesimo non garantisce, però, un luogo di arrivo sicuro. Per esempio, se il bersaglio sta volando o si trova su una sporgenza senza spazio per lui, una volta che l''uncino lo ha trascinato accanto al bersaglio, l''incantatore comincia a cadere.

Se si usa questo incantesimo con il proprio privilegio di classe incantesimi di combattimento, si può effettuare il proprio attacco in mischia nel punto di partenza o in quello di arrivo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/force-hook-charge'
WHERE name = 'Carica dell''Uncino di Forza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '4,5 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Un cono di dardi d''argento scaturisce dalla mano. Questi dardi funzionano come un''arma d''argento che infligge 1d6 danni perforanti per livello dell''incantatore (massimo 10d6). Le creature con un Bonus di Armatura maggiore di +4 o un Bonus di Armatura Naturale maggiore di +4 subiscono il 50% di danni in meno.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/silver-darts/'
WHERE name = 'Dardi d''Argento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (vedi testo)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si conferisce la natura dell''Adamantio, del Ferro Freddo o dell''Argento alle armi toccate, in base alla componente usata, con i seguenti effetti.

• Adamantio: Le armi superano RD/Adamantio e ignorano Durezza inferiore a 20.

• Argento: Le armi superano RD/Argento.

• Ferro Freddo: Le armi superano RD/Ferro Freddo.

Non si applicano altri vantaggi o svantaggi di questi tipi di metallo. Per esempio, un''arma a cui è conferita la natura dell''Adamantio non è automaticamente perfetta.

Questo incantesimo può influenzare armi non di metallo. Se si conferisce alle armi bersaglio la proprietà del Ferro Freddo, l''incantesimo dura la metà del normale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/heart-of-the-metal/'
WHERE name = 'Cuore del Metallo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Si creano uno o più dardi di energia negativa infusi delle ombre strappate al Piano delle Ombre. È possibile lanciare un dardo, più un dardo aggiuntivo ogni quattro livelli oltre il 5° (fino a un massimo di tre dardi al 13° livello), contro lo stesso bersaglio o bersagli diversi, ma tutti i dardi devono essere lanciati a bersagli che si trovano entro 9 m l''uno dall''altro e richiedono un attacco di contatto a distanza per colpire. Ogni dardo infligge 4d6 danni a una creatura vivente, oppure cura 4d6 danni a una creatura non morta. In aggiunta, l''energia del dardo si distribuisce sulla pelle della creatura, con la possibilità di accecarla un breve periodo. Qualsiasi creatura colpita da un dardo deve superare un Tiro Salvezza su Riflessi o diventa Accecata per 1 round. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/gloomblind-bolts'
WHERE name = 'Dardi di Tenebra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '1 round/livello (I)',
  saving_throw = 'Volontà nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto appare a circa 60 cm di distanza dalla sua reale posizione. Ottiene il beneficio di una probabilità del 50% di essere mancato, come se avesse Occultamento Totale, ma a differenza di un vero Occultamento Totale, distorsione non impedisce ai nemici di mirarlo normalmente. Visione del Vero rivela la sua locazione effettiva.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/displacement'
WHERE name = 'Distorsione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = '0 m',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si evoca una creatura Grande semi reale simile a un cavallo, il colore della quale può essere personalizzato rispettando le indicazioni base. Il destriero può essere cavalcato solo dall''incantatore o dalla persona per la quale è stato specificamente creato. Un destriero fantomatico ha la testa e il corpo neri, la criniera e la coda grigie e zoccoli immateriali che non fanno alcun rumore. Possiede una sorta di briglie, una sella e un morso. La cavalcatura non combatte, ma gli Animali la evitano e si rifiutano di attaccarla.

La cavalcatura ha CA 18 (+4 Armatura Naturale, +5 Destrezza, -1 taglia) e 7 Punti Ferita +1 Punto Ferita per livello dell''incantatore. Una volta persi tutti i suoi Punti Ferita, il destriero fantomatico scompare. Il destriero ha una velocità di 6 metri ogni 2 livelli dell''incantatore, fino a un massimo di 30 metri al 10° livello. Può trasportare il peso del suo cavaliere più 5 kg per livello dell''incantatore.

A seconda del livello dell''incantatore, la creatura guadagna poteri speciali. Le capacità di una cavalcatura comprendono quelle delle cavalcature di livello dell''incantatore più basso.

• 8° livello: La cavalcatura può muoversi su terreni sabbiosi, fangosi e persino paludosi senza alcuna difficoltà o riduzione di velocità.

• 10° livello: La cavalcatura può utilizzare Camminare sull''Acqua a volontà (come l''incantesimo, non è richiesta alcuna azione per attivare la capacità).

• 12° livello: La cavalcatura può utilizzare Camminare nell''Aria a volontà (come l''incantesimo, non è richiesta alcuna azione per attivare la capacità) fino a 1 round alla volta, dopo il quale scende al suolo.

• 14° livello: La cavalcatura può Volare alla sua normale velocità con un bonus alla prova di Volare pari al proprio livello dell''incantatore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/phantom-steed'
WHERE name = 'Destriero Fantomatico';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo, oggetto)',
  full_description = ': Questo incantesimo è in grado di rendere un’arma magicamente Affilata, aumentando la sua capacità di infliggere colpi ben assestati. Questa trasmutazione raddoppia l’intervallo di minaccia dell’arma. Un intervallo di minaccia di 20 diventa 19–20, un intervallo di minaccia di 19–20 diventa 17–20 e un intervallo di minaccia di 18–20 diventa 15–20. Questo incantesimo può essere lanciato solo su armi perforanti o taglienti. Se viene lanciato su frecce o quadrelli, estremità affilata su un proiettile particolare termina dopo un utilizzo, che colpisca o meno il bersaglio. Considerate gli Shuriken come frecce, piuttosto che come armi da lancio, ai fini di questo incantesimo.

Effetti multipli che aumentano l’intervallo di minaccia di un’arma (come la capacità Affilata e il talento Critico Migliorato) non si cumulano. Non è possibile lanciare questo incantesimo su un’arma naturale, come un artiglio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/k/keen-edge'
WHERE name = 'Estremità Affilata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '1 ora/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si crea una bella carrozza di legno con tutti gli abbellimenti estetici che si desiderano. È ben costruita, anche se non particolarmente appariscente. La carrozza può trasportare fino a sei passeggeri Medi o Piccoli. Quando viene evocata, la carrozza viene fornita con una squadra di due cavalli leggeri quasi reali, che sono già imbrigliati nella carrozza. Al vostro comando, un cocchiere Invisibile simile a Servitore Inosservato può assumere il ruolo di autista e dirigere la carrozza, anche se non può eseguire una guida complessa o pericolosa e fallisce qualsiasi prova di guida in tali condizioni. Al termine della durata dell''incantesimo, la carrozza, i cavalli e il cocchiere scompaiono nel nulla, depositando a terra nel suo spazio tutto ciò che si trova su di essa o al suo interno. 

Fonte: Conjure Carriage'
WHERE name = 'Evoca Carrozza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una qualsiasi creatura di Taglia Piccola o Media di Tipo Umanoide Mostruoso. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Fiuto, Nuotare 9 metri, Scalare 9 metri, Scurovisione 18 metri, Visione Crepuscolare e Volare 9 metri (manovrabilità media). Se la forma che si assume possiede il Sottotipo Acquatico si ottengono i Sottotipi Acquatici e Anfibio.

• Umanoide Mostruoso di Taglia Piccola: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Piccola, si ottiene bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Media: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Media, si ottiene bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/monstrous-physique-i'
WHERE name = 'Fisico Mostruoso I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una creatura del Tipo Animale di taglia piccola o media. Se questa forma ha una delle seguenti capacità, si ottiene anche la capacità indicata: Fiuto, Nuotare 9 m, Scalare 9 m, Scurovisione 18 m, Visione Crepuscolare e Volare 9 m (manovrabilità media).

• Animale Piccolo: Se la forma è quella di un animale di taglia Piccola, si ottiene Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Animale Medio: Se la forma è quella di un animale di taglia Media, si ottiene Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/beast-shape'
WHERE name = 'Forma Ferina I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione veloce',
  range = 'personale',
  duration = 'vedi testo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Fino al termine del proprio turno si ottiene bonus +6 metri alla velocità (o bonus +3 metri se si indossa un''armatura Media o Pesante), il proprio movimento non provoca Attacchi d''Opportunità e ci si può muovere attraverso lo spazio di creature più grandi, ma non si può terminare il movimento di questo round in uno spazio occupato da una creatura. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/burst-of-speed'
WHERE name = 'Esplosione di Velocità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '2 minuti/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Il soggetto, assieme a tutto il suo Equipaggiamento, diventa inconsistente, nebuloso e traslucido. La sua armatura materiale (compresa l''Armatura Naturale) diventa inutile, anche se tutti i bonus per Taglia, Destrezza, Deviazione e i Bonus di Armatura per effetti di Forza permangono. La creatura ottiene RD 10/magia e diventa immune al Veleno, agli Attacchi Furtivi e ai colpi critici; non è in grado di attaccare o lanciare incantesimi che necessitino di componenti verbali, somatiche, materiali o componenti focus finché rimane in Forma Gassosa. Questo non esclude alcuni incantesimi che il soggetto potrebbe aver preparato usando i talenti Escludere Materiali, Incantesimi Immobili ed Incantesimi Silenziosi. Il soggetto perde anche le sue Capacità Soprannaturali finché rimane in Forma Gassosa. Se ha un incantesimo di contatto pronto da usare, questo viene scaricato in modo innocuo quando Forma Gassosa ha effetto.

La creatura gassosa non può correre, ma può Volare a una velocità di 3 metri superando automaticamente tutte le prove di Volare ed è in grado di passare attraverso piccoli fori o varchi, perfino tra le fessure, con tutto ciò che indossa o tiene in mano finché l''incantesimo permane. È vulnerabile agli effetti del vento e non può entrare in acqua o in altri liquidi. Inoltre, non può manipolare o attivare oggetti, neppure quelli trasportati insieme alla sua Forma Gassosa. Gli oggetti che sono attivi continuamente rimangono attivi, anche se in alcuni casi i loro effetti potrebbero essere dubbi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/g/gaseous-form'
WHERE name = 'Forma Gassosa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si rendono delle normali munizioni (come frecce, quadrelli, Shuriken e pietre) proiettili infuocati. Ogni munizione infligge 1d6 danni da fuoco aggiuntivi a qualsiasi bersaglio colpito. Un proiettile infuocato può facilmente incendiare un oggetto o una struttura infiammabile, ma non riuscirà a far Prendere Fuoco a una creatura.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/flame-arrow'
WHERE name = 'Freccia Infuocata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si vomita una disgustosa copia di fluido viscoso di se stessi in un quadretto adiacente. Finché esiste, ogni volta che l''incantatore effettua un''azione di movimento, il gemello può spostarsi a sua volta, sebbene non sia necessario che segua la direzione presa dall''incantatore e non possa effettuare altre azioni. Nei round successivi, all''inizio del turno dell''incantatore, questi può scambiarsi di posto istantaneamente con il suo gemello, come se utilizzasse Teletrasporto. Questa non è un''azione e non provoca Attacchi d''Opportunità. 

Il gemello ha una velocità di movimento di 9 metri e provoca Attacchi d''Opportunità come di norma. Ha una CA pari a 10 + 1/2 del livello dell''incantatore e un numero di punti ferita pari al livello dell''incantatore. Se il gemello viene ridotto a 0 Punti Ferita, è distrutto, sebbene l''incantatore possa crearne uno nuovo nel suo turno come azione standard, finché la durata dell''incantesimo persiste. Non è possibile avere più di un gemello di vomito per volta. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/vomit-twin'
WHERE name = 'Gemello di Vomito';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '36 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Si genera una potente scarica di energia elettrica che infligge 1d6 danni da elettricità per livello dell’incantatore (massimo 10d6) ad ogni creatura presente all’interno dell’area. Il fulmine scaturisce dalla punta delle proprie dita.

Il fulmine incendia qualsiasi combustibile e danneggia qualunque oggetto sulla sua strada. È in grado di sciogliere i metalli con un basso punto di fusione come il piombo, l’oro, il rame, l’argento e il bronzo. Se il danno causato ad una barriera sulla traiettoria del fulmine è sufficiente a distruggerla o a farlo passare, il fulmine proseguirà se il raggio di azione dell’incantesimo lo permette; altrimenti si fermerà come qualsiasi altro effetto magico.

Nota: questo incantesimo non può innescare un incendio su una nave.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/lightning-bolt'
WHERE name = 'Fulmine';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '6 m',
  duration = 'Concentrazione, fino a 1 round/livello',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Un improvviso getto di fuoco scaturisce dalla mano aperta dell''incantatore, infliggendo 2d6 danni da fuoco a ogni creatura nell''area. Per ogni round in cui mantiene la Concentrazione sull''incantesimo, l''incantatore può scegliere una nuova area da influenzare.

Getto di Fuoco incendia le sostanze combustibili e danneggia gli oggetti presenti nell''area. Può fondere i metalli con basso punto di fusione, come piombo, oro, rame, argento e bronzo, Se il danno inflitto a una barriera interposta ne causa la distruzione o la attraversa, il getto di fuoco può continuare oltre, se l''area lo consente, altrimenti si arresta contro la barriera, come qualsiasi altro effetto di un incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/firestream'
WHERE name = 'Getto di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'Concentrazione + 3 round',
  saving_throw = 'Volontà dubita (se si interagisce)',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea l''illusione visiva di un oggetto, di una creatura o di una forza, come la si visualizza comprensiva di suoni, crea odori, sensazioni tattili o di temperatura. 

Concentrandosi è possibile muovere l''immagine entro il raggio di azione. L''immagine scompare se viene colpita da un avversario, a meno che non la si faccia reagire nel modo appropriato.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/major-image'
WHERE name = 'Immagine Maggiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': L’incantesimo permette di sfasarsi alternativamente tra il Piano Materiale e il Piano Etereo. In apparenza sembra che si stia lampeggiando dentro e fuori dalla realtà molto rapidamente e a intervalli casuali.

Intermittenza ha diversi effetti: gli attacchi fisici contro l’incantatore hanno una probabilità del 50% di mancare il bersaglio e il talento Combattere alla Cieca non è di alcun aiuto per gli avversari, dal momento che si è eterei e non soltanto Invisibili. 

Se chi attacca è in grado di vedere creature Invisibili, la probabilità di mancare il bersaglio è comunque del 20%. (Se chi attacca è in grado sia di vedere che di colpire creature Eteree, non c’è alcuna probabilità di mancare il bersaglio). Analogamente, i propri attacchi hanno una probabilità del 20% di mancare il bersaglio, in quanto a volte si diventa eterei proprio quando si sta per colpire.

Gli incantesimi con bersaglio individuale e lanciati mentre si è soggetti a intermittenza hanno una probabilità del 50% di fallire, a meno che chi li lancia non sia in grado di colpire creature Eteree Invisibili. I propri incantesimi hanno una probabilità del 20% di attivarsi proprio nel momento in cui si diventa Eterei, nel qual caso normalmente non hanno effetto sul Piano Materiale (ma potrebbero avere effetto su dei bersagli nel Piano Etereo).

Mentre si è sotto l’effetto di Intermittenza, si subiscono solo danni dimezzati da attacchi ad area (ma danni completi da quelli che si estendono anche sul Piano Etereo). Sebbene si sia solo parzialmente visibili, non si è considerati Invisibili e i bersagli mantengono il loro bonus di Destrezza alla CA contro i propri attacchi. Inoltre, si riceve bonus +2 ai Tiri per Colpire effettuati contro nemici che non sono in grado di vedere creature Invisibili.

Si subiscono solo danni dimezzati dalle cadute, in quanto si cade solo quando si è materiali.

Quando si è sotto l’effetto di Intermittenza, si è in grado di attraversare (ma non di vedere attraverso) gli oggetti solidi. Per ogni 1,5 metri di materiale solido che si attraversa, c’è una probabilità del 50% che si ridiventi materiali nel farlo. Se si verifica questa possibilità, si viene spinti via verso il più vicino spazio libero e si subiscono 1d6 danni ogni 1,5 metri attraversati in questo modo.

Trascorrendo metà del tempo sul Piano Etereo, si è in grado di vedere e anche attaccare creature Eteree. Si interagisce con loro circa nello stesso modo con cui si può interagire con quelle materiali.

Una creatura Eterea è Invisibile, Incorporea e in grado di muoversi in qualsiasi direzione, compreso in alto o in basso. Come una creatura Incorporea, si è in grado di muoversi attraverso oggetti solidi, comprese le altre creature viventi.

Una creatura Eterea può vedere e udire il Piano Materiale, ma tutto ha un aspetto grigiastro e inconsistente. La vista e l’udito sul Piano Materiale sono limitati a 18 metri.

Si è influenzati normalmente da effetti di forza e dalle Abiurazioni. I loro effetti si estendono sul Piano Etereo dal Piano Materiale, ma non viceversa. Una creatura Eterea non può attaccare le creature materiali, e gli incantesimi lanciati in forma eterea hanno effetto solo su altre cose eteree. Alcuni oggetti o creature materiali sono dotati di attacchi o effetti che funzionano anche sul Piano Etereo. Trattate le altre creature Eteree e gli oggetti eterei come se fossero materiali.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/blink'
WHERE name = 'Intermittenza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si possono percepire i punti deboli dei nemici, infliggendo danni maggiori con i colpi critici. Ogni volta che si mette a segno un colpo critico, si tira due volte il dado per i danni dell''attacco (ma non i danni extra o di precisione) e si tiene il risultato migliore.

Fonte: http://www.d20pfsrd.com/magic/all-spells/l/locate-weakness'
WHERE name = 'Localizzare Debolezza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Volontà nega',
  spell_res = 'sì',
  full_description = ': Le creature influenzate si muovono e attaccano a un ritmo estremamente rallentato. Le creature soggette a Lentezza possono compiere solo una singola azione di movimento o un''azione standard ogni turno, ma non entrambe (né possono compiere azioni di round completo). Subiscono inoltre penalità –1 ai Tiri per Colpire, alla CA e ai Tiri Salvezza su Riflessi. Le creature soggette a lentezza si muovono a velocità dimezzata rispetto al normale (arrotondata per difetto al successivo incremento di 1,5 metri) con le normali conseguenze per la capacità di salto della creatura.

Molteplici effetti di Lentezza non si sommano. Lentezza contrasta e dissolve Velocità.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/slow'
WHERE name = 'Lentezza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega',
  spell_res = 'no',
  full_description = ': Dal punto indicato scaturisce ribollendo una banco di nebbia. La nebbia oscura ogni visuale, compresa la Scurovisione, oltre 1,5 metri. Una creatura che si trova entro un raggio di 1,5 metri gode di Occultamento (gli attacchi hanno una probabilità del 20% di mancare il bersaglio). Le creature che si trovano oltre i 1,5 metri godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e chi attacca non è in grado di usare la sua vista per localizzare il bersaglio). 

I suoi vapori sono nauseanti. Le creature viventi all''interno della nube sono Nauseate. Questa condizione dura finché la creatura rimane all''interno della nube, e per 1d4+1 round dopo che ne è uscita. (Tirare separatamente per ogni personaggio nauseato). Chi supera il Tiro Salvezza ma rimane all''interno della nube deve continuare ad effettuarlo ogni round nel turno dell’incantatore. Questo è un effetto di veleno.

Un vento moderato (16,5 o più km/h) disperde la nebbia in 4 round; un vento forte (31,5 o più km/h) la disperde in 1 round.

Nube Maleodorante può essere reso permanente con un incantesimo Permanenza. Una Nube Maleodorante permanente che viene dispersa dal vento si riforma in 10 minuti.

Questo incantesimo non funziona sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stinking-cloud'
WHERE name = 'Nube Maleodorante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m',
  duration = 'istantanea e 1 round',
  saving_throw = 'Riflessi nega, Tempra nega (vedi testo)',
  spell_res = 'no',
  full_description = ': Si creano travolgenti fiumi di sangue per allontanare i nemici da sé. L''ondata effettua una Manovra in Combattimento di Spingere contro tutte le creature nell''area di effetto, senza distinzione di Taglia. Si effettua una singola prova di Manovra in Combattimento e se ne applica il risultato a ciascuna creatura nell''area. Il BMC per Spingere è pari al proprio livello dell''incantatore più il proprio modificatore di Intelligenza, Saggezza o Carisma, quale sia il più alto. La manovra non provoca Attacchi di Opportunità. Ogni creatura nell''area deve superare un Tiri Salvezza su Tempra o diventa Inferma per 1d6 round a causa dell''ondata di sangue. 

L''area coperta dal cono rimane scivolosa per 1 round, costringendo le creature che tentano di muoversi all''interno a superare una prova di Acrobazia con CD 10 (come se si spostassero su terreno irregolare). Le creature che cadono Prone in conseguenza del fallimento della prova devono superare un Tiri Salvezza su Tempra o diventano Inferme finché non si rialzano. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/w/waves-of-blood/'
WHERE name = 'Onde di Sangue';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round',
  saving_throw = NULL,
  spell_res = 'si (oggetto)',
  full_description = ': Tutte le creature nell''area ottengono un bonus +4 ai Tiri Salvezza contro gli effetti di teletrasporto. Se una creatura entra o esce dall''area tramite un effetto di Evocazione o teletrasporto, subisce 1d6 danni per livello di incantesimo dell''effetto scatenante (o metà della DV della creatura originaria se l''effetto non ha livello di incantesimo) e arriva in un luogo simile casuale all''interno del raggio d''azione dell''effetto scatenante, anziché nella destinazione prevista.

Un tiro salvezza su Volontà riuscito dimezza i danni e annulla la destinazione alterata.

Fonte: Conjuration Foil'
WHERE name = 'Ostacolare Evocazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si stabilisce una connessione magica tra due porte (o altri portali fisici, come le finestre) che devono trovarsi entrambe nel raggio d''azione, nella linea di vista e nella linea d''effetto. Durante la durata dell''incantesimo, è possibile passare attraverso uno dei due portali. Quando lo si fa, ci si teletrasporta nell''altro portale, uscendo in entrambe le direzioni. Entrambi i portali devono essere aperti e non ostruiti quando si lancia l''incantesimo e si entra nel primo portale, ed entrambi devono essere abbastanza grandi da poterci passare, altrimenti l''incantesimo termina e il teletrasporto fallisce. Si possono portare con sé oggetti, purché il loro peso complessivo non superi il carico massimo.

Non si possono portare con sé altre creature, e le altre creature che attraversano i portali non si teletrasportano. Una volta attraversato, l''incantesimo termina e non si possono compiere altre azioni fino al turno successivo.

Fonte: Urban Step'
WHERE name = 'Passo Urbano';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Un incantesimo Palla di Fuoco genera una sfera infuocata che esplode con un sordo boato e infligge 1d6 danni da fuoco per livello dell''incantatore (massimo 10d6) a tutte le creature presenti nell''area. Anche gli oggetti incustoditi subiscono questi danni. L''esplosione genera pochissima pressione.

Si punta il dito per indicare il raggio di azione (la distanza e l''altezza) in cui la palla di fuoco deve esplodere. Una perla scintillante delle dimensioni di una biglia parte dal dito indice e, a meno che non si scontri con un corpo o con una barriera solida prima di aver raggiunto il punto d''impatto, cresce fino a diventare una Palla di Fuoco in quel punto. Un impatto prematuro dà luogo ad una detonazione anticipata. Se si tenta di far passare la sfera attraverso un passaggio stretto come una feritoia per frecce, bisogna “colpire” il passaggio con un attacco di contatto a distanza, altrimenti la sfera si scontra con la barriera ed esplode prematuramente.

La Palla di Fuoco incendia eventuali materiali combustibili e danneggia gli oggetti presenti nell''area. Può fondere dei metalli a basso punto di fusione come il piombo, l''oro, il rame, l''argento o il bronzo. Se i danni causati a una barriera interposta hanno l''effetto di distruggerla o di frammentarla, la Palla di Fuoco può propagarsi oltre, se l''area lo permette, altrimenti si ferma contro la barriera come l''effetto di qualsiasi altro incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fireball'
WHERE name = 'Palla di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': Questo incantesimo carica la mano dell''incantatore di forza telecinetica. L''attacco di contatto in mischia infligge 1d4 danni da Forza per livello (massimo 10d4) e spinge via il bersaglio in linea retta fino a 1,5 metri ogni due livelli dell''incantatore.

Per ogni categoria di Taglia del bersaglio superiore a Media, si riduce la distanza della spinta di 1,5 metri (1,5 metri per Grande, 3 metri per Enorme, 4,5 metri per Mastodontica e 6 metri per Colossale) fino a un minimo di 0 m. Un Tiro Salvezza su Tempra superato nega il movimento ma non il danno. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/force-punch'
WHERE name = 'Pugno di Forza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra parziale',
  spell_res = 'sì',
  full_description = ': Un raggio nero viene proiettato dal proprio dito puntato. Occorre effettuare con successo un attacco di contatto a distanza con il raggio per colpire il bersaglio.

Il soggetto risulta immediatamente Esausto per tutta la durata dell''incantesimo. Un Tiro Salvezza su Tempra riuscito significa che la creatura è solo Affaticata.

Una creatura già Affaticata diventa Esausta.

Questo incantesimo non ha effetto sulle creature già Esauste. A differenza del normale Affaticamento o Esaurimento, l''effetto ha fine al termine della durata dell''incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/ray-of-exhaustion'
WHERE name = 'Raggio di Esaurimento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = 'nessuno (vedi testo)',
  spell_res = 'sì',
  full_description = ': Questo incantesimo crea una riserva magica di castigo che un incantatore può rilasciare con sensazionale velocità.

Lanciando questo incantesimo, i danni degli attacchi in mischia e degli incantesimi di contatto vengono trasferiti in una riserva speciale che poi si reindirizza prima che la durata dell''incantesimo termini.

Ogni volta che si viene colpiti da un attacco in mischia o un attacco di contatto che infligge danni ai Punti Ferita, 1 danno viene negato e
trasferito alla riserva creata da questo incantesimo. I punti totali della riserva non possono superare il proprio livello dell''incantatore (fino a un massimo di 20 punti al 20° livello). Come azione immediata, in qualunque momento prima che la durata dell''incantesimo termini, si può spendere un certo numero di punti della riserva, ottenendo un Bonus Cognitivo a una Prova di Abilità, un Tiro per Colpire, un tiro per i danni o una prova di Manovra in Combattimento, ma bisogna farlo prima di tirare il dado. Questo bonus è pari al numero di punti della riserva spesi. Per ogni cinque livelli dell''incantatore, si è in grado di fare affidamento sulla riserva una volta addizionale (massimo di quattro volte al 15° livello).

Se si viene ridotti a Punti Ferita negativi mentre si è sotto l''effetto di questo incantesimo, esso rilascia automaticamente la potenza magica rimanente nella riserva in una concussiva esplosione di forza. Tutte le creature in un raggio di 4,5 metri subiscono 1d6 danni da Forza ogni 2 punti restanti nella riserva (massimo 10d6). Un Tiro Salvezza su Riflessi riuscito dimezza questi danni, e la Resistenza agli Incantesimi si applica a questo effetto. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/resilient-reservoir'
WHERE name = 'Riserva di Resistenza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Quando si lancia questo incantesimo, del liquido infiammabile trasuda dai propri pori, sgocciolando sul terreno e prendono fuoco spontaneamente. Le fiamme non danneggiano l''incantatore. Per la durata dell''incantesimo, ogni volta che abbandona lo spazio che occupa, l''incantatore crea una scia di fuoco che brucia negli spazi attraverso i quali si è spostato per 1 round, prima di estinguersi. E'' possibile lasciare una traccia infuocata lunga fino a 18 metri ogni round, presumendo che si sia di Taglia Piccola o Media. Se si è di Taglia superiore a Media, la lunghezza massima della scia viene ridotta in funzione della Taglia. Se si è di Taglia Grande, si può lasciare una scia lunga fino a 9 metri (e larga 3 metri), mentre se si è di Taglia Enorme si può lasciare una scia lunga 4,5 metri (e larga 4,5 metri); gli incantatori di Taglie maggiori possono lasciare solo una scia lunga fino a 3 metri (e larga quanto lo spazio da loro occupato) in ciascun round. Si sceglie dove lasciare la scia infuocata.

Le creature che iniziano il turno adiacenti ad una scia infuocata subiscono 1d6 danni da fuoco. Le creature che iniziano il turno all''interno della scia infuocata o entrano nell''area infuocata subiscono un numero di danni da fuoco pari a 1d6 + 1 per livello dell''incantatore (massimo +10). Se una creatura si muove più volte all''interno di un''area di fiamme nel corso di un round, subisce questo danno ogni volta che entra nell''area occupata dalla scia infuocata. Gli oggetti infiammabili, all''interno della scia infuocata o adiacenti ad essa, prendono fuoco. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-trail'
WHERE name = 'Scia Infuocata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello',
  saving_throw = 'Tempra nega (innocuo)',
  spell_res = 'sì (innocuo)',
  full_description = ': La creatura trasmutata si muove e agisce più velocemente del normale. Questa velocità aggiuntiva ha diversi effetti.

Quando compie un''azione di attacco completo, una creatura può effettuare un attacco aggiuntivo con un''arma naturale o manufatta. L''attacco viene compiuto usando il Bonus di Attacco Base pieno della creatura, più eventuali modificatori appropriati alla situazione. (Questo effetto, non si somma ad effetti analoghi come quelli concessi da un''arma della Velocità, e non concede di fatto un''azione aggiuntiva, quindi non può essere usato per lanciare un secondo incantesimo o intraprendere un''altra azione aggiuntiva all''interno del round).

Una creatura velocizzata ottiene bonus +1 ai Tiri per Colpire e Bonus di Schivare +1 alla CA e ai Tiri Salvezza su Riflessi. Qualsiasi condizione che provoca la perdita del bonus di Destrezza alla Classe Armatura (se presente) provoca la perdita anche di questi Bonus di Schivare.

Tutti i movimenti delle creature velocizzate (compreso il movimento sul terreno, Nuotare, Scalare e Volare) aumentano di 9 metri, fino a un massimo pari al doppio della velocità normale del soggetto. Questo incremento viene considerato Bonus di Potenziamento, e influenza la distanza di salto della creatura come è normale in base all''incremento di velocità. Molteplici effetti di Velocità non sono cumulativi. Velocità contrasta e dissolve Lentezza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/h/haste'
WHERE name = 'Velocità';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo fa scintillare di blu gli occhi e consente di vedere aure magiche entro un raggio di 36 metri. L''effetto è simile a quello dell''incantesimo Individuazione del Magico, ma non richiede Concentrazione e permette di svelare la posizione e la potenza delle aure più rapidamente.

Si conosce la posizione e la potenza di tutte le aure magiche entro il proprio raggio visivo. La potenza di un''aura dipende dal livello di funzionamento dell''incantesimo oppure dal livello dell''incantatore di un oggetto, come indicato nella descrizione dell''incantesimo Individuazione del Magico. Se gli oggetti o le creature dotate dell''aura sono nella linea di visuale, si possono effettuare prove di Sapienza Magica per determinare la scuola di magia coinvolta in ognuna. (Effettuare una prova per aura; CD 15 + livello dell''incantesimo, o 15 + metà del livello dell''incantatore per un effetto che non sia un incantesimo).

Incantesimo o Oggetto

Potere dell''Aura

Debole

Moderata

Forte

Schiacciante

Incantesimo Attivo (livello dell''incantesimo)

3° o meno

4°–6°

7°–9°

10°+ (divinità-livello)

Oggetto Magico (livello dell''incantatore)

5° o meno

6°–11°

12°–20°

21°+ (artefatto)

Forza Originaria

Durata del Protrarsi dell''Aura

Debole

1d6 round

Moderata

1d6 minuti

Forte

1d6 x 10 minuti

Schiacciante

1d6 giorni

Se ci si concentra su una creatura specifica entro 36 metri con un''azione standard, si è in grado di determinare se possiede la capacità di lanciare incantesimi o una qualche capacità magica, se si tratta di capacità arcane o divine (le Capacità Magiche sono considerate arcane), e la forza dell''incantesimo o capacità magica più potente attualmente a disposizione di quella creatura.

Come per Individuazione del Magico, si può usare Vista Arcana per identificare le proprietà degli Oggetti Magici, ma non degli Artefatti.

Vista Arcana può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/arcane-sight'
WHERE name = 'Vista Arcana';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo/1 ora',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Bisogna compiere con successo un attacco di contatto in mischia. Così facendo il proprio tocco infligge 1d6 danni ogni 2 livelli dell’incantatore (massimo 10d6). Si ottengono in questo modo tanti Punti Ferita Temporanei quanti sono i danni inflitti. Tuttavia, non si può ottenere più dei Punti Ferita attuali del soggetto + il punteggio di Costituzione del soggetto (vale a dire la quantità necessaria ad ucciderlo). I Punti Ferita Temporanei scompaiono 1 ora dopo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/vampiric-touch'
WHERE name = 'Tocco del Vampiro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'contatto',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = 'sì (innocuo)',
  full_description = ': Il soggetto di questo Incantesimo è in grado di Volare a una velocità di 18 metri (12 metri se indossa un''Armatura Media o Pesante, o se porta un carico medio o pesante). Il soggetto è in grado di Volare verso l''alto a velocità dimezzata e di scendere in picchiata al doppio della velocità, e la sua manovrabilità è buona. Usare l''Incantesimo Volare richiede tanta Concentrazione quanta camminare, quindi il soggetto in volo può attaccare o lanciare Incantesimi normalmente. Il soggetto può Caricare ma non può Correre e non può portare su di sé un peso superiore al suo carico massimo consentito in aggiunta all''Armatura che indossa. Ottiene un bonus alle prove di Volare uguale alla metà del proprio livello dell''incantatore.

Se l''Incantesimo giunge al termine mentre il soggetto è ancora in aria, la Magia svanisce gradualmente. Il soggetto scende di 18 metri per round per 1d6 round. Se tocca terra entro quel lasso di tempo, atterra incolume. In caso contrario, cade per la distanza rimanente, procurandosi un Danno da caduta pari a 1d6 ogni 3 metri di caduta. Dal momento che dissolvere un Incantesimo significa porvi fine, il soggetto cade in questo modo anche se Volare viene dissolto, ma non se viene negato da un Campo Antimagia.

FAQ &#160;

Quando un personaggio o una creatura sta volando e la creatura decide di salire di 45 gradi, le regole stabiliscono che si muove a velocità dimezzata? Le regole per il conteggio del movimento in diagonale si applicano ancora quando ci si sposta diagonalmente in questo modo?

No. Dal momento che il gioco è generalmente assunto per essere giocato in due dimensioni, anche quando si rappresenta il combattimento tridimensionale, le regole per l''ascensione sono gestite attraverso la riduzione della velocità anziché chiedere ai giocatori e ai GM di accertarsi del movimento verticale in diagonale.
[Fonte]

FAQ &#160;

Può una creatura Paralizzata o Stordita continuare a volare con volo magico? Una creatura con volo magico, poiché possiede una velocità di volare non "naturale", applica o meno bonus e penalità alle prove di Volare? Volare rende una creatura immune dall''essere Impreparata?

No, nessuna creatura che perde tutte le azioni può intraprendere un''azione per tentare una prova di Volare per posizionarsi e quindi cade automaticamente. Ciò include creature Paralizzate, Stordite o Frastornate. Il volo magico agisce nello stesso modo, anche per la Paralisi, in quanto non è un''azione puramente mentale. Una creatura con Destrezza pari a 0 non può volare, e Paralisi riduce la Destrezza di una creatura a 0. Nonostante l''Abilità Volare affermi che i bonus e le penalità relativi alla manovrabilità si applichino a creature con una velocità naturale di volare, si applicano anche a qualsiasi altra velocità di volo. Se non si applicassero a creature che hanno ottenuto il volo artificialmente o per magia, allora quelle manovrabilità (come la manovrabilità buona elencata per l''incantesimo Volare) non avrebbero alcun effetto di gioco. Infine, l''affermazione "Non si considera Impreparato in volo" significa che il volo (a differenza del bilanciamento necessario per le Abilità Acrobazia o Scalare) non rende automaticamente Impreparato o obbliga a perdere il proprio bonus di Destrezza alla CA; ciò non significa che il volo renda immune dall''essere Impreparato. [Fonte]

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fly'
WHERE name = 'Volare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'lungo (120 metri + 12 m/livello)',
  duration = NULL,
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Allucinazione Audiovisiva, ma il fantasma creato può includere anche effetti olfattivi, tattili e termici.

Fonte: Complex Hallucination'
WHERE name = 'Allucinazione Complessa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istataneo',
  saving_throw = 'Volontà dubita, poi Tempra parziale',
  spell_res = 'si',
  full_description = ': Si crea l’immagine illusoria della creatura più spaventosa che il soggetto riesca a immaginare, dando semplicemente forma alle peggiori paure presenti nel suo subconscio e materializzandole in una forma che il suo lato conscio possa percepire: mostro terrificante. Solo il soggetto dell’incantesimo è in grado di vedere l’allucinazione mortale; gli altri, sé compresi, vedono solamente una sagoma vaga. Il soggetto per prima cosa ottiene un Tiro Salvezza su Volontà per accorgersi che l’immagine non è reale. Se fallisce, l''illusione tocca il soggetto, deve superare un Tiro Salvezza su Tempra oppure muore di Paura. Anche se il Tiro Salvezza su Tempra riesce, il soggetto subisce comunque 3d6 danni.

Se il soggetto dell’Allucinazione Mortale riesce a non farsi ingannare dall’allucinazione e possiede una forma di telepatia o sta indossando un Elmo della Telepatia, potrebbe riuscire a volgere la creatura contro l’incantatore. A quel punto si dovrà dubitare dell’allucinazione per non essere colpiti dal suo terribile attacco mortale.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/phantasmal-killer'
WHERE name = 'Allucinazione Mortale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = 'Riflessi dimezza (speciale, vedi sotto)',
  spell_res = 'no (speciale, vedi sotto)',
  full_description = ': I pugnali che fungono da focus per questo incantesimo diventano mortalmente affilati mentre si animano e ruotano attorno all''incantatore, creando un''emanazione del raggio di 1,5 metri di lame rotanti in mithral che si muovono con lui. Tutte le creature che iniziano il loro turno nell''area delle lame rotanti subiscono 1d4 danni ogni due livelli dell''incantatore (massimo 10d4 al 20° livello) e il danno supera RD/argento.

Inoltre, i pugnali difendono da alcuni attacchi, nello stesso modo dell''incantesimo Arma Protettiva. Quando si è soggetti a questo incantesimo, non si provocano Attacchi d''Opportunità per lanciare incantesimi, anche da creature con il talento Dirompente. Le creature con il talento Spezzaincantesimi possono facilmente superare questa proprietà difensiva, anche se subiscono comunque danni dall''Incantesimo. Il lancio (anche in caso di fallimento nel lancio sulla difensiva) provoca comunque Attacchi d''Opportunità da parte di creature con quel talento. 

Infine, le lame che fungono da focus per questo incantesimo possono essere incantate per effetti maggiori. Quando tutte le lame condividono lo stesso Bonus di Potenziamento e le stesse capacità speciali, una creatura danneggiata da questo incantesimo è anche considerata colpita da una di queste armi. Per esempio, se un Magus di 12° livello che lancia questo incantesimo usa come focus quattro pugnali di mithral Gelidi +1, il danno inferto dalle lame sarebbe 6d4+1 più 1d6 danni da freddo, purché ai pugnali venga imposto di essere ricoperti di ghiaccio. Indipendentemente dalle modifiche effettuate loro, le armi focus devono sempre essere pugnali in mithral. Nessun altro tipo di armi può fungere da focus per questo incantesimo

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wreath-of-blades'
WHERE name = 'Corona di Lame';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '10 minuti/livello',
  saving_throw = NULL,
  spell_res = 'sì (oggetto)',
  full_description = ': Le armi bersaglio e le munizioni che sparano non producono alcun suono nell''ambito delle loro normali funzioni di arma. Ad esempio, lo sparo di un''Arma da Fuoco non produce un suono esplosivo, ma se si lancia questo incantesimo sull''attacco morso di una creatura, non le si impedisce di emettere vocalizzi dalla bocca. La prima volta che una creatura viene colpita da un''arma influenzata da questo incantesimo, deve riuscire a superare un Tiro Salvezza su Volontà (la RI si applica a questo effetto) o diventerà incapace di emettere rumori più forti di un sussurro (Percezione CD 10 per sentire), sia vocalmente che con altri mezzi, per la durata dell''effetto. Poiché la creatura può ancora sussurrare, questo effetto non interferisce con le componenti verbali degli incantesimi. Sia che riesca sia che fallisca il tiro salvezza, la creatura è immune a ulteriori effetti derivanti da questo lancio di Armi Silenziose. 

Fonte: Quieting Weapons'
WHERE name = 'Armi Silenziose';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'contatto',
  duration = 'istantaneo più 1 minuto/livello (vedi testo)',
  saving_throw = NULL,
  spell_res = 'sì (innocuo)',
  full_description = ': Questo incantesimo permette di posare la mano su un glifo magico, un simbolo o un altro effetto magico (indicato nella descrizione dell''incantesimo come “runa”) e tentare di assorbirne l''essenza. Per assorbire una runa, si deve essere a conoscenza della sua esistenza (ma non è necessario conoscere i dettagli del suo effetto) e poi superare una prova di livello dell''incantatore (CD = 10 + il livello dell''incantatore dell''effetto dell''incantesimo che si sta assorbendo) mentre si tocca la runa in questione. Se si fallisce questa prova di livello dell''incantatore, la runa magica non viene attivata, a meno che non fallisca il tiro di 5 o più.

Se si supera il tiro di livello dell''incantatore, la runa viene rimossa dalla superficie su cui era originariamente posizionata e duplicata sul tessuto di un guanto di seta indossato sulla propria mano. La runa rimane sul palmo del guanto in uno stato inerte per un massimo di 1 minuto per ogni livello dell''incantatore. Come Azione Standard effettuata in qualsiasi momento durante tale durata, si può trasferire la runa su un''altra superficie simile a quella su cui si era originariamente posizionata, a quel punto la funzione della runa torna alla normalità o si dissolve in modo innocuo come se fosse stata dissolta con successo (a propria scelta). Se la durata dell''incantesimo scade prima che si posizioni la runa su una nuova superficie, la runa assorbita si dissolve in modo innocuo.

Assorbire Rune I influisce solo sulle rune i cui effetti sono equivalenti a un incantesimo di 3° livello o inferiore. Un tentativo di usare Assorbire Rune I su un effetto più potente attiva automaticamente la runa quando la si tocca.

Fonte: Absorbe Rune I'
WHERE name = 'Assorbire Rune I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si assume la forma di un Elementale dell''Acqua, dell''Aria, del Fuoco o della Terra Piccolo. Le capacità elementali basate sulla Taglia, come Bruciare, Turbine e Vortice, usano la Taglia dell''elementale in cui ci si è trasformati per determinare l''effetto.

• Elementale dell''Acqua: Se la forma è quella di un Elementale dell''Acqua Piccolo, si ottiene Bonus di Taglia +2 a Costituzione e Bonus di Armatura Naturale +4. Si ottiene anche Nuotare 18 m, Scurovisione 18 m, la capacità di creare un Vortice, e la capacità di respirare acqua.

• Elementale dell''Aria: Se la forma è quella di un Elementale dell''Aria Piccolo, si ottiene Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +2. Si ottiene anche Scurovisione 18 m, Volare 18 m (perfetta) e la capacità di creare un Turbine.

• Elementale del Fuoco: Se la forma è quella di un Elementale del Fuoco Piccolo, si ottiene Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +2. Si ottiene anche Scurovisione 18 m, Resistenza al Fuoco 20, Vulnerabilità al Freddo e la capacità di Bruciare.

• Elementale della Terra: Se la forma è quella di un elementale della terra piccolo, si ottiene Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +4. Si ottiene anche Scavare 6 m, Scurovisione 18 m e la capacità di Scorrere sulla Terra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-body'
WHERE name = 'Corpo Elementale I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 metri',
  duration = '1 round, poi istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Ci si infonde di una potente ondata di energia elementale. Un round dopo avere completato il lancio dell''incantesimo, l''energia esplode dal proprio corpo. Quando questo incantesimo crea l''esplosione di energia, si deve scegliere uno dei seguenti quattro tipi di energia: acido, elettricità, freddo o fuoco.

L''esplosione infligge 1d8 danni di quel tipo di energia per livello dell''incantatore (massimo 10d8) a tutte le creature e agli oggetti incustoditi nel raggio di 4,5 metri e metà del danno ai bersagli tra i 4,5 e i 9 metri. Si subisce automaticamente metà del danno dall''esplosione, senza Tiro Salvezza, ma qualsiasi effetto di Resistenza all''Energia o Immunità all''Energia che si possiede può prevenire o ridurre questi danni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/detonate'
WHERE name = 'Detonazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = '1 oggetto toccato',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = 'no',
  full_description = ': Si crea un duplicato illusorio dell''oggetto bersaglio. Se si tiene la carica di questo incantesimo, lo si può lanciare mentre si tocca un oggetto che si ruba con Rapidità di Mano o con una Manovre in Combattimento di Rubare; in questo caso, l''illusione prende vita esattamente come si rimuove l''oggetto autentico, consentendo di sostituire istantaneamente un oggetto protetto o custodito senza alcun cambiamento nell''aspetto, nel peso o in altri fattori.

L''illusione appare come una replica perfetta. Esaminando attivamente il falso con una prova di Percezione o di Valutare, la creatura può effettuare un Tiro Salvezza su Volontà; se il tiro salvezza fallisce, la creatura conclude che il falso è l''articolo autentico. L''illusione non è un oggetto funzionale, né possiede alcuna proprietà magica dell''originale. Per esempio, un falso istantaneo di un set di attrezzi da ladro non può essere usato per scassinare una serratura, un falso martello da guerra non può danneggiare una persona o rompere un oggetto, un abito di cotta di maglia irreale non offre alcuna protezione reale e una Pozione illusoria di Cura Ferite Leggere non guarisce alcun punto ferita quando viene bevuta.

Fonte: Instant Fake'
WHERE name = 'Finzione Istantanea';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'no',
  full_description = ': Questo incantesimo crea un''esplosione di pallini metallici evocati, che colpisce ogni cosa nell''area e infligge 1d8 danni perforanti ogni due livelli dell''incantatore, massimo 5d8. Questo danno è soggetto alla Riduzione del Danno. Se le componenti materiali sono di ferro freddo (costando 50 mo), argento (costando 20 mo) o Adamantio (costando 100 mo), la relativa esplosione può superare la Riduzione del Danno appropriata. I pallini spariscono dopo che l''incantesimo è stato lanciato e il danno inferto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/pellet-blast'
WHERE name = 'Esplosione di Pallini';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'vedi testo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': L''incantatore fa eruttare dal terreno getti di fiamma che circondano il bersaglio. Quest''ultimo subisce 1d6 danni per livello dell''incantatore (massimo 15d6) se non supera un Tiro Salvezza su Riflessi per dimezzarli. L''incendio circonda il bersaglio per la durata dell''incantesimo, costringendo la creatura a effettuare ogni round un nuovo Tiro Salvezza. Ogni round 1d6 di danni inferti diminuiscono della metà: l''incantesimo finisce quando non infligge più danni. Se il bersaglio si sposta, anche tramite Teletrasporto, l''eruzione pirotecnica lo segue. 

Chiunque tenti di toccare il bersaglio subisce danni, quantificati dallo stesso numero di dadi tirati l''ultima volta che il bersaglio ha effettuato un Tiro Salvezza (Riflessi dimezza). Una creatura può prendere il posto del bersaglio effettuando contro di lui una manovra spingere o lottare per scambiarsi di posizione. Il sostituto quindi subisce automaticamente i danni del round attuale, senza Tiro Salvezza, e può iniziare a effettuare Tiro Salvezza su Riflessi a partire dal suo turno successivo. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/p/pyrotechnic-eruption/'
WHERE name = 'Eruzione Pirotecnica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una creatura del Tipo Animale di taglia minuscola o grande. Se questa forma ha una delle seguenti capacità, si ottiene anche la capacità indicata: Afferrare, Balzare, Fiuto, Nuotare 18 m, Sbilanciare, Scalare 18 m, Scurovisione 18 m, Visione Crepuscolare e Volare 18 m (manovrabilità buona).

• Animale Minuscolo: Se la forma è quella di un animale di taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità –2 a Forza e Bonus di Armatura Naturale +1.

• Animale Piccolo: Se la forma è quella di un animale di taglia Piccola, si ottiene Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Animale Medio: Se la forma è quella di un animale di taglia Media, si ottiene Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Animale Grande: Se la forma è quella di un animale di taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità –2 a Destrezza e Bonus di Armatura Naturale +4.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/beast-shape'
WHERE name = 'Forma Ferina II';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una qualunque creatura di Taglia Minuscola, Piccola, Media o Grande di Tipo Umanoide Mostruoso. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Afferrare, Attacco in Salto, Balzare, Fiuto, Imitazione, Imitazione dei Suoni, Immobilità, Nuotare 18 metri, Parlare con gli Squali, Sbilanciare, Scalare 18 metri, Scurovisione 18 metri, Visione Crepuscolare e Volare 18 metri (manovrabilità buona). 

Se la forma che si assume possiede il Sottotipo Acquatico si ottengono i Sottotipi Acquatici e Anfibio. Se la creatura possiede la qualità speciale Armi Sottodimensionate, si ottiene tale capacità. 

• Umanoide Mostruoso Minuscolo: Se si assume la forma di un Umanoide Mostruoso di Taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità -2 a Forza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Piccola: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Piccola, si ottiene bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Media: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Media, si ottiene bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Umanoide Mostruoso Grande: Se si assume la forma di un Umanoide Mostruoso di Taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità -2 a Destrezza e Bonus di Armatura Naturale +4.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/monstrous-physique-i'
WHERE name = 'Fisico Mostruoso II';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Occorre effettuare una prova di dissolvere (1d20 + il livello dell’incantatore) e paragonarlo con l’incantesimo con il più alto livello dell’incantatore (CD = 11 + livello dell’incantatore dell’incantesimo). Se si ha successo, l’incantesimo termina. Se no, occorre comparare lo stesso risultato all''incantesimo con il successivo livello dell’incantatore più alto. Si deve ripetere questo processo fino a che non sarà stato dissolto un incantesimo che ha effetto sul bersaglio, oppure non sarà stato dissolto alcun incantesimo. Se si compie con successo un attacco di contatto in mischia occorre effettuare una prova di dissolvere (1d20 + il livello dell’incantatore) e paragonarlo con l’incantesimo con il più alto livello dell’incantatore (CD = 11 + livello dell’incantatore dell’incantesimo). Se si ha successo quell''incantesimo è trasferito su di sé, come se ne fosse il bersaglio originale. L''incantatore non riceve un nuovo Tiro Salvezza o una nuova prova di Resistenza agli Incantesimi contro quell''incantesimo e deve accettare i suoi effetti anche se non sono benefici. Questo non altera la durata dell''incantesimo: per esempio, se al momento del furto all''incantesimo rimangono 4 round di durata, avrà effetto sull''incantatore solo per 4 round. Se l''incantesimo o l''effetto ha una durata permanente, la sua durata continuerà per 1 ora per livello dell''incantatore del bersaglio originario, dopodiché termina. L''incantesimo rubato non ritorna al bersaglio originale. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/arcana-theft'
WHERE name = 'Furto Arcano';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Si crea un''illusione che occupa lo stesso spazio di un nemico e ne imita perfettamente i movimenti. Ogni volta che si lancia un incantesimo o si lancia un''arma, l''illusione smette di imitare le azioni del bersaglio per il tempo necessario a far sembrare che il bersaglio abbia lanciato l''incantesimo o l''arma contemporaneamente a voi, tanto che i testimoni che possono vedere sia voi che il bersaglio non possono dire con certezza chi abbia veramente lanciato l''incantesimo o l''arma. I testimoni che possono vedere solo il bersaglio lo vedono come unica fonte apparente. Il soggetto di questo incantesimo non provoca Attacchi di Opportunità da queste azioni illusorie. Ogni bersaglio dell''attacco o dell''incantesimo conta come se stesse interagendo con l''illusione e quindi riceve un Tiro Salvezza per non credere.

Fonte: Illusion of Treachery'
WHERE name = 'Illusione di Tradimento';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale o Riflessi nega (oggetto)',
  spell_res = 'sì (oggetto)',
  full_description = ': Si emette un urlo fortissimo che assorda e danneggia tutte le creature sulla sua traiettoria. Qualsiasi creatura all’interno dell’area viene Assordata per 2d6 round e subisce 5d6 danni sonori. Un Tiro Salvezza superato nega la sordità e dimezza i danni. Qualsiasi oggetto fragile o di cristallo o qualsiasi creatura cristallina subisce 1d6 danni sonori per livello dell’incantatore (massimo 15d6). Alle creature colpite è concesso un Tiro Salvezza su Tempra per dimezzare i danni, e le creature che tengono in mano oggetti fragili possono impedire che questi siano danneggiati superando un Tiro Salvezza su Riflessi. L’incantesimo Grido non può penetrare l’incantesimo Silenzio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/shout'
WHERE name = 'Grido';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo provoca la crescita istantanea di 1 creatura Umanoide/livello, raddoppiando la sua altezza e moltiplicando per 8 il suo peso. Questa alterazione modifica la categoria di taglia della creatura alla successiva più grande. Il bersaglio ottiene Bonus di Taglia +2 a Forza, subisce penalità di taglia –2 a Destrezza (fino a un minimo di 1) e penalità –1 ai Tiri per Colpire e alla CA in seguito al suo incremento di taglia secondo la seguente progressione:

Modificatore di Taglia
I Modificatori di Taglia che si applicano al Tiro per Colpire ed alla Classe Armatura sono i seguenti: 

Taglia

Modificatore di Taglia

Colossale

–8

Mastodontica

–4

Enorme

–2

Grande

–1

Media

+0

Piccola

+1

Minuscola

+2

Minuta

+4

Piccolissima

+8

Una creatura Umanoide la cui taglia aumenti a Grande occupa uno spazio di 3 metri e ha una portata naturale di 3 metri. Questo incantesimo non cambia la velocità del bersaglio.

Se non è disponibile uno spazio sufficiente alla crescita desiderata, la creatura raggiunge la massima taglia possibile e può effettuare una prova di Forza (sfruttando la sua Forza accresciuta) per rompere qualsiasi forma di contenimento nel processo. Se fallisce, è costretta senza alcun danno dai materiali che la contengono: l''incantesimo non può essere usato per schiacciare una creatura aumentandone la taglia.

Danni Arma Media

Danni Arma Minuscola

Danni Arma Grande

1d2

—

1d3

1d3

1

1d4

1d4

1d2

1d6

1d6

1d3

1d8

1d8

1d4

2d6

1d10

1d6

2d8

1d12

1d8

3d6

2d4

1d4

2d6

2d6

1d8

3d6

2d8

1d10

3d8

2d10

2d6

4d8

Tutto l''Equipaggiamento indossato o trasportato da una creatura viene allo stesso modo ingrandito dall''incantesimo. Le armi da mischia e da tiro infliggono più danni. Altre proprietà magiche non vengono influenzate da questo incantesimo. Qualsiasi oggetto ingrandito che non è più in possesso di una creatura ingrandita (incluso un proiettile o un''arma da lancio) ritorna istantaneamente alla sua taglia normale. Ciò significa che un proiettile o un''arma da lancio infliggono danni normali. Le proprietà magiche di oggetti ingranditi non vengono aumentate.

Molteplici effetti magici che aumentano la taglia non sono cumulativi.

Ingrandire Persone di Massa contrasta e dissolve Ridurre Persone.

Ingrandire Persone di Massa può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/enlarge-person'
WHERE name = 'Ingrandire Persone di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale (solo',
  duration = '1 minuto/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Ci si carica di potere ancestrale, impersonando temporaneamente tutti i punti di forza della razza elfica e di quella umana contemporaneamente, e trasformandosi in un campione di entrambe, qualcosa di superiore a un singolo Elfo o Umano. A differenza della maggioranza degli effetti di metamorfosi, la propria forma base non cambia, quindi si conservano tutte le capacità straordinarie e soprannaturali della propria forma da Mezzelfo insieme a tutto il proprio equipaggiamento.

Per la durata dell''incantesimo, si riceve Bonus di Potenziamento +2 a Destrezza e Intelligenza e si viene considerati come se si possedesse un singolo talento qualsiasi di cui si soddisfino i prerequisiti, scelto al momento del lancio dell''incantesimo.

La prima volta al giorno che si lancia questo incantesimo, è necessario selezionare un talento ed effettuare tutte le scelte associate relative ad esso. Una volta effettuate queste scelte, il talento è impostato per quel giorno e i lanci addizionali deve seguire esattamente le stesse decisioni.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/paragon-surge'
WHERE name = 'Impulso di Fierezza Razziale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Ci si innesta temporaneamente una parte del corpo smembrato di un''altra creatura. Occorre avere a disposizione la parte anatomica o l''incantesimo fallisce. L''innesto deve provenire da una creatura della propria stessa categoria di Taglia. È possibile attivare un solo innesto alla volta: se si innesta una nuova parte anatomica, l''effetto del lancio precedente dell''incantesimo cessa e il primo innesto si stacca dal corpo. L''effetto dell''innesto dipende dal tipo di parte anatomica scelta, come descritto di seguito. 

• Pinne: si acquisisce velocità di Nuotare 12 metri.

• Testa: si acquisisce Visione a 360°. Se la testa proviene da una creatura dotata di Scurovisione, Visione Crepuscolare o Fiuto, si acquisiscono i relativi sensi a metà del raggio normale. È possibile parlare con entrambe le teste, ma non simultaneamente. Non si ottengono eventuali capacità speciali aggiuntive possedute dalla testa (come lo Sguardo Pietrificante della Medusa).

• Gamba: la propria velocità di movimento base aumenta di 1,5 metri e si ottiene bonus +2 alla DMC contro le Manovre in Combattimento Oltrepassare e Sbilanciare (il consueto bonus per una gamba extra).

• Ali: si acquisisce velocità di Volare 12 metri (manovrabilità scarsa).

Fonte: https://www.d20pfsrd.com/magic/all-spells/t/temporary-graft/'
WHERE name = 'Innesto Temporaneo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'concentrazione (fino a 1 round/livello)',
  saving_throw = 'nessuno',
  spell_res = 'si',
  full_description = ': Funziona come Telecinesi, ma può essere usato solo per effettuare una manovra in combattimento di Disarmare, Lottare (incluso Immobilizzare), Riposizionare, Rubare, Sbilanciare, Spingere o Trascinare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/telekinetic-maneuver'
WHERE name = 'Manovra Telecinetica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale o contatto',
  duration = '1 round/livello (I)',
  saving_throw = 'Volontà nega (innocuo) o Volontà nega (innocuo, oggetto)',
  spell_res = 'sì (innocuo) o sì (innocuo, oggetto)',
  full_description = ': La creatura o l''oggetto toccato diventano Invisibili, sparendo alla vista. Se la creatura bersaglio dell''incantesimo porta con sé dell''Equipaggiamento, anch''esso svanisce. Se l''incantesimo viene lanciato su qualcun altro, né l''incantatore né i suoi compagni sono più in grado di vederlo, a meno che non siano normalmente in grado di vedere cose Invisibili o possiedano mezzi magici che lo consentano.

Gli oggetti che cadono o vengono lasciati a terra da una creatura Invisibile tornano immediatamente visibili; gli oggetti che invece vengono raccolti spariscono solo se vengono messi in tasca o nascosti in mezzo ai vestiti. La luce, però, non può essere in alcun modo resa Invisibile, nemmeno se la sua fonte lo diventa (l''effetto che ne risulta è quello di una luce diffusa senza alcuna sorgente visibile). Se una parte degli oggetti in possesso di chi è sotto l''effetto di questo incantesimo si estende oltre 3 metri dal suo corpo, questa parte torna immediatamente visibile.

Naturalmente, il bersaglio dell''incantesimo non è sotto l''effetto di un incantesimo Silenzio ed esistono determinate condizioni che possono rivelare la sua presenza (come mettere il piede in una pozzanghera). Se è richiesta una prova, una creatura immobile Invisibile ha bonus +40 alle sue prove di Furtività. Il bonus si riduce a +20 se la creatura si sta muovendo.

A differenza di Invisibilità, la creatura non torna visibile quando attacca.

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/invisibility'
WHERE name = 'Invisibilità Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una qualunque creatura di Taglia Piccola o Media di Tipo Umanoide. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Fiuto, Nuotare 9 m, Scurovisione 18 m e Visione Crepuscolare.

• Creatura di Taglia Piccola: Se si assume la forma di una creatura Umanoide di Taglia Piccola, si ottiene Bonus di Taglia +2 a Destrezza.

• Creatura di Taglia Media: Se si assume la forma di una creatura Umanoide di Taglia Media, si ottiene bonus +2 a Forza.

Inoltre, con un''azione veloce, si può alterare il camuffamento. Per esempio, ci si potrebbe trasformare in un Halfling, poi in un Lucertoloide, poi in un Elfo e così via. Si può cambiare la forma un numero di volte, pari al proprio livello dell''incantatore. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/adjustable-polymorph/'
WHERE name = 'Metamorfosi Regolabile';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Riflessi nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo crea un piano ancorato o una semisfera di ghiaccio, in base alla versione scelta. Un muro di ghiaccio non può formarsi in un''area che sia già occupata da oggetti fisici o da creature, e la sua superficie deve essere liscia e integra al momento della creazione. Qualsiasi creatura adiacente al muro nel momento in cui viene creato può tentare un Tiro Salvezza su Riflessi per distruggere il muro mentre si forma. Un Tiro Salvezza riuscito indica che l''incantesimo fallisce automaticamente. Il fuoco è in grado di fondere un Muro di Ghiaccio e infligge danni pieni al muro (invece di essere dimezzati, come nel caso di danni da fuoco sugli oggetti). Fondere improvvisamente il Muro di Ghiaccio genera un''enorme nuvola di vapore che dura 10 minuti.

• Piano di Ghiaccio: Appare una solida lastra di ghiaccio compatto dello spessore di 2,5 cm per livello dell''incantatore. Il muro copre fino a un quadrato con lato di 3 metri per livello dell''incantatore (quindi un Mago di 10° livello può creare un Muro di Ghiaccio lungo 30 metri e alto 3 metri, oppure uno lungo 15 metri e alto 6 metri, o qualche altra combinazione di lunghezza e altezza che non superi i 90 m2).

Può essere orientato in qualsiasi modo, purché sia ancorato. Un muro verticale ha solo bisogno di essere ancorato a terra, mentre uno orizzontale o inclinato invece deve essere ancorato a qualcosa alle sue due estremità.

Ogni quadrato con lato di 3 metri del muro ha 3 Punti Ferita ogni 2,5 cm di spessore. Le creature possono colpire il muro automaticamente. Una sezione di muro i cui Punti Ferita calano a 0 viene infranta. Se una creatura cerca di rompere il muro con un singolo attacco, la CD per la prova di Forza è 15 + il livello dell''incantatore.

Anche se il muro è rotto, resta comunque una lamina di aria gelida. Qualunque creatura che la attraversa (incluso chi ha rotto il muro) subisce 1d6 danni da freddo + 1 danno per livello dell''incantatore (senza Tiro Salvezza).

• Semisfera: Il muro prende la forma di una semisfera il cui raggio massimo è di 90 cm + 30 cm per livello dell''incantatore. Aprire un varco nella semisfera è difficile quanto nel piano di ghiaccio, ma non infligge danni a quanti attraversano il varco.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-ice'
WHERE name = 'Muro di Ghiaccio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'concentrazione + 1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Una barriera traslucida di suono puro appare. Questo muro è silenzioso apparte un debole ronzio, ma quando viene toccato da un oggetto o da una creatura emette suoni dissonanti. Il muro devia frecce, dardi, detriti sciolti e creature volanti di taglia Piccola o inferiore come un incantesimo Muro di Vento, ma queste cose rimbalzano in modo innocuo invece di essere scagliate verso l''alto. L''esplosione di rumori dissonanti infligge 2d4 danni sonori alle creature entro 3 metri dall''oggetto o creatura che l''ha attivato; toccare o attraversare il muro infligge 2d6 danni sonori + 1 danno sonoro per livello dell''incantatore (massimo +20). Se si evoca il muro in modo che appaia dove ci sono creature, ogni creatura subisce danni come se avesse attraversato il muro. Un incantesimo Silenzio sopprime il muro nella sua area, ma il muro riappare quando Silenzio termina.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-sound'
WHERE name = 'Muro di Suono';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Palla di Fuoco, tranne per il fatto che si può fare in modo che il getto di fuoco abbia origine da qualsiasi punto visibile nel raggio d''azione. Si può scegliere un numero di quadrati all''interno dell''area fino al proprio bonus di Intelligenza (per Maghi, Occultisti o Magus) o di Carisma (per i Iracondi di Stirpe o gli Stregoni) da colpire con fiamme più deboli; la Palla di Fuoco Controllata infligge un danno minimo in quei quadrati.

I tentativi di identificare una Palla di Fuoco Controllata con una prova di abilità la identificano erroneamente come una Palla di Fuoco (vedi il descrittore trucco).

Fonte: Controlled Fireball'
WHERE name = 'Palla di Fuoco Controllata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Dal punto indicato scaturisce ribollendo una banco di nebbia. La nebbia oscura ogni visuale, compresa la Scurovisione, oltre 1,5 metri. Una creatura che si trova entro un raggio di 1,5 metri gode di Occultamento (gli attacchi hanno una probabilità del 20% di mancare il bersaglio). Le creature che si trovano oltre i 1,5 metri godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e chi attacca non è in grado di usare la sua vista per localizzare il bersaglio).

Qualsiasi creatura provi a muoversi al suo interno avanzerà alla metà della sua velocità normale, e tutti i suoi Tiri per Colpire e per i danni in mischia subiscono penalità –2. Questi vapori impediscono efficaci attacchi con armi a distanza (a parte i raggi magici e simili). Una creatura o un oggetto che cade nella Nebbia Solida è rallentato, al punto tale che ogni 3 metri di vapori attraversati dalla creatura o dall''oggetto riducono i danni da caduta di 1d6. Una creatura non può fare un passo di 1,5 metri mentre si trova all''interno di Nebbia Solida. Nebbia Solida, e gli effetti che funzionano come Nebbia Solida, non si cumulano gli uni con gli altri ai fini di rallentare il movimento o di conferire penalità all''attacco.

A differenza della nebbia normale, solo un vento molto forte (46,5 o più km/h) riesce a disperdere questi vapori, e impiega solo 1 round.

Nebbia Solida può essere reso permanente con un incantesimo Permanenza. Una Nebbia Solida permanente che viene dispersa dal vento si riforma in 10 minuti.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/solid-fog'
WHERE name = 'Nebbia Solida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'nessuno e Volontà nega (oggetto)',
  spell_res = 'no e sì (oggetto)',
  full_description = ': Ci si trasferisce immediatamente dalla propria attuale posizione a qualsiasi altro luogo entro il raggio di azione. Si arriva sempre con precisione nel punto desiderato, sia semplicemente visualizzando l''area che limitandosi a dichiarare la direzione. Dopo aver utilizzato questo incantesimo non si possono effettuare altre azioni fino al proprio turno seguente. Si possono portare con sé oggetti fintanto che il loro peso non superi il proprio carico massimo. Si può anche trasportare un''altra creatura consenziente di taglia Media o inferiore (che a sua volta può trasportare oggetti o Equipaggiamento fino al suo carico massimo) o il suo equivalente ogni 3 livelli dell''incantatore. Una creatura Grande conta come 2 creature Medie, una creatura Enorme conta come 2 creature Grandi e così via. Tutte le creature da trasportare devono essere in contatto l''una con l''altra, e occorre essere in contatto con almeno una delle creature.

Se si arriva in un posto che è già occupato da un corpo solido, si subiscono 1d6 danni e si viene spinti verso uno spazio libero casuale o su una superficie adeguata entro 30 metri dalla locazione indicata. Ciò vale sia per sé che per le creature con cui si sta viaggiando.

Se non esiste alcuno spazio libero entro 30 metri, tutti i soggetti coinvolti nel viaggio subiscono 2d6 danni aggiuntivi e vengono spinti verso uno spazio libero entro 300 metri. Se non esiste alcuno spazio libero entro 300 metri, tutti i soggetti coinvolti nel viaggio subiscono 4d6 danni aggiuntivi e l''incantesimo fallisce.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dimension-door'
WHERE name = 'Porta Dimensionale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Pioggia di Fuoco fa eruttare fuoco da un geyser di fiamme liquide abbaglianti. L’incantesimo utilizza una fonte di fuoco, che si estingue immediatamente. Un fuoco più grande di un cubo con spigolo di 6 m viene solo parzialmente estinto. Le fiamme magiche non vengono estinte, ma una creatura del Sottotipo Fuoco usata come sorgente subisce 1 danno per livello dell’incantatore (nessun Tiro Salvezza).

Questa brillante Pioggia di Fuoco riempie un’esplosione semisferica con raggio di 18 metri. Tutte le creature e gli oggetti nell’area subiscono 5d6 danni da fuoco e Prendono Fuoco. Le creature che superano un Tiro Salvezza su Riflessi dimezzano i danni e non Prendono Fuoco. Le creature entro 36 metri dalla fonte di fuoco originaria vengono Accecate per 1d4+1 round (Volontà nega).

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/firefall'
WHERE name = 'Pioggia di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Le mani dell''incantatore raggiungono simultaneamente il Piano Etereo e il Piano Materiale, permettendogli di infliggere danni normali con artigli, colpi senz''armi e incantesimi o effetti di contatto alle creature eteree. La probabilità di mancare per l''essere eterei (come per l''incantesimo Intermittenza) non si applica, sebbene si applichi quella di Occultamento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/ethereal-fists/'
WHERE name = 'Pugni Eterei';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantanea',
  saving_throw = 'Tempra parziale (vedi testo)',
  spell_res = 'sì',
  full_description = ': Le articolazioni delle creature soggette a questo incantesimo si gonfiano e s''irrigidiscono, rendendo i movimenti lenti e dolorosi. Il bersaglio subisce 1d6 Danni Non Letali per livello dell''incantatore. Inoltre, subisce penalità -4 alla Destrezza e la sua velocità di movimento diminuisce di 3 metri; questi effetti aggiuntivi durano 1 minuto per livello dell''incantatore, ma un''altra creatura può trascorrere 1 minuto a effettuare una prova di Guarire con CD 25 per farli terminare in anticipo. Superare il Tiro Salvezza dimezza Danni Non Letali e nega la penalità a Destrezza e movimento. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/r/rigor-mortis/'
WHERE name = 'Rigor Mortis';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 round',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 minuto/livello (I)',
  saving_throw = 'Tempra nega',
  spell_res = 'sì',
  full_description = ': Questo incantesimo provoca un immediato rimpicciolimento in delle creature Umanoidi, dimezzando la loro altezza, la lunghezza e la larghezza e dividendo per 8 il peso. Questa diminuzione modifica la categoria di taglia delle creature alla successiva più piccola. I bersagli ottengono Bonus di Taglia +2 a Destrezza, penalità di taglia –2 a Forza (fino a un minimo di 1) e bonus +1 ai Tiri per Colpire e alla CA grazie alla taglia ridotta.

Modificatore di Taglia
I Modificatori di Taglia che si applicano al Tiro per Colpire ed alla Classe Armatura sono i seguenti: 

Taglia

Modificatore di Taglia

Colossale

–8

Mastodontica

–4

Enorme

–2

Grande

–1

Media

+0

Piccola

+1

Minuscola

+2

Minuta

+4

Piccolissima

+8

Danni Arma Media

Danni Arma Minuscola

Danni Arma Grande

1d2

—

1d3

1d3

1

1d4

1d4

1d2

1d6

1d6

1d3

1d8

1d8

1d4

2d6

1d10

1d6

2d8

1d12

1d8

3d6

2d4

1d4

2d6

2d6

1d8

3d6

2d8

1d10

3d8

2d10

2d6

4d8

Una creatura Umanoide Piccola la cui taglia diminuisca a Minuscola ha uno spazio di 75 cm e una portata naturale di 0 cm (che significa che deve entrare nel quadretto di un avversario per attaccare). Una creatura umanoide Grande la cui taglia diminuisca a Media ha uno spazio di 1,5 metri e una portata naturale di 1,5 metri. Questo incantesimo non modifica la velocità del bersaglio.

Tutto l''Equipaggiamento indossato o portato da una creatura viene similmente rimpicciolito da questo incantesimo. Le armi da mischia e da tiro infliggono meno danni. Altre proprietà magiche non sono influenzate da questo incantesimo. Qualsiasi oggetto ridotto che non sia più in possesso della creatura ridotta (compreso un proiettile o un''arma da lancio) ritorna immediatamente alla sua taglia normale. Questo significa che le armi da lancio infliggono danni normali (i proiettili infliggono danni in base alla taglia dell''arma che li tira).

Molteplici effetti magici che riducono la taglia non sono cumulativi. Ridurre Persone di Massa contrasta e dissolve Ingrandire Persone di Massa.

Fonte: http://www.d20pfsrd.com/magic/all-spells/r/reduce-person'
WHERE name = 'Ridurre Persone di Massa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si viene avvolti dalle fiamme che provocano danni a chi attacca in mischia. Le fiamme proteggono da attacchi basati sul gelo o sul fuoco, a seconda se si scelgono fiamme gelide o ardenti per il proprio Scudo di Fuoco.

Qualsiasi creatura che vi colpisca col suo corpo o con un''arma impugnata infligge i suoi danni normalmente, ma allo stesso tempo subisce 1d6 danni +1 danno per livello dell''incantatore (massimo +15). Questi danni possono essere da freddo (se si sceglie scudo gelido) o da fuoco (se si sceglie scudo ardente). Se la creatura che attacca è dotata di Resistenza agli Incantesimi, si applica a questo effetto. Le creature che impugnano armi con portata non sono soggette a questi danni se vi attaccano.

Quando si lancia l''incantesimo, si sembrerà ardere, ma le fiamme sono sottili e allungate, ed emanano luce pari soltanto a metà dell''illuminazione di una torcia normale (3 metri). Il colore delle fiamme è blu o verde se viene lanciato lo scudo gelido, viola o rosso se viene lanciato lo scudo ardente. I poteri speciali di ogni versione sono i seguenti:

• Scudo Ardente: Le fiamme risultano calde al contatto. Si subiscono solo danni dimezzati da attacchi basati sul freddo. Se l''attacco permette un Tiro Salvezza su Riflessi per dimezzare i danni, superando il Tiro Salvezza non se ne subisce alcuno.

• Scudo Gelido: Le fiamme risultano fredde al contatto. Si subiscono solo danni dimezzati da attacchi basati sul fuoco. Se l''attacco permette un Tiro Salvezza su Riflessi per dimezzare i danni, superando il Tiro Salvezza non se ne subisce alcuno.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/fire-shield'
WHERE name = 'Scudo di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '9 m o 18 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Si soffia un''esplosione di energia. Le creature nell''area interessata subiscono 1d6 danni da energia per livello dell''incantatore (massimo 12d6). Superare un Tiro Salvezza su Riflessi dimezza i danni. L''effetto e il tipo di energia dell''incantesimo dipendono dal tipo del drago della scaglia usata:

• Drago Bianco o d''Argento: cono di freddo di 9 metri.

• Drago Blu o di Bronzo: linea di elettricità di 18 metri.

• Drago di Ottone: linea di fuoco di 18 metri.

• Drago d''Oro o Rosso: cono di fuoco di 9 metri.

• Drago Nero o di Rame: linea di acido di 18 metri.

• Drago Verde: cono di acido di 9 metri.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/dragon-s-breath'
WHERE name = 'Soffio del Drago';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Questo incantesimo evoca alcuni tentacoli neri gommosi, che sembrano spuntare dal pavimento e raggiungono qualsiasi creatura nell''area.

Ogni creatura all''interno dell''area dell''incantesimo è bersaglio di una prova di Manovra in Combattimento effettuata per Lottare ad ogni round all''inizio del proprio turno, incluso il round in cui l''incantesimo è stato lanciato. Tutte le creature che entrano nell''area di effetto sono ugualmente attaccate. I tentacoli non provocano Attacchi di Opportunità. Per determinare il BMC dei tentacoli si usa il proprio livello dell''incantatore come Bonus di Attacco Base e si aggiunge bonus +4 per la Forza e bonus +1 per la Taglia. Si tira solo una volta per l''intero effetto dell''incantesimo ogni round e si applica il risultato a tutte le creature nell''area di effetto.

Quando un tentacolo afferra un avversario, infligge 1d6+4 danni e l''avversario ottiene la condizione In Lotta. Gli avversari afferrati non possono muoversi senza prima liberarsi dalla Lotta. Tutti gli altri movimenti sono proibiti a meno che la creatura non si libera prima dalla Lotta. Tentacoli Neri riceve bonus +5 alle prove di Lottare effettuate contro avversari che sono già In Lotta, ma non può muovere i nemici o immobilizzarli. Ad ogni round in cui Tentacoli Neri supera la prova di Lotta, infligge altri 1d6+4 danni. La DMC di Tentacoli Neri , al fine di liberarsi dalla Lotta, è pari a 10 + il suo BMC.

I tentacoli creati dall''incantesimo non possono essere danneggiati, ma possono essere dissolti normalmente. Tutta l''area d''effetto viene considerata terreno difficile mentre sono presenti i tentacoli.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/black-tentacles'
WHERE name = 'Tentacoli Neri';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'lungo (120 metri + 12 m/livello)',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Allucinazione Audiovisiva, tranne per il fatto che il fantasma include componenti visive, uditive, olfattive, tattili e termiche e segue un copione complesso. Il fantasma segue il copione senza la vostra Concentrazione e può reagire agli stimoli percepiti dai bersagli.

Fonte: Scripted Hallucination'
WHERE name = 'Allucinazione Programmata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di qualsiasi creatura corporea di Taglia Minuscola, Piccola, Media o Grande del Tipo Non Morto, che deve avere una sagoma vagamente umanoide (come un Ghoul, Scheletro o Zombi). Si ottiene l''attacco col morso (1d8 per le forme Grandi, 1d6 per le forme Medie, 1d4 per quelle Piccole e 1d3 per quelle Minuscole), due attacchi con gli artigli o di schianto (1d8 per le forme Grandi, 1d6 per le forme Medie, 1d4 per quelle Piccole e 1d3 per quelle Minuscole). Se la forma che si assume ha qualunque delle seguenti capacità, si assumono anche queste: Afferrare, Balzare, Fiuto, Imitazione, Imitazione dei Suoni, Immobilità, Nuotare 18 metri, RD 5/contundente, Risucchio di Sangue, Sbilanciare, Scalare 18 metri, Scurovisione 18 metri, Senz''Ombra, Visione Crepuscolare e Volare 18 metri (manovrabilità buona). 

In questa forma, si viene individuati come creatura Non Morta (come con Individuazione dei Non Morti, ma non con la magia che rivela la vera forma come Visione del Vero) e considerati come tali per quanto riguarda Incanalare Energia, incantesimi di Cura e incantesimi di Infliggi, ma non per altri effetti con bersaglio specifico o che reagiscono diversamente con i Non Morti (come Luce Incandescente).

In questa forma, si ottiene bonus +4 ai Tiri Salvezza contro effetti di influenza mentale, Malattia, Sonno, Stordimento e Veleno. Se la forma ha una vulnerabilità a un attacco (come luce solare), si ottiene quella vulnerabilità. 

• Non Morto di Taglia Minuscola: Se la forma che si assume è quella di un Non Morto di Taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità di -2 a Forza e un Bonus di Armatura Naturale +1.

• Non Morto di Taglia Piccola: Se la forma che si assume è quella di un Non Morto di Taglia Piccola, si ottiene un Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Non Morto di Taglia Media: Se la forma che si assume è quella di un Non Morto di Taglia Media, si ottiene un Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Non Morto di Taglia Grande: Se la forma che si assume è quella di un Non Morto di Taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità di -2 a Destrezza e un Bonus di Armatura Naturale +4.

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/undead-anatomy-i'
WHERE name = 'Anatomia Non Morta II';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = '18 m',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Cono di Freddo crea un’area di freddo estremo, che si origina dalla propria mano e si estende progressivamente a formare un cono. Il cono assorbe il calore, provocando 1d6 danni da freddo per livello dell’incantatore (massimo 15d6).

Cono da 18 metri

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cone-of-cold'
WHERE name = 'Cono di Freddo';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'contatto',
  duration = '3 round',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Con un tocco, questo incantesimo fa apparire sul bersaglio una piccola macchia corrosiva in rapida espansione. 

• Al primo round, l''acido infligge 1 danno da acido per livello dell''incantatore (massimo 15).

• Al secondo round, la macchia di acido cresce e infligge 1d4 danni da acido per livello dell''incantatore (massimo 15d4).

• Al terzo e ultimo round, la macchia di acido copre l''intera creatura e infligge 1d6 danni da acido per livello dell''incantatore (massimo 15d6).

Il bersaglio può impiegare un''Azione di Round Completo per raschiare l''acido, o può lavarlo via con almeno 3,5 litri di liquido per dimezzare il danno per quel round e negare i restanti round dell''incantesimo. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/corrosive-consumption'
WHERE name = 'Consunzione Corrosiva';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si assume la forma di un Elementale dell''Acqua, dell''Aria, del Fuoco o della Terra Medio. Le capacità elementali basate sulla Taglia, come Bruciare, Turbine e Vortice, usano la Taglia dell''elementale in cui ci si è trasformati per determinare l''effetto.

• Elementale dell''Acqua: Se la forma è quella di un Elementale dell''Acqua Medio, si ottiene Bonus di Taglia +4 a Costituzione e Bonus di Armatura Naturale +5. Si ottiene anche Nuotare 18 m, Scurovisione 18 m, la capacità di creare un Vortice, e la capacità di respirare acqua.

• Elementale dell''Aria: Se la forma è quella di un Elementale dell''Aria Medio, si ottiene Bonus di Taglia +4 a Destrezza e Bonus di Armatura Naturale +3. Si ottiene anche Scurovisione 18 m, Volare 18 m (perfetta) e la capacità di creare un Turbine.

• Elementale del Fuoco: Se la forma è quella di un Elementale del Fuoco Medio, si ottiene Bonus di Taglia +4 a Destrezza e Bonus di Armatura Naturale +3. Si ottiene anche Scurovisione 18 m, Resistenza al Fuoco 20, Vulnerabilità al Freddo e la capacità di Bruciare.

• Elementale della Terra: Se la forma è quella di un Elementale della Terra Medio, si ottiene Bonus di Taglia +4 a Forza e Bonus di Armatura Naturale +5. Si ottiene anche Scavare 6 m, Scurovisione 18 m e la capacità di Scorrere sulla Terra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-body'
WHERE name = 'Corpo Elementale II';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una qualunque creatura di Taglia Minuta, Minuscola, Piccola, Media, Grande o Enorme di Tipo Umanoide Mostruoso. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Afferrare, Aspetto Spaventoso, Astuzia Naturale, Attacco in Salto, Balzare, Ferocia, Fiuto, Frenesia Sanguinaria, Imitazione, Imitazione dei Suoni, Immobilità, Nuotare 27 metri, Parlare con gli Squali, Percezione Cieca 9 metri, Propulsione, Ragnatela, Sbilanciare, Scalare 27 metri, Scavare 9 metri, Scurovisione 18 metri, Soverchiare, Sperone, Stritolare, Travolgere, Veleno, Vigore Gelido, Visione a 360°, Visione Crepuscolare e Volare 27 metri (manovrabilità buona). 

Se la forma che si assume possiede il Sottotipo Acquatico si ottengono i Sottotipi Acquatici e Anfibio. Se la creatura possiede la qualità speciale Armi Sottodimensionate, si ottiene tale capacità. 

• Umanoide Mostruoso Minuto: Se si assume la forma di un Umanoide Mostruoso di Taglia Minuta, si ottiene Bonus di Taglia +6 a Destrezza, penalità -4 a Forza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso Minuscolo: Se si assume la forma di un Umanoide Mostruoso di Taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità -2 a Forza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Piccola: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Piccola, si ottiene bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Media: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Media, si ottiene bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Umanoide Mostruoso Grande: Se si assume la forma di un Umanoide Mostruoso di Taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità -2 a Destrezza e Bonus di Armatura Naturale +4.

• Umanoide Mostruoso Enorme: Se si assume la forma di un Umanoide Mostruoso di Taglia Enorme, si ottiene Bonus di Taglia +6 a Forza, penalità -4 a Destrezza e Bonus di Armatura Naturale +6.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/monstrous-physique-i'
WHERE name = 'Fisico Mostruoso III';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una creatura del Tipo Animale Minuta o Enorme. L’incantesimo consente anche di assumere la forma di una creatura del Tipo Bestia Magica Piccola o Media. Se questa forma ha una delle seguenti capacità, si ottiene anche la capacità indicata: Afferrare, Balzare, Ferocia, Fiuto, Nuotare 27 m, Percezione Cieca 9 m, Propulsione, Ragnatela, Sbilanciare, Scalare 27 m, Scavare 18 m, Scurovisione 18 m, Sperone, Stritolare, Travolgere, Veleno Visione Crepuscolare e Volare 27 m (manovrabilità buona).

• Animale Minuto: Se la forma è quella di un animale di taglia Minuta, si ottiene Bonus di Taglia +6 a Destrezza, penalità –4 a Forza e Bonus di Armatura Naturale +1.

• Animale Minuscolo: Se la forma è quella di un animale di taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità –2 a Forza e Bonus di Armatura Naturale +1.

• Animale Piccolo: Se la forma è quella di un animale di taglia Piccola, si ottiene Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Animale Medio: Se la forma è quella di un animale di taglia Media, si ottiene Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Animale Grande: Se la forma è quella di un animale di taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità –2 a Destrezza e Bonus di Armatura Naturale +4.

• Animale Enorme: Se la forma è quella di un animale di taglia Enorme, si ottiene Bonus di Taglia +6 a Forza, penalità –4 a Destrezza e Bonus di Armatura Naturale +6.

• Bestia Magica Piccola: Se la forma è quella di una bestia magica di taglia Piccola, si ottiene Bonus di Taglia +4 a Destrezza e Bonus di Armatura Naturale +2.

• Bestia Magica Media: Se la forma è quella di una bestia magica di taglia Media, si ottiene Bonus di Taglia +4 a Forza e Bonus di Armatura Naturale +4.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/beast-shape'
WHERE name = 'Forma Ferina III';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Mano Interposta crea una mano magica Grande che compare tra sé e un proprio avversario. Questa mano fluttuante senza corpo si sposta in modo da rimanere sempre tra i due, indipendentemente da dove ci si muove o dai tentativi dell''avversario di aggirarla, offrendo così una Copertura (+4 alla CA) contro quell''avversario. Nulla può ingannare la mano, che continua a spostarsi davanti al nemico incurante dell''oscurità, dell''Invisibilità, della metamorfosi o di qualsiasi altro tentativo di nascondersi o mascherarsi. La mano, tuttavia, non insegue l''avversario.

Una Mano Interposta è lunga 3 metri ed è quasi altrettanto larga a dita aperte. Ha tanti Punti Ferita quanti ne ha l''incantatore in piena salute e ha CA 20 (+11 naturale, -1 taglia). Subisce danni come una creatura normale, ma gran parte degli effetti magici che non provocano danni non hanno effetto su di essa.

La mano non provoca mai Attacchi di Opportunità da parte degli avversari. Non è in grado di spingere attraverso un Muro di Forza o di entrare in un Campo Antimagia, ma subisce tutti gli effetti di un Muro Prismatico o di una Sfera Prismatica. La mano effettua Tiri Salvezza come quelli del suo incantatore.

Disintegrazione o un Dissolvi Magie effettuato con successo la distruggono.

Qualsiasi creatura che pesi fino a 1.000 kg e che tenti di farsi strada spingendo oltre la mano viene rallentata a metà della sua normale velocità. La mano non riesce a rallentare la velocità di una creatura che pesa più di 1.000 kg, ma continua comunque a influenzare i suoi attacchi.

Dirigere l''incantesimo contro un nuovo avversario è un''azione di movimento.

Fonte: http://www.d20pfsrd.com/magic/all-spells/i/interposing-hand'
WHERE name = 'Mano Interposta';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'contatto',
  duration = '24 ore',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Come parte dell''azione utilizzata per lanciare questo incantesimo, si posiziona la maschera utilizzata come componente focus sul volto del bersaglio, dopodiché essa aderisce saldamente al bersaglio per tutta la durata dell''incantesimo e non può essere rimossa con la forza fisica. Nonostante sia priva di occhi, questa maschera non compromette in alcun modo la vista di chi la indossa. Mentre è in azione, questo incantesimo funziona come Anti-individuazione, tranne per il fatto che vanifica anche gli incantesimi di Divinazione che tentano di raccogliere informazioni sulla creatura, anche se non la prendono di mira specificamente. Nel caso di incantesimi di divinazione che normalmente rivelerebbero la presenza di chi la indossa, come Vedere Invisibilità, l''incantesimo funziona, ma chi la indossa viene rilevato solo se l''incantatore supera una prova di livello dell''incantatore. Allo stesso modo, i tentativi di divinazione che prendono di mira specificamente chi la indossa non funzionano affatto a meno che l''incantatore non superi una prova di livello dell''incantatore. Inoltre, le CD dei tiri di Abilità per ottenere informazioni su chi la indossa o identificarlo e i suoi punti di forza e di debolezza, comprese le prove di Diplomazia per raccogliere informazioni, le prove di Percezione contrapposte alle prove di Camuffare del bersaglio e le prove di Conoscenze, aumentano di 4.

La maschera non può essere rimossa per tutta la durata dell''incantesimo e il fatto che il bersaglio indossi la maschera focus non può essere nascosto in alcun modo alle creature che osservano il bersaglio.

Fonte: Mask from Divination'
WHERE name = 'Mascherare da Divinazioni';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round /livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Un incantesimo Muro di Forza crea una parete invisibile di forza. La parete non è in grado di muoversi, ma è estremamente resistente ad incantesimi e attacchi. È immune a Dissolvi Magie, anche se Disgiunzione Arcana può dissolverlo. Subisce normali danni dagli incantesimi, anche se Disintegrazione lo distrugge immediatamente. Le armi e le Capacità Soprannaturali possono danneggiarlo anche se ha Durezza 30 e un numero di Punti Ferita pari a 20 per livello dell’incantatore. Il contatto con una Verga della Cancellazione o una Sfera Annientatrice lo distruggono immediatamente.

Gli incantesimi e il Soffio non sono in grado di oltrepassare il muro in nessuna direzione, anche se Porta Dimensionale, Teletrasporto e altri effetti simili possono condurre oltre la barriera. Il muro blocca sia le creature materiali che quelle eteree (anche se le creature eteree sono in grado di aggirare la parete fluttuando sotto o sopra di essa, attraversando pavimenti e soffitti materiali). Gli attacchi con lo sguardo funzionano anche attraverso il Muro di Forza.

Si può plasmare la parete in un piano liscio verticale la cui area sia fino a un quadrato con il lato di 3 metri per livello. Il Muro di Forza deve essere continuo e integro al momento della sua creazione. Se la sua superficie viene spezzata da qualche oggetto o qualche creatura, l’incantesimo fallisce.

Muro di Forza può essere reso permanente con un incantesimo Permanenza.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-force'
WHERE name = 'Muro di Forza';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 minuto/livello',
  saving_throw = 'Tempra parziale',
  spell_res = 'no',
  full_description = ': Dal punto indicato scaturisce ribollendo una banco di nebbia. La nebbia oscura ogni visuale, compresa la Scurovisione, oltre 1,5 metri. Una creatura che si trova entro un raggio di 1,5 metri gode di Occultamento (gli attacchi hanno una probabilità del 20% di mancare il bersaglio). Le creature che si trovano oltre i 1,5 metri godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e chi attacca non è in grado di usare la sua vista per localizzare il bersaglio). 

I vapori della nube mortale sono giallo verdastri e velenosi. Uccidono automaticamente qualunque creatura vivente fino a 3 DV (senza Tiro Salvezza). Una creatura vivente che abbia da 4 a 6 DV viene uccisa se non supera unTiro Salvezza su Tempra (nel qual caso subisce 1d4 danni a Costituzione ad ogni round nel turno dell''incantatore, mentre si trova nella nube).

Una creatura vivente con 6 o più DV subisce 1d4 danni a Costituzione nel turno dell''incantatore ogni round mentre si trova nella nube (superare un Tiro Salvezza su Tempra dimezza questo danno). Trattenere il fiato non serve, ma le creature immuni al Veleno non sono danneggiate da questo incantesimo.

La Nube Mortale si allontana per 3 m a round, rotolando lungo il terreno.

Ipotizzate lo spostamento della nube ad ogni round sulla base del suo nuovo punto di origine, che è 3 metri più lontano dal punto di origine dove era stato lanciato l''incantesimo.

Dato che i suoi vapori sono più pesanti dell''aria, si abbassano al livello più basso sul terreno, e riescono ad infiltrarsi in tane o buchi di ogni genere. Non penetra i liquidi, e non può essere lanciata sott''acqua.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/cloudkill'
WHERE name = 'Nube Mortale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': Quando si lancia questo incantesimo, si fa rapidamente a brandelli una pergamena, facendo sciamare questi frammenti volanti attorno a una creatura bersaglio e distribuendo migliaia di minuscoli pezzetti di carta. Usando una normale pergamena, l''incantesimo infligge 1d6 danni per livello dell''incantatore (massimo 15d6).

Se si usa una pergamena magica come componente materiale, si sceglie unno degli incantesimi scritti su di essa. Se l''incantesimo è di 1° livello, si può scegliere di applicare l''effetto di quell''incantesimo al bersaglio dello Sciame di Pergamene se fallisce il Tiro Salvezza su Riflessi (se l''incantesimo sulla pergamena ha un Tiro Salvezza, il bersaglio allora tenta quel Tiro Salvezza normalmente). Se l''incantesimo sulla pergamena è almeno di 2° livello, si può scegliere invece di modificare Sciame di Pergamene affinché influenzi un''emanazione del raggio di 6 metri anziché un singolo bersaglio.

Fonte: http://www.d20pfsrd.com/magic/all-spells/p/parchment-swarm'
WHERE name = 'Sciame di Pergamene';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Questo incantesimo avvolge l''incantatore in energia d''ombra e danneggia chi effettua attacchi in mischia contro di lui. Le creature che colpiscono l''incantatore con il loro corpo o con un''arma impugnata infliggono i normali danni, ma, allo stesso tempo, subiscono 1d6 danni da energia negativa +1 danno per livello dell''incantatore (massimo +15). Se l''attaccante ha Resistenza agli Incantesimi, si applica a questo effetto. Le creature che impugnano armi da mischia con portata non sono soggette a questo danno. Quando un attaccante subisce danni da questo incantesimo, all''incantatore vengono curati un numero di danni pari al 25% del danno inflitto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/v/vampiric-shadow-shield/'
WHERE name = 'Scudo Ombra del Vampiro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '10 minuti',
  range = '0 m',
  duration = 'vedi testo',
  saving_throw = 'Volontà dimezza, vedi testo',
  spell_res = 'sì, vedi testo',
  full_description = ': Questo incantesimo funziona come Simbolo di Morte, a parte che usando le componenti materiali, si scrive un simbolo di attacco in modo da riempire un quadrato di 1,5 metri di lato. Una volta attivato, il Simbolo di Attacco brilla e dura per 10 minuti per livello dell''incantatore o finché ha effettuato un numero di Attacchi d''Opportunità pari al proprio livello, a seconda di ciò che accade prima. Quando viene attivato, il simbolo minaccia la sua area e l''area circostante come se fosse una creatura Media con una versione magica dell''arma usata come componente materiale. Usando il livello dell''incantatore + 1 + il modificatore di Intelligenza (Fattucchiere, Mago, Magus) o il modificatore di Saggezza (Chierico) o il modificatore di Carisma (Oracolo, Stregone) dell''incantatore come suo Bonus di Attacco, il simbolo può effettuare un numero di Attacchi d''Opportunità ogni round pari a 1 + il modificatore della stessa caratteristica usata per determinarne il Bonus di Attacco. Ottiene un bonus ai tiri per i danni pari al modificatore della stessa caratteristica usata per determinarne il Bonus di Attacco. Una versione d''ombra dell''incantatore che impugna la componente materiale appare per effettuare questi attacchi. 

Il simbolo attacca qualsiasi creatura non ammessa che provochi un Attacco di Opportunità da parte del simbolo. Quando, però, il simbolo attacca per la prima volta una creatura, deve superare la sua Resistenza agli Incantesimi o non è in grado di danneggiarla. Il simbolo non attacca mai di nuovo tali creature. Inoltre, quando il simbolo attacca per la prima volta una creatura, un Tiro Salvezza su Volontà permette alla creatura di vedere la natura d''ombra degli attacchi e dimezzare il danno qualora venga colpita. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/symbol-of-striking'
WHERE name = 'Simbolo di Attacco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = '18 m',
  duration = 'istantaneo',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Uno spruzzo di acido scaturisce dalle mani distese dell''incantatore, infliggendo 1d6 Danni da acido per livello dell''incantatore (massimo 15d6) a tutte le creature entro l''area (Riflessi dimezza). Questo acido continua a bruciare per 1 round, infliggendo 1d6 Danni da acido ogni due livelli dell''incantatore (massimo 7d6) a tutte le creature che falliscono il Tiro Salvezza contro l''Incantesimo (un secondo Tiro Salvezza su Riflessi nel turno della creatura nega questo Danno aggiuntivo).

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/acidic-spray'
WHERE name = 'Spruzzo Acido';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = NULL,
  saving_throw = 'Volontà nega (oggetto) o nessuno',
  spell_res = 'sì (oggetto)',
  full_description = ': Si muovono gli oggetti o le creature concentrandosi su di loro. A seconda della versione selezionata, l''incantesimo può fornire una forza discreta e continuata, una manovra in combattimento o un singolo strattone violento.

• Forza Sostenuta: Una forza sostenuta muove una creatura o un oggetto di un peso non superiore a 12,5 kg per livello dell''incantatore (fino a un massimo di 187,5 kg al 15° livello) fino a 6 metri per round. Una creatura può negare gli effetti su se stessa o un oggetto che possiede superando un Tiro Salvezza su Volontà o con la sua Resistenza agli Incantesimi.
Questa versione dell''incantesimo dura fino a 1 round per livello dell''incantatore, ma può terminare prima se si interrompe la Concentrazione. Il peso può essere spostato orizzontalmente, verticalmente o in entrambe le direzioni. Un oggetto non può essere spostato oltre il raggio di azione. L''incantesimo ha termine se l''oggetto viene spinto oltre il raggio di azione. Se si interrompe la Concentrazione per qualsiasi motivo, l''oggetto si ferma o cade a terra.
La Telecinesi può manipolare qualsiasi oggetto per il quale basterebbe una mano. Ad esempio, una leva o una corda possono essere tirati, una chiave può essere girata, un oggetto può essere ruotato e così via. Se è necessario applicare una forza, usare le limitazioni di peso sopra specificate. Si potrebbe perfino essere in grado di sciogliere i nodi più semplici, ma per attività delicate come questa è necessaria una prova di Intelligenza con CD 15.

• Manovra in Combattimento: In alternativa, una volta per round, si può usare Telecinesi per Disarmare, Lottare (anche Immobilizzare), Sbilanciare o Spingere. Questi attacchi vengono compiuti normalmente ma non provocano Attacchi di Opportunità, si usa il proprio livello dell''incantatore invece del BMC (per Disarmare e Lottare), si usa il proprio modificatore di Intelligenza (nel caso di un Mago) o di Carisma (nel caso di uno Stregone) al posto del modificatore di Forza o di Destrezza. Non è consentito alcun Tiro Salvezza contro questi tentativi, ma la Resistenza agli Incantesimi viene applicata normalmente. Questa versione dell''incantesimo dura 1 round per livello dell''incantatore, ma si interrompe se si abbandona la Concentrazione.

• Strattone Violento: In alternativa l''energia dell''incantesimo può essere spesa in un singolo round. È possibile scagliare uno o più oggetti o creature (massimo 15) che si trovino entro il raggio di azione e tutti entro 3 metri gli uni dagli altri contro un qualsiasi bersaglio che si trovi entro il raggio di 3 metri per livello dagli oggetti mossi. Si può lanciare un peso totale fino a 12,5 kg per livello dell''incantatore (fino a un massimo di 187,5 kg al 15° livello).

Bisogna andare a segno con un attacco (uno per creatura od oggetto lanciato) per colpire il bersaglio con gli oggetti, usando il proprio Bonus di Attacco Base + il proprio modificatore di Intelligenza (se si è un Mago) o di Carisma (se si è uno Stregone). Le armi infliggono danni standard (senza alcun bonus di Forza; va notato che le frecce o i dardi conferiscono danni appropriati alla loro taglia quando vengono usati in questo modo); gli altri oggetti infliggono danni variabili da 1 danno per ogni 12,5 kg (per gli oggetti meno pericolosi) a 1d6 danni per ogni 12,5 kg (per oggetti duri e pesanti). Gli oggetti che mancano il bersaglio finiscono in un quadretto adiacente al bersaglio.

Le creature comprese entro i limiti di peso dell''incantesimo possono essere lanciate, ma hanno diritto a un Tiro Salvezza su Volontà (e alla Resistenza agli Incantesimi) per negare l''effetto, come anche chi tiene eventuali oggetti colpiti dall''incantesimo.

Se una creatura soggetta a Telecinesi viene lanciata contro una superficie solida, subisce danni come se fosse caduta per 3 metri (1d6 danni).

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/telekinesis'
WHERE name = 'Telecinesi';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale e contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno e Volontà nega (oggetto)',
  spell_res = 'no e sì (oggetto)',
  full_description = ': Questo incantesimo trasporta istantaneamente fino a una destinazione specificata, la cui distanza può essere pari a un massimo di 150 km per livello dell''incantatore. Il viaggio interplanare non è possibile. Oltre a sé, anche gli oggetti posseduti vengono trasportati, purché non si superi il proprio carico massimo. È possibile anche trasportare un''altra creatura consenziente di taglia Media o inferiore (che a sua volta può trasportare oggetti o Equipaggiamento fino al suo carico massimo) o il suo equivalente per ogni 3 livelli dell''incantatore. Una creatura Grande conta come 2 creature Medie, una creatura Enorme conta come 2 creature Grandi e così via. Tutte le creature da trasportare devono essere in contatto l''una con l''altra, e bisogna essere in contatto con almeno una delle creature. Come in tutti gli incantesimi in cui il raggio di azione è personale e si è il bersaglio, non è necessario alcun Tiro Salvezza e non va applicata la Resistenza agli Incantesimi. Solo gli oggetti usati o tenuti da un''altra persona hanno diritto a Tiri Salvezza e alla Resistenza agli Incantesimi.

Bisogna avere un''idea precisa dell''ubicazione e della disposizione del posto che si vuole raggiungere. Più l''immagine mentale è chiara, più ci sono possibilità che il Teletrasporto funzioni. Aree di forte energia fisica o magica possono rendere il Teletrasporto più difficile o perfino impossibile.

Per vedere quanto il Teletrasporto funzioni bene, tirate un d% e consultare la tabella. Fate riferimento alle informazioni che seguono per la spiegazione dei termini impiegati nella tabella.

Familiarità

Sul Bersaglio

Fuori Bersaglio

Area Simile

Errore

Molto Familiare

01–97

98–99

100

—

Studiato Attentamente

01–94

95–97

98–99

100

Visto per Caso

01–88

89–94

95–98

99–100

Visto una Volta

01–76

77–88

89–96

97–100

Falsa Destinazione

—

—

81–92

93–100

• Familiarità
• Molto Familiare: è un posto dove si è stati molto spesso e dove ci si sente come a casa.

• Studiato Attentamente: è un posto che si conosce bene, perché lo si può vedere, perché ci si è stati spesso o perché lo si è studiato per almeno 1 ora con altri mezzi.

• Visto per Caso: è un posto visto più di una volta ma che non è molto familiare.

• Visto una Volta: è un posto visto una volta sola, magari con Scrutare.

• Falsa Destinazione: è un posto che non esiste, o come se ci si fosse teletrasportati in una locazione altrimenti familiare che non esiste più o che è stata completamente modificata tanto da non essere più familiare. Quando si viaggia verso una falsa destinazione, occorre tirare 1d20+80 per ottenere un risultato sulla tabella invece di tirare un d%, dal momento che non si ha speranza di arrivare a una vera destinazione o nemmeno di essere fuori bersaglio.

• Sul Bersaglio: Si appare esattamente dove si voleva.

• Area Simile: Ci si ritrova in un''area che tematicamente e visivamente è simile all''area bersaglio. Solitamente è il luogo più vicino fra quelli simili esistenti all''interno del raggio di azione. Se non ce ne sono, l''incantesimo non ha effetto.

• Fuori Bersaglio: Si appare incolumi a una distanza e in una direzione casuale dalla destinazione. La distanza fuori bersaglio è un d% della distanza che si voleva percorrere e la direzione viene determinata a caso.

• Errore: L''incantatore e tutti coloro che si teletrasportavano con lui sono stati “rimescolati”. Ognuno subisce 1d10 danni e si tira di nuovo sulla tabella per vedere dove si finisce. Per questo secondo tiro, occorre tirare 1d20+80. Ogni volta che esce un “Errore”, i personaggi subiscono ulteriori danni e devono ritirare.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/teleport'
WHERE name = 'Teletrasporto';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 ora/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Funziona come Volare, ma permette di Volare alla velocità di 12 metri (9 metri se si indossa un’armatura media o pesante, o se si porta un carico medio o pesante) con un bonus alle prove di Volare pari alla metà del livello dell’incantatore. Quando si usa questo incantesimo per il movimento su lunghe distanze, si può andare veloci senza subire danni non letali (una marcia forzata richiede comunque prove di Costituzione). Ciò vuol dire che si possono coprire 103 km in un volo di 8 ore (o 77 km alla velocità di 9 metri).

FAQ &#160;

Quando un personaggio o una creatura sta volando e la creatura decide di salire di 45 gradi, le regole stabiliscono che si muove a velocità dimezzata? Le regole per il conteggio del movimento in diagonale si applicano ancora quando ci si sposta diagonalmente in questo modo?

No. Dal momento che il gioco è generalmente assunto per essere giocato in due dimensioni, anche quando si rappresenta il combattimento tridimensionale, le regole per l''ascensione sono gestite attraverso la riduzione della velocità anziché chiedere ai giocatori e ai GM di accertarsi del movimento verticale in diagonale.
[Fonte]

FAQ &#160;

Può una creatura Paralizzata o Stordita continuare a volare con volo magico? Una creatura con volo magico, poiché possiede una velocità di volare non "naturale", applica o meno bonus e penalità alle prove di Volare? Volare rende una creatura immune dall''essere Impreparata?

No, nessuna creatura che perde tutte le azioni può intraprendere un''azione per tentare una prova di Volare per posizionarsi e quindi cade automaticamente. Ciò include creature Paralizzate, Stordite o Frastornate. Il volo magico agisce nello stesso modo, anche per la Paralisi, in quanto non è un''azione puramente mentale. Una creatura con Destrezza pari a 0 non può volare, e Paralisi riduce la Destrezza di una creatura a 0. Nonostante l''Abilità Volare affermi che i bonus e le penalità relativi alla manovrabilità si applichino a creature con una velocità naturale di volare, si applicano anche a qualsiasi altra velocità di volo. Se non si applicherebbero a creature che hanno ottenuto il volo artificialmente o per magia, allora quelle manovrabilità (come la manovrabilità buona elencata per l''incantesimo Volare) non avrebbero alcun effetto di gioco. Infine, l''affermazione "Non si considera Impreparato in volo" significa che il volo (a differenza del bilanciamento necessario per le Abilità Acrobazia o Scalare) non rende automaticamente Impreparato o obbliga a perdere il proprio bonus di Destrezza alla CA; ciò non significa che il volo renda immune dall''essere Impreparato. [Fonte]

Fonte: http://www.d20pfsrd.com/magic/all-spells/o/overland-flight'
WHERE name = 'Volo Giornaliero';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'lungo (120 metri + 12 m/livello)',
  duration = 'permanente finché non è innescato, poi 1 minuto/livello',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Allucinazione Audiovisiva, tranne per il fatto che il fantasma di questo incantesimo non ha alcun effetto apparente finché non si verifica una condizione specifica. È necessario superare la Resistenza agli Incantesimi del bersaglio per attivare Allucinazione Innescata, ma il bersaglio non tenta un Tiro Salvezza su Volontà per non credere all''illusione finché non si verifica la condizione (a quel punto riceve un tiro salvezza automatico su Volontà, come nel caso di Allucinazione Audiovisiva). Il fantasma può includere elementi uditivi, olfattivi, visivi, tattili e termici, compreso il parlato intelligibile.

Quando si lancia l''incantesimo, si stabilisce la condizione scatenante (come sentire una certa parola o vedere un tipo di creatura). L''evento che innesca l''illusione può essere generico o dettagliato a piacere, ma deve essere basato su un innesco acustico, tattile, olfattivo o visivo. L''innesco non può essere basato su una qualità normalmente non evidente ai sensi, come l''Allineamento. Allucinazione Innescata utilizza i sensi del bersaglio per notare i fattori scatenanti.

Fonte: Triggered Hallucination'
WHERE name = 'Allucinazione Innescata';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di qualsiasi creatura corporea di Taglia Minuta, Minuscola, Piccola, Media, Grande o Enorme del Tipo Non Morto, che deve avere una sagoma vagamente umanoide (come un Ghoul, Scheletro o Zombi). Si ottiene l''attacco col morso (2d6 per le forme Enormi, 1d8 per le forme Grandi, 1d6 per le forme Medie, 1d4 per quelle Piccole, 1d3 per quelle Minuscole e 1d2 per quelle Minute), due attacchi con gli artigli o di schianto (2d6 per le forme Enormi, 1d8 per le forme Grandi, 1d6 per le forme Medie, 1d4 per quelle Piccole, 1d3 per quelle Minuscole e 1d2 per quelle Minute). Se la forma che si assume ha qualunque delle seguenti capacità, si assumono anche queste: Afferrare, Astuzia Naturale, Aura di Paura, Aura Innaturale, Balzare, Fiuto, Imitazione, Imitazione dei Suoni, Immobilità, Malattia, Nuotare 18 metri, Percezione Cieca 18 metri, Propulsione, Ragnatela, RD 5/-, Risucchio di Energia, Sbilanciare, Scalare 18 metri, Scavare 9 metri, Scurovisione 18 metri, Senz''Ombra, Soverchiare, Sperone, Stritolare, Travolgere, Veleno, Visione a 360°, Visione Crepuscolare e Volare 18 metri (manovrabilità buona). 

In questa forma, si viene individuati come creatura Non Morta (come con Individuazione dei Non Morti, ma non con la magia che rivela la vera forma come Visione del Vero) e considerati come tali per quanto riguarda Incanalare Energia, incantesimi di Cura e incantesimi di Infliggi, ma non per altri effetti con bersaglio specifico o che reagiscono diversamente con i Non Morti (come Luce Incandescente).

Se la creatura ha immunità o resistenza a qualsiasi tipo di energia, si ottiene resistenza 20 a quei tipi di energia. Se la creatura ha vulnerabilità ad un tipo di energia, si ottengono anche queste. In questa forma, si ottiene bonus +8 ai Tiri Salvezza contro effetti di influenza mentale, Malattia, Veleno, Sonno e Stordimento. Se la forma ha una vulnerabilità a un attacco (come luce solare), si ottiene quella vulnerabilità. 

• Non Morto di Taglia Minuta: Se la forma che si assume è quella di un Non Morto di Taglia Minuta, si ottiene Bonus di Taglia +6 a Destrezza, penalità di -4 a Forza e Bonus di Armatura Naturale +1.

• Non Morto di Taglia Minuscola: Se la forma che si assume è quella di un Non Morto di Taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità di -2 a Forza e un Bonus di Armatura Naturale +1.

• Non Morto di Taglia Piccola: Se la forma che si assume è quella di un Non Morto di Taglia Piccola, si ottiene un Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Non Morto di Taglia Media: Se la forma che si assume è quella di un Non Morto di Taglia Media, si ottiene un Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Non Morto di Taglia Grande: Se la forma che si assume è quella di un Non Morto di Taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità di -2 a Destrezza e un Bonus di Armatura Naturale +4.

• Non Morto di Taglia Enorme: Se la forma che si assume è quella di un Non Morto di Taglia Enorme, si ottiene Bonus di Taglia +6 a Forza, penalità di -4 a Destrezza e Bonus di Armatura Naturale +6.

Fonte: http://www.d20pfsrd.com/magic/all-spells/u/undead-anatomy-i'
WHERE name = 'Anatomia Non Morta III';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Sotto l''effetto di questo incantesimo, ci si può teletrasportare fino a 9 m come Azione di Movimento. Si deve terminare questo movimento in uno spazio libero in cui si può stare in piedi entro la linea di visuale. Altrimenti, si può impiegare un''Azione di Movimento per rialzarsi da Proni attraverso il teletrasporto. Il teletrasporto non provoca Attacchi d''Opportunità. 

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/walk-through-space'
WHERE name = 'Camminare nello Spazio';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega',
  spell_res = 'si',
  full_description = ': Il soggetto e tutto ciò che porta con sé viene trasformato in una statua inerte e priva di intelletto. Se la statua originata da questo incantesimo viene infranta o danneggiata, la creatura (se mai dovesse tornare alla sua condizione originale) porterà su di sé ferite o deformità analoghe. La creatura non è morta, ma non sembra neanche essere viva quando viene esaminata attraverso incantesimi come Visione della Morte.

Solo creature di carne sono soggette a questo incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/flesh-to-stone'
WHERE name = 'Carne in Pietra';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': L’incantesimo produce una scarica elettrica che scaturisce dalla punta delle dita. A differenza di Fulmine, Catena di Fulmini colpisce prima un oggetto o una creatura quindi si sposta verso altri bersagli.

Il fulmine infligge 1d6 danni da elettricità per livello dell’incantatore (massimo 20d6) sul bersaglio primario. Dopo che il fulmine ha colpito, può formarsi un arco elettrico di fulmini secondari che colpiscono un numero di bersagli secondari pari al livello dell’incantatore (massimo 20). I fulmini secondari colpiscono un bersaglio ciascuno e infliggono ciascuno lo stesso danno del fulmine primario.

Tutti i bersagli possono tentare un Tiro Salvezza su Riflessi per dimezzare i danni. La CD del Tiro Salvezza per dimezzare i danni dei fulmini secondari è di 2 punti inferiore rispetto a quella del primo fulmine. Si possono scegliere i bersagli secondari a piacere, ma tutti devono trovarsi entro 9 metri dal bersaglio primario; inoltre nessun bersaglio può essere colpito più di una volta. È possibile scegliere di colpire meno bersagli secondari rispetto al massimo consentito.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/chain-lightning'
WHERE name = 'Catena di Fulmini';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si assume la forma di un Elementale dell''Acqua, dell''Aria, del Fuoco o della Terra Grande. Le capacità che si ottengono dipendono dall''elementale prescelto. Le capacità elementali basate sulla Taglia, come Bruciare, Turbine e Vortice, usano la Taglia dell''elementale in cui ci si è trasformati per determinare l''effetto. Rende inoltre immuni ai danni da Sanguinamento, ai colpi critici e agli Attacchi Furtivi mentre si è in forma elementale.

• Elementale dell''Acqua: Se la forma è quella di un Elementale dell''Acqua Grande, si ottiene Bonus di Taglia +2 a Forza e +6 a Costituzione e una penalità -2 a Destrezza e Bonus di Armatura Naturale +6. Si ottiene anche Nuotare 18 m, Scurovisione 18 m, la capacità di creare un Vortice, e la capacità di respirare acqua.

• Elementale dell''Aria: Se la forma è quella di un Elementale dell''Aria Grande, si ottiene Bonus di Taglia +2 a Forza e +4 a Destrezza e Bonus di Armatura Naturale +4. Si ottiene anche Scurovisione 18 m, Volare 18 m (perfetta) e la capacità di creare un Turbine.

• Elementale del Fuoco: Se la forma è quella di un Elementale del Fuoco Grande, si ottiene Bonus di Taglia +4 a Destrezza e +2 a Costituzione e Bonus di Armatura Naturale +4. Si ottiene anche Scurovisione 18 m, Resistenza al Fuoco 20, Vulnerabilità al Freddo e la capacità di Bruciare.

• Elementale della Terra: Se la forma è quella di un Elementale della Terra Grande, si ottiene Bonus di Taglia +6 a Forza penalità -2 a Destrezza, bonus +2 a Costituzione e Bonus di Armatura Naturale +6. Si ottiene anche Scavare 6 m, Scurovisione 18 m e la capacità di Scorrere sulla Terra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/elemental-body'
WHERE name = 'Corpo Elementale III';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 metri/livello)',
  duration = 'istantaneo',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': L''incantesimo produce una catena infuocata che scaturisce dalla punta delle dita. La Catena di Fuoco colpisce prima un oggetto o una creatura quindi si sposta verso altri bersagli.

Il fuoco infligge 1d6 danni da fuoco per livello dell''incantatore (massimo 20d6) sul bersaglio primario. Dopo che il fuoco ha colpito, può formarsi un arco infuocato di catene infuocate secondarie che colpiscono un numero di bersagli secondari pari al livello dell’incantatore (massimo 20). Le catene secondarie colpiscono un bersaglio ciascuno e infliggono ciascuno lo stesso danno della catena primaria.

Tutti i bersagli possono tentare un Tiro Salvezza su Riflessi per dimezzare i danni. La CD del Tiro Salvezza per dimezzare i danni delle catene secondarie è di 2 punti inferiore rispetto a quella della prima catena. Si possono scegliere i bersagli secondari a piacere, ma tutti devono trovarsi entro 9 metri dal bersaglio primario; inoltre nessun bersaglio può essere colpito più di una volta. È possibile scegliere di colpire meno bersagli secondari rispetto al massimo consentito.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/chains-of-fire'
WHERE name = 'Catene di Fuoco';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione immediata',
  range = 'vicino (7,5 m + 1,5 m/2 livelli)',
  duration = 'istantanea',
  saving_throw = 'Tempra parziale (vedi testo)',
  spell_res = 'sì',
  full_description = ': È possibile lanciare questo incantesimo solo a seguito di un Colpo Critico confermato che infligga al bersaglio danni taglienti. Se il bersaglio è dotato di una testa riconoscibile e fallisce il Tiro Salvezza, l''attacco infligge 4d6 danni aggiuntivi e il moltiplicatore del Critico aumenta di 1. Se quindi il Colpo Critico porta il bersaglio a 0 Punti Ferita o meno, questi viene immediatamente decapitato e muore a meno che non possa sopravvivere senza testa. Anche se il Tiro Salvezza viene superato, il Colpo Critico infligge 4d6 danni aggiuntivi. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/d/decapitate/'
WHERE name = 'Decapitare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Tempra parziale (oggetto)',
  spell_res = 'sì',
  full_description = ': Un sottile raggio verde scaturisce dal proprio dito indice. Per colpire il bersaglio, occorre compiere con successo un attacco di contatto a distanza. Ogni creatura colpita dal raggio subisce 2d6 danni per livello dell’incantatore (fino a un massimo di 40d6). Una creatura ridotta a 0 o meno punti ferita da questo incantesimo viene completamente disintegrata, lasciandosi dietro solo una scia di polvere. L’Equipaggiamento della creatura non viene disintegrato.

Quando usato contro un oggetto, il raggio semplicemente disintegra fino a un cubo con spigolo di 3 metri di materia non vivente, quindi nel caso di oggetti o strutture molto grandi, solo una parte viene disintegrata, il raggio ha effetto anche su oggetti costruiti interamente di Forza, come Mano Possente o Muro di Forza, ma non su effetti magici come Globo di Invulnerabilità o Campo Antimagia.

Se la creatura o l’oggetto supera il Tiro Salvezza su Tempra, subisce solo 5d6 danni. Se i danni subiti riducono la creatura o l’oggetto a 0 o meno Punti Ferita, vengono completamente disintegrati.

Solo la prima creatura o il primo oggetto colpiti ne subiscono gli effetti; cioè, il raggio funziona solo su un singolo bersaglio ad ogni lancio dell’incantesimo.

Fonte: http://www.d20pfsrd.com/magic/all-spells/d/disintegrate'
WHERE name = 'Disintegrazione';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = 'istantaneo',
  saving_throw = 'speciale, vedi testo',
  spell_res = 'sì',
  full_description = ': Si aumenta incredibilmente la pressione nella testa del bersaglio; l''incantesimo funziona solo su una creatura che ha una testa e morirebbe se la perdesse. L''incantesimo uccide i bersagli con 20 Punti Ferita o meno, facendone esplodere la testa e spargendone i frammenti nel raggio di 3 metri. Tutte le creature nell''area devono superare un Tiro Salvezza su Riflessi o subiscono 2d6 danni taglienti dai frammenti volanti.

Un bersaglio con più di 20 Punti Ferita subisce 1d6 danni per livello dell''incantatore (massimo 20d6), ma può tentare un Tiro Salvezza su Tempra per dimezzare i danni. Se questo danno dovesse renderlo Inabile o Morente, il bersaglio muore e la sua testa esplode come descritto sopra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/e/explode-head'
WHERE name = 'Esplosione Cranica';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '3 round',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Si colpiscono diversi nemici con raggi infuocati. Si possono scagliare tre raggi, più un raggio aggiuntivo ogni 4 livelli oltre l’11° (fino ad un massimo di 5 raggi al 19° livello). Ogni raggio richiede un attacco di contatto a distanza per colpire e infligge 4d6 danni da fuoco. I raggi possono essere scagliati contro lo stesso bersaglio o contro bersagli differenti, ma tutti devono essere mirati contro bersagli che siano entro 9 metri l’uno dall’altro e scagliati simultaneamente.

Ad ogni round, al proprio turno, un nuovo raggio scaturisce da ognuna delle creature che hanno subito danni dall’incantesimo nel round precedente; questi nuovi raggi attaccano come se fossero scagliati dall’incantatore, ma il loro punto di origine è la creatura precedentemente colpita. Si possono scegliere nuovi bersagli come azione gratuita, che devono essere tutti entro un raggio d’azione vicino (7,5 m + 1,5 m ogni 2 livelli) dal loro nuovo punto di origine. Questo contagio di fiamme continua per un totale di 3 round: una creatura può essere colpita più di una volta da questo incantesimo nel corso di questi 3 round, ma mai da un raggio scaturito da se stessa.

Fonte: http://www.d20pfsrd.com/magic/all-spells/c/contagious-flame'
WHERE name = 'Fiamma Contagiosa';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una qualunque creatura di Taglia Minuta, Minuscola, Piccola, Media, Grande o Enorme di Tipo Umanoide Mostruoso. Se la forma che si assume ha una qualunque delle seguenti capacità, si assumono anche queste: Afferrare, Aspetto Spaventoso, Astuzia Naturale, Attacco in Salto, Balzare, Ferocia, Fiuto, Frenesia Sanguinaria, Imitazione, Imitazione dei Suoni, Immobilità, Nuotare 36 metri, Parlare con gli Squali, Percezione Cieca 18 metri, Percezione Tellurica 18 metri, Propulsione, Ragnatela, Ruggito, Sbilanciare, Scalare 27 metri, Scavare 18 metri, Scurovisione 27 metri, Soverchiare, Soffio, Sperone, Spine, Squartare, Stritolare, Travolgere, Veleno, Vigore Gelido, Visione a 360°, Visione Crepuscolare e Volare 36 metri (manovrabilità buona). 

Se la forma che si assume possiede il Sottotipo Acquatico si ottengono i Sottotipi Acquatici e Anfibio. Se la creatura possiede la qualità speciale Armi Sottodimensionate, si ottiene tale capacità. 

Se la creatura ha Immunità o Resistenza a un qualsiasi tipo di energia, si ottiene Resistenza 20 a quei tipi di energia. Se la creatura ha Vulnerabilità verso un tipo di energia, si ottengono anche queste. Se la creatura ha Immunità al Veleno, si ottiene bonus +8 ai Tiri Salvezza contro Veleno.

• Umanoide Mostruoso Minuto: Se si assume la forma di un Umanoide Mostruoso di Taglia Minuta, si ottiene Bonus di Taglia +6 a Destrezza, penalità -4 a Forza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso Minuscolo: Se si assume la forma di un Umanoide Mostruoso di Taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità -2 a Forza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Piccola: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Piccola, si ottiene bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Umanoide Mostruoso di Taglia Media: Se la forma che si assume è quella di un Umanoide Mostruoso di Taglia Media, si ottiene bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Umanoide Mostruoso Grande: Se si assume la forma di un Umanoide Mostruoso di Taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità -2 a Destrezza e Bonus di Armatura Naturale +4.

• Umanoide Mostruoso Enorme: Se si assume la forma di un Umanoide Mostruoso di Taglia Enorme, si ottiene Bonus di Taglia +6 a Forza, penalità -4 a Destrezza e Bonus di Armatura Naturale +6.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/monstrous-physique-i'
WHERE name = 'Fisico Mostruoso IV';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = 'vedi sotto',
  spell_res = 'no',
  full_description = ': Si assume la forma di un Drago cromatico o metallico di taglia Media. Si ottiene Bonus di Taglia +4 a Forza, Bonus di Taglia +2 a Costituzione, Bonus di Armatura Naturale +4, Resistenza a un Elemento, Scurovisione 18 m, Soffio e Volare 18 m (scarsa). Si ottiene anche un morso (1d8), 2 artigli (1d6), 2 attacchi d’ala (1d4). La resistenza al Soffio dipende dal tipo di Drago. Il Soffio può essere usato solo una volta dopo aver lanciato questo incantesimo. Tutti i Soffi infliggono 6d8 danni e consentono un Tiro Salvezza su Riflessi per dimezzare il danno. Inoltre, alcuni tipi di Drago garantiscono capacità aggiuntive, come indicato di seguito.

• Drago Bianco: cono di freddo di 9 m, Nuotare 18 m, Resistenza al Freddo 20, Vulnerabilità al Fuoco

• Drago Blu: linea di elettricità di 18 m, Resistenza all’Elettricità 20, Scavare 6 m

• Drago d’Argento: cono di freddo di 9 m, Resistenza al Freddo 30, Vulnerabilità al Fuoco

• Drago di Bronzo: linea di elettricità di 18 m, Nuotare 18 m, Resistenza all’Elettricità 20

• Drago d’Ottone: linea di fuoco di 18 m, Resistenza al Fuoco 20, Scavare 9 m, Vulnerabilità al Freddo

• Drago di Rame: linea di acido di 18 m, Movimenti del Ragno (sempre attivo), Resistenza all’Acido 20

• Drago d’Oro: cono di fuoco di 9 m, Nuotare 18 m, Resistenza al Fuoco 20

• Drago Nero: linea di acido di 18 m, Nuotare 18 m, Resistenza all’Acido 20

• Drago Rosso: cono di fuoco di 9 m, Resistenza al Fuoco 30, Vulnerabilità al Freddo

• Drago Verde: cono di acido di 9 m, Nuotare 12 m, Resistenza all’Acido 20

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/form-of-the-dragon-i'
WHERE name = 'Forma di Drago I';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'vicino (7,5 m + 1,5 m/ogni 2 livelli)',
  duration = '1 round/livello (I)',
  saving_throw = NULL,
  spell_res = 'sì',
  full_description = ': Questo incantesimo funziona come Illusione di Tradimento, tranne per il fatto che nasconde anche le proprie azioni (come Illusione di Calma) e rende invisibili tutti gli effetti degli incantesimi e gli attacchi a distanza che provengono da voi fino a quando non raggiungono il bersaglio dell''attacco (questo non fa sì che il bersaglio dell''attacco non sia in grado di evitarlo, poiché vede comunque l''attacco proveniente dal bersaglio dell''incantesimo).

Fonte: Illusion of Treachery, Greater'
WHERE name = 'Illusione di Tradimento Superiore';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'sì',
  full_description = ': Mano Possente crea una mano magica Grande che compare tra sé e insegue e spinge via l’avversario che le è stato indicato. La mano ottiene un attacco di Spingere a round e non provoca un Attacco di Opportunità. Il suo BMC per le prove di Spingere usa il livello dell’incantatore invece del suo Bonus di Attacco Base, con bonus +8 alla prova di Forza (punteggio 27), e un bonus per il fatto di essere Grande. La mano si muove sempre assieme al nemico e lo spinge via fino alla massima distanza consentita; non ha limiti di movimento per questo scopo. 

Questa mano fluttuante senza corpo si sposta in modo da rimanere sempre tra i due, indipendentemente da dove ci si muove o dai tentativi dell’avversario di aggirarla, offrendo così una copertura (+4 alla CA) contro quell’avversario. Nulla può ingannare la mano, che continua a spostarsi davanti al nemico incurante dell’oscurità, dell’Invisibilità, della metamorfosi o di qualsiasi altro tentativo di nascondersi o mascherarsi. La mano, tuttavia, non insegue l’avversario.

Una Mano Possente è lunga 3 metri ed è quasi altrettanto larga a dita aperte. Ha tanti Punti Ferita quanti ne ha l’incantatore in piena salute e ha CA 20 (+11 naturale, -1 taglia). Subisce danni come una creatura normale, ma gran parte degli effetti magici che non provocano danni non hanno effetto su di essa.

La mano non provoca mai Attacchi di Opportunità da parte degli avversari. Non è in grado di spingere attraverso un Muro di Forza o di entrare in un Campo Antimagia, ma subisce tutti gli effetti di un Muro Prismatico o di una Sfera Prismatica. La mano effettua Tiri Salvezza come quelli del suo incantatore.

Disintegrazione o un Dissolvi Magie effettuato con successo la distruggono.

Dirigere l’incantesimo contro un nuovo avversario è un’azione di movimento.

La mano impedisce agli avversari di avvicinarsi all’incantatore a meno che prima non abbiano avuto successo in un attacco di Spingere, muovendo sia la mano che il bersaglio più vicini all’incantatore. Oppure alla mano può essere ordinato di interporsi, come Mano Interposta. In questo caso qualsiasi creatura che pesi fino a 1.000 kg e che tenti di farsi strada spingendo oltre la mano viene rallentata a metà della sua normale velocità. La mano non riesce a rallentare la velocità di una creatura che pesa più di 1.000 kg, ma continua comunque a influenzare i suoi attacchi.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/forceful-hand'
WHERE name = 'Mano Possente';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'vedi testo',
  spell_res = 'no',
  full_description = ': Si è in grado di creare una parete di ferro verticale che sorge dal nulla. La parete può essere usata per chiudere un passaggio o un varco, in quanto la barriera di ferro può inserirsi in qualsiasi materiale non vivente circostante, se la sua area lo consente. La parete non può essere evocata in modo da occupare lo stesso spazio di una creatura o di un altro oggetto. La superficie della parete deve essere sempre piatta, ma si possono adattare i suoi contorni in modo che aderiscano allo spazio circostante disponibile.

Il muro di ferro è spesso 2,5 cm ogni 4 livelli dell''incantatore. È possibile raddoppiare l''area di estensione del muro dimezzando il suo spessore. Ogni quadrato con il lato di 1,5 metri del muro ha 30 Punti Ferita ogni 2,5 cm di spessore e Durezza 10. Se una sezione del muro raggiunge 0 Punti Ferita, quella sezione viene infranta. Se una creatura tenta di aprire un varco nel muro con un singolo attacco, la CD della sua prova di Forza è 25 + 2 ogni 2,5 cm di spessore.

Se lo si desidera, il muro può comparire verticalmente e appoggiato a una superficie piatta, ma non attaccato ad essa, in modo che sia possibile spingerlo e fare in modo che cadendo schiacci le creature dall''altra parte. Se nessuno spinge il muro, tuttavia, c''è una probabilità del 50% che la barriera cada nella direzione opposta. Le creature possono spingere il muro in una direzione precisa, invece che farlo cadere a caso. Una creatura deve superare una prova di Forza con CD 40 per riuscire a spingerlo con successo. Le creature che vogliono sfuggire alla caduta e che abbiano lo spazio per farlo devono superare un Tiro Salvezza su Riflessi. Le creature di taglia Grande o inferiore che falliscono il tiro subiscono 10d6 danni; il muro non può schiacciare creature di taglia Enorme o superiore.

Come un normale muro di ferro, la barriera è soggetta agli effetti della ruggine, dell''usura e di ogni altro agente naturale. Il ferro creato da questo incantesimo non è adatto all''uso per creare altri oggetti e non può essere venduto.

Fonte: http://www.d20pfsrd.com/magic/all-spells/w/wall-of-iron'
WHERE name = 'Muro di Ferro';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round/livello',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Dal punto indicato scaturisce ribollendo una banco di nebbia. La nebbia oscura ogni visuale, compresa la Scurovisione, oltre 1,5 metri. Una creatura che si trova entro un raggio di 1,5 metri gode di Occultamento (gli attacchi hanno una probabilità del 20% di mancare il bersaglio). Le creature che si trovano oltre i 1,5 metri godono di Occultamento Totale (probabilità del 50% di mancare il bersaglio, e chi attacca non è in grado di usare la sua vista per localizzare il bersaglio).

Qualsiasi creatura provi a muoversi al suo interno avanzerà alla metà della sua velocità normale, e tutti i suoi Tiri per Colpire e per i danni in mischia subiscono penalità –2. Questi vapori impediscono efficaci attacchi con armi a distanza (a parte i raggi magici e simili). Una creatura o un oggetto che cade nella nebbia è rallentato, al punto tale che ogni 3 metri di vapori attraversati dalla creatura o dall''oggetto riducono i danni da caduta di 1d6. Una creatura non può fare un passo di 1,5 metri mentre si trova all''interno di Nebbia Acida, inoltre , i vapori di questo incantesimo sono particolarmente acidi. Ad ogni round nel proprio turno, a partire da quando l''incantesimo viene lanciato, la nebbia infligge 2d6 danni da acido ad ogni creatura ed agli oggetti che si trovano al suo interno.

Nebbia Acida, e gli effetti che funzionano come Nebbia Acida, non si cumulano gli uni con gli altri ai fini di rallentare il movimento o di conferire penalità all''attacco.

A differenza della nebbia normale, solo un vento molto forte (46,5 o più km/h) riesce a disperdere questi vapori, e impiega solo 1 round.

Fonte: http://www.d20pfsrd.com/magic/all-spells/a/acid-fog'
WHERE name = 'Nebbia Acida';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'lungo (120 m + 12 m/livello)',
  duration = 'istantaneo o 1 round/livello',
  saving_throw = 'Riflessi dimezza',
  spell_res = 'sì',
  full_description = ': La Sfera Congelante crea una sfera gelida di energia fredda che saetta dalle proprie dita fino al punto selezionato, dove deflagra in un’esplosione del raggio di 12 metri, infliggendo 1d6 danni da freddo per livello dell’incantatore (massimo 15d6) ad ogni creatura nell’area. Una creatura Elementale (acqua) invece subisce 1d8 danni da freddo per livello dell’incantatore (massimo 15d8) ed è Barcollante per 1d4 round.

Se la Sfera Congelante colpisce un corpo d’acqua o un liquido che contenga una grossa percentuale di acqua (escluse le creature a base d’acqua), congela il liquido fino a una profondità di 15 cm in un raggio di 12 metri. Questo ghiaccio dura 1 round per livello dell’incantatore. Le creature che stavano nuotando sulla superficie dell’acqua rimangono intrappolate nel ghiaccio. Tentare di liberarsi è un’azione di round completo. Per riuscirvi, una creatura intrappolata deve effettuare una prova di Forza con CD 25 o una prova di Artista della Fuga con CD 25.

Se lo si desidera, si può aspettare a scagliare la sfera dopo aver completato l’incantesimo. Infatti, si può considerare questo incantesimo come un incantesimo a contatto per il quale si sta conservando la carica. Si può mantenere la carica per un tempo pari a 1 round per livello, alla fine del quale la Sfera Congelante provoca un’esplosione centrata su di sé (non si riceve alcun Tiro Salvezza per resistere al suo effetto). Scagliare la sfera in un round successivo è un’azione standard.

Fonte: http://www.d20pfsrd.com/magic/all-spells/f/freezing-sphere'
WHERE name = 'Sfera Congelante';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = 'istantaneo',
  saving_throw = 'Tempra nega (oggetto)',
  spell_res = 'sì',
  full_description = ': Questo incantesimo riporta una creatura Pietrificata al suo stato normale, ridonandole la vita e i beni trasportati. La creatura deve superare un Tiro Salvezza su Tempra con CD 15 per sopravvivere al processo. Qualsiasi creatura Pietrificata, indipendentemente dalla taglia, può essere riportata al suo stato normale. L''incantesimo è anche in grado di trasformare una massa di pietra in una sostanza carnosa. Questa carne è inerte e priva di forza vitale, a meno che non vi fossero già forze vitali o magiche al suo interno. Ad esempio, questo incantesimo trasformerebbe una statua animata di pietra in una statua animata di carne, mentre una normale statua diventerebbe una massa inerte di carne con le fattezze della statua originale. L''incantesimo ha effetto su un oggetto non più grande di un cilindro con diametro da 30 a 90 cm e lunghezza fino a 3 metri, o un cilindro di queste dimensioni all''interno di una massa più grande di pietra.

Fonte: http://www.d20pfsrd.com/magic/all-spells/s/stone-to-flesh'
WHERE name = 'Pietra in Carne';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'medio (30 m + 3 m/livello)',
  duration = '1 round /livello (I)',
  saving_throw = 'nessuno',
  spell_res = 'no',
  full_description = ': Si acquisisce la capacita di individuare la Paura, come con Percepire Paura, ma si percepiscono solo le creature entro un raggio di azione medio. 

Come Azione Standard, una volta per round è possibile teletrasportarsi presso una creatura influenzata da un effetto di Paura entro il raggio dell''incantesimo, se si è consapevoli della sua presenza e della sua posizione approssimativa. Si possono trasportare con sé oggetti purché non si superi il carico massimo. Si arriva in uno spazio libero casuale entro 6 metri dalla creatura e si inizia subito a percepire la posizione delle creature affette da condizioni di Paura dal punto appena raggiunto.

Dopo essersi teletrasportati in una nuova posizione con l''incantesimo, non si possono effettuare ulteriori azioni nel round, come quando si lancia Porta Dimensionale. Non è possibile teletrasportarsi se nel raggio non ci sono creature influenzate da effetti di Paura. 

Fonte: https://www.d20pfsrd.com/magic/all-spells/c/cruel-jaunt/'
WHERE name = 'Spostamento Crudele';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1',
  range = 'personale e contatto',
  duration = 'istantaneo',
  saving_throw = 'nessuno e',
  spell_res = 'no e sì (oggetto)',
  full_description = ': Questo incantesimo funziona come Teletrasporto, tranne per il fatto che si può scegliere di far sì che un numero qualsiasi di creature che viaggiano con voi subisca un contrattempo o arrivi in un luogo specifico diverso da voi visualizzato contemporaneamente alla destinazione originale, o entrambi.

I tentativi di identificare Teletrasporto Sleale con una prova di abilità lo identificano erroneamente come Teletrasporto.

Fonte: Treacherous Teleport'
WHERE name = 'Teletrasporto Sleale';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 round/livello',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Si diventa una potente macchina da combattimento virtuale: si è più forti, più resistenti, più veloci e più abili in combattimento. Anche la mente cambia analogamente; si prova piacere nel combattere e non si è più in grado di lanciare incantesimi, nemmeno dagli oggetti magici.

Si ottiene Bonus di Potenziamento +4 a Forza, Destrezza e Costituzione, Bonus di Armatura Naturale +4 alla CA, Bonus di Competenza +5 ai Tiri Salvezza su Tempra e competenza in tutte le armi semplici e da guerra. Il proprio Bonus di Attacco Base è pari al proprio livello del personaggio (e quindi si possono avere attacchi multipli).

Si perde la capacità di lanciare incantesimi, compresa la capacità di usare oggetti magici ad attivazione o a completamento di incantesimo, come se gli incantesimi non fossero più sulla propria lista di classe.

Fonte: http://www.d20pfsrd.com/magic/all-spells/t/transformation'
WHERE name = 'Trasformazione Arcana';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'vicino (7,5 m + 1,5 m ogni 2 livelli)',
  duration = '1 round/livello (I) e Concentrazione + 3 round',
  saving_throw = 'nessuno o Volontà dubita (se si interagisce)',
  spell_res = 'no',
  full_description = ': Appare un proprio duplicato illusorio (come per Immagine Maggiore, una finzione), e allo stesso tempo si diventa Invisibili (come nel caso di Invisibilità Superiore, un mascheramento). Si è quindi liberi di muoversi a piacimento mentre il proprio duplicato si allontana. Il duplicato appare entro i limiti del raggio di azione dell’incantesimo, e in seguito si muove secondo le intenzioni che gli si impartiscono (che richiede una certa Concentrazione che inizia nel primo round dopo il lancio). È anche possibile far apparire l’illusione esattamente dove ci si trova per evitare che eventuali osservatori si accorgano che l’immagine è apparsa nel momento in cui si diventa Invisibili. La finzione può muoversi in direzione differente rispetto a quella che si sceglie per sé. Il duplicato si muove alla stessa velocità dell’incantatore, può parlare e gesticolare come se fosse reale; non è in grado di attaccare o lanciare incantesimi, ma può fingere di farlo.

Il duplicato illusorio dura per tutto il tempo in cui ci si concentra su di esso, più 3 round aggiuntivi. Dopo che si interrompe la Concentrazione, il duplicato illusorio continua a svolgere la stessa attività fino a che non si esaurisce la durata dell’incantesimo. L’effetto di Invisibilità Superiore dura 1 round per livello, indipendentemente dalla Concentrazione.

Fonte: http://www.d20pfsrd.com/magic/all-spells/m/mislead'
WHERE name = 'Fuorviare';

UPDATE spells SET
  school = COALESCE(NULL, school),
  casting_time = '1 azione standard',
  range = 'personale',
  duration = '1 minuto/livello (I)',
  saving_throw = NULL,
  spell_res = NULL,
  full_description = ': Quando si lancia questo incantesimo, si può assumere la forma di una creatura del Tipo Bestia Magica Minuscola o Grande. Se questa forma ha una delle seguenti capacità, si ottiene anche la capacità indicata: Aculei, Afferrare, Balzare, Ferocia, Fiuto, Nuotare 36 m, Percezione Cieca 18 m, Percezione Tellurica 18 m, Propulsione, Ragnatela, Ruggito, Sbilanciare, Scalare 27 m, Scavare 18 m, Scurovisione 18 m, Soffio, Sperone, Squartare, Stritolare, Travolgere, Veleno, Visione Crepuscolare e Volare 36 m (manovrabilità buona). 

Se la creatura ha Immunità o Resistenza ad un qualunque elemento, si ottiene Resistenza 20 a quegli elementi. Se la creatura ha Vulnerabilità ad un qualunque elemento, si ottiene quella Vulnerabilità.

• Animale Minuto: Se la forma è quella di un animale di taglia Minuta, si ottiene Bonus di Taglia +6 a Destrezza, penalità –4 a Forza e Bonus di Armatura Naturale +1.

• Animale Minuscolo: Se la forma è quella di un animale di taglia Minuscola, si ottiene Bonus di Taglia +4 a Destrezza, penalità –2 a Forza e Bonus di Armatura Naturale +1.

• Animale Piccolo: Se la forma è quella di un animale di taglia Piccola, si ottiene Bonus di Taglia +2 a Destrezza e Bonus di Armatura Naturale +1.

• Animale Medio: Se la forma è quella di un animale di taglia Media, si ottiene Bonus di Taglia +2 a Forza e Bonus di Armatura Naturale +2.

• Animale Grande: Se la forma è quella di un animale di taglia Grande, si ottiene Bonus di Taglia +4 a Forza, penalità –2 a Destrezza e Bonus di Armatura Naturale +4.

• Animale Enorme: Se la forma è quella di un animale di taglia Enorme, si ottiene Bonus di Taglia +6 a Forza, penalità –4 a Destrezza e Bonus di Armatura Naturale +6.

• Bestia Magica Minuscola: Se la forma è quella di una bestia magica di taglia Minuscola, si ottiene penalità –2 a Forza, Bonus di Taglia +8 a Destrezza e Bonus di Armatura Naturale +3.

• Bestia Magica Piccola: Se la forma è quella di una bestia magica di taglia Piccola, si ottiene Bonus di Taglia +4 a Destrezza e Bonus di Armatura Naturale +2.

• Bestia Magica Media: Se la forma è quella di una bestia magica di taglia Media, si ottiene Bonus di Taglia +4 a Forza e Bonus di Armatura Naturale +4.

• Bestia Magica Grande: Se la forma è quella di una bestia magica Grande, si ottiene Bonus di Taglia +6 a Forza, penalità –2 a Destrezza, Bonus di Taglia +2 a Costituzione e Bonus di Armatura Naturale +6.

Fonte: http://www.d20pfsrd.com/magic/all-spells/b/beast-shape'
WHERE name = 'Forma Ferina IV';

