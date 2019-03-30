\name{FisherTest_GO_BP_MF_CC}
\alias{FisherTest_GO_BP_MF_CC}

\title{
A wrapper function to perform the Fisher's exact test, using GO-defined genesets.
}
\description{
A wrapper function to perform the Fisher's exact test, using GO-defined genesets.
}
\usage{
FisherTest_GO_BP_MF_CC(gs, genome=c("hg38","hg19","mm10","mm9"), 
                       min_Intersect_Count=5,
                       Ontology=c("GOterm", "BP","MF", "CC","newOntology"), 
			  newOntology=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gs}{
A characteristic vector of gene symbols, the input gene list.
}
  \item{genome}{
A character specifies the genome type. Currently, 
choice of "hg38", "hg19", "mm10", and "mm9" is supported.
}
  \item{min_Intersect_Count}{
A number decides the cutoff of the minimum number of intersected genes 
when reporting Fisher's exact tested results.
}
  \item{Ontology}{
A character specifies the Gene Ontology, 
choice of "GOterm", "BP","MF", "CC" and "newOntology" is supported. 
}
  \item{newOntology}{
A list of two lists with the same ontology IDs. or each ontology ID, the 1st list is the lists 
of defined genes and the 2nd list is the desceiption. 
}
}

\value{
A list of 3 data frames, each is a result of Fisher's exact test, using GO CC, BP, MF respectively. 
Each data frame reports FET results with the following columns.
  \item{GOID}{GO term IDs}
  \item{Description}{GO definition and description for the gene-sets}
  \item{Fisher_Pvalue}{is the raw P-values}
  \item{Fisher_odds}{estimate of the odds ratios} 
  \item{FDR}{the multi-test adjusted P-values using the Benjamini and Hochberg method} 
  \item{Intersect_Count}{the sizes of overlap between GO gene members and the input genelist} 
  \item{GO_gene_inBackground}{the counts of genes among each GO term that are also 
within the given genome background}
  \item{GO_gene_raw_count}{the original counts of genes in each GO term}
  \item{Intersect_gene}{the intersecting genes' symbols}
}


\author{
Bin Wang, Xinan Yang
}

\examples{
  data(dat_chip)
  head(dat_chip)
  data(GO_BP_list,package="seq2pathway.data")
  data(Des_BP_list,package="seq2pathway.data")
  newOntology <- list(GO_BP_list[1:200], Des_BP_list[1:200])
  # A demo run of this funcion
  FS_test<- FisherTest_GO_BP_MF_CC(gs=as.vector(rownames(dat_chip)),
                                 Ontology="newOntology", newOntology=newOntology)
  FS_test
  
  \dontrun{
  data(dat_chip)
  FS_test<-FisherTest_GO_BP_MF_CC(gs=rownames(dat_chip)[1:20], genome="hg19", 
           min_Intersect_Count=1, Ontology="BP")
  FS_test$GO_BP[1:3,]}          
}

\keyword{methods}

