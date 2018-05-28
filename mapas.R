library(WDI)
GINI<-WDI(country="all",indicator="SI.POV.GINI",start=2000,end=2012,extra=TRUE)
GINI<-WDI(country="all",indicator="NY.GDP.PCAP.CD",start=2000,end=2012,extra=TRUE)
GINI<-WDI(country="all",indicator="SP.DYN.LE00.IN",start=2000,end=2012,extra=TRUE)
GINI<-WDI(country="all",indicator="EG.ELC.ACCS.ZS",start=2000,end=2012,extra=TRUE)
GINI<-WDI(country="all",indicator=c("SI.POV.GINI","NY.GDP.PCAP.CD","SP.DYN.LE00.IN","EG.ELC.ACCS.ZS"),start=2000,end=2012,extra=TRUE)

library(rworldmap)

sPDF<-joinCountryData2Map(GINI,joinCode="NAME",nameJoinColumn="country")

mapCountryData(sPDF,nameColumnToPlot="SI.POV.GINI",catMethod='categorical',mapTitle='Mapa1-Indice de Gini',oceanCol='lightblue',missingCountry='white',addLegend=FALSE)

x11()
mapCountryData(sPDF,nameColumnToPlot="NY.GDP.PCAP.CD",catMethod='categorical',mapTitle='Mapa2-PIB',oceanCol='lightblue',missingCountry='white',addLegend=FALSE)

x11()
mapCountryData(sPDF,nameColumnToPlot="SP.DYN.LE00.IN",catMethod='categorical',mapTitle='Mapa3-Expectativa de Vida',oceanCol='lightblue',missingCountry='white',addLegend=FALSE)

x11()
mapCountryData(sPDF,nameColumnToPlot="EG.ELC.ACCS.ZS",catMethod='categorical',mapTitle='Mapa4-Acesso a Eletricidade',oceanCol='lightblue',missingCountry='white',addLegend=FALSE)