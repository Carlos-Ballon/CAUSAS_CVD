#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('ContaminacinAmbienta_DATA_2025-12-13_1143.csv')
#Setting Labels

label(data$record_id) = "Record ID"
label(data$redcap_event_name) = "Event Name"
label(data$redcap_repeat_instrument) = "Repeat Instrument"
label(data$redcap_repeat_instance) = "Repeat Instance"
label(data$colegio_id) = "¿A qué colegio pertenece?"
label(data$numero_visita) = "Número de visita"
label(data$consentimiento_1) = "¿El padre, madre o tutor legal firmó el consentimiento informado para autorizar la participación del menor en este estudio?"
label(data$consentimiento_2) = "¿El padre, madre o tutor legal firmó el consentimiento informado para participar en este estudio?"
label(data$consentimiento_nombre) = "Nombre de la persona que firmó el consentimiento informado"
label(data$consenti_relacion) = "Relación con el niño/adolescente"
label(data$consenti_relacion_otro) = "Otro (especifique):________________________"
label(data$asentimiento_1) = "¿El niño/adolescente recibió la hoja de asentimiento en un lenguaje adecuado para su edad?"
label(data$asentimiento_2) = "¿El niño/adolescente expresó libremente su deseo de participar en el estudio (asentimiento informado)?"
label(data$asentimiento_nombre) = "Nombre de la persona que firmó el consentimiento informado"
label(data$consent_asent_investig) = "El encuestador/investigador verificó la firma del consentimiento y asentimiento."
label(data$encuestador_0) = "Encuestador"
label(data$fecha_hora_0) = "Fecha y hora (fin)"
label(data$comentario_0) = "Comentario adicional"
label(data$cuestionario_adolescentes_0_consent_asent_complete) = "Complete?"
label(data$pariente_del_infante) = "¿Quién completa el formulario?"
label(data$pariente_del_infante_2) = "Otro pariente (especifique):"
label(data$nombre_apoderado) = "Nombre y Apellidos del familiar (madre/padre/apoderado)"
label(data$fecha_nacimiento_pariente) = "Fecha de nacimiento de la madre/padre/pariente:"
label(data$edad_pariente) = "Edad autorreportada de la madre/padre/pariente"
label(data$celular_pariente) = "Celular de la madre/padre/apoderado"
label(data$estado_civil_pariente) = "¿Cuál es su estado civil?"
label(data$estad_civil_pariente) = "Actualmente usted: "
label(data$nivel_educativo_pariente) = "¿Cuál es su nivel educativo?Del padre/madre/apoderado que está llenando la encuesta"
label(data$situacion_laboral_pariente) = "¿Cuál es su situación laboral actual?"
label(data$laboral_pariente_1) = "Otra, especifique: "
label(data$sit_economica_1) = "¿Cómo describiría la situación económica actual de su familia?"
label(data$sit_economica_2) = "En comparación con hace cinco años, ¿cómo considera que está la situación económica de su familia ahora?"
label(data$sit_economica_3) = "En comparación con hace cinco años, ¿cómo considera que está la situación económica de su familia ahora?"
label(data$seguro_de_salud_adolescente) = "¿Qué tipo de seguro de salud tiene el adolescente?"
label(data$direccion_distrito) = "¿En qué dirección y distrito vive actualmente? Es necesario poner la dirección exacta"
label(data$ano_residencia) = "¿Hace cuánto tiempo vive en este domicilio en años?"
label(data$nombre_hijo) = "Nombre y Apellidos del niño que será evaluado"
label(data$orden_del_hijo) = "¿Qué orden ocupa el niño(a) participante (su hijo) entre sus hijos(as)?"
label(data$fecgha_nacimiento_adolescente) = "Fecha de nacimiento del el participante (su hijo) "
label(data$edad_adolescente) = "Edad adolescente (autorreportada por el padre)"
label(data$lactancia_materna) = "Con respecto a la lactancia materna, el participante (su hijo):¿Recibió leche materna exclusiva hasta los 6 meses de edad ?"
label(data$lactancia_materna_2) = "¿Qué edad tenía su hijo cuando dejó de recibir leche materna por completo? "
label(data$lactancia_materna_2_meses) = "Indicar en meses"
label(data$lactancia_materna_3) = "¿A qué edad comenzó a tomar leche de fórmula?"
label(data$lactancia_materna_3_meses) = "Indicar en meses"
label(data$lactancia_materna_4) = "¿A qué edad comenzó la alimentación complementaria (por ejemplo, papillas)? "
label(data$lactancia_materna_4_meses) = "Indicar meses"
label(data$hospitalizado_nino_nacer) = "Durante el primer año de nacido, ¿el adolescente (su hijo) fue hospitalizado al nacer?"
label(data$hospitalizado_nino_nacer_1) = "Si marcó Sí, indique la duración de la hospitalización:"
label(data$enf_bajopeso_prematuro) = "¿El adolescente nació con bajo peso o de forma prematura (antes de las 37 semanas de gestación)?"
label(data$enf_macrosomia) = "¿El adolescente nació con macrosomía (peso mayor de 4 kilos al nacer)?"
label(data$enf_pulmonares___1) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Rinitis alérgica)"
label(data$enf_pulmonares___2) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Asma)"
label(data$enf_pulmonares___3) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Dermatitis atópica)"
label(data$enf_pulmonares___4) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Bronquitis crónica)"
label(data$enf_pulmonares___0) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Ninguna)"
label(data$enf_pulmonares___unk) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Unknown)"
label(data$enf_pulmonares___ni) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=No information)"
label(data$enf_pulmonares___inv) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Invalid)"
label(data$enf_pulmonares___nask) = "¿El adolescente ha sido diagnosticado alguna vez con alguna de las siguientes enfermedades? (choice=Not asked)"
label(data$enf_dm1) = "¿El adolescente ha sido diagnosticado con diabetes tipo 1?"
label(data$enf_resit_insulina) = "¿El adolescente ha presentado resistencia a la insulina?"
label(data$enf_dislipidemias) = "¿El adolescente  ha sido diagnosticado con dislipidemia (colesterol o triglicéridos elevados o ambas)?"
label(data$inf_respirat_recurrentes) = "¿El adolescente  ha tenido infecciones respiratorias recurrentes (es decir, neumonía, gripe)?"
label(data$enf_medicamentos_cronicos) = "¿El adolescente ha usado medicamentos de forma crónica (por más de 3 meses)?"
label(data$enf_medicamentos_cronicos_si) = "Si marcó Sí, indique qué medicamentos usa o ha usado: "
label(data$hospita_previas) = "Durante este año, ¿El adolescente ha tenido hospitalizaciones previas?"
label(data$hospita_previas_1) = "Si marcó Sí, ¿Cuántas veces fue hospitalizado?"
label(data$hospita_previas_2) = "Si marcó Sí, ¿Por qué motivos fue hospitalizado? "
label(data$vacunas) = "Durante este año, ¿el adolescente tiene sus vacunas al día?"
label(data$vacunas_2) = "Si marcó Sí,  ¿Qué vacunas tiene actualmente?"
label(data$ant_familiar_pulmon) = "¿Algún familiar tiene diagnóstico de asma, rinitis o enfermedad pulmonar obstructiva crónica (EPOC)?"
label(data$ant_familiar_pulmon_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_diabetes2) = "¿Algún familiar ha sido diagnosticado con diabetes tipo 2?"
label(data$ant_diabetes2_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_hta) = "¿Algún familiar ha sido diagnosticado con hipertensión arterial?"
label(data$ant_hta_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_fenf_cardiov) = "¿Algún familiar ha tenido enfermedad cardiovascular precoz (por ejemplo, infarto agudo de miocardio o accidente cerebrovascular antes de los 55 años en varones o 65 años en mujeres)?"
label(data$ant_fenf_cardiov_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_dislipidemias) = "¿Algún familiar ha sido diagnosticado con dislipidemia (hipercolesterolemia, hipertrigliceridemia o ambas)?"
label(data$ant_dislipidemias_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_cancer) = "¿Algún familiar ha tenido cáncer?"
label(data$ant_cancer_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_obesidad) = "¿Algún familiar tiene obesidad o sobrepeso?"
label(data$ant_obesidad_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ant_familiar_otros) = "¿Algún familiar tiene otras enfermedades (especifique:___________________________________________)?"
label(data$ant_familiar_otros_2) = "Si marcó Sí, indiquie quién(es): "
label(data$ansiedad_1) = "A. Ansiedad¿Con qué frecuencia se sintió nervioso(a), intranquilo(a) o con los nervios de punta?"
label(data$ansiedad_2) = "¿Con qué frecuencia sintió que no podía dejar de preocuparse o controlar la preocupación?"
label(data$depresion_1) = "B. Depresión:¿Con qué frecuencia tuvo poco interés o placer en hacer cosas?"
label(data$depresion_2) = "¿Con qué frecuencia se ha sentido decaído(a), deprimido(a) o sin esperanzas? "
label(data$cond_agresiv_1) = "A. Conductas dentro del hogar:¿Con qué frecuencia su hijo/a gritó a otros niños en casa?"
label(data$cond_agresiv_2) = "¿Con qué frecuencia su hijo(a) gritó a adultos en casa (por ejemplo, padres, cuidadores u otros familiares)?"
label(data$cond_agresiv_3) = "¿Con qué frecuencia su hijo(a) insultó a otros niños en casa?"
label(data$cond_agresiv_4) = "¿Con qué frecuencia su hijo(a) insultó a adultos en casa?"
label(data$cond_agresiv_5) = "¿Con qué frecuencia su hijo(a) amenazó verbalmente con golpear a un niño en casa?"
label(data$cond_agresiv_6) = "B. Conductas fuera del hogar:¿Con qué frecuencia su hijo(a) gritó a amigos o compañeros fuera de casa?"
label(data$cond_agresiv_7) = "¿Con qué frecuencia su hijo(a) gritó a adultos fuera de casa (por ejemplo, profesores, vecinos u otros adultos)?"
label(data$cond_agresiv_8) = "¿Con qué frecuencia su hijo(a) insultó a amigos o compañeros fuera de casa?"
label(data$cond_agresiv_9) = "¿Con qué frecuencia su hijo(a) insultó a adultos fuera de casa?"
label(data$encuestador_8) = "Encuestador"
label(data$fecha_hora_8) = "Fecha y hora (fin)"
label(data$comentario_antropometria_5) = "Comentario adicional"
label(data$cuestionario_padres_sociodemografico_complete) = "Complete?"
label(data$exposoma_1_1a) = "Duración (minutos) - a pie (caminando)"
label(data$exposoma_1_1b) = "Número de días en la semana - a pie (caminando)"
label(data$exposoma_1_2a) = "Duración (minutos) - en bicicleta"
label(data$exposoma_1_2b) = "Número de días en la semana - en bicicleta"
label(data$exposoma_1_3a) = "Duración (minutos) - en bus o en combi o metropolitano "
label(data$exposoma_1_3b) = "Número de días en la semana - en bus o en combi o metropolitano "
label(data$exposoma_1_4a) = "Duración (minutos) - en metro o tren"
label(data$exposoma_1_4b) = "Número de días en la semana - en metro o tren "
label(data$exposoma_1_5a) = "Duración (minutos) - en carro (auto propio, movilidad escolar, taxi o colectivo)"
label(data$exposoma_1_5b) = "Número de días en la semana - en carro (auto propio, movilidad escolar, taxi o colectivo) "
label(data$exposoma_1_6a) = "Duración (minutos) - en moto taxi o moto lineal"
label(data$exposoma_1_6b) = "Número de días en la semana - en moto taxi o moto lineal"
label(data$exposoma_2_1a) = "Duración (minutos) - a pie (caminando)"
label(data$exposoma_2_1b) = "Número de días en la semana - a pie (caminando)"
label(data$exposoma_2_2a) = "Duración (minutos) - en bicicleta"
label(data$exposoma_2_2b) = "Número de días en la semana - en bicicleta"
label(data$exposoma_2_3a) = "Duración (minutos) - en bus o en combi o metropolitano "
label(data$exposoma_2_3b) = "Número de días en la semana - en bus o en combi o metropolitano "
label(data$exposoma_2_4a) = "Duración (minutos) - en metro o tren"
label(data$exposoma_2_4b) = "Número de días en la semana - en metro o tren "
label(data$exposoma_2_5a) = "Duración (minutos) - en carro (auto propio, movilidad escolar, taxi o colectivo)"
label(data$exposoma_2_5b) = "Número de días en la semana - en carro (auto propio, movilidad escolar, taxi o colectivo) "
label(data$exposoma_2_6a) = "Duración (minutos) - en moto taxi o moto lineal"
label(data$exposoma_2_6b) = "Número de días en la semana - en moto taxi o moto lineal"
label(data$exposoma_3) = "Ayer, además del colegio o de su casa, ¿su hijo fue a algún otro lugar?(Por ejemplo: casa de un amigo o familiar, parque, centro comercial, mercado, iglesia, entrenamiento deportivo, etc.)."
label(data$exposoma_3_lugares___1) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=Lugar 1)"
label(data$exposoma_3_lugares___2) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=Lugar 2)"
label(data$exposoma_3_lugares___3) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=Lugar 3)"
label(data$exposoma_3_lugares___unk) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=Unknown)"
label(data$exposoma_3_lugares___ni) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=No information)"
label(data$exposoma_3_lugares___inv) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=Invalid)"
label(data$exposoma_3_lugares___nask) = "Cuántos lugares (1, 2, 3) marcó el familiares (choice=Not asked)"
label(data$exposoma_3_lugar1_a) = "Nombre o tipo de lugar"
label(data$exposoma_3_lugar1_b) = "Nombre o tipo de lugar"
label(data$exposoma_3_lugar1_c) = "Distrito"
label(data$exposoma_3_lugar1_d) = "Modo de transporte (caminando, bus, combi, bicicleta, taxi) "
label(data$exposoma_3_lugar1_e) = "Tiempo total de viaje (ida y vuelta) "
label(data$exposoma_3_lugar2_a) = "Nombre o tipo de lugar"
label(data$exposoma_3_lugar2_b) = "Nombre o tipo de lugar"
label(data$exposoma_3_lugar2_c) = "Distrito"
label(data$exposoma_3_lugar2_d) = "Modo de transporte (caminando, bus, combi, bicicleta, taxi) "
label(data$exposoma_3_lugar2_e) = "Tiempo total de viaje (ida y vuelta) "
label(data$exposoma_3_lugar3_a) = "Nombre o tipo de lugar"
label(data$exposoma_3_lugar3_b) = "Nombre o tipo de lugar"
label(data$exposoma_3_lugar3_c) = "Distrito"
label(data$exposoma_3_lugar3_d) = "Modo de transporte (caminando, bus, combi, bicicleta, taxi) "
label(data$exposoma_3_lugar3_e) = "Tiempo total de viaje (ida y vuelta) "
label(data$exposoma_4) = "Durante el último mes, en promedio cuántas veces por semana (durante la semana)¿Cuántas veces jugó su hijo en espacios verdes?"
label(data$exposoma_5) = "Durante el último mes, en promedio cuántas veces por semana (durante el fin de semana)¿Cuántas veces jugó su hijo en espacios verdes?"
label(data$exposoma_6) = "Durante el último mes, en promedio cuántas horas por cada vez (durante la semana)¿Cuántas horas jugó su hijo en espacios verdes?"
label(data$exposoma_7) = "Durante el último mes, en promedio cuántas horas por cada vez (durante el fin de semana)¿Cuántas horas jugó su hijo en espacios verdes?"
label(data$exposoma_8) = "En el tiempo libre de su hijo/cuando no está en la escuela, ¿cuántas veces jugó su hijo en los espacios verdes hoy/ayer?"
label(data$exposoma_9) = "En el tiempo libre de su hijo/cuando no está en la escuela, ¿cuántas veces jugó su hijo en los espacios verdes en la última semana?"
label(data$exposoma_10) = "En el tiempo libre de su hijo/cuando no está en la escuela, ¿cuántas horas por cada vez jugó su hijo en los espacios verdes hoy/ayer?"
label(data$exposoma_11) = "En el tiempo libre de su hijo/cuando no está en la escuela, ¿cuántas horas por cada vez jugó su hijo en los espacios verdes en la última semana?"
label(data$exposoma_12_escuela_ref1) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_escuela_ref2) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_escuela_ref3) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_escuela_dist1) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_escuela_dist2) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_escuela_dist3) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_vacas_ref1) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_vacas_ref2) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_vacas_dist1) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_vacas_dist2) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_12_vacas_dist3) = "Nombre o referencia (año escolar, cuando hay clases)"
label(data$exposoma_13_1) = "Durante el año escolar: Bosque, montaña o río "
label(data$exposoma_13_2) = "Durante el año escolar: Playa"
label(data$exposoma_13_3) = "Durante las vacaciones: Bosque, montaña o río "
label(data$exposoma_13_4) = "Durante las vacaciones: Playa"
label(data$exposoma_13_5) = "Durante la última semana: Bosque, montaña o río "
label(data$exposoma_13_6) = "Durante la última semana: Playa"
label(data$exposoma_14___1) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=En un parque o área verde (jardín) cerca de su casa o barrio)"
label(data$exposoma_14___2) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=Bosque o área natural)"
label(data$exposoma_14___3) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=Playa)"
label(data$exposoma_14___4) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=Patio o jardín de su casa)"
label(data$exposoma_14___5) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=En otro lugar)"
label(data$exposoma_14___unk) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=Unknown)"
label(data$exposoma_14___ni) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=No information)"
label(data$exposoma_14___inv) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=Invalid)"
label(data$exposoma_14___nask) = "Actividad reciente  Pensando en ayer o hoy, ¿su hijo pasó tiempo en alguno de los siguientes lugares? (choice=Not asked)"
label(data$exposoma_14_otro) = " En otro lugar (especifique): "
label(data$espacio_verde_seguro) = "En general, ¿cree que los espacios verdes cercanos a su casa  son seguros y adecuados para que los adolescentes jueguen?"
label(data$exposoma_15_1) = "Este barrio es un lugar en el que disfruto vivir"
label(data$exposoma_15_2) = "Es fácil obtener ayuda práctica de los vecinos"
label(data$exposoma_15_3) = "En mi barrio se puede confiar en la mayoría de las personas"
label(data$exposoma_16) = "¿Cuál de las siguientes opciones describe mejor su consumo de tabaco? (Responda usted, madre/padre/apoderado del adolescente)"
label(data$exposoma_17) = "¿Alguien fuma actualmente dentro de su casa?"
label(data$exposoma_17_1) = "¿Quién fuma dentro de su casa?"
label(data$exposoma_17_1_usted) = "Usted, ¿Cuántos cigarrillos fuma por semana en total?"
label(data$exposoma_17_1_usted1) = "Usted, ¿Cuántos de esos cigarrillos fuma dentro de la casa?"
label(data$exposoma_17_1_pareja) = "Su pareja, ¿Cuántos cigarrillos fuma por semana en total?"
label(data$exposoma_17_1_pareja1) = "Su pareja, ¿Cuántos de esos cigarrillos fuma dentro de la casa?"
label(data$exposoma_17_1_otra) = "Otra persona del hogar (por ejemplo, abuelo, tío, hermano), ¿Cuántos cigarrillos fuma por semana en total?"
label(data$exposoma_17_1_otra1) = "Otra persona del hogar (por ejemplo, abuelo, tío, hermano), ¿Cuántos de esos cigarrillos fuma dentro de la casa?"
label(data$exposoma_18) = "Durante la última semana, ¿su hijo estuvo en algún lugar cerrado donde alguien estaba fumando?"
label(data$exposoma_18_1) = "Si marcó sí, ¿cuántas veces por semana?"
label(data$exposoma_19) = "Presencia de industrias o empresas cercanas ¿Cerca de su casa (a menos de 100 metros) hay alguna empresa, taller o industria que emita humo, gases, polvo u olores fuertes? "
label(data$exposoma_20___1) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Fábrica o planta industrial (ejemplo: cemento, alimentos, textiles, etc.))"
label(data$exposoma_20___2) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Taller mecánico o de soldadura)"
label(data$exposoma_20___3) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Panadería o polleria)"
label(data$exposoma_20___4) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Empresa de transporte o estación de buses/camiones)"
label(data$exposoma_20___5) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Otra {exposoma_20_otro})"
label(data$exposoma_20___unk) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Unknown)"
label(data$exposoma_20___ni) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=No information)"
label(data$exposoma_20___inv) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Invalid)"
label(data$exposoma_20___nask) = "i. Identificación de las fuentes ¿Qué tipo de empresa o industria está más cerca de su casa?  (choice=Not asked)"
label(data$exposoma_20_otro) = "Especifique:"
label(data$exposoma_21) = "Aproximadamente, ¿A qué distancia se encuentra la empresa más cercana?"
label(data$exposoma_22) = "ii. Emisiones visibles ¿Ha visto usted que esta empresa o industria emite humo, polvo o gases hacia el aire? "
label(data$exposoma_23) = "¿Con qué frecuencia observa estas emisiones durante la semana?"
label(data$exposoma_24) = "¿A qué hora del día suele empezar la emisión de humo, gases o polvo? "
label(data$exposoma_25) = "¿Hasta qué hora aproximadamente continúan las emisiones?"
label(data$exposoma_26) = "iii. Características del humo o polvo Cuando ve el humo o el polvo, ¿de qué color suele ser principalmente? "
label(data$exposoma_26_otro) = "Otro color (especifique):"
label(data$exposoma_27) = "¿Ha notado algún olor fuerte o desagradable cuando se emiten estos humos o gases?"
label(data$exposoma_28) = "Si respondió Sí, ¿cómo describiría el olor? "
label(data$exposoma_28_otro) = "Otro (especifique):"
label(data$humo_impacto) = "iv. Percepción del impacto ¿Cree que estas emisiones podrían estar afectando la salud de su familia o de su hijo?"
label(data$encuestador_9) = "Encuestador"
label(data$fecha_hora_9) = "Fecha y hora (fin)"
label(data$comentario_exposoma_6) = "Comentario adicional"
label(data$cuestionario_de_padres_exposoma_complete) = "Complete?"
label(data$entorno_hogar_1) = "¿Cuántas personas viven en su vivienda?"
label(data$n_menor1) = "Menores de 1 año"
label(data$n_2a5) = "Entre 2 a 5 años"
label(data$n_6a17) = "Entre 6 a 17 años"
label(data$n_18a59) = "Entre 18 a 59 años"
label(data$n_mas60) = "60 años a más"
label(data$entorno_hogar_3) = "¿Cómo describiría dónde vive?"
label(data$entorno_hogar_3_otros) = "Especifique que otro tipo de vivienda:"
label(data$sala) = "Sala(s)"
label(data$dormitorio) = "Dormitorio(s)"
label(data$otros_ambientes) = "Otras ambientes (incluye cocina, baño(s)) "
label(data$sala_cortina) = "Sala: cortinas"
label(data$sala_alfombra_fija) = "Sala: alfombra fija (en el suelo)"
label(data$sala_tapete) = "Sala: tapete (que puede retirarse)"
label(data$dormitorio_hijo_cortina) = "Dormitorio de su hijo: cortinas"
label(data$dormitorio_hijo_alfombra) = "Dormitorio de su hijo: alfombra fija (en el suelo)"
label(data$dormitorio_hijo_tapete) = "Dormitorio de su hijo: tapete (que puede retirarse)"
label(data$bano_cortina) = "Baño(s): cortinas"
label(data$bano_alfombra) = "Baño(s): alfombra fija (en el suelo)"
label(data$bano_tapete) = "Baño(s): tapete (que puede retirarse)"
label(data$sala_veces_ano) = "Sala(s): veces al año que limpia"
label(data$dormitorio_veces_ano) = "Dormitorio de su hijo: veces al año que limpia"
label(data$bano_veces_ano) = "Baño(s): veces al año que limpia"
label(data$sala_forma_limpieza) = "Sala(s): forma principal de limpieza"
label(data$dormitorio_forma_limpieza) = "Dormitorio de su hijo: forma principal de limpieza"
label(data$bano_forma_limpieza) = "Baño(s): forma principal de limpieza"
label(data$entorno_hogar_7) = "¿De qué material principalmente están construidas las paredes exteriores de su casa/apartamento?"
label(data$entorno_hogar_7_otro) = "Otro (especifique):____________________________"
label(data$entorno_hogar_8_sala) = "Sala(s)"
label(data$entorno_hogar_8_dormitorio) = "Dormitorio del niño"
label(data$entorno_hogar_8_banos) = "Baño(s)"
label(data$entorno_hogar_9_frio) = "Temporada invierno/ frío"
label(data$entorno_hogar_9_calor) = "Temporada verano - primavera/ calor"
label(data$entorno_hogar_10) = "¿En qué medida le molesta la contaminación del aire al dejar las ventanas abiertas?(Se refiere a gases, humo, polvo del tráfico, industrias o quema de basura)"
label(data$entorno_hogar_11) = "¿Hacia dónde da la ventana del dormitorio de su hijo(a)?"
label(data$entorno_hogar_11_otros) = "Otra vista, especifique: _____________________________"
label(data$entorno_hogar_12_frio) = "Temporada invierno/ frío"
label(data$entorno_hogar_12_calor) = "Temporada verano - primavera/ calor"
label(data$entorno_hogar_13) = "¿En qué piso se encuentra el dormitorio de su hijo(a)? (Ejemplo: 0 = planta baja, 1 = primer piso, etc.)"
label(data$entorno_hogar_14) = "¿Cuántos pisos tiene en total su casa o edificio donde vive?"
label(data$entorno_hogar_15) = "¿Qué tipo de colchón usa su hijo(a)?"
label(data$entorno_hogar_15_otros) = "Otro (especifique): ___________________________________"
label(data$entorno_hogar_16) = "¿Qué edad aproximada tiene ese colchón?"
label(data$entorno_hogar_17) = "¿Tiene alguna mascota que viva principalmente dentro de la casa?"
label(data$entorno_hogar_17_gatos) = "Si respondió Sí, complete la siguiente información: ¿Usted tiene gatos?"
label(data$gato_1) = "¿Tiene gato(s)?"
label(data$gato_2) = "¿Duermen dentro de la casa?"
label(data$gato_3) = "¿Duermen en el mismo cuarto del niño(a)?"
label(data$gato_4) = "¿El gato vivía en la casa cuando nació su hijo(a)?"
label(data$gato_5) = "¿Cuántos gatos duermen dentro de la casa?"
label(data$gato_6) = "¿Cuántos duermen en el cuarto del niño(a)?"
label(data$gato_7) = "¿Hace cuánto convive el niño(a) con el gato/gatos? (años)"
label(data$gato_8) = "¿Hace cuánto convive el niño(a) con el gato/gatos? (meses)"
label(data$entorno_hogar_17_perros) = "¿Usted tiene perros?"
label(data$perro_1) = "¿Tiene perro(s)?"
label(data$perro_2) = "¿Duermen dentro de la casa?"
label(data$perro_3) = "¿Duermen en el mismo cuarto del niño(a)?"
label(data$perro_4) = "¿El perro vivía en la casa cuando nació su hijo(a)?"
label(data$perro_5) = "¿Cuántos perros duermen dentro de la casa?"
label(data$perro_6) = "¿Cuántos duermen en el cuarto del niño(a)?"
label(data$perro_7) = "¿Hace cuánto convive el niño(a) con el perro(s)? (años)"
label(data$perro_8) = "¿Hace cuánto convive el niño(a) con el perro(s)? (meses)"
label(data$entorno_hogar_17_aves) = "¿Usted tiene aves (pajaritos, loros, etc.)?"
label(data$ave_1) = "¿Tiene ave(s)?"
label(data$ave_2) = "¿Duermen dentro de la casa?"
label(data$ave_3) = "¿Duermen en el mismo cuarto del niño(a)?"
label(data$ave_4) = "¿La(s) ave(s) vivía en la casa cuando nació su hijo(a)?"
label(data$ave_5) = "¿Cuántos aves duermen dentro de la casa?"
label(data$ave_6) = "¿Cuántos duermen en el cuarto del niño(a)?"
label(data$ave_7) = "¿Hace cuánto convive el niño(a) con el ave(s)? (años)"
label(data$ave_8) = "¿Hace cuánto convive el niño(a) con el ave(s)? (meses)"
label(data$entorno_hogar_17_corral) = "¿Usted tiene animal de corral (palomas, gallinas, cuyes, etc.)?"
label(data$corral_1) = "¿Tiene  animal(es) de corral (palomas, gallinas, cuyes, etc.)?"
label(data$corral_2) = "¿Duermen dentro de la casa?"
label(data$corral_3) = "¿Duermen en el mismo cuarto del niño(a)?"
label(data$corral_4) = "¿Los animales de corral (palomas, gallinas, cuyes, etc.) vivían en la casa cuando nació su hijo(a)?"
label(data$corral_5) = "¿Cuántos  animales de corral (palomas, gallinas, cuyes, etc.) duermen dentro de la casa?"
label(data$corral_6) = "¿Cuántos duermen en el cuarto del niño(a)?"
label(data$corral_7) = "¿Hace cuánto convive el niño(a) con los animales de corral (palomas, gallinas, cuyes, etc.)? (años)"
label(data$corral_8) = "¿Hace cuánto convive el niño(a) con los animales de corral (palomas, gallinas, cuyes, etc.)? (meses)"
label(data$entorno_hogar_18_roedores) = "Roedores"
label(data$entorno_cucarachas_18) = "Cucarachas"
label(data$entorno_hogar_19) = "¿Considera que su casa está húmeda?"
label(data$entorno_hogar_20) = "¿Hay moho o manchas de moho dentro de su casa (excepto en los alimentos)?"
label(data$entorno_hogar_20_moho_1) = "Habitación del niño(a)"
label(data$entorno_hogar_20_moho_2) = "Resto de la casa"
label(data$entorno_hogar_20_moho_3) = "Baño(s)"
label(data$entorno_hogar_20_moho_4) = "Cocina"
label(data$entorno_hogar_20_moho_5) = "Sótano / depósito"
label(data$entorno_hogar_22) = "La casa donde vive actualmente su hijo(a), ¿es la misma donde usted vivía cuando estaba embarazada?"
label(data$entorno_hogar_23_1) = "Distrito, departamento (desde el embarazo)"
label(data$entorno_hogar_23_1_1) = "Dirección o referencia (desde el embarazo)"
label(data$entorno_hogar_23_1_2) = "Tiempo vivido, en años (desde el embarazo)"
label(data$entorno_hogar_23_2) = "Distrito, departamento (0 a 2 años)"
label(data$entorno_hogar_23_2_1) = "Dirección o referencia (0 a 2 años)"
label(data$entorno_hogar_23_2_2) = "Tiempo vivido, en años (0 a 2)"
label(data$entorno_hogar_23_3) = "Distrito, departamento (3 a 5 años)"
label(data$entorno_hogar_23_3_1) = "Dirección o referencia (3 a 5 años)"
label(data$entorno_hogar_23_3_2) = "Tiempo vivido, en años (3 a 5)"
label(data$entorno_hogar_23_4) = "Distrito, departamento (6 a 10 años)"
label(data$entorno_hogar_23_4_1) = "Dirección o referencia (6 a 10 años)"
label(data$entorno_hogar_23_4_2) = "Tiempo vivido, en años (6 a 10)"
label(data$entorno_hogar_23_5) = "Distrito, departamento (actual)"
label(data$entorno_hogar_23_5_1) = "Dirección o referencia (actual)"
label(data$entorno_hogar_23_5_2) = "Tiempo vivido, en años (actual)"
label(data$entorno_hogar_24) = "¿Existen edificaciones o vías en construcción, o calles sin pavimentar, a menos de una cuadra (100 metros) de su casa?"
label(data$entorno_hogar_25) = "¿Existen fábricas, talleres o negocios cerca de su casa (a menos de una cuadra o 100 metros) Como: ladrilleras, madereras, calderas, quemas de llantas o basura, ¿talleres con humo o polvo?"
label(data$entorno_hogar_26) = "Mientras su hijo(a) ha vivido en esta casa, ¿se han realizado obras, ampliaciones o remodelaciones Como: construcción, pintura, cambio de techo, pisos o paredes"
label(data$entorno_hogar_27) = "¿La cocina está ubicada dentro del ambiente principal de la vivienda o en una zona exterior?"
label(data$entorno_hogar_28) = "¿Su cocina cuenta con un extractor o campana de aire encima de la cocina?"
label(data$entorno_hogar_29) = "Cuando cocina, ¿con qué frecuencia utiliza el extractor o campana de aire?"
label(data$entorno_hogar_30) = "¿Qué tipo de cocina o estufa usa principalmente en su hogar? "
label(data$entorno_hogar_30_1) = "Otro, especificar"
label(data$entorno_hogar_31) = "¿Cuántas veces a la semana cocina utilizando una sartén antiadherente (teflón)?"
label(data$entorno_hogar_32_1) = "Lejía/blanqueador"
label(data$entorno_hogar_32_2) = "Amoníaco"
label(data$entorno_hogar_32_3) = "Solvente quitamanchas"
label(data$entorno_hogar_32_4) = "Limpiador de muebles"
label(data$entorno_hogar_32_5) = "Limpiavidrios"
label(data$entorno_hogar_32_6) = "Spray para alfombras, mantas o cortinas"
label(data$entorno_hogar_32_7) = "Limpiador aromatizado de pisos"
label(data$entorno_hogar_32_8) = "Limpiador de hornos o cocina"
label(data$entorno_hogar_32_9) = "Ambientadores (en spray o eléctricos)"
label(data$entorno_hogar_32_10) = "Spray para planchar ropa"
label(data$entorno_hogar_32_11) = "Productos de limpieza perfumados"
label(data$entorno_hogar_32_12) = "Limpiadores líquidos multiusos"
label(data$entorno_hogar_32_13) = "Bolas de naftalina o similares"
label(data$entorno_hogar_32_14) = "Aerosoles desengrasantes"
label(data$entorno_hogar_32_15) = "Otros productos de limpieza (especifique):"
label(data$entorno_hogar_32_otro) = "Otros productos de limpieza (especifique): "
label(data$entorno_hogar_33) = "¿Con qué frecuencia limpia la vivienda (barrer, trapear, quitar polvo, etc.)?"
label(data$entorno_hogar_34) = "¿Tienen aspiradora en su hogar?"
label(data$entorno_hogar_35) = "Si tiene aspiradora, ¿esta cuenta con un filtro HEPA o de alta eficiencia?"
label(data$entorno_hogar_36) = "¿Con qué frecuencia aspiran su vivienda?"
label(data$encuestador_10) = "Encuestador"
label(data$fecha_hora_10) = "Fecha y hora (fin)"
label(data$comentario_antropometria_7) = "Comentario adicional"
label(data$cuestionario_de_padres_informacin_sobre_el_ambient_complete) = "Complete?"
label(data$presion_sistolica_padre_1) = "Presión arterial sistólica (Primera toma)"
label(data$presion_diastolica_padre_1) = "Presión arterial diastólica (Primera toma)"
label(data$presion_sistolica_padre_2) = "Presión arterial sistólica (segunda toma)"
label(data$presion_diastolica_padre_2) = "Presión arterial sistólica (segunda toma)"
label(data$peso_padre) = "Peso"
label(data$talla_padre_2) = "Talla"
label(data$pcintura_padre) = "Perímetro de cintura"
label(data$encuestador_11) = "Encuestador"
label(data$fecha_hora_11) = "Fecha y hora (fin)"
label(data$comentario_antropometria_8) = "Comentario adicional"
label(data$cuestionario_de_padres_cartilla_clnica_de_los_padr_complete) = "Complete?"
label(data$desayuno_biomarcadores) = "¿El niño(a) desayunó antes de la recolección de la muestra de biomarcadores?"
label(data$colesterol_total) = "Perfil lipídico: Colesterol total"
label(data$hdl_colesterol) = "Perfil lipídico:HDL-colesterol (HDL-c)"
label(data$trigliceridos) = "Perfil lipídico: Triglicéridos"
label(data$glucosa) = "Glucosa"
label(data$encuestador_biomarcadores) = "Encuestador"
label(data$fecha_hora_biomarcadores) = "Fecha y hora (fin)"
label(data$comentario_biomarcadores) = "Comentario adicional"
label(data$cuestionario_adolescentes_biomarcadores_complete) = "Complete?"
label(data$alergia_pteronyssinus) = "¿El niño(a) presentó reacción alérgica al ácaro del polvo Dermatophagoides pteronyssinus?"
label(data$alergia_farinae) = "¿El niño(a) presentó reacción alérgica al ácaro del polvo Dermatophagoides farinae?"
label(data$alergia_destructor) = "¿El niño(a) presentó reacción alérgica al ácaro Lepidoglyphus destructor?"
label(data$alergia_tropicalis) = "¿El niño(a) presentó reacción alérgica al ácaro Blomia tropicalis?"
label(data$alergia_arcuatus) = "¿El niño(a) presentó reacción alérgica al ácaro Chortoglyphus arcuatus?"
label(data$alergia_alternata) = "¿El niño(a) presentó reacción alérgica al moho Alternaria alternata?"
label(data$alergia_herbarum) = "¿El niño(a) presentó reacción alérgica al moho Cladosporium herbarum?"
label(data$alergia_fumigatus) = "¿El niño(a) presentó reacción alérgica al moho Aspergillus fumigatus?"
label(data$alergia_notatum) = "¿El niño(a) presentó sensibilización al moho Penicillium notatum?"
label(data$alergia_grasses) = "¿El niño(a) presentó reacción alérgica a la mezcla de grasses?"
label(data$alergia_vulgaris) = "¿El niño(a) presentó reacción alérgica a la Artemisia vulgaris?"
label(data$alergia_ambrosia) = "¿El niño(a) presentó reacción alérgica a la Ambrosia?"
label(data$alergia_perro) = "¿El niño(a) presentó reacción alérgica al epitelio de perro?"
label(data$alergia_gato) = "¿El niño(a) presentó reacción alérgica al epitelio de gato?"
label(data$alergia_germanica) = "¿El niño(a) presentó reacción alérgica a la cucaracha Blattella germanica?"
label(data$alergia_americana) = "¿El niño(a) presentó reacción alérgica a la cucaracha Periplaneta americana?"
label(data$alergia_olivo) = "¿El niño(a) presentó reacción alérgica al Olivo?"
label(data$asma) = "¿Usted tiene asma?"
label(data$severidad_asma) = "¿Qué severidad tiene su asma? (Para ser llenado por médico)"
label(data$rinitis_alergica) = "¿Usted tiene rinitis alérgica?"
label(data$severidad_rinitis) = "¿Qué severidad tiene su rinitis? (Para ser llenado por médico)"
label(data$sintomas_respiratorios___1) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Ácaros del polvo (polvo casero))"
label(data$sintomas_respiratorios___2) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Hongos o moho)"
label(data$sintomas_respiratorios___3) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Pelo o caspa de mascotas (perros, gatos, etc.))"
label(data$sintomas_respiratorios___4) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Pólenes de árboles, plantas o flores)"
label(data$sintomas_respiratorios___0) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Ninguno de los anteriores)"
label(data$sintomas_respiratorios___unk) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Unknown)"
label(data$sintomas_respiratorios___ni) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=No information)"
label(data$sintomas_respiratorios___inv) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Invalid)"
label(data$sintomas_respiratorios___nask) = "Sus síntomas respiratorios incrementan cuando se expone a ...............(Para ser llenado por médico) (choice=Not asked)"
label(data$isaac_asma_21) = "¿Alguna vez has tenido silbidos o pitos en el pecho en el pasado?Si ha contestado NO, por favor salte a la pregunta ¿Algún médico te ha diagnosticado asma?"
label(data$isaac_asma_22) = "En los últimos 12 meses, ¿has tenido silbidos o pitidos en el pecho?Si ha contestado NO, por favor salte a la pregunta ¿Algún médico te ha diagnosticado asma?"
label(data$isaac_asma_23) = "¿Cuántos ataques de silbidos has tenido en los últimos 12 meses?"
label(data$isaac_asma_24) = "En los últimos 12 meses, ¿cuántas noches por semana, en promedio, te ha despertado la sibilancia?"
label(data$isaac_asma_25) = "En los últimos 12 meses, ¿la sibilancia ha limitado alguna vez tu habla a menos de una frase completa?"
label(data$isaac_asma_26) = "¿Algún médico te ha diagnosticado asma?"
label(data$isaac_asma_27) = "En los últimos 12 meses, ¿has tenido silbidos asociados al ejercicio físico (durante la práctica de deporte)?"
label(data$isaac_asma_28) = "En los últimos 12 meses, ¿has tenido una tos seca nocturna sin estar resfriado o teniendo gripe?"
label(data$isaac_rinitis_29) = "¿Alguna vez has tenido un problema nasal (estornudos, goteo o congestión nasal) sin estar resfriado o con gripe? Si ha contestado NO, por favor salte a la pregunta ¿Un médico te ha diagnosticado rinitis alérgica (alergia nasal)?"
label(data$isaac_rinitis_30) = "¿En los últimos 12 meses has tenido un problema nasal (estornudos, goteo o congestión nasal) sin estar resfriado o con gripe? Si ha contestado NO, por favor salte a la pregunta ¿Un médico te ha diagnosticado rinitis alérgica (alergia nasal)?"
label(data$isaac_rinitis_31) = "¿Cuántos meses al año, aproximadamente, suele afectarte este problema nasal?"
label(data$isaac_rinitis_32) = "¿Estos síntomas nasales, durante los últimos 12 meses, han limitado tu actividad normal (jugar, ir a la escuela, hacer deporte)?"
label(data$isaac_rinitis_33) = "¿Has tenido comezón y lagrimeo ocular junto con los síntomas nasales en los últimos 12 meses?"
label(data$isaac_rinitis_34) = "¿Un médico te ha diagnosticado rinitis alérgica (alergia nasal)?"
label(data$isaac_dermatitis_35) = "¿Alguna vez has tenido erupción de picor que haya durado más de una semana? Si ha contestado NO, por favor salte a la pregunta ¿Un médico te ha diagnosticado eczema o dermatitis atópica?"
label(data$isaac_dermatitis_36) = "¿En los últimos 12 meses has tenido una erupción de picor? Si ha contestado NO, por favor salte a la pregunta ¿Un médico te ha diagnosticado eczema o dermatitis atópica?"
label(data$isaac_dermatitis_37) = "¿En los últimos 12 meses, has tenido esa erupción de picor en alguno de estos sitios: dentro de los codos, detrás de las rodillas, al frente de los tobillos, bajo las nalgas, alrededor del cuello, ¿los ojos u orejas?"
label(data$isaac_dermatitis_38) = "¿En los últimos 12 meses, ¿la erupción ha desaparecido completamente durante algún período?"
label(data$isaac_dermatitis_39) = "¿La erupción de picor ha afectado tu sueño en los últimos 12 meses? Si es así, ¿con qué frecuencia?"
label(data$isaac_dermatitis_40) = "¿Un médico te ha diagnosticado eczema o dermatitis atópica?"
label(data$feno) = "FENORegistrar el valor de la fracción exhalada de óxido nítrico (FeNO) obtenido con el dispositivo calibrado"
label(data$encuestador_alergias) = "Encuestador"
label(data$fecha_hora_alergias) = "Fecha y hora (fin)"
label(data$comentario_alergias) = "Comentario adicional"
label(data$cuestionario_adolescentes_alergias_complete) = "Complete?"
label(data$peso_1) = "Peso - Toma 1"
label(data$peso_2) = "Peso - Toma 2"
label(data$peso_3) = "Peso - Toma 3"
label(data$talla_1) = "Talla - Toma 1"
label(data$talla_2) = "Talla - Toma 2"
label(data$talla_3) = "Talla - Toma 3"
label(data$talla_sentado_1) = "Talla sentado - Toma 1"
label(data$talla_sentado_2) = "Talla sentado - Toma 2"
label(data$talla_sentado_3) = "Talla sentado - Toma 3"
label(data$pliegue_bicipital_1) = "Pliegue bicipital - Toma 1"
label(data$pliegue_bicipital_2) = "Pliegue bicipital - Toma 2"
label(data$pliegue_bicipital_3) = "Pliegue bicipital - Toma 3"
label(data$pliegue_triceps_1) = "Pliegue tricipital - Toma 1"
label(data$pliegue_triceps_2) = "Pliegue tricipital - Toma 2"
label(data$pliegue_triceps_3) = "Pliegue tricipital - Toma 3"
label(data$pliegue_subescapular_1) = "Pliegue subescapular - Toma 1"
label(data$pliegue_subescapular_2) = "Pliegue subescapular - Toma 2"
label(data$pliegue_subescapular_3) = "Pliegue subescapular - Toma 3"
label(data$pliegue_pierna_1) = "Pliegue de pierna - Toma 1"
label(data$pliegue_pierna_2) = "Pliegue de pierna - Toma 2"
label(data$pliegue_pierna_3) = "Pliegue de pierna - Toma 3"
label(data$perimetro_cuello_1) = "Perímetro de cuello - Toma 1"
label(data$perimetro_cuello_2) = "Perímetro de cuello - Toma 2"
label(data$perimetro_cuello_3) = "Perímetro de cuello - Toma 3"
label(data$perimetro_cintura_1) = "Perímetro de cintura - Toma 1"
label(data$perimetro_cintura_2) = "Perímetro de cintura - Toma 2"
label(data$perimetro_cintura_3) = "Perímetro de cintura - Toma 3"
label(data$perimetro_cadera_1) = "Perímetro de cadera - Toma 1"
label(data$perimetro_cadera_2) = "Perímetro de cadera - Toma 2"
label(data$perimetro_cadera_3) = "Perímetro de cadera - Toma 3"
label(data$masa_grasa_corporal) = "Porcentaje de masa grasa corporal (bioimpedancia)"
label(data$grasa_visceral) = "Porcentaje de grasa visceral (bioimpedancia)"
label(data$vo2max_fc_final) = "Frecuencia cardíaca final: Frecuencia cardíaca al finalizar los 3 minutos (bpm)"
label(data$vo2max_sato2) = "Saturación de oxígeno: Saturación de oxígeno al finalizar los 3 minutos (SaO₂ %)"
label(data$dinamo_1) = "Dinamómetro - Toma 1"
label(data$dinamo_2) = "Dinamómetro - Toma 2"
label(data$dinamo_3) = "Dinamómetro - Toma 3"
label(data$dinamo_max) = "Mejor fuerza (valor máximo)"
label(data$encuestador_antropometria) = "Encuestador"
label(data$fecha_hora_antropometria) = "Fecha y hora (fin)"
label(data$comentario_antropometria) = "Comentario adicional"
label(data$cuestionario_adolescentes_antropometria_complete) = "Complete?"
label(data$pas_1) = "Presión arterial sistólica (PAS) - Toma 1"
label(data$pas_2) = "Presión arterial sistólica (PAS) - Toma 2"
label(data$pas_3) = "Presión arterial sistólica (PAS) - Toma 3"
label(data$pad_1) = "Presión arterial diastólica (PAD) - Toma 1"
label(data$pad_2) = "Presión arterial diastólica (PAD) - Toma 2"
label(data$pad_3) = "Presión arterial diastólica (PAD) - Toma 3"
label(data$pulso_1) = "Frecuencia cardiaca (pulso) - Toma 1"
label(data$pulso_2) = "Frecuencia cardiaca (pulso) - Toma 2"
label(data$pulso_3) = "Frecuencia cardiaca (pulso) - Toma 3"
label(data$encuestador_parterial) = "Encuestador"
label(data$fecha_hora_parterial) = "Fecha y hora (fin)"
label(data$comentario_parterial) = "Comentario adicional"
label(data$cuestionario_adolescentes_presion_arterial_complete) = "Complete?"
label(data$sintomas_depresivos_1) = "¿Te has sentido deprimido(a), irritable o sin esperanza?"
label(data$sintomas_depresivos_2) = "¿Has tenido poco interés o placer en hacer cosas?"
label(data$sintomas_depresivos_3) = "¿Has tenido dificultad para dormirte, mantenerte dormido(a) o has dormido demasiado?"
label(data$sintomas_depresivos_4) = "¿Has tenido poco apetito, pérdida de peso o has comido en exceso?"
label(data$sintomas_depresivos_5) = "¿Te has sentido cansado(a) o con poca energía?"
label(data$sintomas_depresivos_6) = "¿Has sentido que has fallado a tu familia o a ti mismo(a)?"
label(data$sintomas_depresivos_7) = "¿Has tenido problemas para concentrarte en tareas escolares, leer o ver televisión?"
label(data$sintomas_depresivos_8) = "¿Te has movido o hablado tan lentamente que otras personas lo notan? ¿O has estado inquieto(a), moviéndote más de lo usual?"
label(data$sintomas_depresivos_9) = "¿Has tenido pensamientos de que estarías mejor muerto(a) o de hacerte daño de alguna manera?"
label(data$sintomas_ansiedad_1) = "Sentí momentos de terror, miedo o susto repentino."
label(data$sintomas_ansiedad_2) = "Me sentí ansioso(a), preocupado(a) o nervioso(a)."
label(data$sintomas_ansiedad_3) = "Tuve pensamientos sobre cosas malas que podrían pasar, como una tragedia familiar, enfermedad, pérdida de trabajo o accidentes."
label(data$sintomas_ansiedad_4) = "Sentí el corazón acelerado, sudoración, dificultad para respirar, mareo o temblores."
label(data$sintomas_ansiedad_5) = "Sentí los músculos tensos, estaba inquieto(a) o con dificultad para relajarme o dormir."
label(data$sintomas_ansiedad_6) = "Evité o no me acerqué a situaciones que me causaban preocupación."
label(data$sintomas_ansiedad_7) = "Me retiré temprano de situaciones o participé muy poco debido a mis preocupaciones."
label(data$sintomas_ansiedad_8) = "Pasé mucho tiempo tomando decisiones, postergando decisiones o preparándome para situaciones por mis preocupaciones."
label(data$sintomas_ansiedad_9) = "Busqué tranquilidad o confirmación de otras personas debido a mis preocupaciones."
label(data$sintomas_ansiedad_10) = "Necesité ayuda para sobrellevar mi ansiedad (por ejemplo, alcohol, medicación, objetos supersticiosos o apoyo de otras personas)."
label(data$nutricion_1) = "Cuando almuerzo fuera de casa, suelo elegir una opción baja en grasa."
label(data$nutricion_2) = "Suelo evitar comer frituras."
label(data$nutricion_3) = "Suelo comer postres si hay disponibles."
label(data$nutricion_4) = "Me aseguro de comer al menos una porción de fruta al día."
label(data$nutricion_5) = "Trato de mantener bajo mi consumo total de grasa."
label(data$nutricion_6) = "Si compro papas fritas (snacks), elijo una marca baja en grasa."
label(data$nutricion_7) = "Evito comer muchas salchichas y hamburguesas."
label(data$nutricion_8) = "Suelo comprar dulces o tortas."
label(data$nutricion_9) = "Trato de mantener bajo mi consumo total de azúcar."
label(data$nutricion_10) = "Como al menos una porción de verduras o ensalada al día."
label(data$nutricion_11) = "Si como postre en casa, intento que sea bajo en grasa."
label(data$nutricion_12) = "Rara vez como comida para llevar."
label(data$nutricion_13) = "Trato de comer muchas frutas y verduras."
label(data$nutricion_14) = "Suelo comer dulces o snacks entre comidas."
label(data$nutricion_15) = "Generalmente como al menos una porción de verduras (sin contar papas) o ensalada por la noche."
label(data$nutricion_16) = "Cuando compro una bebida gaseosa, elijo una versión dietética."
label(data$nutricion_17) = "Cuando pongo mantequilla/margarina en el pan, uso una capa delgada."
label(data$nutricion_18) = "Si llevo lonchera, normalmente incluyo chocolate o galletas."
label(data$nutricion_19) = "Si como un snack entre comidas, suelo elegir fruta."
label(data$nutricion_20) = "Si como postre en un restaurante, elijo el más saludable disponible."
label(data$nutricion_21) = "Suelo poner crema a los postres."
label(data$nutricion_22) = "Como al menos tres porciones de fruta la mayoría de días."
label(data$nutricion_23) = "En general, trato de llevar una dieta saludable."
label(data$paqc_1) = "Durante los últimos 7 días, en tus clases de educación física, ¿con qué frecuencia estuviste muy activo(a)?"
label(data$paqc_2) = "Durante los últimos 7 días, ¿qué hiciste durante el recreo?"
label(data$paqc_3) = "Durante los últimos 7 días, ¿qué hiciste en la hora de almuerzo (además de comer)?"
label(data$paqc_4) = "Durante los últimos 7 días, inmediatamente después del colegio ¿cuántos días practicaste deporte, bailaste o jugaste en los que estuvieras muy activo? "
label(data$paqc_5) = "Durante los últimos 7 días, ¿en cuántas noches hiciste deporte, bailaste o jugaste activamente? "
label(data$paqc_6) = "Durante el último fin de semana, ¿cuántas veces hiciste deporte, bailaste o jugaste activamente? "
label(data$paqc_7) = "¿Cuál de las siguientes opciones te describe mejor en los últimos 7 días?"
label(data$paqc_8_1___0) = "Lunes (choice=Ninguna)"
label(data$paqc_8_1___1) = "Lunes (choice=A veces)"
label(data$paqc_8_1___2) = "Lunes (choice=Regular)"
label(data$paqc_8_1___3) = "Lunes (choice=Frecuente)"
label(data$paqc_8_1___4) = "Lunes (choice=Muy frecuente)"
label(data$paqc_8_1___unk) = "Lunes (choice=Unknown)"
label(data$paqc_8_1___ni) = "Lunes (choice=No information)"
label(data$paqc_8_1___inv) = "Lunes (choice=Invalid)"
label(data$paqc_8_1___nask) = "Lunes (choice=Not asked)"
label(data$paqc_8_2___0) = "Martes (choice=Ninguna)"
label(data$paqc_8_2___1) = "Martes (choice=A veces)"
label(data$paqc_8_2___2) = "Martes (choice=Regular)"
label(data$paqc_8_2___3) = "Martes (choice=Frecuente)"
label(data$paqc_8_2___4) = "Martes (choice=Muy frecuente)"
label(data$paqc_8_2___unk) = "Martes (choice=Unknown)"
label(data$paqc_8_2___ni) = "Martes (choice=No information)"
label(data$paqc_8_2___inv) = "Martes (choice=Invalid)"
label(data$paqc_8_2___nask) = "Martes (choice=Not asked)"
label(data$paqc_8_3___0) = "Miércoles (choice=Ninguna)"
label(data$paqc_8_3___1) = "Miércoles (choice=A veces)"
label(data$paqc_8_3___2) = "Miércoles (choice=Regular)"
label(data$paqc_8_3___3) = "Miércoles (choice=Frecuente)"
label(data$paqc_8_3___4) = "Miércoles (choice=Muy frecuente)"
label(data$paqc_8_3___unk) = "Miércoles (choice=Unknown)"
label(data$paqc_8_3___ni) = "Miércoles (choice=No information)"
label(data$paqc_8_3___inv) = "Miércoles (choice=Invalid)"
label(data$paqc_8_3___nask) = "Miércoles (choice=Not asked)"
label(data$paqc_8_4___0) = "Jueves (choice=Ninguna)"
label(data$paqc_8_4___1) = "Jueves (choice=A veces)"
label(data$paqc_8_4___2) = "Jueves (choice=Regular)"
label(data$paqc_8_4___3) = "Jueves (choice=Frecuente)"
label(data$paqc_8_4___4) = "Jueves (choice=Muy frecuente)"
label(data$paqc_8_4___unk) = "Jueves (choice=Unknown)"
label(data$paqc_8_4___ni) = "Jueves (choice=No information)"
label(data$paqc_8_4___inv) = "Jueves (choice=Invalid)"
label(data$paqc_8_4___nask) = "Jueves (choice=Not asked)"
label(data$paqc_8_5___0) = "Viernes (choice=Ninguna)"
label(data$paqc_8_5___1) = "Viernes (choice=A veces)"
label(data$paqc_8_5___2) = "Viernes (choice=Regular)"
label(data$paqc_8_5___3) = "Viernes (choice=Frecuente)"
label(data$paqc_8_5___4) = "Viernes (choice=Muy frecuente)"
label(data$paqc_8_5___unk) = "Viernes (choice=Unknown)"
label(data$paqc_8_5___ni) = "Viernes (choice=No information)"
label(data$paqc_8_5___inv) = "Viernes (choice=Invalid)"
label(data$paqc_8_5___nask) = "Viernes (choice=Not asked)"
label(data$paqc_8_6___0) = "Sábado (choice=Ninguna)"
label(data$paqc_8_6___1) = "Sábado (choice=A veces)"
label(data$paqc_8_6___2) = "Sábado (choice=Regular)"
label(data$paqc_8_6___3) = "Sábado (choice=Frecuente)"
label(data$paqc_8_6___4) = "Sábado (choice=Muy frecuente)"
label(data$paqc_8_6___unk) = "Sábado (choice=Unknown)"
label(data$paqc_8_6___ni) = "Sábado (choice=No information)"
label(data$paqc_8_6___inv) = "Sábado (choice=Invalid)"
label(data$paqc_8_6___nask) = "Sábado (choice=Not asked)"
label(data$paqc_8_7___0) = "Domingo (choice=Ninguna)"
label(data$paqc_8_7___1) = "Domingo (choice=A veces)"
label(data$paqc_8_7___2) = "Domingo (choice=Regular)"
label(data$paqc_8_7___3) = "Domingo (choice=Frecuente)"
label(data$paqc_8_7___4) = "Domingo (choice=Muy frecuente)"
label(data$paqc_8_7___unk) = "Domingo (choice=Unknown)"
label(data$paqc_8_7___ni) = "Domingo (choice=No information)"
label(data$paqc_8_7___inv) = "Domingo (choice=Invalid)"
label(data$paqc_8_7___nask) = "Domingo (choice=Not asked)"
label(data$paqc_9) = "¿Estuviste enfermo(a) esta última semana o algo impidió que hicieras normalmente actividad física?"
label(data$paqc_9_1) = "Si marcó sí, especifique el motivo de enfermedad:"
label(data$encuestador_saludmental) = "Encuestador"
label(data$fecha_hora_saludmental) = "Fecha y hora (fin)"
label(data$comentario_saludmental) = "Comentario adicional"
label(data$cuestionario_adolescentes_salud_mental_complete) = "Complete?"
label(data$presion_atm) = "Presión atmosférica"
label(data$temperatura_ambiente) = "Temperatura ambiente"
label(data$humedad) = "Humedad relativa"
label(data$altitud) = "Altitud"
label(data$cirujia) = "¿Cirugía de ojo, corazón, pecho, pulmón, o abdominal en los últimos 3 meses?"
label(data$ataque_corazon) = "¿Un ataque al corazón en los últimos 3 meses?"
label(data$presion_espirometria) = "¿Presión arterial mayor que 180 (sistólico) / 120 (diastólico)?"
label(data$pulso_espirometria) = "¿Pulso mayor que 120 latidos/min?"
label(data$infeccion_respiratoria) = "¿Infección respiratoria en las últimas 2 semanas?"
label(data$broncodilatador_12h) = "¿Broncodilatador de acción prolongada en las últimas 12 horas?"
label(data$broncodilatador_4h) = "¿Broncodilatador de acción corta en las últimas 4 horas?"
label(data$fumo) = "¿Fumó en la última hora?"
label(data$fiebre) = "Fiebre"
label(data$tos) = "Tos"
label(data$dolor_garganta) = "Dolor de garganta"
label(data$flema) = "Flema"
label(data$escalofrios) = "Escalofríos"
label(data$dolor_cuerpo) = "Dolor de cuerpo"
label(data$fatiga) = "Fatiga"
label(data$dolor_cabeza) = "Dolor de cabeza"
label(data$congestion) = "Congestión nasal"
label(data$goteo) = "Goteo de nariz"
label(data$estornudos) = "Estornudos"
label(data$id_espirometro) = "ID de espirómetro"
label(data$espirometria) = "¿Realizada?"
label(data$fvc) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc) = "FEV1/FVC"
label(data$pef) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria) = "Error"
label(data$espirometria_aceptable) = "¿Aceptable?"
label(data$espirometria_2) = "¿Realizada?"
label(data$fvc_2) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_2) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_2) = "FEV1/FVC"
label(data$pef_2) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_2) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_2) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_2) = "Error"
label(data$espirometria_aceptable_2) = "¿Aceptable?"
label(data$espirometria_3) = "¿Realizada?"
label(data$fvc_3) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_3) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_3) = "FEV1/FVC"
label(data$pef_3) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_3) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_3) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_3) = "Error"
label(data$espirometria_aceptable_3) = "¿Aceptable?"
label(data$espirometria_4) = "¿Realizada?"
label(data$fvc_4) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_4) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_4) = "FEV1/FVC"
label(data$pef_4) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_4) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_4) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_4) = "Error"
label(data$espirometria_aceptable_4) = "¿Aceptable?"
label(data$espirometria_5) = "¿Realizada?"
label(data$fvc_5) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_5) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_5) = "FEV1/FVC"
label(data$pef_5) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_5) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_5) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_5) = "Error"
label(data$espirometria_aceptable_5) = "¿Aceptable?"
label(data$espirometria_6) = "¿Realizada?"
label(data$fvc_6) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_6) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_6) = "FEV1/FVC"
label(data$pef_6) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_6) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_6) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_6) = "Error"
label(data$espirometria_aceptable_6) = "¿Aceptable?"
label(data$espirometria_7) = "¿Realizada?"
label(data$fvc_7) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_7) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_7) = "FEV1/FVC"
label(data$pef_7) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_7) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_7) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_7) = "Error"
label(data$espirometria_aceptable_7) = "¿Aceptable?"
label(data$espirometria_8) = "¿Realizada?"
label(data$fvc_8) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_8) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_8) = "FEV1/FVC"
label(data$pef_8) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_8) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_8) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$error_espirometria_8) = "Error"
label(data$espirometria_aceptable_8) = "¿Aceptable?"
label(data$razon_detener) = "Razón para detenerse"
label(data$razon_otros) = "Si Otro (especifique)"
label(data$fecha_revision) = "Fecha de revisión"
label(data$revision_curvas) = "¿Hay al menos 3 curvas aceptables y 2 reproducibles? "
label(data$fvc_revision) = "Capacidad vital forzada (CVF o FVC)"
label(data$fev1_revision) = "Volumen espiratorio forzado en el primer segundo (VEF1 o FEV1)"
label(data$fev1_fvc_revision) = "FEV1/FVC"
label(data$pef_revision) = "Flujo espiratorio máximo (PEF o FEF)"
label(data$fev3_revision) = "Volumen espiratorio forzado en tres segundos (FEV3)"
label(data$fev6_revision) = "Volumen espiratorio forzado en seis segundos (FEV6)"
label(data$clasificacion_revision) = "Calificación: espirometría"
label(data$encuestador_6) = "Encuestador"
label(data$fecha_hora_6) = "Fecha y hora (fin)"
label(data$comentario_espirometria_6) = "Comentario adicional"
label(data$cuestionario_adolescentes_vi_espirometra_complete) = "Complete?"
label(data$formulario_final) = "¿Qué encuestador completó el formulario?"
label(data$fecha_hora_fin) = "Fecha y hora de fin"
label(data$fin_de_cuestionarios_complete) = "Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
mapping_redcap_event_name = c(
	"baseline_arm_1" = "Baseline",
	"visit_1_arm_1" = "Visit 1",
	"visit_2_arm_1" = "Visit 2",
	"visit_3_arm_1" = "Visit 3",
	"visit_4_arm_1" = "Visit 4"
)
data$redcap_event_name.factor = factor(data$redcap_event_name, levels = names(mapping_redcap_event_name), labels = mapping_redcap_event_name)

mapping_redcap_repeat_instrument = c(
	"",""
)
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument, levels = names(mapping_redcap_repeat_instrument), labels = mapping_redcap_repeat_instrument)

mapping_colegio_id = c(
	"2025A" = "Colegio Jorge Basadre - VMT",
	"2025B" = "Colegio Santísima Virgen de Chapi - Pachacamac",
	"2025C" = "Colegio 0028 Jesus y María - La Molina"
)
data$colegio_id.factor = factor(data$colegio_id, levels = names(mapping_colegio_id), labels = mapping_colegio_id)

mapping_numero_visita = c(
	"0" = "Tamizaje",
	"1" = "Basal (visita 1)",
	"2" = "Visita 2",
	"3" = "Visita 3",
	"4" = "Visita 4",
	"5" = "Visita 5"
)
data$numero_visita.factor = factor(data$numero_visita, levels = names(mapping_numero_visita), labels = mapping_numero_visita)

mapping_consentimiento_1 = c(
	"0" = "No",
	"1" = "Sí"
)
data$consentimiento_1.factor = factor(data$consentimiento_1, levels = names(mapping_consentimiento_1), labels = mapping_consentimiento_1)

mapping_consentimiento_2 = c(
	"0" = "No",
	"1" = "Sí"
)
data$consentimiento_2.factor = factor(data$consentimiento_2, levels = names(mapping_consentimiento_2), labels = mapping_consentimiento_2)

mapping_consenti_relacion = c(
	"1" = "madre",
	"2" = "padre",
	"3" = "otro (especificar) {consenti_relacion_otro}"
)
data$consenti_relacion.factor = factor(data$consenti_relacion, levels = names(mapping_consenti_relacion), labels = mapping_consenti_relacion)

mapping_asentimiento_1 = c(
	"0" = "No",
	"1" = "Sí"
)
data$asentimiento_1.factor = factor(data$asentimiento_1, levels = names(mapping_asentimiento_1), labels = mapping_asentimiento_1)

mapping_asentimiento_2 = c(
	"0" = "No",
	"1" = "Sí"
)
data$asentimiento_2.factor = factor(data$asentimiento_2, levels = names(mapping_asentimiento_2), labels = mapping_asentimiento_2)

mapping_consent_asent_investig = c(
	"0" = "No",
	"1" = "Sí"
)
data$consent_asent_investig.factor = factor(data$consent_asent_investig, levels = names(mapping_consent_asent_investig), labels = mapping_consent_asent_investig)

mapping_cuestionario_adolescentes_0_consent_asent_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_0_consent_asent_complete.factor = factor(data$cuestionario_adolescentes_0_consent_asent_complete, levels = names(mapping_cuestionario_adolescentes_0_consent_asent_complete), labels = mapping_cuestionario_adolescentes_0_consent_asent_complete)

mapping_pariente_del_infante = c(
	"1" = "Madre",
	"2" = "Padre",
	"3" = "Otro pariente (especifique): {pariente_del_infante_2}"
)
data$pariente_del_infante.factor = factor(data$pariente_del_infante, levels = names(mapping_pariente_del_infante), labels = mapping_pariente_del_infante)

mapping_estado_civil_pariente = c(
	"1" = "Soltero(a)",
	"2" = "Casado(a)",
	"3" = "Conviviente",
	"4" = "Separado(a)",
	"5" = "Divorciado(a)",
	"6" = "Viudo(a)",
	"99" = "Prefiero no responder"
)
data$estado_civil_pariente.factor = factor(data$estado_civil_pariente, levels = names(mapping_estado_civil_pariente), labels = mapping_estado_civil_pariente)

mapping_estad_civil_pariente = c(
	"1" = "Vive con el padre/madre del niño(a)",
	"2" = "Vive con otra pareja",
	"3" = "No vive con su pareja, pero mantiene una relación (por ejemplo, su pareja vive en otra casa o en el extranjero)",
	"4" = "No vive con una pareja y no tiene una relación",
	"99" = "Prefiere no responder"
)
data$estad_civil_pariente.factor = factor(data$estad_civil_pariente, levels = names(mapping_estad_civil_pariente), labels = mapping_estad_civil_pariente)

mapping_nivel_educativo_pariente = c(
	"1" = "Inicial",
	"2" = "Primaria",
	"3" = "Secundaria",
	"4" = "Técnica",
	"5" = "Universitaria"
)
data$nivel_educativo_pariente.factor = factor(data$nivel_educativo_pariente, levels = names(mapping_nivel_educativo_pariente), labels = mapping_nivel_educativo_pariente)

mapping_situacion_laboral_pariente = c(
	"1" = "Trabaja actualmente (empleada/o o independiente)",
	"2" = "Desempleada/o",
	"3" = "Estudiante",
	"4" = "Ama/o de casa o se dedica a labores del hogar",
	"5" = "Jubilada/o o pensionista",
	"6" = "Persona con discapacidad o en rehabilitación",
	"7" = "Militar o miembro de las fuerzas armadas/policía",
	"8" = "Otra, especifique: {laboral_pariente_1}",
	"99" = "Prefiere no responder"
)
data$situacion_laboral_pariente.factor = factor(data$situacion_laboral_pariente, levels = names(mapping_situacion_laboral_pariente), labels = mapping_situacion_laboral_pariente)

mapping_sit_economica_1 = c(
	"1" = "Viven con comodidad",
	"2" = "Les alcanza bien",
	"3" = "Se las arreglan con lo que tienen",
	"4" = "Les resulta algo difícil cubrir los gastos",
	"5" = "Les resulta muy difícil cubrir los gastos",
	"99" = "Prefiere no responder"
)
data$sit_economica_1.factor = factor(data$sit_economica_1, levels = names(mapping_sit_economica_1), labels = mapping_sit_economica_1)

mapping_sit_economica_2 = c(
	"1" = "Mejor que antes",
	"2" = "Peor que antes",
	"3" = "Más o menos igual",
	"99" = "Prefiere no responder"
)
data$sit_economica_2.factor = factor(data$sit_economica_2, levels = names(mapping_sit_economica_2), labels = mapping_sit_economica_2)

mapping_sit_economica_3 = c(
	"1" = "Menos de S/. 1130",
	"2" = "Entre S/.1131 y S/.2260",
	"3" = "Entre S/. 2261 y S/. 3390",
	"4" = "Entre S/. 3391 y S/. 4520",
	"5" = "Más de 4521",
	"99" = "Prefiere no responder"
)
data$sit_economica_3.factor = factor(data$sit_economica_3, levels = names(mapping_sit_economica_3), labels = mapping_sit_economica_3)

mapping_seguro_de_salud_adolescente = c(
	"1" = "SIS",
	"2" = "EsSalud",
	"3" = "Privado"
)
data$seguro_de_salud_adolescente.factor = factor(data$seguro_de_salud_adolescente, levels = names(mapping_seguro_de_salud_adolescente), labels = mapping_seguro_de_salud_adolescente)

mapping_orden_del_hijo = c(
	"1" = "Primer hijo(a)",
	"2" = "Segundo hijo(a)",
	"3" = "Tercer hijo(a)",
	"4" = "Cuarto hijo(a)",
	"5" = "Quinto hijo(a)",
	"6" = "Sexto hijo(a)",
	"7" = "Más de seis hijos(as)"
)
data$orden_del_hijo.factor = factor(data$orden_del_hijo, levels = names(mapping_orden_del_hijo), labels = mapping_orden_del_hijo)

mapping_lactancia_materna = c(
	"1" = "Sí",
	"0" = "No"
)
data$lactancia_materna.factor = factor(data$lactancia_materna, levels = names(mapping_lactancia_materna), labels = mapping_lactancia_materna)

mapping_lactancia_materna_2 = c(
	"1" = "Meses",
	"99" = "No recuerda"
)
data$lactancia_materna_2.factor = factor(data$lactancia_materna_2, levels = names(mapping_lactancia_materna_2), labels = mapping_lactancia_materna_2)

mapping_lactancia_materna_3 = c(
	"1" = "Meses",
	"2" = "Nunca tomó fórmula",
	"99" = "No recuerda"
)
data$lactancia_materna_3.factor = factor(data$lactancia_materna_3, levels = names(mapping_lactancia_materna_3), labels = mapping_lactancia_materna_3)

mapping_lactancia_materna_4 = c(
	"1" = "Meses",
	"99" = "No recuerda"
)
data$lactancia_materna_4.factor = factor(data$lactancia_materna_4, levels = names(mapping_lactancia_materna_4), labels = mapping_lactancia_materna_4)

mapping_hospitalizado_nino_nacer = c(
	"1" = "Sí",
	"0" = "No"
)
data$hospitalizado_nino_nacer.factor = factor(data$hospitalizado_nino_nacer, levels = names(mapping_hospitalizado_nino_nacer), labels = mapping_hospitalizado_nino_nacer)

mapping_enf_bajopeso_prematuro = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_bajopeso_prematuro.factor = factor(data$enf_bajopeso_prematuro, levels = names(mapping_enf_bajopeso_prematuro), labels = mapping_enf_bajopeso_prematuro)

mapping_enf_macrosomia = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_macrosomia.factor = factor(data$enf_macrosomia, levels = names(mapping_enf_macrosomia), labels = mapping_enf_macrosomia)

mapping_enf_pulmonares___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___1.factor = factor(data$enf_pulmonares___1, levels = names(mapping_enf_pulmonares___1), labels = mapping_enf_pulmonares___1)

mapping_enf_pulmonares___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___2.factor = factor(data$enf_pulmonares___2, levels = names(mapping_enf_pulmonares___2), labels = mapping_enf_pulmonares___2)

mapping_enf_pulmonares___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___3.factor = factor(data$enf_pulmonares___3, levels = names(mapping_enf_pulmonares___3), labels = mapping_enf_pulmonares___3)

mapping_enf_pulmonares___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___4.factor = factor(data$enf_pulmonares___4, levels = names(mapping_enf_pulmonares___4), labels = mapping_enf_pulmonares___4)

mapping_enf_pulmonares___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___0.factor = factor(data$enf_pulmonares___0, levels = names(mapping_enf_pulmonares___0), labels = mapping_enf_pulmonares___0)

mapping_enf_pulmonares___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___unk.factor = factor(data$enf_pulmonares___unk, levels = names(mapping_enf_pulmonares___unk), labels = mapping_enf_pulmonares___unk)

mapping_enf_pulmonares___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___ni.factor = factor(data$enf_pulmonares___ni, levels = names(mapping_enf_pulmonares___ni), labels = mapping_enf_pulmonares___ni)

mapping_enf_pulmonares___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___inv.factor = factor(data$enf_pulmonares___inv, levels = names(mapping_enf_pulmonares___inv), labels = mapping_enf_pulmonares___inv)

mapping_enf_pulmonares___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___nask.factor = factor(data$enf_pulmonares___nask, levels = names(mapping_enf_pulmonares___nask), labels = mapping_enf_pulmonares___nask)

mapping_enf_dm1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_dm1.factor = factor(data$enf_dm1, levels = names(mapping_enf_dm1), labels = mapping_enf_dm1)

mapping_enf_resit_insulina = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_resit_insulina.factor = factor(data$enf_resit_insulina, levels = names(mapping_enf_resit_insulina), labels = mapping_enf_resit_insulina)

mapping_enf_dislipidemias = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_dislipidemias.factor = factor(data$enf_dislipidemias, levels = names(mapping_enf_dislipidemias), labels = mapping_enf_dislipidemias)

mapping_inf_respirat_recurrentes = c(
	"1" = "Sí",
	"0" = "No"
)
data$inf_respirat_recurrentes.factor = factor(data$inf_respirat_recurrentes, levels = names(mapping_inf_respirat_recurrentes), labels = mapping_inf_respirat_recurrentes)

mapping_enf_medicamentos_cronicos = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_medicamentos_cronicos.factor = factor(data$enf_medicamentos_cronicos, levels = names(mapping_enf_medicamentos_cronicos), labels = mapping_enf_medicamentos_cronicos)

mapping_hospita_previas = c(
	"1" = "Sí",
	"0" = "No"
)
data$hospita_previas.factor = factor(data$hospita_previas, levels = names(mapping_hospita_previas), labels = mapping_hospita_previas)

mapping_vacunas = c(
	"1" = "Sí",
	"0" = "No"
)
data$vacunas.factor = factor(data$vacunas, levels = names(mapping_vacunas), labels = mapping_vacunas)

mapping_ant_familiar_pulmon = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_familiar_pulmon.factor = factor(data$ant_familiar_pulmon, levels = names(mapping_ant_familiar_pulmon), labels = mapping_ant_familiar_pulmon)

mapping_ant_diabetes2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_diabetes2.factor = factor(data$ant_diabetes2, levels = names(mapping_ant_diabetes2), labels = mapping_ant_diabetes2)

mapping_ant_hta = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_hta.factor = factor(data$ant_hta, levels = names(mapping_ant_hta), labels = mapping_ant_hta)

mapping_ant_fenf_cardiov = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_fenf_cardiov.factor = factor(data$ant_fenf_cardiov, levels = names(mapping_ant_fenf_cardiov), labels = mapping_ant_fenf_cardiov)

mapping_ant_dislipidemias = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_dislipidemias.factor = factor(data$ant_dislipidemias, levels = names(mapping_ant_dislipidemias), labels = mapping_ant_dislipidemias)

mapping_ant_cancer = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_cancer.factor = factor(data$ant_cancer, levels = names(mapping_ant_cancer), labels = mapping_ant_cancer)

mapping_ant_obesidad = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_obesidad.factor = factor(data$ant_obesidad, levels = names(mapping_ant_obesidad), labels = mapping_ant_obesidad)

mapping_ant_familiar_otros = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_familiar_otros.factor = factor(data$ant_familiar_otros, levels = names(mapping_ant_familiar_otros), labels = mapping_ant_familiar_otros)

mapping_ansiedad_1 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$ansiedad_1.factor = factor(data$ansiedad_1, levels = names(mapping_ansiedad_1), labels = mapping_ansiedad_1)

mapping_ansiedad_2 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$ansiedad_2.factor = factor(data$ansiedad_2, levels = names(mapping_ansiedad_2), labels = mapping_ansiedad_2)

mapping_depresion_1 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$depresion_1.factor = factor(data$depresion_1, levels = names(mapping_depresion_1), labels = mapping_depresion_1)

mapping_depresion_2 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$depresion_2.factor = factor(data$depresion_2, levels = names(mapping_depresion_2), labels = mapping_depresion_2)

mapping_cond_agresiv_1 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_1.factor = factor(data$cond_agresiv_1, levels = names(mapping_cond_agresiv_1), labels = mapping_cond_agresiv_1)

mapping_cond_agresiv_2 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_2.factor = factor(data$cond_agresiv_2, levels = names(mapping_cond_agresiv_2), labels = mapping_cond_agresiv_2)

mapping_cond_agresiv_3 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_3.factor = factor(data$cond_agresiv_3, levels = names(mapping_cond_agresiv_3), labels = mapping_cond_agresiv_3)

mapping_cond_agresiv_4 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_4.factor = factor(data$cond_agresiv_4, levels = names(mapping_cond_agresiv_4), labels = mapping_cond_agresiv_4)

mapping_cond_agresiv_5 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_5.factor = factor(data$cond_agresiv_5, levels = names(mapping_cond_agresiv_5), labels = mapping_cond_agresiv_5)

mapping_cond_agresiv_6 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_6.factor = factor(data$cond_agresiv_6, levels = names(mapping_cond_agresiv_6), labels = mapping_cond_agresiv_6)

mapping_cond_agresiv_7 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_7.factor = factor(data$cond_agresiv_7, levels = names(mapping_cond_agresiv_7), labels = mapping_cond_agresiv_7)

mapping_cond_agresiv_8 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_8.factor = factor(data$cond_agresiv_8, levels = names(mapping_cond_agresiv_8), labels = mapping_cond_agresiv_8)

mapping_cond_agresiv_9 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_9.factor = factor(data$cond_agresiv_9, levels = names(mapping_cond_agresiv_9), labels = mapping_cond_agresiv_9)

mapping_cuestionario_padres_sociodemografico_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_padres_sociodemografico_complete.factor = factor(data$cuestionario_padres_sociodemografico_complete, levels = names(mapping_cuestionario_padres_sociodemografico_complete), labels = mapping_cuestionario_padres_sociodemografico_complete)

mapping_exposoma_3 = c(
	"1" = "Sí salió de casa ayer",
	"0" = "No salió de casa ayer"
)
data$exposoma_3.factor = factor(data$exposoma_3, levels = names(mapping_exposoma_3), labels = mapping_exposoma_3)

mapping_exposoma_3_lugares___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___1.factor = factor(data$exposoma_3_lugares___1, levels = names(mapping_exposoma_3_lugares___1), labels = mapping_exposoma_3_lugares___1)

mapping_exposoma_3_lugares___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___2.factor = factor(data$exposoma_3_lugares___2, levels = names(mapping_exposoma_3_lugares___2), labels = mapping_exposoma_3_lugares___2)

mapping_exposoma_3_lugares___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___3.factor = factor(data$exposoma_3_lugares___3, levels = names(mapping_exposoma_3_lugares___3), labels = mapping_exposoma_3_lugares___3)

mapping_exposoma_3_lugares___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___unk.factor = factor(data$exposoma_3_lugares___unk, levels = names(mapping_exposoma_3_lugares___unk), labels = mapping_exposoma_3_lugares___unk)

mapping_exposoma_3_lugares___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___ni.factor = factor(data$exposoma_3_lugares___ni, levels = names(mapping_exposoma_3_lugares___ni), labels = mapping_exposoma_3_lugares___ni)

mapping_exposoma_3_lugares___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___inv.factor = factor(data$exposoma_3_lugares___inv, levels = names(mapping_exposoma_3_lugares___inv), labels = mapping_exposoma_3_lugares___inv)

mapping_exposoma_3_lugares___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___nask.factor = factor(data$exposoma_3_lugares___nask, levels = names(mapping_exposoma_3_lugares___nask), labels = mapping_exposoma_3_lugares___nask)

mapping_exposoma_3_lugar1_d = c(
	"1" = "Caminando",
	"2" = "Bicicleta",
	"3" = "Bus/Combi/Metropolitano",
	"4" = "Carro/Taxi/Movilidad",
	"5" = "Moto/Mototaxi",
	"6" = "Otro (especifique):"
)
data$exposoma_3_lugar1_d.factor = factor(data$exposoma_3_lugar1_d, levels = names(mapping_exposoma_3_lugar1_d), labels = mapping_exposoma_3_lugar1_d)

mapping_exposoma_3_lugar2_d = c(
	"1" = "Caminando",
	"2" = "Bicicleta",
	"3" = "Bus/Combi/Metropolitano",
	"4" = "Carro/Taxi/Movilidad",
	"5" = "Moto/Mototaxi",
	"6" = "Otro (especifique):"
)
data$exposoma_3_lugar2_d.factor = factor(data$exposoma_3_lugar2_d, levels = names(mapping_exposoma_3_lugar2_d), labels = mapping_exposoma_3_lugar2_d)

mapping_exposoma_3_lugar3_d = c(
	"1" = "Caminando",
	"2" = "Bicicleta",
	"3" = "Bus/Combi/Metropolitano",
	"4" = "Carro/Taxi/Movilidad",
	"5" = "Moto/Mototaxi",
	"6" = "Otro (especifique):"
)
data$exposoma_3_lugar3_d.factor = factor(data$exposoma_3_lugar3_d, levels = names(mapping_exposoma_3_lugar3_d), labels = mapping_exposoma_3_lugar3_d)

mapping_exposoma_14___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___1.factor = factor(data$exposoma_14___1, levels = names(mapping_exposoma_14___1), labels = mapping_exposoma_14___1)

mapping_exposoma_14___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___2.factor = factor(data$exposoma_14___2, levels = names(mapping_exposoma_14___2), labels = mapping_exposoma_14___2)

mapping_exposoma_14___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___3.factor = factor(data$exposoma_14___3, levels = names(mapping_exposoma_14___3), labels = mapping_exposoma_14___3)

mapping_exposoma_14___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___4.factor = factor(data$exposoma_14___4, levels = names(mapping_exposoma_14___4), labels = mapping_exposoma_14___4)

mapping_exposoma_14___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___5.factor = factor(data$exposoma_14___5, levels = names(mapping_exposoma_14___5), labels = mapping_exposoma_14___5)

mapping_exposoma_14___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___unk.factor = factor(data$exposoma_14___unk, levels = names(mapping_exposoma_14___unk), labels = mapping_exposoma_14___unk)

mapping_exposoma_14___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___ni.factor = factor(data$exposoma_14___ni, levels = names(mapping_exposoma_14___ni), labels = mapping_exposoma_14___ni)

mapping_exposoma_14___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___inv.factor = factor(data$exposoma_14___inv, levels = names(mapping_exposoma_14___inv), labels = mapping_exposoma_14___inv)

mapping_exposoma_14___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___nask.factor = factor(data$exposoma_14___nask, levels = names(mapping_exposoma_14___nask), labels = mapping_exposoma_14___nask)

mapping_espacio_verde_seguro = c(
	"0" = "No",
	"1" = "Sí, totalmente",
	"2" = "Parcialmente"
)
data$espacio_verde_seguro.factor = factor(data$espacio_verde_seguro, levels = names(mapping_espacio_verde_seguro), labels = mapping_espacio_verde_seguro)

mapping_exposoma_15_1 = c(
	"4" = "Totalmente de acuerdo",
	"3" = "De acuerdo",
	"2" = "Ni de acuerdo ni en desacuerdo",
	"1" = "En desacuerdo",
	"0" = "Totalmente en desacuerdo"
)
data$exposoma_15_1.factor = factor(data$exposoma_15_1, levels = names(mapping_exposoma_15_1), labels = mapping_exposoma_15_1)

mapping_exposoma_15_2 = c(
	"4" = "Totalmente de acuerdo",
	"3" = "De acuerdo",
	"2" = "Ni de acuerdo ni en desacuerdo",
	"1" = "En desacuerdo",
	"0" = "Totalmente en desacuerdo"
)
data$exposoma_15_2.factor = factor(data$exposoma_15_2, levels = names(mapping_exposoma_15_2), labels = mapping_exposoma_15_2)

mapping_exposoma_15_3 = c(
	"4" = "Totalmente de acuerdo",
	"3" = "De acuerdo",
	"2" = "Ni de acuerdo ni en desacuerdo",
	"1" = "En desacuerdo",
	"0" = "Totalmente en desacuerdo"
)
data$exposoma_15_3.factor = factor(data$exposoma_15_3, levels = names(mapping_exposoma_15_3), labels = mapping_exposoma_15_3)

mapping_exposoma_16 = c(
	"0" = "No fumadora, nunca he fumado",
	"1" = "Fumé anteriormente, pero ya no fumo",
	"2" = "Fumo ocasionalmente (menos de una vez por semana)",
	"3" = "Fumo regularmente (una o más veces por semana)"
)
data$exposoma_16.factor = factor(data$exposoma_16, levels = names(mapping_exposoma_16), labels = mapping_exposoma_16)

mapping_exposoma_17 = c(
	"1" = "Sí",
	"0" = "No"
)
data$exposoma_17.factor = factor(data$exposoma_17, levels = names(mapping_exposoma_17), labels = mapping_exposoma_17)

mapping_exposoma_17_1 = c(
	"1" = "Usted",
	"2" = "Su pareja",
	"3" = "Otra persona del hogar (por ejemplo, abuelo, tío, hermano)"
)
data$exposoma_17_1.factor = factor(data$exposoma_17_1, levels = names(mapping_exposoma_17_1), labels = mapping_exposoma_17_1)

mapping_exposoma_18 = c(
	"1" = "Yes",
	"0" = "No"
)
data$exposoma_18.factor = factor(data$exposoma_18, levels = names(mapping_exposoma_18), labels = mapping_exposoma_18)

mapping_exposoma_18_1 = c(
	"1" = "Una vez",
	"2" = "2 - 3 veces",
	"3" = "Más de 3 veces"
)
data$exposoma_18_1.factor = factor(data$exposoma_18_1, levels = names(mapping_exposoma_18_1), labels = mapping_exposoma_18_1)

mapping_exposoma_19 = c(
	"0" = "No",
	"1" = "Sí",
	"99" = "No sabe / No responde"
)
data$exposoma_19.factor = factor(data$exposoma_19, levels = names(mapping_exposoma_19), labels = mapping_exposoma_19)

mapping_exposoma_20___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___1.factor = factor(data$exposoma_20___1, levels = names(mapping_exposoma_20___1), labels = mapping_exposoma_20___1)

mapping_exposoma_20___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___2.factor = factor(data$exposoma_20___2, levels = names(mapping_exposoma_20___2), labels = mapping_exposoma_20___2)

mapping_exposoma_20___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___3.factor = factor(data$exposoma_20___3, levels = names(mapping_exposoma_20___3), labels = mapping_exposoma_20___3)

mapping_exposoma_20___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___4.factor = factor(data$exposoma_20___4, levels = names(mapping_exposoma_20___4), labels = mapping_exposoma_20___4)

mapping_exposoma_20___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___5.factor = factor(data$exposoma_20___5, levels = names(mapping_exposoma_20___5), labels = mapping_exposoma_20___5)

mapping_exposoma_20___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___unk.factor = factor(data$exposoma_20___unk, levels = names(mapping_exposoma_20___unk), labels = mapping_exposoma_20___unk)

mapping_exposoma_20___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___ni.factor = factor(data$exposoma_20___ni, levels = names(mapping_exposoma_20___ni), labels = mapping_exposoma_20___ni)

mapping_exposoma_20___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___inv.factor = factor(data$exposoma_20___inv, levels = names(mapping_exposoma_20___inv), labels = mapping_exposoma_20___inv)

mapping_exposoma_20___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___nask.factor = factor(data$exposoma_20___nask, levels = names(mapping_exposoma_20___nask), labels = mapping_exposoma_20___nask)

mapping_exposoma_21 = c(
	"1" = "Menos de 50 metros",
	"2" = "Entre 50 y 100 metros",
	"3" = "Más de 100 metros"
)
data$exposoma_21.factor = factor(data$exposoma_21, levels = names(mapping_exposoma_21), labels = mapping_exposoma_21)

mapping_exposoma_22 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe / No responde"
)
data$exposoma_22.factor = factor(data$exposoma_22, levels = names(mapping_exposoma_22), labels = mapping_exposoma_22)

mapping_exposoma_23 = c(
	"1" = "Todos los días",
	"2" = "Solo los fines de semana",
	"3" = "Solo los días de semana",
	"4" = "de 1 a 3 días",
	"5" = "de 4 a 6 días"
)
data$exposoma_23.factor = factor(data$exposoma_23, levels = names(mapping_exposoma_23), labels = mapping_exposoma_23)

mapping_exposoma_24 = c(
	"1" = "En la madrugada (00:00-06:00)",
	"2" = "En la mañana (06:00-12:00)",
	"3" = "En la tarde (12:00-18:00)",
	"4" = "En la noche (18:00-00:00)",
	"99" = "No sabe / No observa"
)
data$exposoma_24.factor = factor(data$exposoma_24, levels = names(mapping_exposoma_24), labels = mapping_exposoma_24)

mapping_exposoma_25 = c(
	"1" = "Termina a las 2 horas",
	"2" = "Termina entre 3 o 6 horas después de haber iniciado",
	"3" = "Termina entre 7 o 12  horas después de haber iniciado",
	"4" = "Termina entre 13 o 18  horas después de haber iniciado",
	"5" = "Permanece todo el día",
	"99" = "No sabe / No observa"
)
data$exposoma_25.factor = factor(data$exposoma_25, levels = names(mapping_exposoma_25), labels = mapping_exposoma_25)

mapping_exposoma_26 = c(
	"1" = "Blanco o gris claro",
	"2" = "Gris oscuro o negro",
	"3" = "Marrón o amarillento",
	"4" = "Otro color {exposoma_26_otro}",
	"99" = "No sabe / No observa"
)
data$exposoma_26.factor = factor(data$exposoma_26, levels = names(mapping_exposoma_26), labels = mapping_exposoma_26)

mapping_exposoma_27 = c(
	"1" = "Sí",
	"2" = "A veces",
	"0" = "No"
)
data$exposoma_27.factor = factor(data$exposoma_27, levels = names(mapping_exposoma_27), labels = mapping_exposoma_27)

mapping_exposoma_28 = c(
	"1" = "A quemado o plástico",
	"2" = "A combustible o aceite",
	"3" = "A productos químicos o solventes",
	"4" = "A basura o residuos (ejemplo: huevo podrido)",
	"5" = "Otro (especifique): {exposoma_28_otro}"
)
data$exposoma_28.factor = factor(data$exposoma_28, levels = names(mapping_exposoma_28), labels = mapping_exposoma_28)

mapping_humo_impacto = c(
	"1" = "Sí, mucho",
	"2" = "Algo",
	"3" = "Poco",
	"0" = "No",
	"99" = "No sabe / No responde"
)
data$humo_impacto.factor = factor(data$humo_impacto, levels = names(mapping_humo_impacto), labels = mapping_humo_impacto)

mapping_cuestionario_de_padres_exposoma_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_de_padres_exposoma_complete.factor = factor(data$cuestionario_de_padres_exposoma_complete, levels = names(mapping_cuestionario_de_padres_exposoma_complete), labels = mapping_cuestionario_de_padres_exposoma_complete)

mapping_entorno_hogar_3 = c(
	"1" = "Una casa para una sola familia",
	"2" = "Una casa compartida con otras familias",
	"3" = "Un departamento en edificio",
	"4" = "Un cuarto en vivienda o quinta",
	"5" = "Una vivienda improvisada (choza, cabaña, vivienda temporal)",
	"6" = "Otro tipo de vivienda (especifique):_______________________________"
)
data$entorno_hogar_3.factor = factor(data$entorno_hogar_3, levels = names(mapping_entorno_hogar_3), labels = mapping_entorno_hogar_3)

mapping_sala_cortina = c(
	"1" = "Sí",
	"0" = "No"
)
data$sala_cortina.factor = factor(data$sala_cortina, levels = names(mapping_sala_cortina), labels = mapping_sala_cortina)

mapping_sala_alfombra_fija = c(
	"1" = "Sí",
	"0" = "No"
)
data$sala_alfombra_fija.factor = factor(data$sala_alfombra_fija, levels = names(mapping_sala_alfombra_fija), labels = mapping_sala_alfombra_fija)

mapping_sala_tapete = c(
	"1" = "Sí",
	"0" = "No"
)
data$sala_tapete.factor = factor(data$sala_tapete, levels = names(mapping_sala_tapete), labels = mapping_sala_tapete)

mapping_dormitorio_hijo_cortina = c(
	"1" = "Sí",
	"0" = "No"
)
data$dormitorio_hijo_cortina.factor = factor(data$dormitorio_hijo_cortina, levels = names(mapping_dormitorio_hijo_cortina), labels = mapping_dormitorio_hijo_cortina)

mapping_dormitorio_hijo_alfombra = c(
	"1" = "Sí",
	"0" = "No"
)
data$dormitorio_hijo_alfombra.factor = factor(data$dormitorio_hijo_alfombra, levels = names(mapping_dormitorio_hijo_alfombra), labels = mapping_dormitorio_hijo_alfombra)

mapping_dormitorio_hijo_tapete = c(
	"1" = "Sí",
	"0" = "No"
)
data$dormitorio_hijo_tapete.factor = factor(data$dormitorio_hijo_tapete, levels = names(mapping_dormitorio_hijo_tapete), labels = mapping_dormitorio_hijo_tapete)

mapping_bano_cortina = c(
	"1" = "Sí",
	"0" = "No"
)
data$bano_cortina.factor = factor(data$bano_cortina, levels = names(mapping_bano_cortina), labels = mapping_bano_cortina)

mapping_bano_alfombra = c(
	"1" = "Sí",
	"0" = "No"
)
data$bano_alfombra.factor = factor(data$bano_alfombra, levels = names(mapping_bano_alfombra), labels = mapping_bano_alfombra)

mapping_bano_tapete = c(
	"1" = "Sí",
	"0" = "No"
)
data$bano_tapete.factor = factor(data$bano_tapete, levels = names(mapping_bano_tapete), labels = mapping_bano_tapete)

mapping_sala_forma_limpieza = c(
	"1" = "Barrido",
	"2" = "Aspiradora",
	"3" = "Lavado manual",
	"4" = "Lavado profesional"
)
data$sala_forma_limpieza.factor = factor(data$sala_forma_limpieza, levels = names(mapping_sala_forma_limpieza), labels = mapping_sala_forma_limpieza)

mapping_dormitorio_forma_limpieza = c(
	"1" = "Barrido",
	"2" = "Aspiradora",
	"3" = "Lavado manual",
	"4" = "Lavado profesional"
)
data$dormitorio_forma_limpieza.factor = factor(data$dormitorio_forma_limpieza, levels = names(mapping_dormitorio_forma_limpieza), labels = mapping_dormitorio_forma_limpieza)

mapping_bano_forma_limpieza = c(
	"1" = "Barrido",
	"2" = "Aspiradora",
	"3" = "Lavado manual",
	"4" = "Lavado profesional"
)
data$bano_forma_limpieza.factor = factor(data$bano_forma_limpieza, levels = names(mapping_bano_forma_limpieza), labels = mapping_bano_forma_limpieza)

mapping_entorno_hogar_7 = c(
	"1" = "Ladrillo o bloque de cemento",
	"2" = "Adobe (barro y paja)",
	"3" = "Tapia (barro apisonado)",
	"4" = "Piedra con barro",
	"5" = "Piedra con cemento",
	"6" = "Madera",
	"7" = "Quincha (caña con barro)",
	"8" = "Estera (caña o palma tejida)",
	"9" = "Material prefabricado (paneles, triplay, etc.)",
	"10" = "Otro (especifique): {entorno_hogar_7_otro}"
)
data$entorno_hogar_7.factor = factor(data$entorno_hogar_7, levels = names(mapping_entorno_hogar_7), labels = mapping_entorno_hogar_7)

mapping_entorno_hogar_8_sala = c(
	"1" = "Exterior",
	"2" = "Interior",
	"0" = "Sin ventana"
)
data$entorno_hogar_8_sala.factor = factor(data$entorno_hogar_8_sala, levels = names(mapping_entorno_hogar_8_sala), labels = mapping_entorno_hogar_8_sala)

mapping_entorno_hogar_8_dormitorio = c(
	"1" = "Exterior",
	"2" = "Interior",
	"0" = "Sin ventana"
)
data$entorno_hogar_8_dormitorio.factor = factor(data$entorno_hogar_8_dormitorio, levels = names(mapping_entorno_hogar_8_dormitorio), labels = mapping_entorno_hogar_8_dormitorio)

mapping_entorno_hogar_8_banos = c(
	"1" = "Exterior",
	"2" = "Interior",
	"0" = "Sin ventana"
)
data$entorno_hogar_8_banos.factor = factor(data$entorno_hogar_8_banos, levels = names(mapping_entorno_hogar_8_banos), labels = mapping_entorno_hogar_8_banos)

mapping_entorno_hogar_9_frio = c(
	"0" = "Nunca",
	"1" = "< 30 min",
	"2" = "30 min a 2 h",
	"3" = ">3 h"
)
data$entorno_hogar_9_frio.factor = factor(data$entorno_hogar_9_frio, levels = names(mapping_entorno_hogar_9_frio), labels = mapping_entorno_hogar_9_frio)

mapping_entorno_hogar_9_calor = c(
	"0" = "Nunca",
	"1" = "< 30 min",
	"2" = "30 min a 2 h",
	"3" = ">3 h"
)
data$entorno_hogar_9_calor.factor = factor(data$entorno_hogar_9_calor, levels = names(mapping_entorno_hogar_9_calor), labels = mapping_entorno_hogar_9_calor)

mapping_entorno_hogar_10 = c(
	"0" = "Nada",
	"1" = "Poco",
	"2" = "Moderadamente",
	"3" = "Mucho"
)
data$entorno_hogar_10.factor = factor(data$entorno_hogar_10, levels = names(mapping_entorno_hogar_10), labels = mapping_entorno_hogar_10)

mapping_entorno_hogar_11 = c(
	"1" = "Hacia la calle o carretera",
	"2" = "Hacia un jardín o patio",
	"3" = "Hacia una vía férrea / tranvía / tren",
	"4" = "Otra vista, especifique: _____________________________"
)
data$entorno_hogar_11.factor = factor(data$entorno_hogar_11, levels = names(mapping_entorno_hogar_11), labels = mapping_entorno_hogar_11)

mapping_entorno_hogar_12_frio = c(
	"1" = "Abierta",
	"2" = "Entreabierta",
	"3" = "Cerrada"
)
data$entorno_hogar_12_frio.factor = factor(data$entorno_hogar_12_frio, levels = names(mapping_entorno_hogar_12_frio), labels = mapping_entorno_hogar_12_frio)

mapping_entorno_hogar_12_calor = c(
	"1" = "Abierta",
	"2" = "Entreabierta",
	"3" = "Cerrada"
)
data$entorno_hogar_12_calor.factor = factor(data$entorno_hogar_12_calor, levels = names(mapping_entorno_hogar_12_calor), labels = mapping_entorno_hogar_12_calor)

mapping_entorno_hogar_15 = c(
	"1" = "Espuma",
	"2" = "Resortes",
	"3" = "Látex",
	"4" = "Otro (especifique): ___________________________________"
)
data$entorno_hogar_15.factor = factor(data$entorno_hogar_15, levels = names(mapping_entorno_hogar_15), labels = mapping_entorno_hogar_15)

mapping_entorno_hogar_17 = c(
	"1" = "SÍ",
	"0" = "No --> (Si marcó No, obvie las siguientes preguntas acerca de las mascotas"
)
data$entorno_hogar_17.factor = factor(data$entorno_hogar_17, levels = names(mapping_entorno_hogar_17), labels = mapping_entorno_hogar_17)

mapping_entorno_hogar_17_gatos = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_gatos.factor = factor(data$entorno_hogar_17_gatos, levels = names(mapping_entorno_hogar_17_gatos), labels = mapping_entorno_hogar_17_gatos)

mapping_gato_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_1.factor = factor(data$gato_1, levels = names(mapping_gato_1), labels = mapping_gato_1)

mapping_gato_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_2.factor = factor(data$gato_2, levels = names(mapping_gato_2), labels = mapping_gato_2)

mapping_gato_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_3.factor = factor(data$gato_3, levels = names(mapping_gato_3), labels = mapping_gato_3)

mapping_gato_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_4.factor = factor(data$gato_4, levels = names(mapping_gato_4), labels = mapping_gato_4)

mapping_entorno_hogar_17_perros = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_perros.factor = factor(data$entorno_hogar_17_perros, levels = names(mapping_entorno_hogar_17_perros), labels = mapping_entorno_hogar_17_perros)

mapping_perro_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_1.factor = factor(data$perro_1, levels = names(mapping_perro_1), labels = mapping_perro_1)

mapping_perro_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_2.factor = factor(data$perro_2, levels = names(mapping_perro_2), labels = mapping_perro_2)

mapping_perro_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_3.factor = factor(data$perro_3, levels = names(mapping_perro_3), labels = mapping_perro_3)

mapping_perro_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_4.factor = factor(data$perro_4, levels = names(mapping_perro_4), labels = mapping_perro_4)

mapping_entorno_hogar_17_aves = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_aves.factor = factor(data$entorno_hogar_17_aves, levels = names(mapping_entorno_hogar_17_aves), labels = mapping_entorno_hogar_17_aves)

mapping_ave_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_1.factor = factor(data$ave_1, levels = names(mapping_ave_1), labels = mapping_ave_1)

mapping_ave_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_2.factor = factor(data$ave_2, levels = names(mapping_ave_2), labels = mapping_ave_2)

mapping_ave_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_3.factor = factor(data$ave_3, levels = names(mapping_ave_3), labels = mapping_ave_3)

mapping_ave_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_4.factor = factor(data$ave_4, levels = names(mapping_ave_4), labels = mapping_ave_4)

mapping_entorno_hogar_17_corral = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_corral.factor = factor(data$entorno_hogar_17_corral, levels = names(mapping_entorno_hogar_17_corral), labels = mapping_entorno_hogar_17_corral)

mapping_corral_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_1.factor = factor(data$corral_1, levels = names(mapping_corral_1), labels = mapping_corral_1)

mapping_corral_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_2.factor = factor(data$corral_2, levels = names(mapping_corral_2), labels = mapping_corral_2)

mapping_corral_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_3.factor = factor(data$corral_3, levels = names(mapping_corral_3), labels = mapping_corral_3)

mapping_corral_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_4.factor = factor(data$corral_4, levels = names(mapping_corral_4), labels = mapping_corral_4)

mapping_entorno_hogar_18_roedores = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_18_roedores.factor = factor(data$entorno_hogar_18_roedores, levels = names(mapping_entorno_hogar_18_roedores), labels = mapping_entorno_hogar_18_roedores)

mapping_entorno_cucarachas_18 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_cucarachas_18.factor = factor(data$entorno_cucarachas_18, levels = names(mapping_entorno_cucarachas_18), labels = mapping_entorno_cucarachas_18)

mapping_entorno_hogar_19 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_19.factor = factor(data$entorno_hogar_19, levels = names(mapping_entorno_hogar_19), labels = mapping_entorno_hogar_19)

mapping_entorno_hogar_20 = c(
	"1" = "Sí",
	"0" = "No → (Si marcó No, pase a la siguiente pregunta)"
)
data$entorno_hogar_20.factor = factor(data$entorno_hogar_20, levels = names(mapping_entorno_hogar_20), labels = mapping_entorno_hogar_20)

mapping_entorno_hogar_20_moho_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_1.factor = factor(data$entorno_hogar_20_moho_1, levels = names(mapping_entorno_hogar_20_moho_1), labels = mapping_entorno_hogar_20_moho_1)

mapping_entorno_hogar_20_moho_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_2.factor = factor(data$entorno_hogar_20_moho_2, levels = names(mapping_entorno_hogar_20_moho_2), labels = mapping_entorno_hogar_20_moho_2)

mapping_entorno_hogar_20_moho_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_3.factor = factor(data$entorno_hogar_20_moho_3, levels = names(mapping_entorno_hogar_20_moho_3), labels = mapping_entorno_hogar_20_moho_3)

mapping_entorno_hogar_20_moho_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_4.factor = factor(data$entorno_hogar_20_moho_4, levels = names(mapping_entorno_hogar_20_moho_4), labels = mapping_entorno_hogar_20_moho_4)

mapping_entorno_hogar_20_moho_5 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_5.factor = factor(data$entorno_hogar_20_moho_5, levels = names(mapping_entorno_hogar_20_moho_5), labels = mapping_entorno_hogar_20_moho_5)

mapping_entorno_hogar_22 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_22.factor = factor(data$entorno_hogar_22, levels = names(mapping_entorno_hogar_22), labels = mapping_entorno_hogar_22)

mapping_entorno_hogar_24 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_24.factor = factor(data$entorno_hogar_24, levels = names(mapping_entorno_hogar_24), labels = mapping_entorno_hogar_24)

mapping_entorno_hogar_25 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_25.factor = factor(data$entorno_hogar_25, levels = names(mapping_entorno_hogar_25), labels = mapping_entorno_hogar_25)

mapping_entorno_hogar_26 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_26.factor = factor(data$entorno_hogar_26, levels = names(mapping_entorno_hogar_26), labels = mapping_entorno_hogar_26)

mapping_entorno_hogar_27 = c(
	"1" = "Dentro de la vivienda (interior)",
	"2" = "Fuera de la vivienda (en el patio, corredor o ambiente separado)",
	"3" = "Compartida con otro uso (por ejemplo: cocina-comedor o cocina-dormitorio)"
)
data$entorno_hogar_27.factor = factor(data$entorno_hogar_27, levels = names(mapping_entorno_hogar_27), labels = mapping_entorno_hogar_27)

mapping_entorno_hogar_28 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_28.factor = factor(data$entorno_hogar_28, levels = names(mapping_entorno_hogar_28), labels = mapping_entorno_hogar_28)

mapping_entorno_hogar_29 = c(
	"1" = "Siempre",
	"2" = "A veces",
	"0" = "Nunca",
	"99" = "No aplica (no tiene extractor)"
)
data$entorno_hogar_29.factor = factor(data$entorno_hogar_29, levels = names(mapping_entorno_hogar_29), labels = mapping_entorno_hogar_29)

mapping_entorno_hogar_30 = c(
	"1" = "Gas natural (conexión domiciliaria)",
	"2" = "Gas licuado (balón de GLP)",
	"3" = "Eléctrica / de inducción",
	"4" = "Leña",
	"5" = "Carbón",
	"6" = "Otro (especifique): {entorno_hogar_30_1}"
)
data$entorno_hogar_30.factor = factor(data$entorno_hogar_30, levels = names(mapping_entorno_hogar_30), labels = mapping_entorno_hogar_30)

mapping_entorno_hogar_32_1 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_1.factor = factor(data$entorno_hogar_32_1, levels = names(mapping_entorno_hogar_32_1), labels = mapping_entorno_hogar_32_1)

mapping_entorno_hogar_32_2 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_2.factor = factor(data$entorno_hogar_32_2, levels = names(mapping_entorno_hogar_32_2), labels = mapping_entorno_hogar_32_2)

mapping_entorno_hogar_32_3 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_3.factor = factor(data$entorno_hogar_32_3, levels = names(mapping_entorno_hogar_32_3), labels = mapping_entorno_hogar_32_3)

mapping_entorno_hogar_32_4 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_4.factor = factor(data$entorno_hogar_32_4, levels = names(mapping_entorno_hogar_32_4), labels = mapping_entorno_hogar_32_4)

mapping_entorno_hogar_32_5 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_5.factor = factor(data$entorno_hogar_32_5, levels = names(mapping_entorno_hogar_32_5), labels = mapping_entorno_hogar_32_5)

mapping_entorno_hogar_32_6 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_6.factor = factor(data$entorno_hogar_32_6, levels = names(mapping_entorno_hogar_32_6), labels = mapping_entorno_hogar_32_6)

mapping_entorno_hogar_32_7 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_7.factor = factor(data$entorno_hogar_32_7, levels = names(mapping_entorno_hogar_32_7), labels = mapping_entorno_hogar_32_7)

mapping_entorno_hogar_32_8 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_8.factor = factor(data$entorno_hogar_32_8, levels = names(mapping_entorno_hogar_32_8), labels = mapping_entorno_hogar_32_8)

mapping_entorno_hogar_32_9 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_9.factor = factor(data$entorno_hogar_32_9, levels = names(mapping_entorno_hogar_32_9), labels = mapping_entorno_hogar_32_9)

mapping_entorno_hogar_32_10 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_10.factor = factor(data$entorno_hogar_32_10, levels = names(mapping_entorno_hogar_32_10), labels = mapping_entorno_hogar_32_10)

mapping_entorno_hogar_32_11 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_11.factor = factor(data$entorno_hogar_32_11, levels = names(mapping_entorno_hogar_32_11), labels = mapping_entorno_hogar_32_11)

mapping_entorno_hogar_32_12 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_12.factor = factor(data$entorno_hogar_32_12, levels = names(mapping_entorno_hogar_32_12), labels = mapping_entorno_hogar_32_12)

mapping_entorno_hogar_32_13 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_13.factor = factor(data$entorno_hogar_32_13, levels = names(mapping_entorno_hogar_32_13), labels = mapping_entorno_hogar_32_13)

mapping_entorno_hogar_32_14 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_14.factor = factor(data$entorno_hogar_32_14, levels = names(mapping_entorno_hogar_32_14), labels = mapping_entorno_hogar_32_14)

mapping_entorno_hogar_32_15 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_15.factor = factor(data$entorno_hogar_32_15, levels = names(mapping_entorno_hogar_32_15), labels = mapping_entorno_hogar_32_15)

mapping_entorno_hogar_33 = c(
	"1" = "Más de una vez por semana",
	"2" = "Una vez por semana",
	"3" = "Menos de una vez por semana"
)
data$entorno_hogar_33.factor = factor(data$entorno_hogar_33, levels = names(mapping_entorno_hogar_33), labels = mapping_entorno_hogar_33)

mapping_entorno_hogar_34 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_34.factor = factor(data$entorno_hogar_34, levels = names(mapping_entorno_hogar_34), labels = mapping_entorno_hogar_34)

mapping_entorno_hogar_35 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_35.factor = factor(data$entorno_hogar_35, levels = names(mapping_entorno_hogar_35), labels = mapping_entorno_hogar_35)

mapping_entorno_hogar_36 = c(
	"1" = "Más de una vez por semana",
	"2" = "Una vez por semana",
	"3" = "Menos de una vez por semana"
)
data$entorno_hogar_36.factor = factor(data$entorno_hogar_36, levels = names(mapping_entorno_hogar_36), labels = mapping_entorno_hogar_36)

mapping_cuestionario_de_padres_informacin_sobre_el_ambient_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_de_padres_informacin_sobre_el_ambient_complete.factor = factor(data$cuestionario_de_padres_informacin_sobre_el_ambient_complete, levels = names(mapping_cuestionario_de_padres_informacin_sobre_el_ambient_complete), labels = mapping_cuestionario_de_padres_informacin_sobre_el_ambient_complete)

mapping_cuestionario_de_padres_cartilla_clnica_de_los_padr_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_de_padres_cartilla_clnica_de_los_padr_complete.factor = factor(data$cuestionario_de_padres_cartilla_clnica_de_los_padr_complete, levels = names(mapping_cuestionario_de_padres_cartilla_clnica_de_los_padr_complete), labels = mapping_cuestionario_de_padres_cartilla_clnica_de_los_padr_complete)

mapping_desayuno_biomarcadores = c(
	"0" = "No desayunó (ayunas ≥ 8 horas)",
	"1" = "Sí desayunó parcialmente (< 8 horas)",
	"2" = "Sí desayunó (comida completa)",
	"99" = "No sabe / No recuerda"
)
data$desayuno_biomarcadores.factor = factor(data$desayuno_biomarcadores, levels = names(mapping_desayuno_biomarcadores), labels = mapping_desayuno_biomarcadores)

mapping_cuestionario_adolescentes_biomarcadores_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_biomarcadores_complete.factor = factor(data$cuestionario_adolescentes_biomarcadores_complete, levels = names(mapping_cuestionario_adolescentes_biomarcadores_complete), labels = mapping_cuestionario_adolescentes_biomarcadores_complete)

mapping_alergia_pteronyssinus = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_pteronyssinus.factor = factor(data$alergia_pteronyssinus, levels = names(mapping_alergia_pteronyssinus), labels = mapping_alergia_pteronyssinus)

mapping_alergia_farinae = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_farinae.factor = factor(data$alergia_farinae, levels = names(mapping_alergia_farinae), labels = mapping_alergia_farinae)

mapping_alergia_destructor = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_destructor.factor = factor(data$alergia_destructor, levels = names(mapping_alergia_destructor), labels = mapping_alergia_destructor)

mapping_alergia_tropicalis = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_tropicalis.factor = factor(data$alergia_tropicalis, levels = names(mapping_alergia_tropicalis), labels = mapping_alergia_tropicalis)

mapping_alergia_arcuatus = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_arcuatus.factor = factor(data$alergia_arcuatus, levels = names(mapping_alergia_arcuatus), labels = mapping_alergia_arcuatus)

mapping_alergia_alternata = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_alternata.factor = factor(data$alergia_alternata, levels = names(mapping_alergia_alternata), labels = mapping_alergia_alternata)

mapping_alergia_herbarum = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_herbarum.factor = factor(data$alergia_herbarum, levels = names(mapping_alergia_herbarum), labels = mapping_alergia_herbarum)

mapping_alergia_fumigatus = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_fumigatus.factor = factor(data$alergia_fumigatus, levels = names(mapping_alergia_fumigatus), labels = mapping_alergia_fumigatus)

mapping_alergia_notatum = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_notatum.factor = factor(data$alergia_notatum, levels = names(mapping_alergia_notatum), labels = mapping_alergia_notatum)

mapping_alergia_grasses = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_grasses.factor = factor(data$alergia_grasses, levels = names(mapping_alergia_grasses), labels = mapping_alergia_grasses)

mapping_alergia_vulgaris = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_vulgaris.factor = factor(data$alergia_vulgaris, levels = names(mapping_alergia_vulgaris), labels = mapping_alergia_vulgaris)

mapping_alergia_ambrosia = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_ambrosia.factor = factor(data$alergia_ambrosia, levels = names(mapping_alergia_ambrosia), labels = mapping_alergia_ambrosia)

mapping_alergia_perro = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_perro.factor = factor(data$alergia_perro, levels = names(mapping_alergia_perro), labels = mapping_alergia_perro)

mapping_alergia_gato = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_gato.factor = factor(data$alergia_gato, levels = names(mapping_alergia_gato), labels = mapping_alergia_gato)

mapping_alergia_germanica = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_germanica.factor = factor(data$alergia_germanica, levels = names(mapping_alergia_germanica), labels = mapping_alergia_germanica)

mapping_alergia_americana = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_americana.factor = factor(data$alergia_americana, levels = names(mapping_alergia_americana), labels = mapping_alergia_americana)

mapping_alergia_olivo = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_olivo.factor = factor(data$alergia_olivo, levels = names(mapping_alergia_olivo), labels = mapping_alergia_olivo)

mapping_asma = c(
	"0" = "No",
	"1" = "Sí"
)
data$asma.factor = factor(data$asma, levels = names(mapping_asma), labels = mapping_asma)

mapping_severidad_asma = c(
	"1" = "Asma intermitente",
	"2" = "Asma persistente leve",
	"3" = "Asma persistente moderada",
	"4" = "Asma persistente severa"
)
data$severidad_asma.factor = factor(data$severidad_asma, levels = names(mapping_severidad_asma), labels = mapping_severidad_asma)

mapping_rinitis_alergica = c(
	"0" = "No",
	"1" = "Sí"
)
data$rinitis_alergica.factor = factor(data$rinitis_alergica, levels = names(mapping_rinitis_alergica), labels = mapping_rinitis_alergica)

mapping_severidad_rinitis = c(
	"1" = "Rinitis intermitente leve",
	"2" = "Rinitis intermitente moderada-severa",
	"3" = "Rinitis persistente leve",
	"4" = "Rinitis persistente moderada-severa"
)
data$severidad_rinitis.factor = factor(data$severidad_rinitis, levels = names(mapping_severidad_rinitis), labels = mapping_severidad_rinitis)

mapping_sintomas_respiratorios___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___1.factor = factor(data$sintomas_respiratorios___1, levels = names(mapping_sintomas_respiratorios___1), labels = mapping_sintomas_respiratorios___1)

mapping_sintomas_respiratorios___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___2.factor = factor(data$sintomas_respiratorios___2, levels = names(mapping_sintomas_respiratorios___2), labels = mapping_sintomas_respiratorios___2)

mapping_sintomas_respiratorios___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___3.factor = factor(data$sintomas_respiratorios___3, levels = names(mapping_sintomas_respiratorios___3), labels = mapping_sintomas_respiratorios___3)

mapping_sintomas_respiratorios___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___4.factor = factor(data$sintomas_respiratorios___4, levels = names(mapping_sintomas_respiratorios___4), labels = mapping_sintomas_respiratorios___4)

mapping_sintomas_respiratorios___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___0.factor = factor(data$sintomas_respiratorios___0, levels = names(mapping_sintomas_respiratorios___0), labels = mapping_sintomas_respiratorios___0)

mapping_sintomas_respiratorios___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___unk.factor = factor(data$sintomas_respiratorios___unk, levels = names(mapping_sintomas_respiratorios___unk), labels = mapping_sintomas_respiratorios___unk)

mapping_sintomas_respiratorios___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___ni.factor = factor(data$sintomas_respiratorios___ni, levels = names(mapping_sintomas_respiratorios___ni), labels = mapping_sintomas_respiratorios___ni)

mapping_sintomas_respiratorios___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___inv.factor = factor(data$sintomas_respiratorios___inv, levels = names(mapping_sintomas_respiratorios___inv), labels = mapping_sintomas_respiratorios___inv)

mapping_sintomas_respiratorios___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___nask.factor = factor(data$sintomas_respiratorios___nask, levels = names(mapping_sintomas_respiratorios___nask), labels = mapping_sintomas_respiratorios___nask)

mapping_isaac_asma_21 = c(
	"0" = "No",
	"1" = "Sí"
)
data$isaac_asma_21.factor = factor(data$isaac_asma_21, levels = names(mapping_isaac_asma_21), labels = mapping_isaac_asma_21)

mapping_isaac_asma_22 = c(
	"0" = "No",
	"1" = "Sí"
)
data$isaac_asma_22.factor = factor(data$isaac_asma_22, levels = names(mapping_isaac_asma_22), labels = mapping_isaac_asma_22)

mapping_isaac_asma_23 = c(
	"0" = "Ninguno",
	"1" = "1 a 3",
	"2" = "4 a 12",
	"3" = "Más de 12"
)
data$isaac_asma_23.factor = factor(data$isaac_asma_23, levels = names(mapping_isaac_asma_23), labels = mapping_isaac_asma_23)

mapping_isaac_asma_24 = c(
	"0" = "Nunca",
	"1" = "Menos de una noche por semana",
	"2" = "Una o más noches por semana"
)
data$isaac_asma_24.factor = factor(data$isaac_asma_24, levels = names(mapping_isaac_asma_24), labels = mapping_isaac_asma_24)

mapping_isaac_asma_25 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_asma_25.factor = factor(data$isaac_asma_25, levels = names(mapping_isaac_asma_25), labels = mapping_isaac_asma_25)

mapping_isaac_asma_26 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_asma_26.factor = factor(data$isaac_asma_26, levels = names(mapping_isaac_asma_26), labels = mapping_isaac_asma_26)

mapping_isaac_asma_27 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_asma_27.factor = factor(data$isaac_asma_27, levels = names(mapping_isaac_asma_27), labels = mapping_isaac_asma_27)

mapping_isaac_asma_28 = c(
	"0" = "No",
	"1" = "Si"
)
data$isaac_asma_28.factor = factor(data$isaac_asma_28, levels = names(mapping_isaac_asma_28), labels = mapping_isaac_asma_28)

mapping_isaac_rinitis_29 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_29.factor = factor(data$isaac_rinitis_29, levels = names(mapping_isaac_rinitis_29), labels = mapping_isaac_rinitis_29)

mapping_isaac_rinitis_30 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_30.factor = factor(data$isaac_rinitis_30, levels = names(mapping_isaac_rinitis_30), labels = mapping_isaac_rinitis_30)

mapping_isaac_rinitis_31 = c(
	"0" = "Menos de 1 mes al año",
	"1" = "1 a 3 meses al año",
	"2" = "4 o más meses al año"
)
data$isaac_rinitis_31.factor = factor(data$isaac_rinitis_31, levels = names(mapping_isaac_rinitis_31), labels = mapping_isaac_rinitis_31)

mapping_isaac_rinitis_32 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_32.factor = factor(data$isaac_rinitis_32, levels = names(mapping_isaac_rinitis_32), labels = mapping_isaac_rinitis_32)

mapping_isaac_rinitis_33 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_33.factor = factor(data$isaac_rinitis_33, levels = names(mapping_isaac_rinitis_33), labels = mapping_isaac_rinitis_33)

mapping_isaac_rinitis_34 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_34.factor = factor(data$isaac_rinitis_34, levels = names(mapping_isaac_rinitis_34), labels = mapping_isaac_rinitis_34)

mapping_isaac_dermatitis_35 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_35.factor = factor(data$isaac_dermatitis_35, levels = names(mapping_isaac_dermatitis_35), labels = mapping_isaac_dermatitis_35)

mapping_isaac_dermatitis_36 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_36.factor = factor(data$isaac_dermatitis_36, levels = names(mapping_isaac_dermatitis_36), labels = mapping_isaac_dermatitis_36)

mapping_isaac_dermatitis_37 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_37.factor = factor(data$isaac_dermatitis_37, levels = names(mapping_isaac_dermatitis_37), labels = mapping_isaac_dermatitis_37)

mapping_isaac_dermatitis_38 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_38.factor = factor(data$isaac_dermatitis_38, levels = names(mapping_isaac_dermatitis_38), labels = mapping_isaac_dermatitis_38)

mapping_isaac_dermatitis_39 = c(
	"0" = "No ha afectado mi sueño",
	"1" = "Ha afectado ligeramente mi sueño",
	"2" = "Ha afectado moderadamente mi sueño",
	"3" = "Ha afectado severamente mi sueño"
)
data$isaac_dermatitis_39.factor = factor(data$isaac_dermatitis_39, levels = names(mapping_isaac_dermatitis_39), labels = mapping_isaac_dermatitis_39)

mapping_isaac_dermatitis_40 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_40.factor = factor(data$isaac_dermatitis_40, levels = names(mapping_isaac_dermatitis_40), labels = mapping_isaac_dermatitis_40)

mapping_cuestionario_adolescentes_alergias_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_alergias_complete.factor = factor(data$cuestionario_adolescentes_alergias_complete, levels = names(mapping_cuestionario_adolescentes_alergias_complete), labels = mapping_cuestionario_adolescentes_alergias_complete)

mapping_cuestionario_adolescentes_antropometria_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_antropometria_complete.factor = factor(data$cuestionario_adolescentes_antropometria_complete, levels = names(mapping_cuestionario_adolescentes_antropometria_complete), labels = mapping_cuestionario_adolescentes_antropometria_complete)

mapping_cuestionario_adolescentes_presion_arterial_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_presion_arterial_complete.factor = factor(data$cuestionario_adolescentes_presion_arterial_complete, levels = names(mapping_cuestionario_adolescentes_presion_arterial_complete), labels = mapping_cuestionario_adolescentes_presion_arterial_complete)

mapping_sintomas_depresivos_1 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_1.factor = factor(data$sintomas_depresivos_1, levels = names(mapping_sintomas_depresivos_1), labels = mapping_sintomas_depresivos_1)

mapping_sintomas_depresivos_2 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_2.factor = factor(data$sintomas_depresivos_2, levels = names(mapping_sintomas_depresivos_2), labels = mapping_sintomas_depresivos_2)

mapping_sintomas_depresivos_3 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_3.factor = factor(data$sintomas_depresivos_3, levels = names(mapping_sintomas_depresivos_3), labels = mapping_sintomas_depresivos_3)

mapping_sintomas_depresivos_4 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_4.factor = factor(data$sintomas_depresivos_4, levels = names(mapping_sintomas_depresivos_4), labels = mapping_sintomas_depresivos_4)

mapping_sintomas_depresivos_5 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_5.factor = factor(data$sintomas_depresivos_5, levels = names(mapping_sintomas_depresivos_5), labels = mapping_sintomas_depresivos_5)

mapping_sintomas_depresivos_6 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_6.factor = factor(data$sintomas_depresivos_6, levels = names(mapping_sintomas_depresivos_6), labels = mapping_sintomas_depresivos_6)

mapping_sintomas_depresivos_7 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_7.factor = factor(data$sintomas_depresivos_7, levels = names(mapping_sintomas_depresivos_7), labels = mapping_sintomas_depresivos_7)

mapping_sintomas_depresivos_8 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_8.factor = factor(data$sintomas_depresivos_8, levels = names(mapping_sintomas_depresivos_8), labels = mapping_sintomas_depresivos_8)

mapping_sintomas_depresivos_9 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_9.factor = factor(data$sintomas_depresivos_9, levels = names(mapping_sintomas_depresivos_9), labels = mapping_sintomas_depresivos_9)

mapping_sintomas_ansiedad_1 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_1.factor = factor(data$sintomas_ansiedad_1, levels = names(mapping_sintomas_ansiedad_1), labels = mapping_sintomas_ansiedad_1)

mapping_sintomas_ansiedad_2 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_2.factor = factor(data$sintomas_ansiedad_2, levels = names(mapping_sintomas_ansiedad_2), labels = mapping_sintomas_ansiedad_2)

mapping_sintomas_ansiedad_3 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_3.factor = factor(data$sintomas_ansiedad_3, levels = names(mapping_sintomas_ansiedad_3), labels = mapping_sintomas_ansiedad_3)

mapping_sintomas_ansiedad_4 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_4.factor = factor(data$sintomas_ansiedad_4, levels = names(mapping_sintomas_ansiedad_4), labels = mapping_sintomas_ansiedad_4)

mapping_sintomas_ansiedad_5 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_5.factor = factor(data$sintomas_ansiedad_5, levels = names(mapping_sintomas_ansiedad_5), labels = mapping_sintomas_ansiedad_5)

mapping_sintomas_ansiedad_6 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_6.factor = factor(data$sintomas_ansiedad_6, levels = names(mapping_sintomas_ansiedad_6), labels = mapping_sintomas_ansiedad_6)

mapping_sintomas_ansiedad_7 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_7.factor = factor(data$sintomas_ansiedad_7, levels = names(mapping_sintomas_ansiedad_7), labels = mapping_sintomas_ansiedad_7)

mapping_sintomas_ansiedad_8 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_8.factor = factor(data$sintomas_ansiedad_8, levels = names(mapping_sintomas_ansiedad_8), labels = mapping_sintomas_ansiedad_8)

mapping_sintomas_ansiedad_9 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_9.factor = factor(data$sintomas_ansiedad_9, levels = names(mapping_sintomas_ansiedad_9), labels = mapping_sintomas_ansiedad_9)

mapping_sintomas_ansiedad_10 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_10.factor = factor(data$sintomas_ansiedad_10, levels = names(mapping_sintomas_ansiedad_10), labels = mapping_sintomas_ansiedad_10)

mapping_nutricion_1 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_1.factor = factor(data$nutricion_1, levels = names(mapping_nutricion_1), labels = mapping_nutricion_1)

mapping_nutricion_2 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_2.factor = factor(data$nutricion_2, levels = names(mapping_nutricion_2), labels = mapping_nutricion_2)

mapping_nutricion_3 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_3.factor = factor(data$nutricion_3, levels = names(mapping_nutricion_3), labels = mapping_nutricion_3)

mapping_nutricion_4 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_4.factor = factor(data$nutricion_4, levels = names(mapping_nutricion_4), labels = mapping_nutricion_4)

mapping_nutricion_5 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_5.factor = factor(data$nutricion_5, levels = names(mapping_nutricion_5), labels = mapping_nutricion_5)

mapping_nutricion_6 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_6.factor = factor(data$nutricion_6, levels = names(mapping_nutricion_6), labels = mapping_nutricion_6)

mapping_nutricion_7 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_7.factor = factor(data$nutricion_7, levels = names(mapping_nutricion_7), labels = mapping_nutricion_7)

mapping_nutricion_8 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_8.factor = factor(data$nutricion_8, levels = names(mapping_nutricion_8), labels = mapping_nutricion_8)

mapping_nutricion_9 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_9.factor = factor(data$nutricion_9, levels = names(mapping_nutricion_9), labels = mapping_nutricion_9)

mapping_nutricion_10 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_10.factor = factor(data$nutricion_10, levels = names(mapping_nutricion_10), labels = mapping_nutricion_10)

mapping_nutricion_11 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_11.factor = factor(data$nutricion_11, levels = names(mapping_nutricion_11), labels = mapping_nutricion_11)

mapping_nutricion_12 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_12.factor = factor(data$nutricion_12, levels = names(mapping_nutricion_12), labels = mapping_nutricion_12)

mapping_nutricion_13 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_13.factor = factor(data$nutricion_13, levels = names(mapping_nutricion_13), labels = mapping_nutricion_13)

mapping_nutricion_14 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_14.factor = factor(data$nutricion_14, levels = names(mapping_nutricion_14), labels = mapping_nutricion_14)

mapping_nutricion_15 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_15.factor = factor(data$nutricion_15, levels = names(mapping_nutricion_15), labels = mapping_nutricion_15)

mapping_nutricion_16 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_16.factor = factor(data$nutricion_16, levels = names(mapping_nutricion_16), labels = mapping_nutricion_16)

mapping_nutricion_17 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_17.factor = factor(data$nutricion_17, levels = names(mapping_nutricion_17), labels = mapping_nutricion_17)

mapping_nutricion_18 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_18.factor = factor(data$nutricion_18, levels = names(mapping_nutricion_18), labels = mapping_nutricion_18)

mapping_nutricion_19 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_19.factor = factor(data$nutricion_19, levels = names(mapping_nutricion_19), labels = mapping_nutricion_19)

mapping_nutricion_20 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_20.factor = factor(data$nutricion_20, levels = names(mapping_nutricion_20), labels = mapping_nutricion_20)

mapping_nutricion_21 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_21.factor = factor(data$nutricion_21, levels = names(mapping_nutricion_21), labels = mapping_nutricion_21)

mapping_nutricion_22 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_22.factor = factor(data$nutricion_22, levels = names(mapping_nutricion_22), labels = mapping_nutricion_22)

mapping_nutricion_23 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_23.factor = factor(data$nutricion_23, levels = names(mapping_nutricion_23), labels = mapping_nutricion_23)

mapping_paqc_1 = c(
	"0" = "No tengo curso",
	"1" = "Casi nunca",
	"2" = "Algunas veces",
	"3" = "A menudo",
	"4" = "Siempre"
)
data$paqc_1.factor = factor(data$paqc_1, levels = names(mapping_paqc_1), labels = mapping_paqc_1)

mapping_paqc_2 = c(
	"1" = "Estuve sentado(a) (hablar, leer, trabajo de clases, revisar el celular)",
	"2" = "Estuve de pie o caminando",
	"3" = "Corrí o jugué un poco",
	"4" = "Corrí y jugué bastante",
	"5" = "Corrí y jugué intensamente la mayor parte del tiempo"
)
data$paqc_2.factor = factor(data$paqc_2, levels = names(mapping_paqc_2), labels = mapping_paqc_2)

mapping_paqc_3 = c(
	"1" = "Estuve sentado(a) (hablar, leer, trabajo de clases, revisar el celular)",
	"2" = "Estuve de pie o caminando",
	"3" = "Corrí o jugué un poco",
	"4" = "Corrí y jugué bastante",
	"5" = "Corrí y jugué intensamente la mayor parte del tiempo"
)
data$paqc_3.factor = factor(data$paqc_3, levels = names(mapping_paqc_3), labels = mapping_paqc_3)

mapping_paqc_4 = c(
	"0" = "Ninguna vez",
	"1" = "1 vez en la última semana",
	"2" = "2 o 3 veces en la última semana",
	"3" = "4 veces en la última semana",
	"4" = "6 o más veces en la última semana"
)
data$paqc_4.factor = factor(data$paqc_4, levels = names(mapping_paqc_4), labels = mapping_paqc_4)

mapping_paqc_5 = c(
	"0" = "Ninguna vez",
	"1" = "1 vez en la última semana",
	"2" = "2 o 3 veces en la última semana",
	"3" = "4 o 5 veces en la última semana",
	"4" = "6 o más veces en la última semana"
)
data$paqc_5.factor = factor(data$paqc_5, levels = names(mapping_paqc_5), labels = mapping_paqc_5)

mapping_paqc_6 = c(
	"0" = "Ninguna vez",
	"1" = "1 vez en la última semana",
	"2" = "2 o 3 veces en la última semana",
	"3" = "4 o 5 veces en la última semana",
	"4" = "6 o más veces en la última semana"
)
data$paqc_6.factor = factor(data$paqc_6, levels = names(mapping_paqc_6), labels = mapping_paqc_6)

mapping_paqc_7 = c(
	"1" = "Todo o la mayoría de mi tiempo libre lo dedique a actividades que requieren poco esfuerzo físico.",
	"2" = "A veces (1 o 2 veces en la última semana) hice actividad física en mi tiempo libre (por ejemplo: practicar deportes, correr, nadar, andar en bicicleta, hacer aeróbicos).",
	"3" = "Regularmente (3 o 4 veces en la última semana) hice actividad física en mi tiempo libre.",
	"4" = "Frecuentemente (5 o 6 veces en la última semana) hice actividad física en mi tiempo libre.",
	"5" = "Muy frecuentemente (7 o más veces la semana pasada) hice actividad física en mi tiempo libre."
)
data$paqc_7.factor = factor(data$paqc_7, levels = names(mapping_paqc_7), labels = mapping_paqc_7)

mapping_paqc_8_1___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___0.factor = factor(data$paqc_8_1___0, levels = names(mapping_paqc_8_1___0), labels = mapping_paqc_8_1___0)

mapping_paqc_8_1___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___1.factor = factor(data$paqc_8_1___1, levels = names(mapping_paqc_8_1___1), labels = mapping_paqc_8_1___1)

mapping_paqc_8_1___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___2.factor = factor(data$paqc_8_1___2, levels = names(mapping_paqc_8_1___2), labels = mapping_paqc_8_1___2)

mapping_paqc_8_1___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___3.factor = factor(data$paqc_8_1___3, levels = names(mapping_paqc_8_1___3), labels = mapping_paqc_8_1___3)

mapping_paqc_8_1___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___4.factor = factor(data$paqc_8_1___4, levels = names(mapping_paqc_8_1___4), labels = mapping_paqc_8_1___4)

mapping_paqc_8_1___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___unk.factor = factor(data$paqc_8_1___unk, levels = names(mapping_paqc_8_1___unk), labels = mapping_paqc_8_1___unk)

mapping_paqc_8_1___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___ni.factor = factor(data$paqc_8_1___ni, levels = names(mapping_paqc_8_1___ni), labels = mapping_paqc_8_1___ni)

mapping_paqc_8_1___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___inv.factor = factor(data$paqc_8_1___inv, levels = names(mapping_paqc_8_1___inv), labels = mapping_paqc_8_1___inv)

mapping_paqc_8_1___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___nask.factor = factor(data$paqc_8_1___nask, levels = names(mapping_paqc_8_1___nask), labels = mapping_paqc_8_1___nask)

mapping_paqc_8_2___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___0.factor = factor(data$paqc_8_2___0, levels = names(mapping_paqc_8_2___0), labels = mapping_paqc_8_2___0)

mapping_paqc_8_2___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___1.factor = factor(data$paqc_8_2___1, levels = names(mapping_paqc_8_2___1), labels = mapping_paqc_8_2___1)

mapping_paqc_8_2___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___2.factor = factor(data$paqc_8_2___2, levels = names(mapping_paqc_8_2___2), labels = mapping_paqc_8_2___2)

mapping_paqc_8_2___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___3.factor = factor(data$paqc_8_2___3, levels = names(mapping_paqc_8_2___3), labels = mapping_paqc_8_2___3)

mapping_paqc_8_2___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___4.factor = factor(data$paqc_8_2___4, levels = names(mapping_paqc_8_2___4), labels = mapping_paqc_8_2___4)

mapping_paqc_8_2___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___unk.factor = factor(data$paqc_8_2___unk, levels = names(mapping_paqc_8_2___unk), labels = mapping_paqc_8_2___unk)

mapping_paqc_8_2___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___ni.factor = factor(data$paqc_8_2___ni, levels = names(mapping_paqc_8_2___ni), labels = mapping_paqc_8_2___ni)

mapping_paqc_8_2___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___inv.factor = factor(data$paqc_8_2___inv, levels = names(mapping_paqc_8_2___inv), labels = mapping_paqc_8_2___inv)

mapping_paqc_8_2___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___nask.factor = factor(data$paqc_8_2___nask, levels = names(mapping_paqc_8_2___nask), labels = mapping_paqc_8_2___nask)

mapping_paqc_8_3___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___0.factor = factor(data$paqc_8_3___0, levels = names(mapping_paqc_8_3___0), labels = mapping_paqc_8_3___0)

mapping_paqc_8_3___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___1.factor = factor(data$paqc_8_3___1, levels = names(mapping_paqc_8_3___1), labels = mapping_paqc_8_3___1)

mapping_paqc_8_3___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___2.factor = factor(data$paqc_8_3___2, levels = names(mapping_paqc_8_3___2), labels = mapping_paqc_8_3___2)

mapping_paqc_8_3___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___3.factor = factor(data$paqc_8_3___3, levels = names(mapping_paqc_8_3___3), labels = mapping_paqc_8_3___3)

mapping_paqc_8_3___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___4.factor = factor(data$paqc_8_3___4, levels = names(mapping_paqc_8_3___4), labels = mapping_paqc_8_3___4)

mapping_paqc_8_3___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___unk.factor = factor(data$paqc_8_3___unk, levels = names(mapping_paqc_8_3___unk), labels = mapping_paqc_8_3___unk)

mapping_paqc_8_3___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___ni.factor = factor(data$paqc_8_3___ni, levels = names(mapping_paqc_8_3___ni), labels = mapping_paqc_8_3___ni)

mapping_paqc_8_3___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___inv.factor = factor(data$paqc_8_3___inv, levels = names(mapping_paqc_8_3___inv), labels = mapping_paqc_8_3___inv)

mapping_paqc_8_3___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___nask.factor = factor(data$paqc_8_3___nask, levels = names(mapping_paqc_8_3___nask), labels = mapping_paqc_8_3___nask)

mapping_paqc_8_4___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___0.factor = factor(data$paqc_8_4___0, levels = names(mapping_paqc_8_4___0), labels = mapping_paqc_8_4___0)

mapping_paqc_8_4___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___1.factor = factor(data$paqc_8_4___1, levels = names(mapping_paqc_8_4___1), labels = mapping_paqc_8_4___1)

mapping_paqc_8_4___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___2.factor = factor(data$paqc_8_4___2, levels = names(mapping_paqc_8_4___2), labels = mapping_paqc_8_4___2)

mapping_paqc_8_4___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___3.factor = factor(data$paqc_8_4___3, levels = names(mapping_paqc_8_4___3), labels = mapping_paqc_8_4___3)

mapping_paqc_8_4___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___4.factor = factor(data$paqc_8_4___4, levels = names(mapping_paqc_8_4___4), labels = mapping_paqc_8_4___4)

mapping_paqc_8_4___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___unk.factor = factor(data$paqc_8_4___unk, levels = names(mapping_paqc_8_4___unk), labels = mapping_paqc_8_4___unk)

mapping_paqc_8_4___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___ni.factor = factor(data$paqc_8_4___ni, levels = names(mapping_paqc_8_4___ni), labels = mapping_paqc_8_4___ni)

mapping_paqc_8_4___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___inv.factor = factor(data$paqc_8_4___inv, levels = names(mapping_paqc_8_4___inv), labels = mapping_paqc_8_4___inv)

mapping_paqc_8_4___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___nask.factor = factor(data$paqc_8_4___nask, levels = names(mapping_paqc_8_4___nask), labels = mapping_paqc_8_4___nask)

mapping_paqc_8_5___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___0.factor = factor(data$paqc_8_5___0, levels = names(mapping_paqc_8_5___0), labels = mapping_paqc_8_5___0)

mapping_paqc_8_5___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___1.factor = factor(data$paqc_8_5___1, levels = names(mapping_paqc_8_5___1), labels = mapping_paqc_8_5___1)

mapping_paqc_8_5___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___2.factor = factor(data$paqc_8_5___2, levels = names(mapping_paqc_8_5___2), labels = mapping_paqc_8_5___2)

mapping_paqc_8_5___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___3.factor = factor(data$paqc_8_5___3, levels = names(mapping_paqc_8_5___3), labels = mapping_paqc_8_5___3)

mapping_paqc_8_5___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___4.factor = factor(data$paqc_8_5___4, levels = names(mapping_paqc_8_5___4), labels = mapping_paqc_8_5___4)

mapping_paqc_8_5___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___unk.factor = factor(data$paqc_8_5___unk, levels = names(mapping_paqc_8_5___unk), labels = mapping_paqc_8_5___unk)

mapping_paqc_8_5___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___ni.factor = factor(data$paqc_8_5___ni, levels = names(mapping_paqc_8_5___ni), labels = mapping_paqc_8_5___ni)

mapping_paqc_8_5___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___inv.factor = factor(data$paqc_8_5___inv, levels = names(mapping_paqc_8_5___inv), labels = mapping_paqc_8_5___inv)

mapping_paqc_8_5___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___nask.factor = factor(data$paqc_8_5___nask, levels = names(mapping_paqc_8_5___nask), labels = mapping_paqc_8_5___nask)

mapping_paqc_8_6___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___0.factor = factor(data$paqc_8_6___0, levels = names(mapping_paqc_8_6___0), labels = mapping_paqc_8_6___0)

mapping_paqc_8_6___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___1.factor = factor(data$paqc_8_6___1, levels = names(mapping_paqc_8_6___1), labels = mapping_paqc_8_6___1)

mapping_paqc_8_6___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___2.factor = factor(data$paqc_8_6___2, levels = names(mapping_paqc_8_6___2), labels = mapping_paqc_8_6___2)

mapping_paqc_8_6___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___3.factor = factor(data$paqc_8_6___3, levels = names(mapping_paqc_8_6___3), labels = mapping_paqc_8_6___3)

mapping_paqc_8_6___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___4.factor = factor(data$paqc_8_6___4, levels = names(mapping_paqc_8_6___4), labels = mapping_paqc_8_6___4)

mapping_paqc_8_6___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___unk.factor = factor(data$paqc_8_6___unk, levels = names(mapping_paqc_8_6___unk), labels = mapping_paqc_8_6___unk)

mapping_paqc_8_6___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___ni.factor = factor(data$paqc_8_6___ni, levels = names(mapping_paqc_8_6___ni), labels = mapping_paqc_8_6___ni)

mapping_paqc_8_6___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___inv.factor = factor(data$paqc_8_6___inv, levels = names(mapping_paqc_8_6___inv), labels = mapping_paqc_8_6___inv)

mapping_paqc_8_6___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___nask.factor = factor(data$paqc_8_6___nask, levels = names(mapping_paqc_8_6___nask), labels = mapping_paqc_8_6___nask)

mapping_paqc_8_7___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___0.factor = factor(data$paqc_8_7___0, levels = names(mapping_paqc_8_7___0), labels = mapping_paqc_8_7___0)

mapping_paqc_8_7___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___1.factor = factor(data$paqc_8_7___1, levels = names(mapping_paqc_8_7___1), labels = mapping_paqc_8_7___1)

mapping_paqc_8_7___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___2.factor = factor(data$paqc_8_7___2, levels = names(mapping_paqc_8_7___2), labels = mapping_paqc_8_7___2)

mapping_paqc_8_7___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___3.factor = factor(data$paqc_8_7___3, levels = names(mapping_paqc_8_7___3), labels = mapping_paqc_8_7___3)

mapping_paqc_8_7___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___4.factor = factor(data$paqc_8_7___4, levels = names(mapping_paqc_8_7___4), labels = mapping_paqc_8_7___4)

mapping_paqc_8_7___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___unk.factor = factor(data$paqc_8_7___unk, levels = names(mapping_paqc_8_7___unk), labels = mapping_paqc_8_7___unk)

mapping_paqc_8_7___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___ni.factor = factor(data$paqc_8_7___ni, levels = names(mapping_paqc_8_7___ni), labels = mapping_paqc_8_7___ni)

mapping_paqc_8_7___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___inv.factor = factor(data$paqc_8_7___inv, levels = names(mapping_paqc_8_7___inv), labels = mapping_paqc_8_7___inv)

mapping_paqc_8_7___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___nask.factor = factor(data$paqc_8_7___nask, levels = names(mapping_paqc_8_7___nask), labels = mapping_paqc_8_7___nask)

mapping_paqc_9 = c(
	"0" = "No",
	"1" = "Sí {paqc_9_1}"
)
data$paqc_9.factor = factor(data$paqc_9, levels = names(mapping_paqc_9), labels = mapping_paqc_9)

mapping_cuestionario_adolescentes_salud_mental_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_salud_mental_complete.factor = factor(data$cuestionario_adolescentes_salud_mental_complete, levels = names(mapping_cuestionario_adolescentes_salud_mental_complete), labels = mapping_cuestionario_adolescentes_salud_mental_complete)

mapping_cirujia = c(
	"0" = "No",
	"1" = "Si"
)
data$cirujia.factor = factor(data$cirujia, levels = names(mapping_cirujia), labels = mapping_cirujia)

mapping_ataque_corazon = c(
	"0" = "No",
	"1" = "Si"
)
data$ataque_corazon.factor = factor(data$ataque_corazon, levels = names(mapping_ataque_corazon), labels = mapping_ataque_corazon)

mapping_presion_espirometria = c(
	"0" = "No",
	"1" = "Si"
)
data$presion_espirometria.factor = factor(data$presion_espirometria, levels = names(mapping_presion_espirometria), labels = mapping_presion_espirometria)

mapping_pulso_espirometria = c(
	"0" = "No",
	"1" = "Si"
)
data$pulso_espirometria.factor = factor(data$pulso_espirometria, levels = names(mapping_pulso_espirometria), labels = mapping_pulso_espirometria)

mapping_infeccion_respiratoria = c(
	"0" = "No",
	"1" = "Si"
)
data$infeccion_respiratoria.factor = factor(data$infeccion_respiratoria, levels = names(mapping_infeccion_respiratoria), labels = mapping_infeccion_respiratoria)

mapping_broncodilatador_12h = c(
	"0" = "No",
	"1" = "Si"
)
data$broncodilatador_12h.factor = factor(data$broncodilatador_12h, levels = names(mapping_broncodilatador_12h), labels = mapping_broncodilatador_12h)

mapping_broncodilatador_4h = c(
	"0" = "No",
	"1" = "Si"
)
data$broncodilatador_4h.factor = factor(data$broncodilatador_4h, levels = names(mapping_broncodilatador_4h), labels = mapping_broncodilatador_4h)

mapping_fumo = c(
	"0" = "No",
	"1" = "Si"
)
data$fumo.factor = factor(data$fumo, levels = names(mapping_fumo), labels = mapping_fumo)

mapping_fiebre = c(
	"0" = "No",
	"1" = "Si"
)
data$fiebre.factor = factor(data$fiebre, levels = names(mapping_fiebre), labels = mapping_fiebre)

mapping_tos = c(
	"0" = "No",
	"1" = "Si"
)
data$tos.factor = factor(data$tos, levels = names(mapping_tos), labels = mapping_tos)

mapping_dolor_garganta = c(
	"0" = "No",
	"1" = "Si"
)
data$dolor_garganta.factor = factor(data$dolor_garganta, levels = names(mapping_dolor_garganta), labels = mapping_dolor_garganta)

mapping_flema = c(
	"0" = "No",
	"1" = "Si"
)
data$flema.factor = factor(data$flema, levels = names(mapping_flema), labels = mapping_flema)

mapping_escalofrios = c(
	"0" = "No",
	"1" = "Si"
)
data$escalofrios.factor = factor(data$escalofrios, levels = names(mapping_escalofrios), labels = mapping_escalofrios)

mapping_dolor_cuerpo = c(
	"0" = "No",
	"1" = "Si"
)
data$dolor_cuerpo.factor = factor(data$dolor_cuerpo, levels = names(mapping_dolor_cuerpo), labels = mapping_dolor_cuerpo)

mapping_fatiga = c(
	"0" = "No",
	"1" = "Si"
)
data$fatiga.factor = factor(data$fatiga, levels = names(mapping_fatiga), labels = mapping_fatiga)

mapping_dolor_cabeza = c(
	"0" = "No",
	"1" = "Si"
)
data$dolor_cabeza.factor = factor(data$dolor_cabeza, levels = names(mapping_dolor_cabeza), labels = mapping_dolor_cabeza)

mapping_congestion = c(
	"0" = "No",
	"1" = "Si"
)
data$congestion.factor = factor(data$congestion, levels = names(mapping_congestion), labels = mapping_congestion)

mapping_goteo = c(
	"0" = "No",
	"1" = "Si"
)
data$goteo.factor = factor(data$goteo, levels = names(mapping_goteo), labels = mapping_goteo)

mapping_estornudos = c(
	"0" = "No",
	"1" = "Si"
)
data$estornudos.factor = factor(data$estornudos, levels = names(mapping_estornudos), labels = mapping_estornudos)

mapping_espirometria = c(
	"0" = "No",
	"1" = "Sí"
)
data$espirometria.factor = factor(data$espirometria, levels = names(mapping_espirometria), labels = mapping_espirometria)

mapping_error_espirometria = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria.factor = factor(data$error_espirometria, levels = names(mapping_error_espirometria), labels = mapping_error_espirometria)

mapping_espirometria_aceptable = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable.factor = factor(data$espirometria_aceptable, levels = names(mapping_espirometria_aceptable), labels = mapping_espirometria_aceptable)

mapping_espirometria_2 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_2.factor = factor(data$espirometria_2, levels = names(mapping_espirometria_2), labels = mapping_espirometria_2)

mapping_error_espirometria_2 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_2.factor = factor(data$error_espirometria_2, levels = names(mapping_error_espirometria_2), labels = mapping_error_espirometria_2)

mapping_espirometria_aceptable_2 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_2.factor = factor(data$espirometria_aceptable_2, levels = names(mapping_espirometria_aceptable_2), labels = mapping_espirometria_aceptable_2)

mapping_espirometria_3 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_3.factor = factor(data$espirometria_3, levels = names(mapping_espirometria_3), labels = mapping_espirometria_3)

mapping_error_espirometria_3 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_3.factor = factor(data$error_espirometria_3, levels = names(mapping_error_espirometria_3), labels = mapping_error_espirometria_3)

mapping_espirometria_aceptable_3 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_3.factor = factor(data$espirometria_aceptable_3, levels = names(mapping_espirometria_aceptable_3), labels = mapping_espirometria_aceptable_3)

mapping_espirometria_4 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_4.factor = factor(data$espirometria_4, levels = names(mapping_espirometria_4), labels = mapping_espirometria_4)

mapping_error_espirometria_4 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_4.factor = factor(data$error_espirometria_4, levels = names(mapping_error_espirometria_4), labels = mapping_error_espirometria_4)

mapping_espirometria_aceptable_4 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_4.factor = factor(data$espirometria_aceptable_4, levels = names(mapping_espirometria_aceptable_4), labels = mapping_espirometria_aceptable_4)

mapping_espirometria_5 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_5.factor = factor(data$espirometria_5, levels = names(mapping_espirometria_5), labels = mapping_espirometria_5)

mapping_error_espirometria_5 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_5.factor = factor(data$error_espirometria_5, levels = names(mapping_error_espirometria_5), labels = mapping_error_espirometria_5)

mapping_espirometria_aceptable_5 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_5.factor = factor(data$espirometria_aceptable_5, levels = names(mapping_espirometria_aceptable_5), labels = mapping_espirometria_aceptable_5)

mapping_espirometria_6 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_6.factor = factor(data$espirometria_6, levels = names(mapping_espirometria_6), labels = mapping_espirometria_6)

mapping_error_espirometria_6 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_6.factor = factor(data$error_espirometria_6, levels = names(mapping_error_espirometria_6), labels = mapping_error_espirometria_6)

mapping_espirometria_aceptable_6 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_6.factor = factor(data$espirometria_aceptable_6, levels = names(mapping_espirometria_aceptable_6), labels = mapping_espirometria_aceptable_6)

mapping_espirometria_7 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_7.factor = factor(data$espirometria_7, levels = names(mapping_espirometria_7), labels = mapping_espirometria_7)

mapping_error_espirometria_7 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_7.factor = factor(data$error_espirometria_7, levels = names(mapping_error_espirometria_7), labels = mapping_error_espirometria_7)

mapping_espirometria_aceptable_7 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_7.factor = factor(data$espirometria_aceptable_7, levels = names(mapping_espirometria_aceptable_7), labels = mapping_espirometria_aceptable_7)

mapping_espirometria_8 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_8.factor = factor(data$espirometria_8, levels = names(mapping_espirometria_8), labels = mapping_espirometria_8)

mapping_error_espirometria_8 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_8.factor = factor(data$error_espirometria_8, levels = names(mapping_error_espirometria_8), labels = mapping_error_espirometria_8)

mapping_espirometria_aceptable_8 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_8.factor = factor(data$espirometria_aceptable_8, levels = names(mapping_espirometria_aceptable_8), labels = mapping_espirometria_aceptable_8)

mapping_razon_detener = c(
	"1" = "ATS/ERA OK",
	"2" = "Mareos",
	"3" = "8 pruebas realizadas",
	"4" = "La máquina no funciona",
	"5" = "Participante rechazó",
	"6" = "Otro {razon_otros}"
)
data$razon_detener.factor = factor(data$razon_detener, levels = names(mapping_razon_detener), labels = mapping_razon_detener)

mapping_revision_curvas = c(
	"1" = "Sí",
	"0" = "No"
)
data$revision_curvas.factor = factor(data$revision_curvas, levels = names(mapping_revision_curvas), labels = mapping_revision_curvas)

mapping_clasificacion_revision = c(
	"1" = "3 pruebas aceptables y 2 valores reproducibles dentro de 0.1 L;",
	"2" = "3 pruebas aceptables y 2 valores reproducibles dentro de 0.15 L;",
	"3" = "2 pruebas aceptables y 2 valores reproducibles dentro de 0.15 L;",
	"4" = "2+ pruebas aceptables y 2 valores dentro de 0.25 L;",
	"5" = "0/1 pruebas aceptables o 2 pruebas con valores > 0.25 L"
)
data$clasificacion_revision.factor = factor(data$clasificacion_revision, levels = names(mapping_clasificacion_revision), labels = mapping_clasificacion_revision)

mapping_cuestionario_adolescentes_vi_espirometra_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_vi_espirometra_complete.factor = factor(data$cuestionario_adolescentes_vi_espirometra_complete, levels = names(mapping_cuestionario_adolescentes_vi_espirometra_complete), labels = mapping_cuestionario_adolescentes_vi_espirometra_complete)

mapping_fin_de_cuestionarios_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$fin_de_cuestionarios_complete.factor = factor(data$fin_de_cuestionarios_complete, levels = names(mapping_fin_de_cuestionarios_complete), labels = mapping_fin_de_cuestionarios_complete)

