
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Recherche Reproductible en Ecologie <img src="man/figures/datatoolbox-logo.png" height="120" align="right"/>

<!-- badges: start -->

[![Build and Deploy
Website](https://github.com/frbcesab/datatoolbox/actions/workflows/render-site.yml/badge.svg)](https://github.com/frbcesab/datatoolbox/actions/workflows/render-site.yml)
[![License: CC
BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgreen.svg)](https://choosealicense.com/licenses/cc-by-4.0/)
[![DOI](https://zenodo.org/badge/213662591.svg)](https://zenodo.org/badge/latestdoi/213662591)
<!-- badges: end -->

<br />

Cette formation de cinq jours, co-organisée par le
[Cesab](https://www.fondationbiodiversite.fr/la-fondation/le-cesab/) de
la [FRB](https://www.fondationbiodiversite.fr) et le [GdR
EcoStat](https://sites.google.com/site/gdrecostat/), a pour objectif de
former de jeunes chercheurs / chercheuses aux outils de
reproductibilité, de développement logiciel et de gestion de versions
(R, git, markdown, tidyverse, docker) appliqués à la recherche en
biodiversité.

:boom:  Les cours et exercices sont disponibles à cette adresse :
<https://frbcesab.github.io/datatoolbox/>

<br />

**Ce dépôt, placé sous [Licence
CC-BY 4.0](https://github.com/frbcesab/datatoolbox/blob/master/LICENSE.md),
contient tout le matériel nécessaire à la reproduction des cours**.

<br />

### Citation

Selon les termes de la licence, vous êtes libres de réutiliser le
contenu de ce projet. Veillez simplement à citer le projet de la manière
suivante :

> Casajus N., Dray S., Gimenez O., Guéry L., Guilhaumon F. &
> Schiettekatte N. M. D. (2021) *Formation FRB CESAB / GDR ECOSTAT :
> Bonnes pratiques pour une recherche reproductible en écologie
> numérique* (Version 2021). Zenodo.
> <http://doi.org/10.5281/zenodo.4262978>.

<br />

### Equipe organisatrice

  - [:octocat:](https://github.com/ahasverus)
     [:globe\_with\_meridians:](https://nicolascasajus.fr)  Nicolas
    CASAJUS (FRB CESAB)
  - [:octocat:](https://github.com/sdray)
     [:globe\_with\_meridians:](https://lbbe.univ-lyon1.fr/-Dray-Stephane-.html)
     Stéphane DRAY (CNRS LBBE)
  - [:octocat:](https://github.com/oliviergimenez)
     [:globe\_with\_meridians:](https://oliviergimenez.github.io/)
     Olivier GIMENEZ (CNRS CEFE)
  - [:octocat:](https://github.com/lguery)
     [:globe\_with\_meridians:](http://www.umr-marbec.fr/guery-lorelei.html)
     Loreleï GUÉRY (IRD MARBEC)
  - [:octocat:](https://github.com/fguilhaumon)
     [:globe\_with\_meridians:](https://fguilhaumon.gitlab.io/)
     François GUILHAUMON (IRD MARBEC)
  - [:octocat:](https://github.com/nschiett)
     [:globe\_with\_meridians:](http://www.criobe.pf/pro/personnel/doctorants/nina-schiettekatte/)
     Nina SCHIETTEKATTE (EPHE CRIOBE)

<br />

### Contenu

Ce dépôt est structuré de la manière suivante :

  - :file\_folder:
     [**assets/**](https://github.com/FRBCesab/datatoolbox/tree/master/assets):
    contient les images, styles CSS et librairies JS pour la page
    d’accueil de la formation
  - :file\_folder:
     [**courses/**](https://github.com/FRBCesab/datatoolbox/tree/master/courses):
    contient les sous-dossiers des cours (un sous-dossier par cours)
  - :file\_folder:
     [**exercises/**](https://github.com/FRBCesab/datatoolbox/tree/master/exercises):
    contient les sous-dossiers des exercices (un sous-dossier par
    exercice)
  - :file\_folder:
     [**man/**](https://github.com/FRBCesab/datatoolbox/tree/master/man):
    contient la documentation des fonctions R développées pour ce projet
  - :file\_folder:
     [**notes/**](https://github.com/FRBCesab/datatoolbox/tree/master/notes):
    contient les notes écrites sur HackMD (voir les badges en haut de
    page)
  - :file\_folder:
     [**R/**](https://github.com/FRBCesab/datatoolbox/tree/master/r):
    contient les fonctions R développées pour ce projet
  - :page\_facing\_up:
     [**DESCRIPTION**](https://github.com/FRBCesab/datatoolbox/tree/master/DESCRIPTION):
    fichier contiennant les métadonnées du projet (notamment les
    packages R requis)
  - :page\_facing\_up:
     [**index.Rmd**](https://github.com/FRBCesab/datatoolbox/tree/master/index.Rmd):
    fichier `RMarkdown` de la page d’accueil de la formation
  - :page\_facing\_up:
     [**index.html**](https://github.com/FRBCesab/datatoolbox/tree/master/index.html):
    fichier `HTML` de la page d’accueil de la formation
  - :page\_facing\_up:
     [**LICENSE.md**](https://github.com/FRBCesab/datatoolbox/tree/master/LICENSE.md):
    fichier détaillant la licence CC-BY 4.0 protégeant ce projet
  - :page\_facing\_up:
     [**make.R**](https://github.com/FRBCesab/datatoolbox/tree/master/make.R):
    fichier `R` permettant de mettre à jour tous les cours et exercices
  - :page\_facing\_up:
     [**README.md**](https://github.com/FRBCesab/datatoolbox/tree/master/README.md):
    ce présent fichier

<br />

:boom:  **Pour accéder à la page d’accueil de la formation et des cours,
cliquez [ICI](https://frbcesab.github.io/datatoolbox/index.html)**

<br />

### Dépendances requises

Pour recompiler les diapositives des cours et des exercices, les
dépendances systèmes suivantes sont requises :

  - Google Chrome (pour convertir certains cours en PDF)
  - Librairie système GDAL
  - Librairie système GEOS
  - Librairie système PROJ
  - Pandoc (inclus dans RStudio)
  - Rtools (pour les utilisateurs Windows)

La liste des packages R requis et listés dans le fichier `DESCRIPTION`
seront installés automatiquement lorsque le script `make.R` sera
exécuté.

<br />

### Usage

Pour mettre à jour les versions HTML (et PDF) des diapositives des
cours, exécutez simplement :

``` r
source("make.R")
```

<br />

### Ressources

:punch: [**Page de
l’événement**](https://www.fondationbiodiversite.fr/evenement/frb-cesab-formation-reproductibilite-2020/)

:punch: [**Informations
générales**](https://hackmd.io/kMboCUzyQNmReObNDYoQ6A)

:punch: [**Dépôt des
exercices**](https://github.com/FRBCesab/datatoolboxexos)
