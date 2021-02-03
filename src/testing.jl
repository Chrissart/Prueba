#

include("AvocadoIT.jl")

#AvocadoIT.instalacion()
AvocadoIT.descargar_datos("D:\\Julia\\Programas","24-09-2020")

include("AvocadoIT.jl")
dataFrames = AvocadoIT.framesDatos("D:\\Julia\\Programas\\Descargables\\Defunciones\\def_edad_proyecciones_n.csv",
                                    "D:\\Julia\\Programas\\Descargables\\Natalidad\\tef_nac_proyecciones.csv")

dataFrames[1]
dataFrames[2]

framesCombinados = AvocadoIT.combinaDatos(dataFrames[1],dataFrames[2])
framesCombinados

AvocadoIT.exportaDatos("C:\\Users\\chris\\Desktop\\","Cruce_de_Info_XD.csv",framesCombinados)
