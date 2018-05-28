# instalar componentes necessários
install.package(googleVis)
# carregar componentes necessários
require(googleVis)
# carregar base de dados
Ratings_2 <- readXL("C:/Users/14650165709/Documents/aaaaaaaaaaaaa.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="RATINGS", stringsAsFactors=TRUE)
# montar mapa Ratings PL (FiveThirtyEight)
GeoStates <- gvisGeoChart(Ratings_2, "state.name", "Rating_PL",
                          options=list(title="FiveThirtyEight Partisan Lean Ratings",
                                       region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
colorAxis="{colors:['darkred','red','#f442b6','#a778ed','royalblue','mediumblue','navy']}",
                   backgroundColor="lightblue"))
plot(GeoStates)
# montar mapa Ratings PVI (Cook Political)
GeoStates2 <- gvisGeoChart(Ratings_2, "state.name", "Rating_PVI",
                          options=list(title="Cook Political Report PVI Ratings",
                                       region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
colorAxis="{colors:['darkred','red','#f442b6','#a778ed','royalblue','mediumblue','navy']}",
                   backgroundColor="lightblue"))
plot(GeoStates2)
# montar mapa Ratings Médios (Original)
GeoStates3 <- gvisGeoChart(Ratings_2, "state.name", "Rat_Medio",
                          options=list(title="Ratings Médios",
                                       region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400,
colorAxis="{colors:['darkred','red','#f442b6','#a778ed','royalblue','mediumblue','navy']}",
                   backgroundColor="lightblue"))

plot(GeoStates3)

br <- data.frame(
    Estado = c("Sao Paulo", "Minas Gerais", "Rio de Janeiro", "Bahia",
               "Rio Grande do Sul", "Parana", "Pernambuco", "Ceara",
               "Para", "Maranhao", "Santa Catarina", "Goias", "Paraiba",
               "Amazonas", "Espirito Santo", "Rio Grande do Norte",
               "Alagoas", "Mato Grosso", "Piaui", "Distrito Federal",
               "Mato Grosso do Sul", "Sergipe", "Rondonia", "Tocantins",
               "Acre", "Amapa", "Roraima"),
    Populacao = c(44396484L, 20869101L, 16550024L, 15203934L, 11247972L,
                  11163018L, 9345173L, 8904459L, 8175113L, 6904241L,
                  6819190L, 6610681L, 3972202L, 3938336L, 3929911L,
                  3442175L, 3340932L, 3270973L, 3204028L, 2914830L,
                  2651235L, 2242937L, 1768204L, 1515126L, 803513L,
                  766679L, 505665L))
br$População <- log10(br$População)

breaks <- seq(floor(min(br$População)),
              ceiling(max(br$População)), by=0.5)
GeoStates666 <- gvisGeoChart(
    data=br,
    locationvar="Estado",
    colorvar="Populacao",
    options=list(
        title="lala",
        region="BR", 
        displayMode="regions", 
        resolution="provinces",
        colorAxis="{colors:['darkred','#a778ed','navy']}",
        width=600, height=400))
plot(GeoStates666)
