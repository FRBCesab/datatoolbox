# Formation FRB-Cesab/GDR EcoStat - Edition 2020

[![R build status](https://github.com/FRBCesab/datatoolbox/workflows/R-CMD-check/badge.svg)](https://github.com/FRBCesab/datatoolbox/actions)
[![Course Informations](https://img.shields.io/badge/Informations-go-red?style=flat&logo=markdown)](https://hackmd.io/kMboCUzyQNmReObNDYoQ6A)
[![Introduce Yourself](https://img.shields.io/badge/Who%20are%20you%3F-go-brightgreen?style=flat&logo=markdown)](https://hackmd.io/F-mjO0adRSuuhf93lf39Zg)
[![Let's Chat!](https://img.shields.io/badge/Let's%20Chat!-go-yellowgreen?style=flat&logo=markdown)](https://hackmd.io/TXGHRIFVSm--9b8Y7yWKrw)
[![Website](https://img.shields.io/badge/Présentations-go-yellow?style=flat&logo=atom)](https://frbcesab.github.io/datatoolbox/index.html)

<br />

> Le Cesab de la FRB et le GDR EcoStat proposent depuis 2019 une formation intitulée « Bonnes pratiques pour une recherche reproductible en écologie numérique ». Cette formation de cinq jours a pour objectif de former de jeunes chercheurs / chercheuses aux outils de reproductibilité, de développement logiciel et de gestion de versions (e.g. R, git, markdown, tidyverse, docker) appliqués à la recherche en biodiversité.

Ce dépôt GitHub, placé sous [**Licence CC-BY 4.0**](https://github.com/FRBCesab/datatoolbox/blob/master/LICENSE.md), contient tout le matériel nécessaire à la reproduction des cours et exercices.



<br />



### Equipe organisatrice

- Nicolas CASAJUS (FRB CESAB)
&nbsp;[:octocat:](https://github.com/ahasverus)
&nbsp;[:globe_with_meridians:](https://nicolascasajus.fr)
- Stéphane DRAY (CNRS LBBE)
&nbsp;[:octocat:](https://github.com/sdray)
&nbsp;[:globe_with_meridians:](https://lbbe.univ-lyon1.fr/-Dray-Stephane-.html)
- Olivier GIMENEZ (CNRS CEFE)
&nbsp;[:octocat:](https://github.com/oliviergimenez)
&nbsp;[:globe_with_meridians:](https://oliviergimenez.github.io/)
- Loreleï GUÉRY (IRD MARBEC)
&nbsp;[:octocat:](https://github.com/lguery)
&nbsp;[:globe_with_meridians:](http://www.umr-marbec.fr/guery-lorelei.html)
- François GUILHAUMON (IRD MARBEC)
&nbsp;[:octocat:](https://github.com/fguilhaumon)
&nbsp;[:globe_with_meridians:](https://fguilhaumon.gitlab.io/)
- Nina SCHIETTEKATTE (EPHE CRIOBE)
&nbsp;[:octocat:](https://github.com/nschiett)
&nbsp;[:globe_with_meridians:](http://www.criobe.pf/pro/personnel/doctorants/nina-schiettekatte/)



<br />



### Contenu

...




<br />



### Dépendances requises

Pour recompiler les diapositives des cours et exercices, les dépendances systèmes
suivantes sont requises :

- Google Chrome (pour convertir certains cours en PDF)
- Librairie système GDAL
- Librairie système GEOS
- Librairie système PROJ
- Pandoc et Pandoc citeproc (inclus dans RStudio)
- Rtools (pour les utilisateurs Windows)

La liste des packages R requis et listés dans le fichier `DESCRIPTION` seront installés
automatiquement lorsque le script `make.R` sera exécuté.

<br />



### Usage

Pour mettre à jour les versions HTML (et PDF) des diapositives des cours, exécutez simplement :

```r
source("make.R")
```




### Ressources

:globe_with_meridians: [Page de l'événement](https://www.fondationbiodiversite.fr/evenement/frb-cesab-formation-reproductibilite-2020/)

:octocat: [Dépôt des exercices](https://github.com/FRBCesab/datatoolboxexos)
