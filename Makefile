
.PHONY: dissertation diss
dissertation: diss
diss: dissertation_darachmiller.html dissertation_darachmiller.pdf

%.html %.pdf: %.md
	Rscript -e 'rmarkdown::render("$<",output_format="all")'
