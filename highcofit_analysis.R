# load EGRIN
load("~/Desktop/corems.RData")

# load metabolite data
#metabolites <- read.delim("/isb-1/R/ecoli/metabolomics/Quantitative_data_metabolites_ishi_etal.txt",header=T,row.names=1)
metabolites <- read.delim("/Volumes/~abrooks/R/ecoli/metabolomics/Quantitative_data_metabolites_ishi_etal.txt",header=T,row.names=1)

# cofitness
#highcofit <- read.delim("/isb-1/R/ecoli/Resubmission/highcofit_corems.txt",header=T)
highcofit <- read.delim("/Volumes/~abrooks/R/ecoli/Resubmission/highcofit_corems.txt",header=T)

# unique TFs
# unique(c(as.character(highcofit[,4]),as.character(highcofit[,5])))
# [1] "IlvY"           ""               "PurR"           "TrpR"          
# [5] "ArgR"           "TrpR"           "TyrR"           "FruR"          
# [9] "PurR;RutR;ArgR"

# TF b#
# IlvY : b3773
# PurR : b1658
# TrpR : b4393
# ArgR : b3237
# TyrR : b1323
# FruR : b0080
# RutR : b1013
# MetR : b3828

# effectors for these TFs
# IlvY : 2-Acetolactate : 263 (SUB!!! Val)
# PurR : Hypoxanthine; Guanine : 321; 354
# TrpR : Tryptophan: 442
# ArgR : Arginine: 395
# TyrR : Tyrosine; Phenylalanine: 413; NA
# FruR : Fructose-1-phosphate; Fructose-1,6-diphosphate:  NA ;184
# RutR : Uracil : 253
# MetR : Homocysteine : NA

# WT conds
wt <- seq(26,35,by=1)

# make a plot! 
library(pheatmap)

x = 1
corems <- strsplit(as.character(highcofit[x,6]),";")[[1]]
conds <- which(colnames(o$ratios)%in%unique(unlist(sapply(o$corem_list$conditions[corems],names))))
tf1 <- "b3773"
tf2 <- "b3237"
m1 <- 263
m2 <- 395
toplot1 <- c(cor(o$ratios[as.character(highcofit[x,1]),conds],o$ratios[as.character(highcofit[x,2]),conds]),
		cor(o$ratios[as.character(highcofit[x,1]),-conds],o$ratios[as.character(highcofit[x,2]),-conds]),
		as.numeric(highcofit[x,3]),
		cor(o$ratios[tf1,conds],o$ratios[tf2,conds]),
		cor(o$ratios[tf1,-conds],o$ratios[tf2,-conds]),
		cor(as.numeric(metabolites[m1,wt]),as.numeric(metabolites[m2,wt]),use="pairwise"),
		cor(as.numeric(metabolites[m1,-wt]),as.numeric(metabolites[m2,-wt]),use="pairwise")
		)
names(toplot1) <- c("Gene Expression (In)","Gene Expression (Out)","Co-Fitness","TF Expression (In)",
"TF Expression (Out)","Metabolite Effector Levels","Metabolite Effector Levels (out)") # labels

pdf("~/Dropbox/Dissertation/talk/components.pdf")
matplot(t(rbind(as.numeric(metabolites[m1,wt]),as.numeric(metabolites[m2,wt]))),type="l")

pheatmap(o$ratios[c(tf1,tf2),],breaks=seq(-4,4,length.out=10),color=colorRampPalette(c("blue","black","yellow"))(10),border_color="white",treeheight_col=0,show_colnames=F)
pheatmap(o$ratios[c(as.character(highcofit[x,1]),as.character(highcofit[x,2])),conds],breaks=seq(-4,4,length.out=10),color=colorRampPalette(c("blue","black","yellow"))(10),border_color="white",treeheight_col=0,show_colnames=F)
dev.off()

# plot some raw data


######
x = 22
corems <- strsplit(as.character(highcofit[x,6]),";")[[1]]
conds <- which(colnames(o$ratios)%in%unique(unlist(sapply(o$corem_list$conditions[corems],names))))
tf1 <- "b1658"
tf2 <- "b3773"
m1 <- 354
m2 <- 263
toplot2 <- c(cor(o$ratios[as.character(highcofit[x,1]),conds],o$ratios[as.character(highcofit[x,2]),conds]),
		cor(o$ratios[as.character(highcofit[x,1]),-conds],o$ratios[as.character(highcofit[x,2]),-conds]),
		as.numeric(highcofit[x,3]),
		cor(o$ratios[tf1,conds],o$ratios[tf2,conds]),
		cor(o$ratios[tf1,-conds],o$ratios[tf2,-conds]),
		cor(as.numeric(metabolites[m1,wt]),as.numeric(metabolites[m2,wt]),use="pairwise"),
		cor(as.numeric(metabolites[m1,-wt]),as.numeric(metabolites[m2,-wt]),use="pairwise")
		)
names(toplot2) <- c("Gene Expression (In)","Gene Expression (Out)","Co-Fitness","TF Expression (In)",
	"TF Expression (Out)","Metabolite Effector Levels","Metabolite Effector Levels (out)") # labels

######
x = 104
corems <- strsplit(as.character(highcofit[x,6]),";")[[1]]
conds <- which(colnames(o$ratios)%in%unique(unlist(sapply(o$corem_list$conditions[corems],names))))
tf1 <- "b1658"
tf2 <- "b4393"
m1 <- 354
m2 <- 442
toplot3 <- c(cor(o$ratios[as.character(highcofit[x,1]),conds],o$ratios[as.character(highcofit[x,2]),conds]),
		cor(o$ratios[as.character(highcofit[x,1]),-conds],o$ratios[as.character(highcofit[x,2]),-conds]),
		as.numeric(highcofit[x,3]),
		cor(o$ratios[tf1,conds],o$ratios[tf2,conds]),
		cor(o$ratios[tf1,-conds],o$ratios[tf2,-conds]),
		cor(as.numeric(metabolites[m1,wt]),as.numeric(metabolites[m2,wt]),use="pairwise"),
		cor(as.numeric(metabolites[m1,-wt]),as.numeric(metabolites[m2,-wt]),use="pairwise")
		)
names(toplot3) <- c("Gene Expression (In)","Gene Expression (Out)","Co-Fitness","TF Expression (In)",
"TF Expression (Out)","Metabolite Effector Levels","Metabolite Effector Levels (out)") # labels

######
x = 105
corems <- strsplit(as.character(highcofit[x,6]),";")[[1]]
conds <- which(colnames(o$ratios)%in%unique(unlist(sapply(o$corem_list$conditions[corems],names))))
tf1 <- "b1323"
tf2 <- "b4393"
m1 <- 413
m2 <- 442
toplot4 <- c(cor(o$ratios[as.character(highcofit[x,1]),conds],o$ratios[as.character(highcofit[x,2]),conds]),
		cor(o$ratios[as.character(highcofit[x,1]),-conds],o$ratios[as.character(highcofit[x,2]),-conds]),
		as.numeric(highcofit[x,3]),
		cor(o$ratios[tf1,conds],o$ratios[tf2,conds]),
		cor(o$ratios[tf1,-conds],o$ratios[tf2,-conds]),
		cor(as.numeric(metabolites[m1,wt]),as.numeric(metabolites[m2,wt]),use="pairwise"),
		cor(as.numeric(metabolites[m1,-wt]),as.numeric(metabolites[m2,-wt]),use="pairwise")
		)
names(toplot4) <- c("Gene Expression (In)","Gene Expression (Out)","Co-Fitness","TF Expression (In)",
"TF Expression (Out)","Metabolite Effector Levels","Metabolite Effector Levels (out)") # labels

######
x = 299
corems <- strsplit(as.character(highcofit[x,6]),";")[[1]]
conds <- which(colnames(o$ratios)%in%unique(unlist(sapply(o$corem_list$conditions[corems],names))))
tf1 <- "b1658"
tf2 <- "b0080"
m1 <- 354
m2 <- 184
toplot5 <- c(cor(o$ratios[as.character(highcofit[x,1]),conds],o$ratios[as.character(highcofit[x,2]),conds]),
		cor(o$ratios[as.character(highcofit[x,1]),-conds],o$ratios[as.character(highcofit[x,2]),-conds]),
		as.numeric(highcofit[x,3]),
		cor(o$ratios[tf1,conds],o$ratios[tf2,conds],use="pairwise"),
		cor(o$ratios[tf1,-conds],o$ratios[tf2,-conds],use="pairwise"),
		cor(as.numeric(metabolites[m1,wt]),as.numeric(metabolites[m2,wt]),use="pairwise"),
		cor(as.numeric(metabolites[m1,-wt]),as.numeric(metabolites[m2,-wt]),use="pairwise")
		)
names(toplot5) <- c("Gene Expression (In)","Gene Expression (Out)","Co-Fitness","TF Expression (In)",
"TF Expression (Out)","Metabolite Effector Levels","Metabolite Effector Levels (out)") # labels

pdf("~/Dropbox/Dissertation/talk/cofitness.pdf")
 pheatmap(cbind(toplot1,toplot2,toplot3,toplot4,toplot5),breaks=seq(-1,1,length.out=10),color=colorRampPalette(c("blue","white","red"))(10),border_color="white")
dev.off()


