#################################################################
#          Exercícios Propostos      Dia 1                      #
#################################################################


#-4-----------------------

dir()


#-5-----------------------

ls()  # listar objetos
rm()  # remover objetos


#-6-----------------------

?mean

v<-1:45  # exemplo de um vetor

mean(v,trim=0.1)  # média aparada a 10%



#-7-----------------------

library()

#-8-----------------------

install.packages("Epi")
library(Epi)



#-9-----------------------

seq(26,17)

#-10-----------------------

length(seq(26,17))

#-11-----------------------

seq(-15,89,0.05)


#-12-----------------------

seq(from=15,by=2.3,length=30)

#-13-----------------------

vec.alf<-paste(c("Paciente","Centro de Sa?de"),sep="",1:20)
vec.alf


#-14-----------------------

peso<-c(62,70,52,98,90,70)
altura<-c(1.70,1.82,1.75,1.94,1.84,1.61)

#15

length(peso[peso>90]&altura[altura<1.70])


#-16
peso[4]<-1.70
peso


#-17

IMC<-peso/altura^2
IMC
mode(IMC)
length(IMC)

#18

IMC[7]<-23


#--19

exp.mil<-list(sexo="feminino",idade=43,fármaco=c("1","2","3"),glicémia.p?s=c(167,245,165),glicémia.antes=345)
exp.mil


#--20

data(iris)
plantas<-iris
names(plantas)

#a)

novo<-edit(plantas)  # consultem a função edit e vejam como podem alterar os nomes das variáveis
View(novo)  # agora este novo objeto tem os nomes alterados, na prática temos de crira
            # uma cópia do objeto e é nesse novo objeto que podemos
            # alterar o nome das variaveis 

ou


names(plantas)<-c("SL","SW","PL","PW","S") # assim não é necessário criar uma cópia

names(plantas)


#7b-----------------------
dim(plantas)

#c-----------------------

plantas[1:15,]

#d-----------------------

plantas[,5]
table(plantas$S)
#e-----------------------

plantas$S[plantas$PL>6]

class(plantas)         
class(plantas$S)


names(plantas)
#7f-----------------------

planta[SW < 3 & Sp == "setosa"]


attach(plantas)

dim(plantas[SW < 3 & S == "setosa",])

xpto<-plantas[plantas$SW < 3 & plantas$S == "setosa",]

class(xpto)

xpto
 

#g-----------------------

detach(plantas)

#o git tinha sido importante de aprender desde inicio 

