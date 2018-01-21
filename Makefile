
.PHONY: dissertation diss poison
dissertation: diss
diss: dissertation_darachmiller_all.pdf

#%.html %.pdf: %.Rmd
#	Rscript -e 'rmarkdown::render("$<",output_format="all")'

#dissertation_DarachMiller_Feb2018.pdf: dissertation_DarachMiller_Feb2018.txt 
dissertation_darachmiller_all.pdf \
  : \
  poison \
  dissertation_darachmiller_1.tex \
  dissertation_darachmiller_2.tex \
  dissertation_darachmiller_3.tex \
  dissertation_darachmiller_4.tex \
  dissertation_darachmiller_5.tex \
  dissertation_darachmiller_all.tex 
	xelatex dissertation_darachmiller_all.tex 
