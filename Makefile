
.PHONY: dissertation draft poison all
all: dissertation_darachmiller_all.pdf

#%.html %.pdf: %.Rmd
#	Rscript -e 'rmarkdown::render("$<",output_format="all")'

img/%.pdf: img/%.jpg
	convert -density 300 $< $@

#dissertation_DarachMiller_Feb2018.pdf: dissertation_DarachMiller_Feb2018.txt 
dissertation_darachmiller_all.pdf \
  : \
  dissertation_darachmiller_1.tex \
  dissertation_darachmiller_2.tex \
  dissertation_darachmiller_3.tex \
  dissertation_darachmiller_4.tex \
  dissertation_darachmiller_5.tex \
  img/airoldi2016_F6.large.pdf \
  dissertation_darachmiller_all.tex 
	xelatex dissertation_darachmiller_all.tex 
	bibtex8 dissertation_darachmiller_all || true
	bibtex8 dissertation_darachmiller_all1-blx || true
	bibtex8 dissertation_darachmiller_all2-blx || true
	bibtex8 dissertation_darachmiller_all3-blx || true
	bibtex8 dissertation_darachmiller_all4-blx || true
	bibtex8 dissertation_darachmiller_all5-blx || true
	xelatex dissertation_darachmiller_all.tex 
	xelatex dissertation_darachmiller_all.tex 

#	biber dissertation_darachmiller_all || true
#	biber dissertation_darachmiller_all1-blx || true
#	biber dissertation_darachmiller_all2-blx || true
#	biber dissertation_darachmiller_all3-blx || true
#	biber dissertation_darachmiller_all4-blx || true
#	biber dissertation_darachmiller_all5-blx || true


draft:
	xelatex dissertation_darachmiller_all.tex 

#	bibtex8 dissertation_darachmiller_all-blx || true
