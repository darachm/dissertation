
.PHONY: dissertation diss
dissertation: diss
diss: dissertation_darachmiller.pdf

#%.html %.pdf: %.Rmd
#	Rscript -e 'rmarkdown::render("$<",output_format="all")'

#dissertation_DarachMiller_Feb2018.pdf: dissertation_DarachMiller_Feb2018.txt 
dissertation_darachmiller.pdf: dissertation_darachmiller.tex 
	pandoc -f markdown $< --latex-engine=xelatex -o $@
