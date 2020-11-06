---
tags: openspace
---

# Openspace



<br />



[![Course Informations](https://img.shields.io/badge/Informations-go-red?style=flat&logo=markdown)](https://hackmd.io/kMboCUzyQNmReObNDYoQ6A)
[![Introduce Yourself](https://img.shields.io/badge/Who%20are%20you%3F-go-brightgreen?style=flat&logo=markdown)](https://hackmd.io/F-mjO0adRSuuhf93lf39Zg)
[![GitHub](https://img.shields.io/badge/Dépôt%20GitHub-go-blue?style=flat&logo=github)](https://github.com/FRBCesab/datatoolbox)
[![Slides](https://img.shields.io/badge/Présentations-go-yellow?style=flat&logo=atom)](https://frbcesab.github.io/datatoolbox/)



<br />



:tada: **Ce document est à vous ! Mettez-y ce que bon vous semble !**



<br />


> :point_right: **Pour éditer ce document, cliquez sur le stylo :lower_left_fountain_pen: en haut à gauche de la page. Pour revenir en mode vue, cliquez sur l'oeil :eye:.**


<br />



## Projets réalisés


- **SALLE 1** : Analyse d'un jeu de données de caméras sous-marines apatées pour le comptage de poissons et requins en Nouvelle Calédonie: tidyverse, carte animées, ggplot, rapport rmd (petit hic les données sont un peu bordéliques)
    - Qui : **Laura** + Delphine + Gael + Aïssa + Maël
    - GitHub : Projet privé


- **SALLE 2** : Mise en place d'un observatoire pour le suivi de la distribution du lièvre variable et lièvre d'Europe dans les aires protégées alpines : Multi-partenaires - plusieurs traitements SIG  - analyses (modèles de niche) itératives - publication de cartes en ligne pour consultation par les partenaires etc. [ je dispose de qqes ppt pour présenter le contexte du projet, le type de données collecté, la stratégie d'échantillonnage... un doc Word qui détaille le protocole et les analyses réalisées à ce jour. Script annoté, largement améliorable mais traitement SIG (package raster notamment) probablement non optimal. Volonté de transfert à court terme du projet auprès d'un animateur de cet "observatoire" ]
    - Qui : **Thibaut** + Florèn + Maud + Natacha
    - GitHub : https://github.com/TCouturier/lievres

- **SALLE 3** : Contrustruction d'un package R pour utiliser la reconnaissance optique de caractères (packages `tesseract` et `imagerExtra`) sur une feuille de données manuscrites qui a été scannée, faire quelques analyses simples (au choix t.test, ANOVA, modèle mixtes, etc), nettoyer les résulats avec le package `broom` et produire un petit rapport sous forme de .Rmd.
    - Qui : **Nicolas** + Diego + Camille I + Stan
    - GitHub : https://github.com/nrode/CORproject


- **SALLE 4** : Refaire le site du séminaire Modélisation en Écologie et en Évolution qui est pour l'insant un vieux worspress, avec blogdown ?
    - Qui : **Camille G** + Eliott + Amaïa + François
    - GitHub : https://github.com/camillegirardtercieux/MEE


- **SALLE 5** : Récupération de données sur le web (e.g. length of fish species on FishBase or FAO), pipées avec tydiverse. Puis création d'un modèle de von Bertalanffy modélisant le processus de croissance des poissons, sous la forme d'une fonction incluse dans un package (e.g. vonbert::growthmodel), le tout dépôsé sur GitHub. Bonus: musique de StarWars quand le fit est ouf!
    - Qui : **Marine** + Lyndsay + Etienne + Julien + Fabienne
    - GitHub : https://github.com/mballutaud/vonbert


<br /><hr /><br />


## Eléments importants du chat

- Je conseille de jeter un coup d’oeil aux travaux du réseau Mate-SHS pour la gestion des données textuelles https://mate-shs.cnrs.fr/ (O. Gimenez)
- Les tableaux de bord Shiny https://rmarkdown.rstudio.com/flexdashboard/ (O. Gimenez)
- Si vous aviez une seule chose à retenir de la formation : dans **\R** que des **fonctions**!!!! (pas de script) et que des **fichiers .R** (N. Casajus)

<br /><hr /><br />

## Cours sur git

### Utiliser `git`

1. Ouvrir un terminal (invite de commandes sous Windows) :
    - Windows : Touche Windows et tapez CMD, puis Entrée
    - macOS : Rechercher Terminal et ouvrir l'app
    - Linux : ça devrait aller pour vous ;)
2. Dans le terminal
    - Taper : `git --version`
    - Si vous voyez quelque chose comme ça : `git version 2.29.2`, c'est bon
    - Sinon, sous Windows procéder comme suit :

- Ouvrez un explorateur Windows (touche Windows + E)
- Cliquez-droit sur **Ce PC**, puis sur **Propriétés**
- Cliquez ensuite sur **Variables d'environnement**
- Sélectionnez la ligne **Path** dans l'encadré du haut
- Cliquez sur **Modifier**
- Puis, sur **Nouvelle** et ajoutez la ligne suivante : 
    - `C:\Programmes\git\bin` (si votre PC est en FR)
    - `C:\Programs\git\bin` (si votre PC est en EN)
- Cliquez sur **Ok** trois fois
- Ouvrez un nouveau terminal (étape 1), et tapez : `git --version`
- Normalement, plus d"erreur cette fois-ci

**N.B.** Vous devrez relancer RStudio pour les modifs prennent effet


### Configurer `git`

**A faire une seule fois**

Dans un terminal, tapez (en adaptant les valeurs entre guillemets) :
```
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "MY_NAME@example.com"
```

### Flux de travail classique avec `git`

```
git init                      # On initialise le versioning dans le dossier choisi
# ... Création/modification d'un OU plusieurs fichiers ...
git add nom_de_fichier        # On ajoute les modifs à git (= on suit les fichiers)
git commit -m "Mon message"   # On commit les changements (= on inscrit les modifs dans git)
# etc.
git status                    # Pour voir l'état du dossier (à faire autant de fois que vous voulez)
git log                       # Pour voir l'historique des modifs
git log --oneline             # Pour voir l'historique des modifs simplifiées
```

**Bonus :** Intérêt des commits : http://starlogs.net/ (merci Nina :smile:)

Par ex. essayez avec le repos : `ahasverus/pkgmin`et mettez le son :smile:


### Création de clés SSH depuis RStudio

Dans RStudio > Tools > Global Options > Git/SVN > Create RSA keys

### Happy Git and GitHub for the useR

Jetez un coup d'oeil à [ce bouquin de Jenny Bryan](https://happygitwithr.com/) pour tout savoir sur comment utiliser Git et GitHub avec RStudio

![](https://i.imgur.com/Dub6Ps9.png)

[Trouble shooting](https://dangitgit.com/fr)


## Rmarkdown

### Thesisdown
Voici plusieurs templates pour organiser les thèses avec [thesisdown](https://github.com/ismayc/thesisdown) 




## Installation des packages spatiaux

- Sous **Windows**
    - Installer le logiciel [Rtools](https://cran.r-project.org/bin/windows/Rtools/)

- Sous **Ubuntu/Debian**
    - Dans un terminal : `sudo apt install libgdal-dev libproj-dev libgeos-dev libudunits2-dev`

- Sous **macOS**
    - Dans un terminal (le plus simple), installer Homebrew (si absent) : 

```sh
sudo xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install libxml2 libgit2 geos proj gdal netcdf udunits
```


Puis sous R, `install.packages("sf")`



## Proposition de projets (non retenus)

- Analyses spatiales - Malaria (Leaflet, cartes animées, rapport rmd, etc.)
- Analyses spatiales - Eruptions volcaniques (Leaflet, cartes animées, rapport rmd, etc.)
- Utilisation de `{drake}` sur données de poissons (tidyverse, ggplot, rapport rmd, etc.)
- Construction d'un package R sur Indices de Biodiversité
- Construction d'un package R _custom_ (avec vos fonctions les plus fréquemment utilisées)
- Construction d'un package R avec le code des exercices (à tester sur d'autres taxa)
- Construction d'un tableau de bord se mettant à jour "automatiquement" (GH Actions ?) - ex. données de SARS-CoV2 (John Hopkins)
- Faire une "publication" à partir de Markdown sur l'effet de la taille des caféiers sur la dynamique d'un bioagresseur en organisant correctement les fichiers. Les analyses GAM (et la publi) sont déjà faites (Fabienne) 


