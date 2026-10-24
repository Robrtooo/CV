# Archive — v1, réplique du CV Canva

Non maintenue. La version active du CV est `cv-nathan-palvadeau.tex` à la
racine du repo — voir le [README principal](../README.md).

| Fichier | Description |
|---|---|
| `cv-nathan-palvadeau-v1-replique-canva.tex` | Réplique LaTeX fidèle du CV Canva original, moteur **XeLaTeX** |
| `CV - Nathan Palvadeau - v1 replique Canva.pdf` | Rendu de cette réplique |
| `CV - Nathan Palvadeau - Security Monitoring Analyst - 2026 .pdf` | Export Canva original (source de la réplique) — **ne pas utiliser pour un dépôt ATS** : ordre du texte dans le flux PDF incohérent (export Canva) |
| `fonts/` | DM Sans + Space Grotesk (OFL), nécessaires à la compilation XeLaTeX de la réplique |

## Compiler (depuis la racine du repo)

```bash
make old
```

Résolution des polices : `\setmainfont{...}{Path = ./fonts/, ...}` est relatif
au répertoire courant de XeLaTeX. La cible `make old` se place dans `old/`
avant de compiler — ne pas lancer `xelatex` directement depuis la racine du
repo, le chemin des polices ne se résoudrait pas.
