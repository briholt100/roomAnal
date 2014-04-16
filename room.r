getwd()
room<-read.csv("roomAnal/SpAll4-9.csv")
head(room)
str(room)
table(room$DEPT)
table(room$BLDG)
table(room$DEPT,room$BLDG)
t(table(room$DAYS))

table(room$ROOM,room$BLDG)


##one prediction is that type of class should predict room

## a different prediction would be that a department would predict a particular room

## yet another prediction about which rooms are most empty?  Hybrids.  But what of other designations?


##clean up tasks:  consollidate departments by dropping &

roomLog<-glm(ROOM~DEPT+BLDG,data=room,family=binomial)
summary(roomLog)
