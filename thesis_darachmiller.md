---
title: "A thesis, give me a degree please so I can go back to my pen and just read about science"
author: "Darach Miller"
date: "Typeset on `r Sys.Date()`"
toc: true
fontsize: "11pt"
output:
  pdf_document:
    fig_width: 5
    fig_height: 3
    fig_caption: true
    includes:  
      in_header: preamble-latex.tex
    latex_engine: xelatex
mainfont: DejaVuSans
---

\pagebreak

<!--
Figures set up using the awesome answer here:
https://stackoverflow.com/a/33801326
-->


<!--
Thus begins the last leg of my journey, considered unenvieable by
the traveler, but what does they know?

Notes:

PolyA binding proteins
https://genomebiology.biomedcentral.com/articles/10.1186/gb-2003-4-7-223

Ph multi stress stability Canadell

Garcia Martinez 2004
Genomic Run-On Evaluates Transcription Rates for All Yeast Genes and Identifies Gene Regulatory Mechanisms
http://www.sciencedirect.com/science/article/pii/S1097276504003375

PAB1 Self-Association Precludes Its Binding to Poly(A), Thereby Accelerating CCR4 Deadenylation In Vivo
http://mcb.asm.org/content/27/17/6243.full

5'utr in gluc decay
http://onlinelibrary.wiley.com/doi/10.1002/yea.884/abstract

5' utr tln control
http://science.sciencemag.org/content/352/6292/1413.full

ph control
http://www.sciencedirect.com/science/article/pii/S0304416511000602

msn2/4 control
https://elifesciences.org/articles/29938

idrs 
https://www.biorxiv.org/content/early/2017/06/12/147561

gparclip
https://genomebiology.biomedcentral.com/articles/10.1186/gb-2013-14-2-r13

rbp regulation review handshakes fist fights
https://www.frontiersin.org/articles/10.3389/fmolb.2017.00067/full

lee 2011
http://msb.embopress.org/content/7/1/514



-->

> "Science is a match that man has just got alight. He thought he 
> was in a room &#8212; in moments of devotion, a temple &#8212; and 
> that his light would be reflected from and display walls inscribed 
> with wonderful secrets and pillars carved with philosophical 
> systems wrought into harmony. 
> 
> It is a curious sensation, now that the preliminary splutter is 
> over and the flame burns up clear, to see his hands lit and just 
> a glimpse of himself and the patch he stands on visible, and 
> around him, in place of all that human comfort and beauty he 
> anticipated, darkness still.
>
> - H.G. Wells, 1891


# Introduction

## mRNA degradation 

That PerezOrtin 2013 review:

- they explain the simple ODE model, and that degradation rate 
  changes sharpen temporal responses. However, deg rate doesn't 
  correlate or anti-correlate with concentrations of mRNA, and 
  they cite Schwanhausser 2011, Garcia-Martinez 2007, and 
  Miller 2011 for this.
- caveats of shut off techniques, they cite Grigull 2004, then
  Muncel and a 2011 review of theirs, that shutoffs change gene
  expression. Also cite Sun 2012 cDTA that there's an extensive
  bias. 
- Page 3756 they address that pulse-chase has issues.
- "defects in nuclear mRNA processing and the formation of an
  export compenent mRNP can lead to the degradation"
- Mentions Garre et al perez ortin 2013, which talks about
  how NMD represses unspliced RP mRNA during osmotic stress.
- Discusses canonical pathways. Says degradation can occur in 
  pbodies, and outside of them. Discusses conditions of changing
  pbodies on page 3761.
- Discusses cis-elements, as usually being in UTRs. One element
  is au-rich recgonition elements (AREs), which are AUUUA pentamers.
  Lots of proto-oncogenes recognize these, so regulation important.
- ~" it seems that cells don't use DR to regulate mRNA conc " ~
- roughly, most of gene regulation seems to happen through
  changes in transcription rates
- discusses changes in half-lives of RP regulon upon glucose to
  galactose or upon heatshock, cites munchel, Garcia Martinez 2004,
  jona and choder 2000.
- half-live changes are important for sharpening the response, cite
  Shalem 2008 and Rabani 2011. 
- Mentions that DR changes seem to be a single regulatory event,
  page 3764. 
- General changes in degradation rates have been shown during
  entry into stress conditions. 
- Cth2 is an example of a thing that binds ARE elements to interact
  with Dhh1 to mediate turnover ( Pedro-Segura 2008, Vergara 2011), 
  and shuttles nuclear to cytoplasm dependent on transcription. 
- Cites Schoenberg and Maquat 2011 to say that MAPK signals in 
  through a TTP RBP to interact with 14-3-3 proteins to inhibit
  degradation. 
- Yoon 2010, phosphorylation of Dcp2 by Ste20 modulates SG assembly
  and mRNA decay.
- "suspect that" a number of other coordinators of nuclear processing
  and export affect degradation in the cytoplasm.
  


## The regulation of mRNA degradation

### Why repress mRNA?
Lee 2011
Kief and Warner 1981



## The growth of yeast under nitrogen limitation
### TORC1 - the nice linear pathway of nitrogen regulation
### Alternative regulatory pathways
### Regulation of the GAP1 mRNA synthesis rate
### NCR
GAT1,GLN3, DAL80, GZF3
torc1, gcn2

### GAP1 
gene structure
Gap1p function
What does it transport
Post-translational control of the activity and localization of Gap1p
in sigma.
http://mcb.asm.org/content/32/22/4510.full
Figure 1.
Ammonium triggers the big-ening of Npr1-HA and Gap1-GFP. It looks like GAP1-GFP goes vacuolar upon ammonium addition. You don’t get this response with a mep1,2,3KO or a gdh1KO. 
They look 2 hours after adding 20mM ammonium sulfate and see it all vacoluar.

http://www.molbiolcell.org/content/17/10/4411.full
http://mcb.asm.org/content/34/24/4447.full
GAP1 and nitrogen signalling

## Methods to study mRNA stability in budding yeast
Previous work to measure transcript stability, and under dynamic conditions
inhibition, why not
4tU, Munchel DTA
Previous work to do genetics of transcript dynamics
neklesa
worley
exotic methods, like COE

Early work using radiolabeling and transcriptional shut-off assays established much of what we know about mRNA degradation rates (Parker 2012), but in the past decade the application of metabolic labeling with 4-thiouracil (Dölken et al. 2008) or other analogs has opened the door to genome-wide mRNA degradation rate measurements without the biases of transcriptional shut-off methods (Pelechano and Pérez-Ortín 2008; L. Yu et al. 2016).

# Unorganized notes


## about nmd, and the cis element RBPs

Zhang et al Peltz 1995
They identify a DSE ( TGYYGATGYYYYY , Y is [CT] ) that destabilizes
PGK1 or others. It's in the middle of the transcript, the coding
sequence. Important to make NMD happen.

Gonzalez et al Peltz 2000
hrp1-3 ts allele stabilizes a PGK1 with a downstream sequence 
element (DSE). HRP1 was originally identified as a supressor of NPL3,
Henry et al 1996. That ts allele also prevents hrp1-3 getting pulled
down with the RNA, or it binding to Upf1p. A rna15 mutant super
stabilized the transcripts they tested, but it ain't NMD.

Kebaara et al Atkin 2003
NMD seems to depend on DSE.
Hrp1 binds to this element and interacts with Upf1p to mediate the
degradation of PGK1. They map a similar sequence to PPR1, which is
NMD dependent for 3-fold slower degradation in upf1KO cells. 
They map it to be the 5' UTR and the first 92 bases of the ORF. 
Need both of those. They don't think it's leaky scanning.

## about condensates, granules, p-bodies

Could GAP1 be stuck in granules? 

Lui et al Ashe 2014. They use MS2-CP system, see foci of certain 
mRNA in exponential growth. Then since it's live cell, if they
remove glucose then they see the granules coalesce and recruit
Dcp2 and get fatter. They can block the formation of fewer and
fatter granules by adding cycloheximide.
Could be an artifact of MS2 system though. 
Cycloheximide prevents pbody formation (Buchan 2008 etc),
"presumably because mRNA are stuck in polysomes".
Cool photobleaching experiment, so bleaching an orange FP. 
They used a lyticase treatment to get puromycin in cells.

Hoyle et al Ashe 2007.
They look at GFP fusions of things. Propose EGP-bodies.
Don't see p-bodies in aminoacid-limitation, but do in glucose
limitation. Gcn2 response to aa limitation (Hinnebusch 2005).
"amino acid star-
vation, a stress that inhibits translation initiation by activating
the eIF2α kinase Gcn2p to give lower TC levels (Hinnebusch,
2005)."

Sheth and Parker 2003.
They see foci. They probe it using ... the MS2-CP system. They
see foci. They conclude that degradation happens in p-bodies.

## things regulating it

Albig and Decker 2001.
They review how massive changes happen with transcriptome, citing
DeRisi 1997. Then they discuss how rapamycin treatment leads to
massive slow down in translation initiation, citing 
Berset et al 1998. They test stability with rpb1-1 strains, and
find that in post-diauxic shift or with rapamycing treatment,
several different mRNAs get destabilized. Seems to be 
deadenylation-dependent. They claim they show that ARO4 has
a shorter polyA tail on synthesis, hence the turnover. 
Discussion deals with some differences between them and glucose
conditions, but they point out that that's contrasting steady-state
and exit from carbon limitation (not their words). 

Talarek et al De Virgillio 2010. Building on that, 
they test some good hypotheses. They see that Rim15 phosphorylates
Igo1 and Igo2. Both PKA and Sch9 signal into Rim15, it's important
for getting set into it. igo1/2 KO doesn't do the right Rim15
expression program. Then they pulled down Igo1 and did MS. They found
Pbp1, Lsm12, then moved along to Dhh1. Find that igo1/2 are important
for stabilizing Hsp26, and you can rescue their KO by KOing dhh1 or
ccr4. If you KO Rim15, you don't get induction at all so you
can't see stabilization, they think.

## translation, gcn2

remember that Cooper's recently shown that this axis of signalling
is important here for gln3 localization.
Could also affect translation initiation?

Powers and Walter 1999.
They mention TOP mRNAs, so there's a pyrimidine rich bit in the 5'
and it's important for translation. Starvation or rapamycin, in
mammalian cells, and they stop getting translation initiated.
TORC1 is important for re-induction of translation.

Celik et al Jacobson 2017. 
They did some good stuff. RNAseq in mutants.
Lots of dataset integration in a logical way. Lots of contradictory
results, but addressed. They do some analysis to find that
out of frame translation kinda happens a lot, they propose that NMD 
affects two different types of substrates, the really defective
ones and the probabilistically degradaded ones, so the leaky
scanning or whatever.
"Most importantly, when compared to non-NMD sub-
strates, the normal-looking NMD substrates were found to
have a higher rate of out-of-frame translation, lower average
codon optimality, and a propensity to have longer stretches
of non-optimal codons (Celik et al. 2017)."

Hueso et al 2012.
Gcn2, leu is important for dealing with acide stress.

Tate et al Cooper 2017
Gcn2 signals through to Ure2 and Gln3

## chromatin

Chromatin remodeling in NCR, so something to say about Swi6 if it comes up: https://www.nature.com/articles/srep33970

