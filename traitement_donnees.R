getwd()
setwd("/home/moustaphe/SONATEL_ACADEMY/LOGICIEL R/TP/")
getwd()
# CSV: C'est un fichier dont les valeurs sont separees par des virgules qui porte l'extension .csv 
#STRUCTURE:chaque ligne est un enregistrement de donnee et chaque enregistrement est compose d'un ou de plusieurs champs separer par des virgules 

#IMPORTATION DE FICHIERT:
d=read.csv("data.csv")
#on supprime la colonne des codes
d2=d[,-1]
base1=d2[1:3]
# VOIR LEZ MODE
class(d)
mode(d)
#RECUPERATION NOTE
(my_note=d2$Note)
#boucle for qui ne marche pas 
#for (k in 1:length(linenote1)){
# print(linenote1)
#  print("-------------------------------------------------")
# print(linenote1[k])
#  print("*****************")
#}
#TRANSFORMATION DE LA COLONNE NOTE EN DATA FRAME
my_note=data.frame(my_note)
#SEPARATION premiere ligne
#linenote=strsplit(as.character(my_note[1,]),"#")
#linenote
#library("stringr")
#mode(e)
#linenote=linenote[[1]]

#mode(linenote)
#ON SEPARE LA MATIERE ET LES NOTES
#sep_mat_not=strsplit(linenote,"\\[")
#matiere=sep_mat_not[[1]][1]
#notes=sep_mat_not[[1]][2]
#notes=strsplit(notes,"]")
#notes=notes[[1]][1]
#sep_dev_exam=strsplit(notes,":")
#devoir=sep_dev_exam[[1]][1]
#exam=sep_dev_exam[[1]][2]
#devoir=strsplit(devoir,";")
#creation data.frame
#d1=devoir[[1]][1]
#d2=devoir[[1]][2]
#d3=devoir[[1]][3]
#examen=exam
#nom_matiere=sep_mat_not[[1]][1]
#base=data.frame(nom_matiere,d1,d2,d3,examen)
#base
#nrow(my_note)
#nrow(sep_mat_not)
notes_eleve <- data.frame()
colnames(notes_eleve) <-c("nom_matiere1", "d11", "d21", "d31","examen1")
#print(notes_eleve)

for (i in 1:nrow(my_note)){
  linenote1=strsplit(as.character(my_note[i,]),"#")
  linenote1=linenote1[[1]]
  #  z=length(linenote1[[1]])
  k <- 1
  #print(linenote1)
  #print("*****************")
  while (k <= length(linenote1)){
    #print(linenote1[k])
    sep_mat_not1=strsplit(linenote1[k],"\\[")
    #print(sep_mat_not1)
    matiere1=sep_mat_not1[[1]][1]
    #print(matiere1)
    notes1=sep_mat_not1[[1]][2]
    #print(notes1)
    notes1=strsplit(notes1,"]")
    notes1=notes1[[1]][1]
    #print(notes1)
    sep_dev_exam1=strsplit(notes1,":")
    #print(sep_dev_exam1)
    devoir1=sep_dev_exam1[[1]][1]
    #print(devoir1)
    exam1=sep_dev_exam1[[1]][2]
    devoir1=strsplit(devoir1,";")
    #print(exam1)
    #print(devoir1)
    d11=devoir1[[1]][1]
    d21=devoir1[[1]][2]
    d31=devoir1[[1]][3]
    examen1=exam1
    nom_matiere1=sep_mat_not1[[1]][1]
    base1=data.frame(nom_matiere1,d11,d21,d31,examen1)
    #print(base1)
    notes_eleve <- rbind(notes_eleve, base1)
    k <- k + 1
  }
  print("-----------------------------------------------------------------------")
  print(notes_eleve)
}

