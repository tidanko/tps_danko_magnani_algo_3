!classDefinition: #AvispaLaraCroft category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #AvispaLaraCroft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AvispaLaraCroft class' category: 'AvispasYAbejasParte2'!
AvispaLaraCroft class
	instanceVariableNames: ''!

!AvispaLaraCroft class methodsFor: 'as yet unclassified' stamp: 'EM 4/24/2022 21:37:32'!
intentarReproducirse
	(ElHabitatAuchi cantidadDeHuevosDeAvispas > 0) ifTrue: [ 
	ElHabitatAuchi agregarHuevo: 'AvispasChorras'.
	ElHabitatAuchi robarHuevo.
	]! !


!classDefinition: #AvispaOrianaJunco category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #AvispaOrianaJunco
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AvispaOrianaJunco class' category: 'AvispasYAbejasParte2'!
AvispaOrianaJunco class
	instanceVariableNames: ''!

!AvispaOrianaJunco class methodsFor: 'as yet unclassified' stamp: 'EM 4/24/2022 21:28:49'!
intentarReproducirse
	(ElHabitatAuchi cantidadDeOrugas > 0) ifTrue: [ 
	ElHabitatAuchi agregarHuevo: 'AvispasOrugueñas'.
	ElHabitatAuchi eliminarUnaOruga.
	] ! !


!classDefinition: #AvispaOrnella category: 'AvispasYAbejasParte2'!
AvispaOrianaJunco subclass: #AvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!


!classDefinition: #AvispaPolly category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #AvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AvispaPolly class' category: 'AvispasYAbejasParte2'!
AvispaPolly class
	instanceVariableNames: ''!

!AvispaPolly class methodsFor: 'as yet unclassified' stamp: 'EM 4/24/2022 21:29:37'!
intentarReproducirse
	(ElHabitatAuchi cantidadDePolillas > 0) ifTrue: [ 
	ElHabitatAuchi agregarHuevo: 'AvispasPolilleras'.
	ElHabitatAuchi eliminarUnaPolilla.
	] ! !


!classDefinition: #ElHabitatAuchi category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #ElHabitatAuchi
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElHabitatAuchi class' category: 'AvispasYAbejasParte2'!
ElHabitatAuchi class
	instanceVariableNames: 'huevos orugas polillas'!

!ElHabitatAuchi class methodsFor: 'Orugas' stamp: 'EM 4/21/2022 20:11:23'!
agregarOrugas: cantidad
	orugas := orugas + cantidad! !

!ElHabitatAuchi class methodsFor: 'Orugas' stamp: 'EM 4/21/2022 19:52:09'!
cantidadDeOrugas
	^ orugas! !

!ElHabitatAuchi class methodsFor: 'Orugas' stamp: 'EM 4/21/2022 19:54:03'!
eliminarOrugas
	orugas := 0! !

!ElHabitatAuchi class methodsFor: 'Orugas' stamp: 'EM 4/21/2022 19:55:30'!
eliminarUnaOruga
	orugas := orugas - 1! !


!ElHabitatAuchi class methodsFor: 'Huevos' stamp: 'EM 4/24/2022 22:21:43'!
agregarHuevo: Firma
	huevos at: Firma put: ((huevos at: Firma ifAbsent: [0]) + 1).! !

!ElHabitatAuchi class methodsFor: 'Huevos' stamp: 'EM 4/24/2022 20:35:11'!
cantidadDeHuevosDeAvispas
	^ (huevos values) sum: [ : unNumero | unNumero ] ifEmpty: [ 0 ].! !

!ElHabitatAuchi class methodsFor: 'Huevos' stamp: 'EM 4/24/2022 22:20:33'!
cantidadDeHuevosDeFirma: Firma
	^ huevos at: Firma ifAbsent: [0].! !

!ElHabitatAuchi class methodsFor: 'Huevos' stamp: 'EM 4/24/2022 20:34:29'!
eliminarHuevos
	huevos := Dictionary new.! !

!ElHabitatAuchi class methodsFor: 'Huevos' stamp: 'EM 4/24/2022 22:17:12'!
robarHuevo
	"Como no se aclara de que Avispa o Firma Genética roba LaraCroft, se busca la primera Firma diferente a la de LaraCroft"
	huevos keys do: [:FirmaGenetica | (FirmaGenetica = 'AvispasChorras') ifFalse: [^huevos at: FirmaGenetica put: ((huevos at: FirmaGenetica) - 1).]].! !


!ElHabitatAuchi class methodsFor: 'Polillas' stamp: 'EM 4/21/2022 20:31:23'!
agregarPolillas: cantidad
	polillas := polillas + cantidad! !

!ElHabitatAuchi class methodsFor: 'Polillas' stamp: 'EM 4/21/2022 20:31:34'!
cantidadDePolillas
	^ polillas! !

!ElHabitatAuchi class methodsFor: 'Polillas' stamp: 'EM 4/21/2022 20:32:07'!
eliminarPolillas
	polillas := 0! !

!ElHabitatAuchi class methodsFor: 'Polillas' stamp: 'EM 4/21/2022 20:33:23'!
eliminarUnaPolilla
	polillas := polillas - 1! !


!ElHabitatAuchi class methodsFor: '--** private fileout/in **--' stamp: 'EM 4/24/2022 22:25:37'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	huevos := ((Dictionary new)).
	orugas := 0.
	polillas := 0.! !


!classDefinition: #PruebasReproduccionDeAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #PruebasReproduccionDeAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasReproduccionDeAvispas class' category: 'AvispasYAbejasParte2'!
PruebasReproduccionDeAvispas class
	instanceVariableNames: ''!

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/18/2022 18:38:11'!
test01EnElInicioDeLosTiemposNoHayHuevos	
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:44'!
test02CuandoOrianaLaAvispaSeReproducePorPrimeraVezDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:11'!
test03CadaVezQueOrianaSeReproduceDejaUnHuevoMas
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:53'!
test04ParaDejarUnHuevoOrianaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:13:43'!
test05ParaDejarUnHuevoOrianaLaAvispaDecrementaEnUnoLaPoblacionDeOrugasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosOrugasMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:13:22'!
test06CuandoNoHayOrugasOrianaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:24'!
test07CuandoOrnellaLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:18'!
test08ParaDejarUnHuevoOrnellaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:11'!
test09CuandoNoHayOrugasOrnellaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:46'!
test10CuandoPollyLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:40'!
test11ParaDejarUnHuevoPollyLaAvispaReduceLaPoblacionDeUnaPolillaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaPolillaMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:36'!
test12ParaDejarUnHuevoPollyLaAvispaDecrementaEnUnoLaPoblacionDePolillasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosPolillasMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:30'!
test13CuandoNoHayPolillasPollyLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:06'!
test14CuandoOrianaLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:02'!
test15CuandoOrianaLaAvispaAunNoSeReprodujoNoTieneHuevosConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:58'!
test16CuandoPollyLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 1.
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:54'!
test17CuandoOrnellaLaAvispaSeReproduceDejaUnHuevoConLaMismaFirmaGeneticaQueOriana
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella isEqualTo: 1.
	Assert 
		that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella  
		isEqualTo: self cantidadDeHuevosConLaFirmaGeneticaDeOriana! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:27'!
test18CuandoLaraLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOrnella intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:22'!
test19CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAOtraAvispa
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:18'!
test20CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAPolly
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaPolly intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:12'!
test21CuandoLaraLaAvispaNoTieneRecursosNoDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
		
	self laAvispaLara intentarReproducirse.
		
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/24/2022 22:20:52'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	^ self habitat cantidadDeHuevosDeFirma: 'AvispasChorras'.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/24/2022 22:21:13'!
cantidadDeHuevosConLaFirmaGeneticaDeOriana
	^ self habitat cantidadDeHuevosDeFirma: 'AvispasOrugueñas'.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/24/2022 22:21:17'!
cantidadDeHuevosConLaFirmaGeneticaDeOrnella
	^ self habitat cantidadDeHuevosDeFirma: 'AvispasOrugueñas'.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/24/2022 22:21:20'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^ self habitat cantidadDeHuevosDeFirma: 'AvispasPolilleras'.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 19:26:06'!
habitat
	^ElHabitatAuchi! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:38:03'!
hacerQueElHabitatTengaLosRecursosSuficientes
	self habitat agregarOrugas: 2.
	self habitat agregarPolillas: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/24/2022 20:47:09'!
laAvispaLara
	^ AvispaLaraCroft.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:40:50'!
laAvispaOriana
	^ AvispaOrianaJunco.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:41:03'!
laAvispaOrnella
	^AvispaOrnella! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:41:20'!
laAvispaPolly
	^AvispaPolly! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:37:14'!
queElHabitatTengaDosOrugasMas
	self habitat agregarOrugas: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:37:01'!
queElHabitatTengaDosPolillasMas
	self habitat agregarPolillas: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:37:22'!
queElHabitatTengaUnaOrugaMas
	self habitat agregarOrugas: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:36:51'!
queElHabitatTengaUnaPolillaMas
	self habitat agregarPolillas: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'EM 4/21/2022 20:36:16'!
retrocederElHabitatAlInicioDeLosTiempos
	self habitat eliminarHuevos.
	self habitat eliminarOrugas.
	self habitat eliminarPolillas.! !

ElHabitatAuchi initializeAfterFileIn!