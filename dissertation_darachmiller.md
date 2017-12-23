---
title: "Dissertation in the pursuit of a doctorate in philosopy"
author: "Darach Miller"
date: "Typeset on `r Sys.Date()`"                                         
fontsize: "11pt"
output:
  pdf_document:
    toc: True
    fig_width: 5
    fig_height: 3
    fig_caption: true
    includes:  
      in_header: preamble-latex.tex
    latex_engine: xelatex
  html_document:
    toc: True
mainfont: DejaVuSans
---

<!--
Figures set up using the awesome answer here:
https://stackoverflow.com/a/33801326
-->

<!--
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

### mRNA degradation regulation in dynamic conditions

Mercado 1994
They were fiddling around, looking to measure mRNA degradation.
They did a rpb1-1, and found destabilization in the control 
(no rpb1-1). So they parse it out and it looks like glucose, 
heat shock, and pH all affect expression of FBP1 and PCK1 mRNA. 
FBP1 decays rapidly even under ADH1 promoter. 
Temperature shock destabilizes these guys, but not if you pregrow
in glucose (!!!). The effect of pH drop (to 6.5) or heat shock
were transient, but the glucose addition was not. 
It appears that the glucose decay is mediated by promoters, ie
with a different promoter you don't get the effect.
The find a transient decay in response to pH, and ain't familiar
with previous work suggesting that mRNAs respond to pH.

Yin, Hatton, and Brown 2000
Two classes of responses to glucose. High glucose (1%) triggers 
degradation of SDH2/Ip mRNA. Low triggers destabilization of 
FBP1 and PCK1 gluconeogenic mRNA. 
Cites mercado that heat-shock affects yeast gluconeogenic mRNA,
hence use of 1,10-phenanthroline. tps1KO, but not point mutant,
blocks the accelerated degradation ... ? No degradation was observed
in the hxk1,hxk2,glk1 mutant or when a non-phosphorylatable 
6-deoxyglucose was added, so phosphorylated glucose seems to be
the signal. Still get degradation in a wimp mutant. 

Yin et al Brown 2003
They did microarrays this time. Basically, glycolytic pathway is
induced and gluconeogenesis, glyoxylate, and TCA pathways are 
cleared. Ribiosomes induced.
RPL3,24 and RPS4,6 are all stabilized within 1 hour, but then
are normal stability later. 
Not much changes with a wimp, ie you still get RP mRNA stabilization,
with exceptions: RPL3 and 24 were not stabilized in a wimp, and
RPL3 was stabilized in a hxk1,hxk2,glk1 mutant (wilson 2001).
So there seems to be some divergence, that the large subunits
depend on PKA signalling, and small on the phosphorylatable sugar.

Conway et al 2012
Nice overview, and experiments. Lots of room to interpret
broad patterns, but it's nice that someone took the time and money
to do take these measurements. 
There's some specific, and a lot shared between repletion of C,N,P 
after starvation. Stress genes are downregulated, especially STRE
and so forth, especially Msn2. 
If you do double starves, it's the addition of G that triggers
a bunch of txtome changes without producing growth (because N or P
limitation). They show a gap1KO doesn't respond to citrulline,
and mep mutants have tamped down AS responses. 
"Prior to the advent of microarrays, a prevalent idea was that yeast
growth fueled transcription in general. We show that large changes in
mRNA abundance precede growth rather than result from growth and
that they are readily decoupled from growth. For example, both
citrulline and Gly3P are known agonists for their respective trans-
ceptors, yet they are poor nutrients. However, both of these agents
produced a large-scale response. A strain unable to take in and grow
on glucose still produces a normal large-scale transcriptional response
to G repletion (Slattery et al. 2008). In dually starved cells, addition of
G alone produced a transcriptional response that was not sufficient to
induce growth. Finally, the addition of cAMP mimicked the nutrient
repletion responses in cells that remained nutrient depleted. These
results are evidence for a sensing system that can directly determine
when a missing nutrient is restored."

## The growth of yeast under nitrogen limitation

### Nitrogen Metabolism, transport

Grenson 1992
Yeast. Sacc. cer. can't use lysine. 
"Most of the transported amino acids are accumulated inside the yeast cells
against a concentration gradient. When amino acids are to be used as a general
source of nitrogen, this concentration is crucial because most enzymes which cata-
lyze the first step of catabolic pathways have a low affinity for their substrates."
"A number of amino acids are transported by two permeases, a specific
transporter plus the general amino acid permease, but others (e.g., methionine [12],
histidine [13], glutarnic acid [14], lysine [15] and GABA [16]) are transported by two
or three specific uptake systems with very different K , and V,,, values. High-
affinity transporters allow the cells to scavenge even traces of amino acids from
the culture medium. With such a battery of permeases, cells can take up amino
acids at widely different rates over a vast range of external concentrations."
"The synthesis of a number of amino acid permeases is prevented by a general
regulatory mechanism called nitrogen-catabolite repression (NCR), which operates
in cells grown in the presence of preferred nitrogen sources such as ammonium ions,
asparagine or glutamine. The prototype of this family of transporters is the GAP1
general amino acid permease."
"Upon addition of ammonium ions to proline grown cells, the general
amino acid permease progressively undergoes rapid and complete inactivation. This
inhibition of permease activity is reversible [88]. Inactivation can be suppressed by
several mutations [88]. Among these, the pgr mutations are linked to the GAPZ gene,
whereas the npil and npi2 mutations (for nitrogen-permease inactivator) are not.
NH4+-triggered repression of permease synthesis can easily be observed in all of
these mutants, due to the absence of inactivation: whereas cell growth continues,
permease activity stops increasing."
"Several other amino acid permeases are also subject to ammonium-ion-triggered
inactivation. These are the PUT4 proline permease, the UEPl/DALS ureidosucci-
nate/allantoate permease [88], the GNPl glutamine permease [89], the MEPl and
MEP2 methylamine/ammonium-ion permeases [90,89], and the UGA4 GABA per-
mease (Vissers, Andre and Grenson, in preparation)."
"The trans-acting npil and npi2 mutations, which cancel the GAPl permease
inactivating process, are pleiotropic; they also release ammonia-triggered inactiva-
tion of the PUT4 and UEPl/DALS permeases [88], as well as that of the G NP l
glutamine permease [89]. There are other trans-acting mutations known which make
other permeases ammonia-insensitive but they do not affect the permeases just
mentioned. For instance, a npi5 mutation formerly named amul [90,89], suppresses
ammonia-triggered inactivation of the MEP 1 and MEP2 methylamine/ammonium
ion permeases, which is not affected by the npil and npi2 mutations. Similarly, the
trans-acting gum1 mutation affects the UGA4 GABA permease, but not the GAPl
permease (Vissers, Andrk and Grenson, in preparation). Although the analysis is
not complete, it appears that ammonia inactivation involves a number of trans-
acting proteins which target different spectra of ammonia-sensitive permeases.
On the other hand, mutations have been obtained which suppress ammonia in-
activation of a given permease specifically. As might be expected, these mutations
are linked to the corresponding structural gene of the permease. For instance, while
the pgr mutation is located in the reading frame of the GAPl gene [91], the prr
mutation is genetically linked to the PUT4 gene, and the gar mutation is linked to
the UGA4 gene (Hein, Jauniaux and Grenson, in preparation). So far, only the gar
mutated UGA4 gene has been sequenced (Hein, Jauniaux and Grenson, in prepara-
tion). The coding sequence of the UGA4 permease gene was modified in its carbox-
yl-terminal region as a result of a 6 insertion. These cis-acting mutations are likely
to affect the NCI-receptor site of the permeases."
"To trigger
NCR, however, ammonium ions must be transformed into glutamine. Reduced
endogenous synthesis of glutamine in a mutant with a thermosensitive glutamine
synthetase results in derepression of several permeases and enzymes, even in the
presence of high NH4+ concentrations [88]. Since repression is restored by adding
glutamine to the culture medium, it would appear that glutamine is a crucial effector
molecule involved in this regulation. In mutants with a thermosensitive glutamine
synthetase (glnl‘”), RNA transcripts of PUT4 [93] and GAPl [46] permease genes
accumulate at high (non-permissive) temperatures despite the presence of
ammonium ions."

Grenson 1983
"I n these mutants, a repression of the formation of active permease may clearly be observed in the presence of
ammonium ions. This second regulatory mechanism is absent in mutants affected at the GDHCR locus, which might
code for a repressor molecule. It is also relieved in the presence of a gln‘& mutation (which makes the glutamine
synthetase thermosensitive) suggesting glutamine as an effector.
Two other ammonia-sensitive permeases, namely the proline permease and the ureidosuccinic-acid permease,
seem to be subject to the same double regulation.
Mutations affecting the structural gene of the anabolic NADP-linked glutamate dehydrogenase (gdhA) seem to
completely prevent repression of the general amino-acid permease, while they partially suppress its inactivation in the
presence of ammonium ions."
"Based on the fact that they support the highest  growth rates in minimal 
medium, ammonium ions and glutamine may be considered as 
the  best  nitrogen sources  for this  yeast."

Fayyad-Kazan 2015
"Nitrogen catabolite repression (NCR) is a wide tran-
scriptional regulation program enabling baker’s yeast
to downregulate genes involved in the utilization of
poor nitrogen sources when preferred ones are avail-
able. Nowadays, glutamine and glutamate, the major
nitrogen donors for biosyntheses, are assumed to be
key metabolic signals regulating NCR. NCR is con-
trolled by the conserved TORC1 complex, which inte-
grates nitrogen signals among others to regulate cell
growth. However, accumulating evidence indicate
that the TORC1-mediated control of NCR is only
partial, arguing for the existence of supplementary
regulatory processes to be discovered. In this work,
we developed a genetic screen to search for new
players involved in NCR signaling. Our data reveal
that the NADP-glutamate dehydrogenase activity of
Gdh1 negatively regulates NCR-sensitive gene tran-
scription. By determining the total, cytoplasmic and
vacuolar pools of amino acids, we show that there is
no positive correlation between glutamine/glutamate
reservoirs and the extent of NCR. While our data indi-
cate that glutamine could serve as initial trigger of
NCR, they show that it is not a sufficient signal to
sustain repression and point to the existence of yet
unknown signals. Providing additional evidence
uncoupling TORC1 activity and NCR, our work revis-
its the dogmas underlying NCR regulation."


### Carbon Metabolism

mae1, pyruvate, etc

JEN1 is the pyruvate transporter, it seems. H+ symporter.



mae1 pyk2 doesn't grow on ethanol (I think)

PYK2 is destabilized upon upshift, PYK1/CDC19 is fine.

Andrade and Casal 2001
looked at JEN1 expression. 
"JEN1 expression was followed in cells grown in YP–
lactic acid at midexponential phase, upon the addition of
glucose (Fig. 4a). The transport of lactate was measured in
cells collected from the same samples (Fig. 4b). JEN1
transcripts were completely undetectable 10 min after the
pulse of glucose, while the permease activity ceased only
after 50 min. Control of mRNA turnover is now a well-
established mechanism of glucose repression (Scheffler et
al., 1998). To evaluate whether JEN1 mRNA stability was
affected by the presence of glucose, the mRNA half-life in
lactic acid-grown cells was determined by the addition of
1,10-phenantroline, which had an inhibitory effect on
JEN1 expression. A value of 15.1 min was found for the
half-life of JEN1 mRNA. The stimulated JEN1 mRNA
degradation observed upon addition of glucose indicates
the involvement of this additional mechanism of negative
control of gene expression (Klein et al., 1998).
The rapid decline of the carrier activity subsequently to
the addition of glucose described in Fig. 4b cannot be
attributed to the dilution of the protein due to a complete
cell cycle. The inhibition of mRNA synthesis seems also
not to be the limiting step, since we observed that lactic
acid-grown cells, treated or not with 1,10-phenantroline,
retained levels of the same order of magnitude for the
permease activity after 2 h of incubation. These results
point to the possible existence of a third glucose-negative
control mechanism: carbon catabolite inactivation of the
carrier (Klein et al., 1998)."
"while
those lacking fructose-1,6-bisphosphatase showed lactate
permease activity, comparable with the one found in the
wild-type strain. Furthermore, it was shown that the
pck1 mutant under derepression conditions in the pres-
ence of glycerol recovered the activity of the lactate carrier
(Casal et al., 1995)."
They also show strain dependencies for activity.

Mota et al Casal et al Paiva 2014
"In this work, we showed that Dhh1 in particular, and the decapping complex in general, have roles in the post-transcriptional regulation of JEN1 expression, which depend on carbon source. In the absence of Dhh1, Pat1 or Lsm1, JEN1 mRNAs accumulated in formic acid and associated with polysomes, although we could not detect the translated functional protein. Hence, the translational status of JEN1 mRNAs in these conditions remains an open question. The same phenomena occurred in a mutant for Nam7/Upf1, which is an important actor of the NMD pathway. Additionally, we confirmed that the half-lives of the JEN1 mRNA actually increased in the absence of Dhh1, but not in the nam7 mutant. In contrast, in acetic acid, the inactivation of Pat1 or Dhh1 had a negative effect on JEN1 mRNA expression. Our microarray experiments suggest that other key genes of metabolic adaptation, like the transcription factor encoding gene CAT8 or the acetate transporter encoding gene ADY2 (Fig. 8), may encounter similar regulations."



### TORC1 - the nice linear pathway of nitrogen regulation



Mahmoud 2017
"Mutation of either Sit4 or Tco89, a
nonessential subunit of TORC1, decreases proton efflux, K + uptake, intracel-
lular pH, cell growth, and tolerance to weak organic acids. Tco89 does not
affect Pma1 activity but activates K + transport."

### Alternative regulatory pathways
### Regulation of the GAP1 mRNA synthesis rate
### NCR
GAT1,GLN3, DAL80, GZF3

Rowen et al 1997
Abf1 sites are important for Gat1 to activate Gap1. Gln3 doesn't
need it.

Stanbrough and Magasanik 1995
"It appears that Gln3p is the primary
transcriptional activator of GAP1 during growth on glutamate
and that Gln3p contributes to the activation of GAP1 tran-
scription during growth on urea in a wild-type strain, while an
independent activator is responsible for about one-half of
GAP1 transcription in a wild-type strain grown on urea and for
all GAP1 transcription in a gln3 strain grown on urea. We have
named this independent activator Nil1p and have evidence that"
"There are several overlapping layers of control of the gen-
eral amino acid permease that are finely tuned to respond to
the nitrogen environment of the yeast cell. In general, growth
on nitrogen sources that do not result in the fastest doubling
times increases the amount of Gap1p activity. Any change in
nitrogen conditions that allows faster growth causes an imme-
diate decrease in the amount of Gap1p activity by inactivation
of the permease. While it isn’t known whether there is a cor-
responding rapid change in the transcription of GAP1 in re-
sponse to a shift from limiting nitrogen sources to rich nitrogen
sources, there is complex transcriptional control mediated by
at least two systems that do not activate GAP1 transcription on
the best simple nitrogen source, glutamine. Control of Gap1p
activity in turn regulates the synthesis of a host of catabolic
"


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

Guisbert et al 2005
RIP-Chip of Npl3, Nab2, Hrp1. Hrp1 binds UAUAUAA, and get this,
amino acid metabolism genes. Also, RBPDB had the motif wrong.

Estrella et al 2009 gonzalez
Npl3 physically interacts with Pab1, a npl3 mutant genetically
interacts with Upf1 to enhance defect.

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
the eIF2 kinase Gcn2p to give lower TC levels (Hinnebusch,
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

