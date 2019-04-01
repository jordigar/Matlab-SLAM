# Matlab-SLAM
En aquest repositori hi ha tots els fitxers de Matlab utilitzats per les classes de Robòtica Terrestre, així com les imatges i la implamantació de l'exercisi de SLAM, per seguir aquest exercici s'ha de começar pel fitxer anomenat pseudo_code.m i apartir d'aquí es cridaran altres programes.

Per la realització de l'exercici de SLAM es comença per crear i definir els diferents estats i factors que es corresponen en el dibuix anomenat graphSLAM.pdf. En aquest punt és important definir l'error que creiem podem tenir en les mesures dels factors, així que diem que els errors de posició seran de 10 cm (la covariança serà 0,01 m) tan pels moviments com pels landmarks, mentre que l'error d'angle pels moviments definim 2 graus (covariança serà en radians i al quadrat) i pels landmarks definim 10 graus.

Partint d'aquests valors i fent alguns petits ajustos en les distàncies obtenim el graph de la imatge SLAM correcte.png, que veiem té una molt bona correspondència amb el graph desitjat, a partir d'aquí es fan diferents proves per veure com afecten els valors en l'obtenció del graph final.

Provem d'augmentar la longitud dels factors 1 i 2 (li augmentem els dos 1 m), i veiem com efectivament es desplacen els estats 1 i 2 però el sistema es prou flexible per adaptar-se a la situació, veure imatge SLAM dimensions.png, on es veuen que els estats landmarks queden més enrera que els estats motion.

La següent prova que es fa és disminuir la covariança dels factors 4 i 7 (posem només 1 cm i 1 grau d'error), de tal manera que obliguem al sistema a respectar més el valor d'aquests ja que li estem dient que la seva medició és molt bona. Tal i com es veu en la imatge SLAM covariança.png domina el valor definit pels factors 4 i 7 mentre que es modifiquen la resta d'estats per adaptar-se a la situació.

Com a resum final comentar que la manera de fer el graph més exacte és bàsicament posant mesures més reals i alhora disminuir la covariança perquè tenim menys error en la medició.
