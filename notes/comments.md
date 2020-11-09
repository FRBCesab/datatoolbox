---
tags: notes
---

# Remarques



<br />

## Discussion entre intervenants

- Les participants devront lire l'article de Marwick et al. 2018 ([PDF](https://faculty.washington.edu/bmarwick/PDFs/Marwick-Boettiger-Mullen-2018-TAS-research-compendia.pdf)) avant le début de la formation
- Ils devront avoir IMPERATIVEMENT installé et configuré les logiciels suivants (faire un tuto complet) :
    - R(>=3.6.3) et RStudio
    - Rtools pour les Windows
    - Les librairies système (~logiciels) GDAL, GEOS, PROJ (sauf sous Windows)
    - Les packages R : `{sf}`, `{rmarkdown}`, `{tinytex}` (`tinytex::install:tinytex()`), `{devtools}`, `{usethis}`, `{citr}`, `{here}`, `{tidyverse}`, `{drake}`
    - git (vérifier le chemin vers le `bin.exe` et faire les `git config --global`)
    - Partie git : il faut absolument parler du travail collaboratif (git pull, git merge)
    - Docker ?
- Avoir une approche progressive : Fichiers en vrac > RC > Fonctions R > Drake R > Package R > Docker
- Expliquer les paths
- Clarifier la structure minimale (ou pas) d'un RC
- Expliquer en début de semaine le dépôt -exos
- Approche Théorie/Concept puis Pratique ou vice versa
- Bien insister sur le fait q'un RC = projet organisé en sous-dossiers
- Rajouter une liste des bonnes pratiques? Un peu comme dans les diapos "messages à retenir"
- Faire un petit repo avec les ressources indispensables sur RR (papiers, workshops) ; pointer sur <https://cran.r-project.org/web/views/ReproducibleResearch.html>?
- Mettre le .Rproj dans le .gitignore
- Quand on écrit des fonctions dans une organisation de package, il faut absolument ajouter les packages avec importFrom/imprt ET les ajouter dans la description, puis il faut faire un devtools::document() avant de faire un devtools::load_all() (beaucoup de personnes n'avaient pas compris qu'on a besoin de NAMESPACE pour que load_all() marche comme il faut)
- Pas de live coding pour la partie R package ???
- Bien expliquer les subtilités de `devtools::install_deps()`, `devtools::load_all()`, `devtools::document()` et `devtools::use_package()` (fonctionne uniquement si le package est installé)

- https://www.britishecologicalsociety.org/wp-content/uploads/2018/12/BES-Reproducible-Code.pdf
- https://github.com/noamross/redoc
- workshop d'Anna sur RC, `workflowr`

<br />

## Retours participants

- Conserver partie tidyverse et spatial (PRO et CONS) - toutes les parties les ont intéressé
- Plus de temps pour les exos (il faut leur laisser le temps de lire les énoncés)
- Pas de live-coding et pratique en même temps
- Formation très dense
- Au début, problème de clarté : difficile de voir le Big picture
- Débug en commun +++
- 1 jour pour les projets, c'est largement suffisant
- Ajouter une partie construction de fonction R
- Faire un guide PDF bonnes pratiques (style, nom de fichiers, etc.) mais pas de présentation

<br />

## Découvertes

### Pour NC

- `print(tibble, n = Inf)`
- `fct_reorder()`
- `{janitor}`
- `lengths` sur list/data.frame
- `file_in` dans `{drake}`
- `read_chunk()` + `# @knitr label` (jusqu'à nouveau `# @knitr label`) + `<<label>>`
- `{blogdown}` : weigth permet de trier les pages