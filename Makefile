TEX_FILE = thesis

.PHONY: all
all: build

.PHONY: pdflatex
pdflatex: ## Run only the pdflatex command.
	pdflatex ${TEX_FILE}
	biber ${TEX_FILE} && \
	pdflatex ${TEX_FILE}.tex

.PHONY: build
build: pdflatex ## Compile the final PDF (latex & pdflatex).

.PHONY: cleantemp
cleantemp: ## Remove all temporary files created during the compiling process.
	rm -f *.aux *.bbl *.bcf *.out *.blg *.dvi *.log *.toc *.run.xml

.PHONY: clean
clean: cleantemp ## Remove all created files including the compiled PDF.
	rm -f ${TEX_FILE}.pdf

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'