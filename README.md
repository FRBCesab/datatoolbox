# Formation FRB-Cesab/GDR EcoStat - Edition 2020

[![R build status](https://github.com/FRBCesab/datatoolbox/workflows/R-CMD-check/badge.svg)](https://github.com/FRBCesab/datatoolbox/actions)
[![Course Informations](https://img.shields.io/badge/Informations-go-red?style=flat&logo=markdown)](https://hackmd.io/kMboCUzyQNmReObNDYoQ6A)
[![Introduce Yourself](https://img.shields.io/badge/Who%20are%20you%3F-go-brightgreen?style=flat&logo=markdown)](https://hackmd.io/F-mjO0adRSuuhf93lf39Zg)
[![Let's Chat!](https://img.shields.io/badge/Let's%20Chat!-go-yellowgreen?style=flat&logo=markdown)](https://hackmd.io/TXGHRIFVSm--9b8Y7yWKrw)
[![Website](https://img.shields.io/badge/Présentations-go-yellow?style=flat&logo=atom)](https://frbcesab.github.io/datatoolbox/index.html)
[![DOI](https://zenodo.org/badge/213662591.svg)](https://zenodo.org/badge/latestdoi/213662591)

<br />

Le Cesab de la FRB et le GDR EcoStat proposent depuis 2019 une formation intitulée « Bonnes pratiques pour une recherche reproductible en écologie numérique ». Cette formation de cinq jours a pour objectif de former de jeunes chercheurs / chercheuses aux outils de reproductibilité, de développement logiciel et de gestion de versions (e.g. R, git, markdown, tidyverse, docker) appliqués à la recherche en biodiversité.


<br />


**Ce dépôt GitHub, placé sous [Licence CC-BY 4.0](https://github.com/FRBCesab/datatoolbox/blob/master/LICENSE.md), contient tout le matériel nécessaire à la reproduction des cours**.



<br />



### Citation

Selon les termes de la licence, vous êtes libres de réutiliser le contenu de ce projet. Veillez simplement
à citer le projet de la manière suivante :

> Casajus N., Dray S., Gimenez O., Guéry L., Guilhaumon F. & Schiettekatte N. (2020)
> _Bonnes pratiques pour une recherche reproductible en écologie numérique_. Formation
> co-organisée par le Cesab de la FRB et le GDR Ecostat et dispensée à Montpellier (France)
> les 2-6 novembre 2020. doi:(10.5281/zenodo.4262978)[https://www.doi.org/10.5281/zenodo.4262978].


<br />



### Equipe organisatrice

- [:octocat:](https://github.com/ahasverus)
&nbsp;[:globe_with_meridians:](https://nicolascasajus.fr)
&nbsp;Nicolas CASAJUS (FRB CESAB)
- [:octocat:](https://github.com/sdray)
&nbsp;[:globe_with_meridians:](https://lbbe.univ-lyon1.fr/-Dray-Stephane-.html)
&nbsp;Stéphane DRAY (CNRS LBBE)
- [:octocat:](https://github.com/oliviergimenez)
&nbsp;[:globe_with_meridians:](https://oliviergimenez.github.io/)
&nbsp;Olivier GIMENEZ (CNRS CEFE)
- [:octocat:](https://github.com/lguery)
&nbsp;[:globe_with_meridians:](http://www.umr-marbec.fr/guery-lorelei.html)
&nbsp;Loreleï GUÉRY (IRD MARBEC)
- [:octocat:](https://github.com/fguilhaumon)
&nbsp;[:globe_with_meridians:](https://fguilhaumon.gitlab.io/)
&nbsp;François GUILHAUMON (IRD MARBEC)
- [:octocat:](https://github.com/nschiett)
&nbsp;[:globe_with_meridians:](http://www.criobe.pf/pro/personnel/doctorants/nina-schiettekatte/)
&nbsp;Nina SCHIETTEKATTE (EPHE CRIOBE)



<br />



### Contenu

Ce dépôt est structuré de la manière suivante :

- :file_folder: &nbsp;[**assets/**](https://github.com/FRBCesab/datatoolbox/tree/master/assets):
contient les images, styles CSS et librairies JS pour la page d'accueil de la formation
- :file_folder: &nbsp;[**courses/**](https://github.com/FRBCesab/datatoolbox/tree/master/courses):
contient les sous-dossiers des cours (un sous-dossier par cours)
- :file_folder: &nbsp;[**exercises/**](https://github.com/FRBCesab/datatoolbox/tree/master/exercises):
contient les sous-dossiers des exercices (un sous-dossier par exercice)
- :file_folder: &nbsp;[**man/**](https://github.com/FRBCesab/datatoolbox/tree/master/man):
contient la documentation des fonctions R développées pour ce projet
- :file_folder: &nbsp;[**notes/**](https://github.com/FRBCesab/datatoolbox/tree/master/notes):
contient les notes écrites sur HackMD (voir les badges en haut de page)
- :file_folder: &nbsp;[**R/**](https://github.com/FRBCesab/datatoolbox/tree/master/r):
contient les fonctions R développées pour ce projet
- :page_facing_up: &nbsp;[**DESCRIPTION**](https://github.com/FRBCesab/datatoolbox/tree/master/DESCRIPTION):
fichier contiennant les métadonnées du projet (notamment les packages R requis)
- :page_facing_up: &nbsp;[**index.Rmd**](https://github.com/FRBCesab/datatoolbox/tree/master/index.Rmd):
fichier `RMarkdown` de la page d'accueil de la formation
- :page_facing_up: &nbsp;[**index.html**](https://github.com/FRBCesab/datatoolbox/tree/master/index.html):
fichier `HTML` de la page d'accueil de la formation
- :page_facing_up: &nbsp;[**LICENSE.md**](https://github.com/FRBCesab/datatoolbox/tree/master/LICENSE.md):
fichier détaillant la licence CC-BY 4.0 protégeant ce projet
- :page_facing_up: &nbsp;[**make.R**](https://github.com/FRBCesab/datatoolbox/tree/master/make.R):
fichier `R` permettant de mettre à jour tous les cours et exercices
- :page_facing_up: &nbsp;[**README.md**](https://github.com/FRBCesab/datatoolbox/tree/master/README.md):
ce présent fichier


<br />


:boom: &nbsp;**Pour accéder à la page d'accueil de la formation et des cours, cliquez [ICI](https://frbcesab.github.io/datatoolbox/index.html)**



<br />



### Dépendances requises

Pour recompiler les diapositives des cours et des exercices, les dépendances systèmes
suivantes sont requises :

- Google Chrome (pour convertir certains cours en PDF)
- Librairie système GDAL
- Librairie système GEOS
- Librairie système PROJ
- Pandoc (inclus dans RStudio)
- Rtools (pour les utilisateurs Windows)

La liste des packages R requis et listés dans le fichier `DESCRIPTION` seront installés
automatiquement lorsque le script `make.R` sera exécuté.

<br />



### Usage

Pour mettre à jour les versions HTML (et PDF) des diapositives des cours, exécutez simplement :

```r
source("make.R")
```


<br />



### Ressources

:punch: [**Page de l'événement**](https://www.fondationbiodiversite.fr/evenement/frb-cesab-formation-reproductibilite-2020/)

:punch: [**Informations générales**](https://hackmd.io/kMboCUzyQNmReObNDYoQ6A)

:punch: [**Dépôt des exercices**](https://github.com/FRBCesab/datatoolboxexos)
