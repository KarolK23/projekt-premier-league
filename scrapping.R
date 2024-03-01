library(rvest)
library(dplyr)
library(stringr)

Rk <- c()
Squad <- c()
Matches.played <- c()
Wins <- c()
Draws <- c()
Loses <- c()
Goals.for <- c()
Goals.against <- c()
Goal.difference <- c()
Points <- c()
Points.per.match <- c()
Expected.goals <- c()
Expected.goals.allowed <- c()
Expected.goals.difference <- c()
Expected.goals.difference.per.90.minutes <- c()
Attendance <- c()
Assists <- c()
Penalty.kicks.made <- c()
Penalty.kicks.attempted <- c()
Yellow.cards <- c()
Red.cards <- c()
Progressive.carries <- c()
Progressive.passes <- c()
Age <- c()
Squad2 <- c()
Number.of.players <- c()
Season <- c()
Shoots.total <- c()
Shoots.on.target <- c()
Average.shot.distance <- c()
Free.kick.shots <- c()
Passes.completed <- c()
Passes.attempted <- c()
Short.passes.completed <- c()
Short.passes.attempted <- c()
Medium.passes.completed <- c()
Medium.passes.attempted <- c()
Long.passes.completed <- c()
Long.passes.attempted <- c()
Live.ball.passes <- c()
Dead.ball.passes <- c()
Passes.from.free.kicks <- c()
Through.balls <- c()
Switches <- c()
Crosses <- c()
Throw.in.taken <- c()
Corner.kicks <- c()
Corner.kicks.in <- c()
Corner.kicks.out <- c()
Corner.kicks.straight <- c()
Passes.offside <- c()
Shot.creating.actions <- c()
SCA.Live.ball.pass <- c()
SCA.Dead.ball.pass <- c()
SCA.Take.on <- c()
SCA.Shot <- c()
SCA.Fouls.drawn <- c()
SCA.Deffensive.action <- c()
Goal.creatiing.actions <- c()
GCA.Live.ball.pass <- c()
GCA.Dead.ball.pass <- c()
GCA.Take.on <- c()
GCA.Shot <- c()
GCA.Fouls.drawn <- c()
GCA.Deffensive.action <- c()
Tackles <- c()
Tackles.won <- c()
Tackles.def.3rd <- c()
Tackles.mid.3rd <- c()
Tackles.att.3rd <- c()
Dribblers.tackled <- c()
Dribblers.challenged <- c()
Challenges.lost <- c()
Blocks <- c()
Shots.blocked <- c()
Passes.blocked <- c()
Interceptions <- c()
Clearances <- c()
Errors <- c()
Possession <- c()
Touches <- c()
Touches.def.pen <- c()
Touches.def.3rd <- c()
Touches.mid.3rd <- c()
Touches.att.3rd <- c()
Touches.att.pen <- c()
Takes.on.attempted <- c()
Takes.on.succesful <- c()
Times.tackled.during.take.on <- c()
Carries <- c()
Total.carrying.distance <- c()
Progressive.carrying.distance <- c()
Carries.into.final.third <- c()
Carreis.into.penalty.area <- c()
Miscontrols <- c()
Dispossessed <- c()
Passes.recived <- c()
Progressive.passes.recived <- c()
Substitute.apperances <- c()
Matchehs.as.unused.sub <- c()
Second.yellow.card <- c()
Fouls.commited <- c()
Fouls.drawn <- c()
Own.goals <- c()
Ball.recoveries <- c()
Aerials.won <- c()
Aerial.lost <- c()
Blocked.passes <- c()
Cleansheets <- c()
Passes.into.penalty.area <- c()
#link <- "https://fbref.com/en/comps/9/2018-2019/2018-2019-Premier-League-Stats"
#page <- read_html(link)
for (i in 0:5){
  rok <- 2017+i
  link <- paste("https://fbref.com/en/comps/9/",rok,"-",rok+1,"/",rok,"-",rok+1,"-Premier-League-Stats", sep="")
  page <- read_html(link)

##################################################################
######################### REGULAR SEASON #########################
################################################################## 
  
Rkx <- c(1:20)
Rk <- c(Rk,Rkx)
  
  
Squadx <- page %>% html_nodes(".force_mobilize .left:nth-child(2)") %>% html_text()
Squadx <- Squadx[-(21:40)]
Squad <- c(Squad, Squadx)

Matches.playedx <- page %>% html_nodes(".force_mobilize .left+ .right") %>% html_text()  
Matches.playedx <- Matches.playedx[-(21:40)]
Matches.played <- c(Matches.played, Matches.playedx)

Winsx <- page %>% html_nodes(".force_mobilize .right:nth-child(4)") %>% html_text()
Winsx <- Winsx[-(21:40)]
Wins <- c(Wins, Winsx)


Draws <- page %>% html_nodes(".force_mobilize .right:nth-child(5)") %>% html_text()
Draws <- Draws[-(21:40)]

Losesx <- page %>% html_nodes(".force_mobilize .right:nth-child(6)") %>% html_text()
Losesx <- Losesx[-(21:40)]
Loses <- c(Loses, Losesx)

Goals.forx <- page %>% html_nodes(".force_mobilize .right:nth-child(7)") %>% html_text()
Goals.forx <- Goals.forx[-(21:40)]
Goals.for <- c(Goals.for, Goals.forx)

Goals.againstx <- page %>% html_nodes(".force_mobilize .right:nth-child(8)") %>% html_text()
Goals.againstx <- Goals.againstx[-(21:40)]
Goals.against <- c(Goals.against, Goals.againstx)

Goal.differencex <- page %>% html_nodes(".force_mobilize .right:nth-child(9)") %>% html_text()
Goal.differencex <- Goal.differencex[-(21:40)]
Goal.difference <- c(Goal.difference, Goal.differencex)


Pointsx <- page %>% html_nodes(".force_mobilize .right:nth-child(10)") %>% html_text()
Pointsx <- Pointsx[-(21:40)]
Points <- c(Points, Pointsx)

Points.per.matchx <- page %>% html_nodes(".force_mobilize .right:nth-child(11)") %>% html_text()
Points.per.matchx <- Points.per.matchx[-(21:40)]
Points.per.match <- c(Points.per.match, Points.per.matchx)

Expected.goalsx <- page %>% html_nodes(".force_mobilize .right:nth-child(12)") %>% html_text()
Expected.goalsx <- Expected.goalsx[-(21:40)]
Expected.goals <- c(Expected.goals, Expected.goalsx)

Expected.goals.allowedx <- page %>% html_nodes(".force_mobilize .right:nth-child(13)") %>% html_text()
Expected.goals.allowedx <- Expected.goals.allowedx[-(21:40)]
Expected.goals.allowed <- c(Expected.goals.allowed, Expected.goals.allowedx)

Expected.goals.differencex <- page %>% html_nodes(".force_mobilize .right:nth-child(14)") %>% html_text()
Expected.goals.differencex <- Expected.goals.differencex[-(21:40)]
Expected.goals.difference <- c(Expected.goals.difference, Expected.goals.differencex)

Expected.goals.difference.per.90.minutesx <- page %>% html_nodes(".force_mobilize .right:nth-child(15)") %>% html_text()
Expected.goals.difference.per.90.minutesx <- Expected.goals.difference.per.90.minutesx[-(21:40)]
Expected.goals.difference.per.90.minutes <- c(Expected.goals.difference.per.90.minutes, Expected.goals.difference.per.90.minutesx)

Attendancex <- page %>% html_nodes(".force_mobilize .right:nth-child(16)") %>% html_text()
Attendancex <- Attendancex[-(21:40)] %>% str_replace("\\,", "") #USUWAMY PRZECINKI, BO STRONA ZAPISUJE PRZECINKI CO 3 ZERA
Attendance <- c(Attendance, Attendancex)

########################################################################
######################### SQUAD STANDARD STATS #########################
########################################################################

Squad2x <- page %>% html_nodes("#stats_squads_standard_for .left") %>% html_text()
Squad2 <- c(Squad2, Squad2x)

Number.of.playersx <- page %>% html_nodes("#stats_squads_standard_for .left+ .right") %>% html_text()
Number.of.players <- c(Number.of.players, Number.of.playersx)

Agex <- page %>% html_nodes("#stats_squads_standard_for .right+ .center") %>% html_text()
Age <- c(Age, Agex)

Assistsx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(10)") %>% html_text()
Assists <- c(Assists, Assistsx)

Penalty.kicks.madex <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(13)") %>% html_text()
Penalty.kicks.made <- c(Penalty.kicks.made, Penalty.kicks.madex)

Penalty.kicks.attemptedx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(14)") %>% html_text()
Penalty.kicks.attempted <- c(Penalty.kicks.attempted, Penalty.kicks.attemptedx)

if (rok!=2017){
  Yellow.cardsx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(15)") %>% html_text()
  Yellow.cards <- c(Yellow.cards, Yellow.cardsx)
  
  Red.cardsx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(16)") %>% html_text()
  Red.cards <- c(Red.cards, Red.cardsx) 
} else #na stronie fbref są braki dla sezonu 2017/2018 więc pobieramy dane stąd 
{
  Yellow.cardsx <- read_html("https://www.espn.com/soccer/stats/_/league/ENG.1/season/2017/view/discipline/english-premier-league") %>% 
    html_nodes(".Table__TD:nth-child(4) .tar") %>% html_text()
  Yellow.cards <- c(Yellow.cards, Yellow.cardsx)
  
  Red.cardsx <- read_html("https://www.espn.com/soccer/stats/_/league/ENG.1/season/2017/view/discipline/english-premier-league") %>% 
    html_nodes(".Table__TD:nth-child(5) .tar") %>% html_text()
  Red.cards <- c(Red.cards, Red.cardsx)
}

Progressive.passesx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(22)") %>% html_text()
Progressive.passes <- c(Progressive.passes, Progressive.passesx)

##################################################################
######################### SQUAD SHOOTING #########################
##################################################################

Shoots.totalx <- page %>% html_nodes("#stats_squads_shooting_for .right:nth-child(5)") %>% html_text()
Shoots.total <- c(Shoots.total, Shoots.totalx)

Shoots.on.targetx <- page %>% html_nodes("#stats_squads_shooting_for .right:nth-child(6)") %>% html_text()
Shoots.on.target <- c(Shoots.on.target, Shoots.on.targetx)

Average.shot.distancex <- page %>% html_nodes("#stats_squads_shooting_for .right:nth-child(12)") %>% html_text()
Average.shot.distance <- c(Average.shot.distance, Average.shot.distancex)

Free.kick.shotsx <- page %>% html_nodes("#stats_squads_shooting_for .right:nth-child(13)") %>% html_text()
Free.kick.shots <- c(Free.kick.shots,Free.kick.shotsx)

##################################################################
######################### SQUAD PASSING ##########################
##################################################################

Passes.completedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(4)") %>% html_text()
Passes.completed <- c(Passes.completed, Passes.completedx)

Passes.attemptedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(5)") %>% html_text()
Passes.attempted <- c(Passes.attempted, Passes.attemptedx)

Short.passes.completedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(9)") %>% html_text()
Short.passes.completed <- c(Short.passes.completed, Short.passes.completedx)

Short.passes.attemptedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(10)") %>% html_text()
Short.passes.attempted <- c(Short.passes.attempted, Short.passes.attemptedx)

Medium.passes.completedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(12)") %>% html_text()
Medium.passes.completed <- c(Medium.passes.completed, Medium.passes.completedx)

Medium.passes.attemptedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(13)") %>% html_text()
Medium.passes.attempted <- c(Medium.passes.attempted, Medium.passes.attemptedx)

Long.passes.completedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(15)") %>% html_text()
Long.passes.completed <- c(Long.passes.completed, Long.passes.completedx)

Long.passes.attemptedx <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(16)") %>% html_text()
Long.passes.attempted <- c(Long.passes.attempted, Long.passes.attemptedx)

Live.ball.passesx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(5)") %>% html_text()
Live.ball.passes <- c(Live.ball.passes, Live.ball.passesx)

Dead.ball.passesx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(6)") %>% html_text()
Dead.ball.passes <- c(Dead.ball.passes, Dead.ball.passesx)

Passes.from.free.kicksx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(7)") %>% html_text()
Passes.from.free.kicks <- c(Passes.from.free.kicks, Passes.from.free.kicksx)

Through.ballsx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(8)") %>% html_text()
Through.balls <- c(Through.balls, Through.ballsx)

Switchesx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(9)") %>% html_text()
Switches <- c(Switches, Switchesx)

Crossesx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(10)") %>% html_text()
Crosses <- c(Crosses, Crossesx)

Throw.in.takenx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(11)") %>% html_text()
Throw.in.taken <- c(Throw.in.taken, Throw.in.takenx)

Corner.kicksx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(12)") %>% html_text()
Corner.kicks <- c(Corner.kicks, Corner.kicksx)

Corner.kicks.inx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(13)") %>% html_text()
Corner.kicks.in <- c(Corner.kicks.in, Corner.kicks.inx)

Corner.kicks.outx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(14)") %>% html_text()
Corner.kicks.out <- c(Corner.kicks.out, Corner.kicks.outx)

Corner.kicks.straightx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(15)") %>% html_text()
Corner.kicks.straight <- c(Corner.kicks.straight, Corner.kicks.straightx)

Passes.offsidex <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(17)") %>% html_text()
Passes.offside <- c(Passes.offside, Passes.offsidex)

Passes.blockedx <- page %>% html_nodes("#stats_squads_passing_types_for .right:nth-child(18)") %>% html_text()
Passes.blocked <- c(Passes.blocked, Passes.blockedx)

Passes.into.penalty.areax <- page %>% html_nodes("#stats_squads_passing_for .right:nth-child(24)") %>% html_text()
Passes.into.penalty.area <- c(Passes.into.penalty.area, Passes.into.penalty.areax)


#################################################################################
######################### SQUAD GOAL AND SHOT CREATION ##########################
#################################################################################


Shot.creating.actionsx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(4)") %>% html_text()
Shot.creating.actions <- c(Shot.creating.actions, Shot.creating.actionsx)

SCA.Live.ball.passx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(6)") %>% html_text()
SCA.Live.ball.pass <- c(SCA.Live.ball.pass, SCA.Live.ball.passx)

SCA.Dead.ball.passx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(7)") %>% html_text()
SCA.Dead.ball.pass <- c(SCA.Dead.ball.pass, SCA.Dead.ball.passx)

SCA.Take.onx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(8)") %>% html_text()
SCA.Take.on <- c(SCA.Take.on, SCA.Take.onx)

SCA.Shotx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(9)") %>% html_text()
SCA.Shot <- c(SCA.Shot, SCA.Shotx)

SCA.Fouls.drawnx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(10)") %>% html_text()
SCA.Fouls.drawn <- c(SCA.Fouls.drawn, SCA.Fouls.drawnx)

SCA.Deffensive.actionx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(11)") %>% html_text()
SCA.Deffensive.action <- c(SCA.Deffensive.action, SCA.Deffensive.actionx)

Goal.creatiing.actionsx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(12)") %>% html_text()
Goal.creatiing.actions <- c(Goal.creatiing.actions, Goal.creatiing.actionsx)

GCA.Live.ball.passx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(14)") %>% html_text()
GCA.Live.ball.pass <- c(GCA.Live.ball.pass, GCA.Live.ball.passx)

GCA.Dead.ball.passx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(15)") %>% html_text()
GCA.Dead.ball.pass <- c(GCA.Dead.ball.pass, GCA.Dead.ball.passx)

GCA.Take.onx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(16)") %>% html_text()
GCA.Take.on <- c(GCA.Take.on, GCA.Take.onx)

GCA.Shotx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(17)") %>% html_text()
GCA.Shot <- c(GCA.Shot, GCA.Shotx)

GCA.Fouls.drawnx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(18)") %>% html_text()
GCA.Fouls.drawn <- c(GCA.Fouls.drawn, GCA.Fouls.drawnx)

GCA.Deffensive.actionx <- page %>% html_nodes("#stats_squads_gca_for .right:nth-child(19)") %>% html_text()
GCA.Deffensive.action <- c(GCA.Deffensive.action, GCA.Deffensive.actionx)

############################################################################
######################### SQUAD DEFENSIVE ACTIONS ##########################
############################################################################

Tacklesx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(4)") %>% html_text()
Tackles <- c(Tackles,Tacklesx)

Tackles.wonx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(5)") %>% html_text()
Tackles.won <- c(Tackles.won,Tackles.wonx)

Tackles.def.3rdx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(6)") %>% html_text()
Tackles.def.3rd <- c(Tackles.def.3rd, Tackles.def.3rdx)

Tackles.mid.3rdx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(7)") %>% html_text()
Tackles.mid.3rd <- c(Tackles.mid.3rd, Tackles.mid.3rdx)

Tackles.att.3rdx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(8)") %>% html_text()
Tackles.att.3rd <- c(Tackles.att.3rd,Tackles.att.3rdx)

Dribblers.tackledx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(9)") %>% html_text()
Dribblers.tackled <- c(Dribblers.tackled,Dribblers.tackledx)

Dribblers.challengedx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(10)") %>% html_text()
Dribblers.challenged <- c(Dribblers.challenged, Dribblers.challengedx)

Challenges.lostx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(12)") %>% html_text()
Challenges.lost <- c(Challenges.lost, Challenges.lostx)

Blocksx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(13)") %>% html_text()
Blocks <- c(Blocks, Blocksx)

Shots.blockedx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(14)") %>% html_text()
Shots.blocked <- c(Shots.blocked,Shots.blockedx)

Blocked.passesx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(15)") %>% html_text()
Blocked.passes <- c(Blocked.passes, Blocked.passesx)


Interceptionsx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(16)") %>% html_text()
Interceptions <- c(Interceptions, Interceptionsx)


Clearancesx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(17)") %>% html_text()
Clearances <- c(Clearances, Clearancesx)

Errorsx <- page %>% html_nodes("#stats_squads_defense_for .right:nth-child(18)") %>% html_text()
Errors <- c(Errors, Errorsx)

Cleansheetsx <- page %>% html_nodes("#stats_squads_keeper_for .right:nth-child(15)") %>% html_text()
Cleansheets <- c(Cleansheets, Cleansheetsx)

#####################################################################
######################### SQUAD POSSESSION ##########################
#####################################################################

Possessionx <- page %>% html_nodes("#stats_squads_possession_for td.center") %>% html_text()
Possession <- c(Possession, Possessionx)

Touchesx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(5)") %>% html_text()
Touches <- c(Touches, Touchesx)

Touches.def.penx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(6)") %>% html_text()
Touches.def.pen <- c(Touches.def.pen, Touches.def.penx)

Touches.def.3rdx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(7)") %>% html_text()
Touches.def.3rd <- c(Touches.def.3rd, Touches.def.3rdx)

Touches.mid.3rdx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(8)") %>% html_text()
Touches.mid.3rd <- c(Touches.mid.3rd, Touches.mid.3rdx)

Touches.att.3rdx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(9)") %>% html_text()
Touches.att.3rd <- c(Touches.att.3rd, Touches.att.3rdx)

Touches.att.penx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(10)") %>% html_text()
Touches.att.pen <- c(Touches.att.pen, Touches.att.penx)


Takes.on.attemptedx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(12)") %>% html_text()
Takes.on.attempted <- c(Takes.on.attempted, Takes.on.attemptedx)

Takes.on.succesfulx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(13)") %>% html_text()
Takes.on.succesful <- c(Takes.on.succesful, Takes.on.succesfulx)

Times.tackled.during.take.onx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(15)") %>% html_text()
Times.tackled.during.take.on <- c(Times.tackled.during.take.on, Times.tackled.during.take.onx)


Carriesx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(17)") %>% html_text()
Carries <- c(Carries, Carriesx)

Total.carrying.distancex <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(18)") %>% html_text()
Total.carrying.distance <- c(Total.carrying.distance,Total.carrying.distancex)

Progressive.carrying.distancex <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(19)") %>% html_text()
Progressive.carrying.distance <- c(Progressive.carrying.distance, Progressive.carrying.distancex)


Progressive.carriesx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(20)") %>% html_text()
Progressive.carries <- c(Progressive.carries, Progressive.carriesx)


Carries.into.final.thirdx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(21)") %>% html_text()
Carries.into.final.third <- c(Carries.into.final.third, Carries.into.final.thirdx)

Carreis.into.penalty.areax <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(22)") %>% html_text()
Carreis.into.penalty.area <- c(Carreis.into.penalty.area,Carreis.into.penalty.areax)

Miscontrolsx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(23)") %>% html_text()
Miscontrols <- c(Miscontrols, Miscontrolsx)


Dispossessedx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(24)") %>% html_text()
Dispossessed <- c(Dispossessed, Dispossessedx)

Passes.recivedx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(25)") %>% html_text()
Passes.recived <- c(Passes.recived, Passes.recivedx)

Progressive.passes.recivedx <- page %>% html_nodes("#stats_squads_possession_for .right:nth-child(26)") %>% html_text()
Progressive.passes.recived <- c(Progressive.passes.recived, Progressive.passes.recivedx)

##############################################################################
######################### SQUAD MISCELLANEOUS STATS ##########################
##############################################################################


Substitute.apperancesx <- page %>% html_nodes("#stats_squads_playing_time_for .right:nth-child(12)") %>% html_text()
Substitute.apperances <- c(Substitute.apperances, Substitute.apperancesx)

Matchehs.as.unused.subx <- page %>% html_nodes("#stats_squads_playing_time_for .right:nth-child(14)") %>% html_text()
Matchehs.as.unused.sub <- c(Matchehs.as.unused.sub, Matchehs.as.unused.subx)

Second.yellow.cardx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(6)") %>% html_text()
Second.yellow.card <- c(Second.yellow.card,Second.yellow.cardx)

Fouls.commitedx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(7)") %>% html_text()
Fouls.commited <- c(Fouls.commited, Fouls.commitedx)

Fouls.drawnx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(8)") %>% html_text()
Fouls.drawn <- c(Fouls.drawn, Fouls.drawnx)

Own.goalsx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(15)") %>% html_text()
Own.goals <- c(Own.goals, Own.goalsx)

Ball.recoveriesx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(16)") %>% html_text()
Ball.recoveries <- c(Ball.recoveries, Ball.recoveriesx)

Aerials.wonx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(17)") %>% html_text()
Aerials.won <- c(Aerials.won, Aerials.wonx)

Aerial.lostx <- page %>% html_nodes("#stats_squads_misc_for .right:nth-child(18)") %>% html_text()
Aerial.lost <- c(Aerial.lost, Aerial.lostx)

S <- paste(as.character(rok),"/",as.character(rok+1), sep="")
Seasonx <- rep(S, times=20)
Season <- c(Season, Seasonx)
}

df1 <- data.frame(Rk, Squad, Matches.played, Wins, Draws, Loses, Goals.for, 
                 Goals.against, Goal.difference, Points, Points.per.match, 
                 Expected.goals, Expected.goals.allowed, Expected.goals.difference,
                 Expected.goals.difference.per.90.minutes, Attendance, "Season"=rev(Season))

df2 <- data.frame("Squad"=Squad2, 
                  #Passes
                  Assists,
                  Passes.completed, Passes.attempted, Short.passes.completed,
                  Short.passes.attempted, Medium.passes.completed, Medium.passes.attempted, Long.passes.completed, 
                  Long.passes.attempted, Progressive.passes, Live.ball.passes, Dead.ball.passes, Passes.from.free.kicks, Through.balls, 
                  Switches, Crosses, Throw.in.taken, Corner.kicks, Corner.kicks.in, Corner.kicks.out, Corner.kicks.straight, 
                  Passes.offside, Passes.blocked, Passes.into.penalty.area,
                  #SHOTS#
                  Shoots.total, Shoots.on.target, Average.shot.distance, Free.kick.shots,
                  Shot.creating.actions, SCA.Live.ball.pass, SCA.Dead.ball.pass, SCA.Take.on, 
                  SCA.Shot, SCA.Fouls.drawn, SCA.Deffensive.action, Goal.creatiing.actions, GCA.Live.ball.pass, GCA.Dead.ball.pass, 
                  GCA.Take.on, GCA.Shot, GCA.Fouls.drawn, GCA.Deffensive.action,
                  Penalty.kicks.attempted, Penalty.kicks.made,
                  #DEFENSIVE
                  Tackles, Tackles.won, Tackles.def.3rd, Tackles.mid.3rd, 
                  Tackles.att.3rd, Dribblers.tackled, Dribblers.challenged, Challenges.lost, Blocks, Shots.blocked, Blocked.passes, 
                  Interceptions, Clearances, Errors, Ball.recoveries, 
                  Fouls.commited, Yellow.cards, Second.yellow.card, Red.cards, Own.goals, Cleansheets,
                  #POSSESION
                  Possession, Touches, Touches.def.pen, Touches.def.3rd, Touches.mid.3rd, Touches.att.3rd, 
                  Touches.att.pen, Takes.on.attempted, Takes.on.succesful, Times.tackled.during.take.on, Carries, Total.carrying.distance, 
                  Progressive.carrying.distance, Progressive.carries, Carries.into.final.third, Carreis.into.penalty.area, Miscontrols, 
                  Dispossessed, Fouls.drawn, Passes.recived, Progressive.passes.recived, Aerials.won, Aerial.lost,
                  #Rózne
                  Age, Substitute.apperances, Matchehs.as.unused.sub, "Season"=rev(Season))


df <- merge(df1, df2, by = c("Season","Squad"))
df %>% head()
df_order <- df %>% arrange(Season, Rk)
df_order$Season <- rev(df_order$Season)


write.csv(df_order, "dane\\dane.csv", row.names = FALSE)
