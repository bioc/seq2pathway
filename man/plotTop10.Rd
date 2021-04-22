\name{plotTop10}
\alias{plotTop10}

\title{
  A wrapper function to plot top10 test results.
}
\description{
  Plot a vertical bar plot of odds ratios with red lines indicates -log10(fdr adjusted p-value) 
  of the top10 results ordered by FDR. This plot is sorted by -log10(FDR) from large to small
}
\usage{
  plotTop10(res,fdr=0.05,or=2,myfileID=NULL)
}

\arguments{
  \item{res}{
    A result table of FisherTest_GO_BP_MF_CC function, FisherTest_MsigDB function,
    single element of result list of gene2pathway_test function or any table with colnames
    : 'FDR', 'Fisher_odds', 'Intersect_gene'/'GeneSet'  
  }
  \item{fdr}{
    A non-negative FDR cuttoff for the table 'res'. Default is 0.05. 
  }
  \item{or}{
    A non-negative odds ratio cuttoff for the table 'res'. Default is 2. 
  }
  \item{myfileID}{
    main title of the plot. Default is NULL. 
  }
}

\author{
  Xinan Holly Yang, Zhezhen Wang
}

\examples{
  data(dat_chip)
  data(GO_BP_list,package="seq2pathway.data")
  data(Des_BP_list,package="seq2pathway.data")
  newOntology <- list(GO_BP_list[1:200], Des_BP_list[1:200])
  FS_test<- FisherTest_GO_BP_MF_CC(gs=as.vector(rownames(dat_chip)),
                                 Ontology="newOntology", newOntology=newOntology)
  plotTop10(FS_test$newOntology, fdr=.3)
}

\keyword{methods}

