# instalar componentes necessários
install.packages('googleVis')
# carregar componentes necessários
require(googleVis)
# carregar base de dados
Ratings <- readXL("C:/Users/Gustavo/Dropbox/scripts R/tabela.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="RATINGS", stringsAsFactors=TRUE)
Eleicao2016 <- readXL("C:/Users/Gustavo/Dropbox/scripts R/tabela.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="ELEICAO", stringsAsFactors=TRUE)
# montar mapa Ratings PL (FiveThirtyEight)
GeoStates <- gvisGeoChart(Ratings, "Estado", "Rating_PL",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['darkred','#aa001f','#f442b6','#a778ed','royalblue','#1871f7','navy']}",
                   backgroundColor="#d1fcf9"))
plot(GeoStates)

# montar mapa Índice PL (FiveThirtyEight)
GeoStates01 <- gvisGeoChart(Ratings, "Estado", "Indice_PL",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['navy','#1871f7','royalblue','#a778ed','#f442b6','#aa001f','darkred']}",
                   backgroundColor="#d1fcf9"))
plot(GeoStates01)

# montar mapa Ratings PVI (Cook Political)
GeoStates2 <- gvisGeoChart(Ratings, "Estado", "Rating_PVI",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['darkred','#aa001f','#f442b6','#a778ed','royalblue','#1871f7','navy']}",
                   backgroundColor="#d1fcf9"))
plot(GeoStates2)

# montar mapa Índice PVI (Cook Political Report)
GeoStates02 <- gvisGeoChart(Ratings, "Estado", "Indice_PVI",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['navy','#1871f7','royalblue','#a778ed','#f442b6','#aa001f','darkred']}",
                   backgroundColor="#d1fcf9"))
plot(GeoStates02)

# montar mapa Rating Médio
GeoStates3 <- gvisGeoChart(Ratings, "Estado", "Rat_Medio",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['darkred','red','#f442b6','#a778ed','royalblue','#1871f7','navy']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates3)

# montar mapa Vantagem R > D
GeoStates4 <- gvisGeoChart(Eleicao2016, "Estado", "Vantagem_P",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['#1871f7','royalblue','#a778ed','#f442b6','#aa001f']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates4)

# montar mapa partido titular
GeoStates5 <- gvisGeoChart(Eleicao2016, "Estado", "Party_T",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['#aa001f','#1871f7']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates5)

# montar mapa partido eleito
GeoStates6 <- gvisGeoChart(Eleicao2016, "Estado", "Party_E",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['#aa001f','#1871f7']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates6)

# montar mapa status da cadeira (hold/take)

GeoStates7 <- gvisGeoChart(Eleicao2016, "Estado", "Status",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['#aa001f','#f442b6','#54b0f2','#1871f7']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates7)

# montar mapa status da cadeira (reeleição/não reeleição)

GeoStates8 <- gvisGeoChart(Eleicao2016, "Estado", "Reeleicao",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['darkred','green']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates8)

# montar mapa mudança de partido

GeoStates9 <- gvisGeoChart(Eleicao2016, "Estado", "Mudanca", hovervar="Estado",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{colors:['darkred','green']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates9)

# montar mapa voto republicano %

GeoStates10 <- gvisGeoChart(Eleicao2016, "Estado", "Voto_R_P",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{minValue: 0, maxValue: 100, colors:['snow','#aa001f']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates10)

# montar mapa voto democrata %

GeoStates11 <- gvisGeoChart(Eleicao2016, "Estado", "Voto_D_P",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
datalessRegionColor="gray",
colorAxis="{minValue: 0, maxValue: 100, colors:['snow','#0064a8']}",
                   backgroundColor="#d1fcf9"))

plot(GeoStates11)
