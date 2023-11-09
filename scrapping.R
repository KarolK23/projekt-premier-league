library(rvest)
library(dplyr)

setwd("C:\\Premier League Project")

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
Season <- c()
#link <- "https://fbref.com/en/comps/9/2018-2019/2018-2019-Premier-League-Stats"
#page <- read_html(link)
for (i in 0:5){
  rok <- 2017+i
  link <- paste("https://fbref.com/en/comps/9/",rok,"-",rok+1,"/",rok,"-",rok+1,"-Premier-League-Stats", sep="")
  page <- read_html(link)

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
Attendancex <- Attendancex[-(21:40)]
Attendance <- c(Attendance, Attendancex)

#Dodatkowe

#Tutaj drużyny są podane alfabetycznie więc trzeba to jakoś dopasować

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

Progressive.carriesx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(21)") %>% html_text()
Progressive.carries <- c(Progressive.carries, Progressive.carriesx)

Progressive.passesx <- page %>% html_nodes("#stats_squads_standard_for .right:nth-child(22)") %>% html_text()
Progressive.passes <- c(Progressive.passes, Progressive.passesx)


Agex <- page %>% html_nodes("#stats_squads_standard_for .right+ .center") %>% html_text()
Age <- c(Age, Agex)

Squad2x <- page %>% html_nodes("#stats_squads_standard_for .left") %>% html_text()
Squad2 <- c(Squad2, Squad2x)

S <- paste(as.character(rok),"/",as.character(rok+1), sep="")
Seasonx <- rep(S, times=20)
Season <- c(Season, Seasonx)
}

df1 <- data.frame(Rk, Squad, Matches.played, Wins, Draws, Loses, Goals.for, 
                 Goals.against, Goal.difference, Points, Points.per.match, 
                 Expected.goals, Expected.goals.allowed, Expected.goals.difference,
                 Expected.goals.difference.per.90.minutes, Attendance, "Season"=rev(Season))
df2 <- data.frame("Squad"=Squad2, Assists, Penalty.kicks.attempted, Penalty.kicks.made, Yellow.cards,
                  Red.cards, Progressive.carries, Progressive.passes, Age, "Season"=rev(Season))


df <- merge(df1, df2, by = c("Squad","Season"))
df %>% head()
df_order <- df %>% arrange(Season, Rk)
df_order$Season <- rev(df_order$Season)
#
write.csv(df_order, "C:\\Premier League Project\\dane.csv", row.names = FALSE)
