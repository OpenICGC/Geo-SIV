# Geo-SIV (v1.1 2022)
 
## Programari per l’avaluació preliminar de Sistemes d’Intercanvi geotèrmic en circuit Vertical tancat per instal·lacions de climatització i ACS fins a 70 kW en el territori de Catalunya

L’aplicació **Geo-SIV** (v1.1 2022) és un programari lliure desenvolupat per l’Àrea de Recursos Geològics de l’Institut Cartogràfic i Geològic de Catalunya (ICGC) en col·laboració amb la Universitat Politècnica de Catalunya (UPC) i es distribueix sota la llicència d’ús CC-BY. El programari està dissenyat per permetre efectuar avaluacions preliminars de sistemes d’intercanvi geotèrmic en circuit vertical tancat per instal·lacions de calefacció, refrigeració i aigua calenta sanitària de fins a 70 kW (tipus A i B d'acord amb la norma UNE-100715-2014) en el territori de Catalunya. 

El programaria permet calcular la demanda tèrmica mitjançant el “mètode de les caselles modificat” (_modified bin method, RETScreen®, Natural Resources, Canada_ 2016) i dimensiona el camp de captació necessari mitjançant bescanviadors de calor geotèrmics (pous verticals de circuit tancat) en base a la teoria de la font lineal de Kelvin, que també és la base de la metodologia desenvolupada per la _International Ground Source Heat Pump Association (IGSHPA)_ i també implementa a IDAE (2012). Les característiques de les bombes de calor geotèrmiques són seleccionades a partir d’una base de dades o introduïdes per l’usuari. L’eina utilitza dades geològiques i climatològiques publicades al GeoÍndex-Geotèrmia superficial de Catalunya (ICGC, 2018). Per l’àmbit concret de Girona, incorpora geoinformació basada en els resultats del projecte europeu  [MUSE](https://www.icgc.cat/Innovacio/Projectes-R-D-i/MUSE-GeoERA)  (GeoERA H2020 Era-Net, 2018-2021). L’aplicació també disposa d’un mòdul d’anàlisi econòmica i ambiental que permet comparar la solució projectada basada en geotèrmia superficial respecte altres tecnologies renovables i no renovables. Les dades de sortida es poden utilitzar per a estudis de pre-viabilitat. El codi s’ha programat mitjançant el programari MATLAB (v. 2020a)

**Instruccions sobre el contingut del repositori de la versió actual de Geo-SIV v1.1 (Gener de 2022):**

 - carpeta **GeoSIV v1.1 files**: Conté l’arxiu del codi font a més d’una sèrie d’arxius necessaris per a la correcta compilació i execució de l’aplicació:

	-   **GeoSIV_codi1_12.mlapp**: Arxiu de codi font. Per a poder obrir-ho i editar, caldrà disposar de MATLAB (versió r2020a). En aquest cas, caldrà seleccionar prèviament la ruta d’accés dins de la interfície gràfica de MATLAB. En clicar sobre l’arxiu, aquest s’obrirà al mateix temps que la interfície gràfica de MATLAB _app designer_.

	-   **Geo-SIV 1.1 2022 Guia Ràpida.pdf**: es tracta d’un document a on s’explica de manera bàsica la metodologia emprada en la construcció de l’aplicació, així com les instruccions per fer-la servir.

	-   **Arxius d’imatge (logos i informació)**:

		- 01_Imatge_Perforar.jpg
		- 01_Logo_corto_geo-SIV.png
		- 02_02_Imatge_SalaTec.jpg
		- 03_Logo_CC-By_4.0.png
		- 05_Logo_UPC.png
		- alerta_icono_2.png
		- CAS A.png
		- CAS B1.png
		- CAS B2.png
		- DireccioN.png
		- DESCRIPCIO_CAT.jpg
		- icono_GeoSIV.jpg
		- Logo_installation.jpg
		- Logos&ICGC&UPC.jpg
		- Metodologia_GeoSIV.png
		- PORTADA.jpg
		- U-doble.png
		- U-simple.png

	- **Arxius d’imatge (_rasters_)**:
		- **CondTerm.tif** (mapa conductivitat tèrmica del terreny, àmbit Catalunya)
		- **dies_cooling_23.tif** (mapa dies en mode refrigeració, àmbit Catalunya)
		- **dies_heating_18.tif** (mapa dies en mode calefacció, àmbit Catalunya)
		- **Difusivi.tif** (mapa difussivitat tèrmica del terreny, àmbit Catalunya)
		- **MDE30x30.zip** (fitxer comprimit del mapa altitud, àmbit Catalunya)
		- **provincies.zip** (fitxer comprimit del mapa distinció províncies, àmbit Catalunya)
		- **t_med_air.zip** (fitxer comprimit del mapa temperatura mitjana anual, àmbit Catalunya)
		- **t050.tif** (mapa temperatura terreny profunditat 50 m, àmbit Catalunya)
		- **t100.tif** (mapa temperatura terreny profunditat 100 m, àmbit Catalunya)
		- **t150.tif** (mapa temperatura terreny profunditat 150 m, àmbit Catalunya)
		- **MUSE_ThermalConductivity.tif** (mapa conductivitat tèrmica del terreny, àmbit àrees urbana i periurbana Girona ciutat)
		- **MUSE_ThermalDifusivity.tif** (mapa difussivitat tèrmica del terreny, àmbit àrees urbana i periurbana Girona ciutat)
		- **MUSE_t050.tif** (mapa temperatura terreny profunditat 50 m, àmbit àrees urbana i periurbana Girona ciutat generat en el projecte Europeu GeoERA MUSE)

	- **Arxius de paràmetres amb valor fix (no editable per l’usuari a la GUI de Geo-SIV)**:

		- **001_Yearly t-bin.xlsx** (ocurrència, en nombre d’hores per any, dels valors temperatura seca mitjana compresos en l’interval Tbin ±1°C, per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **004_Hourly t-bin.xlsx** (valor de la temperatura seca mitjana per a les 8760 hores de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **005_u_limit.xlsx** (d’acord amb el CTE 2019, valors límits de transmitància tèrmica segons tipus d’element constructiu, i per a les 6 zones climàtiques d’hivern α, A, B, C, D i E)

		- **006_u_regular.xlsx** (d’acord amb el CTE 2019, valors regulars de transmitància tèrmica segons tipus d’element constructiu, i per a les 6 zones climàtiques d’hivern α, A, B, C, D i E)

		- **007_Generic heat pumps.xlsx** (Valors de potència tèrmica i rendiment instantanis de bombes de calor geotèrmiques genèriques, per als modes d’operació calefacció, refrigeració i ACS)

		- **007_Generic heat pumps_AER1.xlsx** (Valors de potència tèrmica i rendiment instantanis de bombes de calor geotèrmiques genèriques, per als modes d’operació calefacció, refrigeració i ACS)

		- **007_Generic heat pumps_extended.xlsx** (Valors de potència tèrmica i rendiment instantanis de bombes de calor geotèrmiques genèriques, per als modes d’operació calefacció, refrigeració i ACS)

		- **008_DR_calculation.xlsx** (Mitjana de l’amplitud d'oscil·lació tèrmica diària anual, per al mes de disseny d’estiu i per al mes de disseny d’hivern, per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **009_Design temperatures.xlsx** (Valors de temperatura seca exterior de disseny d’hivern i d’estiu, per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **012_Monthly t-bin.xlsx** (ocurrència, en nombre d’hores per mes, dels valors de temperatura seca mitjana compresos en l’interval Tbin ±1°C, per als i per als 12 mesos de l’any i els set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **013_Monthly t-binPla.xlsx** (ocurrència, en nombre d’hores per mes, dels valors de temperatura seca mitjana compresos en l’interval Tbin ±1°C, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Pla”)

		- **013_Monthly t-binPunta.xlsx** (ocurrència, en nombre d’hores per mes, dels valors de temperatura seca mitjana compresos en l’interval Tbin ±1°C, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Punta”)

		- **013_Monthly t-binVall.xlsx** (ocurrència, en nombre d’hores per mes, dels valors de temperatura seca mitjana compresos en l’interval Tbin ±1°C, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Vall”)

		- **014_Monthly_binIRPla.xlsx** (Valor acumulat d’irradiància global sobre una superfície orientada als sud i inclinada 30º respecte l’horitzonal, en Wh/m2, per a cada interval Tbin ±1°C, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Pla”)

		- **014_Monthly_binIRPunta.xlsx** (Valor acumulat d’irradiància global sobre una superfície orientada als sud i inclinada 30º respecte l’horitzonal, en Wh/m2, per a cada interval Tbin ±1°C, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Punta”)

		- **014_Monthly_binIRVall.xlsx** (Valor acumulat d’irradiància global sobre una superfície orientada als sud i inclinada 30º respecte l’horitzonal, en Wh/m2, per a cada interval Tbin ±1°C, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Vall”)

		- **015_Monthly_Irr4SolarThermal.xlsx** (Valor d’irradiància global sobre una superfície orientada als sud i inclinada 45º respecte l’horitzonal, en Wh/m2, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **016_rough_IRR30.xlsx** (Valors d’irradiància global sobre una superfície orientada als sud i inclinada 30 ° respecte l’horitzonal, en Wh/m2, per a les 8760 hora de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **017_time_and_tariff.xlsx** (números de mes, dia, hora del dia i tipus de tarifa elèctrica aplicable, per a les 8760 hores de l’any)

		- **018_parametersEcoAmb.xlsx** (valors de paràmetres fixes no editables per l’usuari a la GUI de Geo-SIV, necessaris per als càlculs de l’anàlisi econòmica i ambiental)

		- **019_parametres_carregues.xlsx** (valors de paràmetres fixes no editables per l’usuari a la GUI de Geo-SIV, necessaris per als càlculs de càrregues tèrmiques d’edificis genèrics)

		- **020_humitat_relativa_IRR30anual.xlsx** (Valors d’humitat relativa per al mes de disseny d’hivern i d’estiu, a més dels valors d’irradiància global mitjana sobre una superfície orientada als sud i inclinada 30º sobre l’horitzonal, en kWh/m2/dia, per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1

		- **021_IRR90_orientacio_estacio.xlsx** (Valors d’irradiància acumulada mensual sobre una superfície inclinada 90º respecte l’horitzonal, en Wh/m2, per a valors de temperatura seca mitjana compresos en l’interval Tbin ±1°C, per a les orientacions sud, oest, est i nord, per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, i segons si es tracta del mes de disseny d’hivern o d’estiu)

		- **022_Monthly t-Solarbin.xlsx** (ocurrència, en nombre d’hores per mes, dels valors temperatura seca mitjana compresos en l’interval Tbin ±1°C sota condicions d’irradiància solar no nul·la, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **022_Yearly t-Solarbin.xlsx** (ocurrència, en nombre d’hores per any, dels valors temperatura seca mitjana compresos en l’interval Tbin ±1°C sota condicions d’irradiància solar no nul·la, per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1)

		- **023_Monthly t-SolarbinPla.xlsx** (ocurrència, en nombre d’hores per mes, dels valors temperatura seca mitjana compresos en l’interval Tbin ±1°C sota condicions d’irradiància solar no nul·la, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Pla”)

		- **023_Monthly t-SolarbinPunta.xlsx** (ocurrència, en nombre d’hores per mes, dels valors temperatura seca mitjana compresos en l’interval Tbin ±1°C sota condicions d’irradiància solar no nul·la, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Punta”)

		- **023_Monthly t-SolarbinVall.xlsx** (ocurrència, en nombre d’hores per mes, dels valors temperatura seca mitjana compresos en l’interval Tbin ±1°C sota condicions d’irradiància solar no nul·la, per als 12 mesos de l’any i per als set climes de referència que apliquen al territori de Catalunya, B3, C2, C3, D1, D2, D3 i E1, discriminat per hores corresponents a tarifa elèctrica “Vall”)

	- **Arxius corresponents a l’eina externa COOLPROP [Bell I. H. et al., 2014] integrada per al càlcul de propietats físiques de l’aigua**:
		- CoolPropsetup.m
		- HAPropsSI.m**
		- incompressible_fluids.m
		- moist_air.m**
		- PropsSI.m**
		- SwigRef.m**
		- CoolPropMATLAB_wrap.mexw64
		- Coolprop-howto.txt

**Llicència**: El producte ha estat publicat sota llicència _Creative Commons licence Attribution 4.0 International_, coneguda com CC BY 4.0.

**Com citar l'App**: 

- García-Céspedes, J., Herms, I., Arnó, G., Ariza, J., De Felipe, J. J. (2022): Geo-SIV (v1.1) [programari]. Institut Cartogràfic i Geològic de Catalunya i Universitat Politècnica de Catalunya. CC-BY 4.0.


**Per a més informació:**

-   Pàgina web: [https://icgc.cat/ca/Administracio-i-empresa/Serveis/Geotermia/Avaluacio-preliminar-de-sistemes-d-intercanvi-geotermic-en-circuit-vertical-tancat-Geo-SIV](https://icgc.cat/ca/Administracio-i-empresa/Serveis/Geotermia/Avaluacio-preliminar-de-sistemes-d-intercanvi-geotermic-en-circuit-vertical-tancat-Geo-SIV)
-   Adreça electrònica de contacte: [geotermia@icgc.cat](mailto:geotermia@icgc.cat)


**Referències bibliogràfiques:**

- AENOR UNE-100715:2014. “_Diseño, ejecución y seguimiento de una instalación geotérmica somera. Parte 1: Sistemas de circuito cerrado vertical_” (2014).

- AENOR UNE-EN 14825:2016. _“Acondicionadores de aire, enfriadoras de líquido y bombas de calor con compresor accionado eléctricamente para la calefacción y la refrigeración de locales. Ensayos y clasificación en condiciones de carga parcial y cálculo del rendimiento estacional”_ (2016).

- AENOR UNE-EN 14511-1:2019. “_Acondicionadores de aire, enfriadoras de líquido y bombas de calor para la calefacción y la refrigeración de locales y enfriadoras de proceso con compresores accionados eléctricamente._  _Parte 1: Términos y definiciones_” (2019).

- Ariza J., de Felipe J. J., Herms I., _“Implementation of methodologies for calculating vertical Borehole Heat Exchangers lengths for Ground Source Heat Pump systems in MATLAB. Master’s thesis”._ Universitat Politècnica de Catalunya (2020) (available online at: [https://upcommons.upc.edu/bitstream/handle/2117/333862/tfm-javier-ariza-vdef.pdf?sequence=1&isAllowed=y](https://upcommons.upc.edu/bitstream/handle/2117/333862/tfm-javier-ariza-vdef.pdf?sequence=1&isAllowed=y))

- ASHRAE (_American Society of Heating, Refrigerating, and Air Conditioning Engineers_). “_ASHRAE Handbook of Fundamentals_ _Volume_” (1985)

- Bell I. H., Wronski J., Quoilin S. and Lemort V., “_Pure and Pseudo-pure Fluid Thermophysical Property Evaluation. the Open-Source Thermophysical Property Library CoolProp_”, Industrial & Engineering Chemistry Research 53 (6) (2014) 2498-2508 ([www.coolprop.org](http://www.coolprop.org))

- ICGC (Institut Cartogràfic i Geològic de Catalunya). “_Geoíndex. Geotèrmia superficial_”. (2018). Disponible a través del següent enllaç: [www.icgc.cat/ca/Administracio-i-empresa/Eines/Visualitzadors-Geoindex/Geoindex-Geotermia-superficial](https://www.icgc.cat/ca/Administracio-i-empresa/Eines/Visualitzadors-Geoindex/Geoindex-Geotermia-superficial)

- IDAE (_Instituto para la Diversificación y el Ahorro Energético_), “_Guía técnica de diseño de sistemas de intercambio geotérmico de circuito cerrado_” (2012)

- IGSHPA (_International Ground Source Heat Pump Association_), “_Ground source heat pump residential and light commercial : design and installation guide_” (2009)

- Ingersoll L.R. and Plass H.J., “_Theory of the ground pipe heat source for the heat pump_”, ASHVE Trans. 47 (1948) 339-348.

- MITMA (_Ministerio de Transportes, Movilidad y Agencia Urbana_), “_Código Técnico de la Edificación (CTE). Documento Básico HE Ahorro de energía (HE)_” (2019)

- NRCAN (_Ministry of Natural Resources, Canada_), “_RETScreen® International: Clean Energy Decision Support Centre._ _Ground-Source Heat Pump Project Analysis_” (2005). Disponible a través del següent enllaç: [https://publications.gc.ca/collections/Collection/M39-111-2005E.pdf](https://publications.gc.ca/collections/Collection/M39-111-2005E.pdf)

- NRCAN (_Ministry of Natural Resources, Canada_), “_RETScreen® International: “RETScreen Clean Energy Management Software_” (2016). Disponible a través del següent enllaç: [www.nrcan.gc.ca/maps-tools-and-publications/tools/modelling-tools/retscreen/7465](https://www.nrcan.gc.ca/maps-tools-and-publications/tools/modelling-tools/retscreen/7465)

- Yang H., Cui P. and Fang Z., “_Vertical-borehole ground-coupled heat pumps: A review of models and Systems_”, Applied Energy 87 (2010) 16-27
