pkgname <- "seq2pathway"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "seq2pathway-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('seq2pathway')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("Chipseq_Peak_demo")
### * Chipseq_Peak_demo

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: Chipseq_Peak_demo
### Title: chip seq loci data example
### Aliases: Chipseq_Peak_demo
### Keywords: datasets

### ** Examples

data(Chipseq_Peak_demo)
head(Chipseq_Peak_demo)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("Chipseq_Peak_demo", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("FisherTest_GO_BP_MF_CC")
### * FisherTest_GO_BP_MF_CC

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: FisherTest_GO_BP_MF_CC
### Title: A wrapper function to perform the Fisher's exact test, using
###   GO-defined genesets.
### Aliases: FisherTest_GO_BP_MF_CC
### Keywords: methods

### ** Examples

  data(dat_chip)
  head(dat_chip)
  data(GO_BP_list,package="seq2pathway.data")
  data(Des_BP_list,package="seq2pathway.data")
  newOntology <- list(GO_BP_list[1:200], Des_BP_list[1:200])
  # A demo run of this funcion
  FS_test<- FisherTest_GO_BP_MF_CC(gs=as.vector(rownames(dat_chip)),
                                 Ontology="newOntology", newOntology=newOntology)
  FS_test
  
  ## Not run: 
##D   data(dat_chip)
##D   FS_test<-FisherTest_GO_BP_MF_CC(gs=rownames(dat_chip)[1:20], genome="hg19", 
##D            min_Intersect_Count=1, Ontology="BP")
##D   FS_test$GO_BP[1:3,]
## End(Not run)          



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("FisherTest_GO_BP_MF_CC", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("FisherTest_MsigDB")
### * FisherTest_MsigDB

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: FisherTest_MsigDB
### Title: A wrapper function to perform conditional Fisher's exact test,
###   using custom-defined genesets.
### Aliases: FisherTest_MsigDB
### Keywords: methods

### ** Examples

  data(dat_chip)
  data(MsigDB_C5,package="seq2pathway.data")
  #generate a demo GSA.genesets object
  demoDB <- MsigDB_C5
  x=100
  for(i in 1:3) demoDB[[i]]<-MsigDB_C5[[i]][1:x]
  FS_test<-FisherTest_MsigDB(gsmap=demoDB, 
	 sample(unlist(demoDB$genesets),10), genome="hg19",
	 min_Intersect_Count=1)
  FS_test[1:3,]
  ## Not run: 
##D   FS_test<-FisherTest_MsigDB(gsmap=MsigDB_C5, 
##D 	gs=rownames(dat_chip), genome="hg19", 
##D 	min_Intersect_Count=1)
##D 	
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("FisherTest_MsigDB", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("GRanges_demo")
### * GRanges_demo

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: GRanges_demo
### Title: loci information with GRanges format
### Aliases: GRanges_demo
### Keywords: datasets

### ** Examples

data(GRanges_demo)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("GRanges_demo", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("addDescription")
### * addDescription

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: addDescription
### Title: Retrieve "gene description" attributes for gene symbol.
### Aliases: addDescription
### Keywords: methods

### ** Examples

  require(biomaRt)
  data(dat_chip)
  gene_description<-addDescription(genome="hg19",genevector=rownames(dat_chip)[1:3])



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("addDescription", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dat_RNA")
### * dat_RNA

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dat_RNA
### Title: RNA sequence data example
### Aliases: dat_RNA
### Keywords: datasets

### ** Examples

  data(dat_RNA)
  


base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dat_RNA", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dat_chip")
### * dat_chip

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dat_chip
### Title: chip seq data example
### Aliases: dat_chip
### Keywords: datasets

### ** Examples

  data(dat_chip)
  


base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dat_chip", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("gene2pathway_test")
### * gene2pathway_test

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: gene2pathway_test
### Title: A wrapper function to perform gene2pathway test.
### Aliases: gene2pathway_test
### Keywords: methods

### ** Examples

data(dat_chip)
data(MsigDB_C5,package="seq2pathway.data")  
#generate a demo GSA.genesets object
demoDB <- MsigDB_C5
x=100
for(i in 1:3) demoDB[[i]]<-MsigDB_C5[[i]][1:x]
 
res<-gene2pathway_test(dat=head(dat_chip), DataBase=demoDB, 
		FisherTest=FALSE, EmpiricalTest=FALSE, 
        method="FAIME", genome="hg19", min_Intersect_Count=1)
# check ther result
names(res)
res[[1]]
res[[2]]
## Not run: 
##D res<-gene2pathway_test(dat=head(dat_chip), DataBase="BP", 
##D 		FisherTest=FALSE, EmpiricalTest=FALSE, 
##D         method="FAIME", genome="hg19", min_Intersect_Count=1)
## End(Not run)       



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("gene2pathway_test", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("plotTop10")
### * plotTop10

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: plotTop10
### Title: A wrapper function to plot top10 test results.
### Aliases: plotTop10
### Keywords: methods

### ** Examples

  data(dat_chip)
  data(GO_BP_list,package="seq2pathway.data")
  data(Des_BP_list,package="seq2pathway.data")
  newOntology <- list(GO_BP_list[1:200], Des_BP_list[1:200])
  FS_test<- FisherTest_GO_BP_MF_CC(gs=as.vector(rownames(dat_chip)),
                                 Ontology="newOntology", newOntology=newOntology)
  plotTop10(FS_test$newOntology)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("plotTop10", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("runseq2gene")
### * runseq2gene

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: runseq2gene
### Title: R wrapped python function to map genomic regions on the
###   sequence-level to genes.
### Aliases: runseq2gene
### Keywords: methods

### ** Examples

    data(Chipseq_Peak_demo)
    res=runseq2gene(inputfile=Chipseq_Peak_demo)  



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("runseq2gene", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("runseq2pathway")
### * runseq2pathway

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: runseq2pathway
### Title: An function to perform the runseq2pathway algorithm(s).
### Aliases: runseq2pathway
### Keywords: methods

### ** Examples

	data(Chipseq_Peak_demo)
	require(seq2pathway.data)
	data(MsigDB_C5, package="seq2pathway.data")
  #generate a demo GSA.genesets object
	demoDB <- MsigDB_C5
	x=10
	for(i in 1:3) demoDB[[i]]<-MsigDB_C5[[i]][1:x]
       res3=runseq2pathway(inputfile=Chipseq_Peak_demo,
		genome="hg19", search_radius=100, promoter_radius=50, promoter_radius2=0,
		FAIMETest=TRUE, FisherTest=FALSE,  
		DataBase=demoDB, min_Intersect_Count=1)	
	names(res3)
	res3[[1]]
  ## Not run: 
##D    # an example to use FET
##D 	res=runseq2pathway(inputfile=Chipseq_Peak_demo,
##D 		genome="hg19", search_radius=100, promoter_radius=50, promoter_radius2=0,
##D 		DataBase=MsigDB_C5, NearestTwoDirection=FALSE,
##D 		collapsemethod="Average", min_Intersect_Count=1) 
##D    # an example to use FAIME
##D 	res2=runseq2pathway(inputfile=Chipseq_Peak_demo,
##D 		genome="hg19", search_radius=100, promoter_radius=50, promoter_radius2=0,
##D 		FAIMETest=TRUE, FisherTest=FALSE,  
##D 		DataBase=MsigDB_C5, min_Intersect_Count=1)
##D 	
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("runseq2pathway", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
