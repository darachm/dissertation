
.PHONY: dissertation diss poison all
all: dissertation_darachmiller_all.pdf

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
	bibtex8 dissertation_darachmiller_all1-blx || true
	bibtex8 dissertation_darachmiller_all2-blx || true
	bibtex8 dissertation_darachmiller_all3-blx || true
	bibtex8 dissertation_darachmiller_all4-blx || true
	bibtex8 dissertation_darachmiller_all5-blx || true
	xelatex dissertation_darachmiller_all.tex 
	xelatex dissertation_darachmiller_all.tex 

diss:
	xelatex dissertation_darachmiller_all.tex 
