# CV — Nathan Palvadeau.
#   Version active : cv-nathan-palvadeau.tex -> pdfLaTeX (Nimbus Roman, aucune police externe)
#   Archives (non maintenues) : old/ -> voir old/README.md
CV   = cv-nathan-palvadeau
OUT  = build
PDF  = CV - Nathan Palvadeau - Security Monitoring Analyst.pdf
# Copie de travail pour les dépôts de candidature. Ignorée si absente
# (clone sur une autre machine, import Overleaf) pour ne pas casser le build.
SYNC = /home/robertoo/Documents/Sorbonne

all: cv

cv:
	@mkdir -p $(OUT)
	pdflatex -interaction=nonstopmode -output-directory=$(OUT) $(CV).tex
	@cp $(OUT)/$(CV).pdf "$(PDF)"
	@echo "-> $(PDF)"
	@if [ -d "$(SYNC)" ]; then \
	  cp "$(PDF)" "$(SYNC)/$(PDF)" && echo "-> $(SYNC)/$(PDF)"; \
	else \
	  echo "(dossier $(SYNC) absent — copie ignorée)"; \
	fi

# Archive prête à importer dans Overleaf (New Project > Upload Project)
zip: cv
	@rm -f cv-overleaf.zip
	zip -q -r cv-overleaf.zip $(CV).tex README.md
	@echo "-> cv-overleaf.zip"

# Rebuild de l'archive v1 (Canva replica), conservée dans old/ à titre de référence
old:
	@mkdir -p $(OUT)
	cd old && xelatex -interaction=nonstopmode -output-directory=../$(OUT) cv-nathan-palvadeau-v1-replique-canva.tex
	@cp $(OUT)/cv-nathan-palvadeau-v1-replique-canva.pdf "old/CV - Nathan Palvadeau - v1 replique Canva.pdf"
	@echo "-> old/CV - Nathan Palvadeau - v1 replique Canva.pdf"

clean:
	rm -rf $(OUT) cv-overleaf.zip

.PHONY: all cv zip old clean
