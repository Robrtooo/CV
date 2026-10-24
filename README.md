# CV — Nathan Palvadeau (LaTeX)

Version active : `cv-nathan-palvadeau.tex`, avec la mise en page actuelle.
Moteur **pdfLaTeX**, police Nimbus Roman (`mathptmx`, incluse dans TeX Live) —
aucune police externe à installer.

L'ancienne réplique du CV Canva est archivée dans [`old/`](old/README.md) et
n'est plus maintenue.

# Pour check les ATS : 
```bash
pdftotext -raw *file*
```

## Compiler en local

```bash
make          # construit le CV actif -> "CV - Nathan Palvadeau - Security Monitoring Analyst.pdf"
make zip      # cv-overleaf.zip prêt pour Overleaf
make old      # rebuild l'archive v1 (xelatex, voir old/README.md)
make clean
```

## Overleaf

Compiler = **pdfLaTeX** (menu ☰ > Settings > Compiler).

Import : `make zip`, puis Overleaf > *New Project* > *Upload Project*.

## Structure des sources

- **Géométrie** relevée au point près sur le PDF de référence.
- **Écarts verticaux** : toutes les longueurs `\g...` regroupées en haut du
  fichier — seul endroit à toucher pour régler le rythme vertical.
- **Primitives** ensuite (`\cvsection`, `\cventry`, `cvitems`, …), puis le
  contenu.

## Structure du repo

```
cv-nathan-palvadeau.tex     # source LaTeX actif
Makefile
README.md
old/                        # archive : réplique Canva (v1), non maintenue
build/                      # sorties intermédiaires LaTeX (ignoré par git)
```
