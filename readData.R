########################
##ESTACIÓN EXPERIMENTAL#
########################
library(dplyr)
library(tidyr)
library(zoo)
library(xts)
#Primer archivo
a<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_09_30_1533.dat",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
#RT<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_09_30_1533.dat",header =FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
#RT[2,]
cabecero<-RT[2,21]
a<-a[5:nrow(a),1:ncol(a)]
a.tbl<-tbl_df(a)
b<-arrange(a.tbl,V1)
#Segundo archivo
c<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_10_01_2007.dat",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
c<-c[5:nrow(c),1:ncol(c)]
c.tbl<-tbl_df(c)
d<-arrange(c.tbl,V1)
e<-dplyr::union(x=b, y=d)
Fi<-e %>% arrange(V1)
#View(Fi)
##Tercer archivo
f<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_10_18_0951.dat",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
f<-f[5:nrow(f),1:ncol(f)]
f.tbl<-tbl_df(f)
g<-arrange(f.tbl,V1)
#View(g)
h<-dplyr::union(x=Fi, y=g)
Fi1<-h %>% arrange(V1)
#View(Fi1)
##Cuarto archivo
i<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_11_02_1010.dat",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
i<-i[5:nrow(i),1:ncol(i)]
i.tbl<-tbl_df(i)
j<-arrange(i.tbl,V1)
#View(g)
k<-dplyr::union(x=Fi1, y=j)
Fi2<-k %>% arrange(V1)
#View(Fi2)
#plot(Fi4[50],type="l")
##Quinto archivo
l<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_11_25_0027.dat",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
l<-l[5:nrow(l),1:ncol(l)]
l.tbl<-tbl_df(l)
m<-arrange(l.tbl,V1)
#View(g)
n<-dplyr::union(x=Fi2, y=m)
Fi3<-n %>% arrange(V1)
#View(Fi3)
##Sexto archivo
o<-read.csv("D:/PC400/experimetal/convertion_experimental/final/TOA5_70878.flux_2016_12_02_1556.dat",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
o<-o[5:nrow(o),1:ncol(o)]
o.tbl<-tbl_df(o)
p<-arrange(o.tbl,V1)
53/280
#View(g)
q<-dplyr::union(x=Fi3, y=p)
Fi4<-q %>% arrange(V1)
Fi4<-Fi4[-which(duplicated(Fi4[[1]])),]
View(Fi4)
str(Fi4)
Fi4$V2
#plot(Fi4$V2[110500:110600],type="l")
###
a.tbl.F<-data.frame(do.call("cbind",lapply(1:71, function(x) as.numeric(Fi5[[x]]))))
a.tbl.F<-tbl_df(a.tbl.F) 
substr()
plot(diff(as.numeric(substr(Fi4$V1,15,16))),type="l")
Fi4$V1)),type="l")
##SEPTIMO archivo
r<-read.csv("D:/PC400/experimetal/convertion_experimental/final/exp_part1.csv",header=FALSE,stringsAsFactors=FALSE,fileEncoding="latin1")
#lines(r1$V50,type="l",col="red")
r1<-tbl_df(r)
r2<-r1[2:nrow(r1),2:ncol(r1)]
r2<-cbind(r2[,66],r2[,1:65])
r2<-tbl_df(r2)
colnames(r2)<-colnames(Fi4)
q<-dplyr::union(x=r2, y=Fi4)
Fin<-q %>% arrange(V1)
Fin1<-Fin[-which(duplicated(Fin[[1]])),]
plot(Fin$V50,type="l")
lines(Fin1$V50,type="l",col="red")
View(Fin1)
2016-07-07 15:07:00
2016-12-02 15:59:00
fecha<-seq()
####
Fi5<-mutate(Fi4,substr(Fi4$V1,1,4),substr(Fi4$V1,6,7),substr(Fi4$V1,9,10),
            substr(Fi4$V1,12,13),substr(Fi4$V1,15,16),substr(Fi4$V1,18,19))
Fi5<-select(Fi5,-V1)
Fi5<-cbind(Fi5[,66:71],Fi5[,1:65])
#View(Fi5)
str(Fi5)
ncol(Fi5)
#############
a.tbl.F<-data.frame(do.call("cbind",lapply(1:71, function(x) as.numeric(Fi5[[x]]))))
a.tbl.F<-tbl_df(a.tbl.F) 
View(a.tbl.F)
str(a.tbl.F)
#a.tbl.F[a.tbl.F== NA]=NaN
write.table(a.tbl.F,"D:/PC400/datos_exp2.txt",row.names = FALSE,na = "NaN",sep = " ",col.names = FALSE)

gg<-lapply(Fi5, as.numeric)
View(gg)
ff<-as.numeric(unlist(Fi5))
#Fi5<-as.numeric(Fi5[1:nrow(Fi5),1:ncol(Fi5)])