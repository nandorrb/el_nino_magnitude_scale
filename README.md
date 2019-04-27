## Escala energetica del Fenomeno del niño

En Perú, cada año el fenomeno del niño produce millonarias perdidas, asi como la perdida de calidad de vida en la poblacion. Urge entonces medir adecuadamente el impacto del fenomeno del niño. Este proyecto esta basado en la [escala de sismológica de Ritcher](https://es.wikipedia.org/wiki/Escala_sismol%C3%B3gica_de_Richter), la cual sirve para medir la energía liberada por un terremoto, asi como para establecer normativas que hacen los edificion mas seguros contra los terremotos.

### Comparación entre el Fenomeno del niño vs Un terremoto

| Fenomeno del niño  | Terremoto |
| ------------- | ------------- |
| Consiste en una liberacion de energia transmitida por el agua.  | Consiste en una liberacion de energia en forma de movimiento.  |
| Puede causar caida de multiples edificios, dependiendo de su impacto  | Puede causar caida de multiples edificios, dependiendo de su impacto  |
| No ha sido normado en el [Reglamento Nacional de Edificaciones](www.urbanistasperu.org/rne/.../Reglamento%20Nacional%20de%20Edificaciones.pdf) por lo que su impacto sigue siendo catastrofico año tras año. | Esta correctamente normado en el [Reglamento Nacional de Edificaciones](www.urbanistasperu.org/rne/.../Reglamento%20Nacional%20de%20Edificaciones.pdf) |

### Como funciona la escala de ritcher
Segun la pagina web [muyinteresante](https://www.muyinteresante.es/ciencia/preguntas-respuestas/como-funciona-la-escala-de-richter-501481801518),  La escala sismológica de Richter o escala de magnitud local (ML), es una escala logarítmica arbitraria que asigna un número para cuantificar la energía liberada en un terremoto, denominada así en honor del sismólogo estadounidense Charles Richter (1900-1985).
![Escala Ritcher](http://sites.ipleiria.pt/seismicknowledge/files/2017/09/Relaci%C3%B3n-MagnitudEnerg%C3%ADa-descargada-seg%C3%BAn-la-Escala-S%C3%ADsmica-de-Richter.-Frecuencia-de-ocurrencia-de-terremotos-seg%C3%BAn-su-magnitud.-1-1024x563.jpg)

### Implementacion de la escala de rither en el [Reglamento Nacional de Edificaciones(www.urbanistasperu.org/rne/.../Reglamento%20Nacional%20de%20Edificaciones.pdf) 
[LA NORMA TÉCNICA E.030 “DISEÑO SISMORRESISTENTE” DEL REGLAMENTO NACIONAL DE EDIFICACIONES](https://www.sencico.gob.pe/descargar.php?idFile=1930) cuenta con un profundo analisis de zonificacion de acuerdo a la vulnerabilidad de las regiones del Perú ante los eventos sísmicos. En el Capitulo 2: Peligro Sismico, se muestra un mapa el pais,, como menciona el documento:
> basado en la distribución espacial de la sismicidad observada, las características generales de los movimientos sísmicos y la atenuación de éstos con la distancia epicentral, así como en la información  neotectónica.
![Zonas sismicas](https://lh3.googleusercontent.com/-6IrUHVYD5U0/V3FNoM7YLpI/AAAAAAAAEQI/jOFcOQPN4Q4e2tPZE1hOQTiMSYelwbiKgCCo/s512/MAPA%2BDE%2BZONIFICACI%25C3%2593N%2BSISMICA.jpg)

### Importancia

### Fuentes de Informacion
1. [IMARPE: Temperatura superficial del mar y anomalías térmicas, Salinidad Superficial del Mar](http://www.imarpe.pe/imarpe/index.php?id_seccion=I0178030103000000000000)
1. [NASA: The Fleet Numerical Meteorology and Oceanography Center (FNMOC) Global Hybrid Coordinate Ocean Model (HYCOM)](https://www.ncdc.noaa.gov/data-access/model-data/model-datasets/navoceano-hycom-glb)
Respecto a 1, el INSTITUTO   DEL   MAR   DEL   PERU muestra el cambio de temperatura del mar peruano durante el fenomeno del niño.
#### Temperatura normal del mar
![Temperatura Normal](http://www.imarpe.pe/ftp/enso/imagenes/TSM_dd_Peru.png)  
#### Temperatura del mar durante Fenomeno del niño
![Temperatura durante Fenomeno del niño](http://www.imarpe.pe/ftp/enso/imagenes/ATSM_dd_Peru.png)
### Propuesta de escala y medicion del impacto del fenomeno del niño
Mediante los datos proveidos por la NASA, es posible calcular la un indicador de la energía acumulada mediante un calculo del cambio de entalpia en el mar mediante la siguiente ecuacion:
```
energia= area*(Diferencia de Temperatura)*(Calor Especifico del agua)
```

### Codigo Usado
El codigo usado en este proyecto se encuentra en el [presente repositorio](https://github.com/nandorrb/el_nino_magnitude_scale/)
### Resultados Obtenidos
![Resultados](srcFenomenoDelNinoResultados.jpg)
### Significado Fisico

### Propuesta


