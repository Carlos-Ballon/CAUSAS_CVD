#Clear existing data and graphics
# rm(list=ls())
# graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=import(here("data", 'ContaminacinAmbienta_DATA_2026-05-26_1401.csv'))

#Setting Units

#Setting Factors(will create new variable for factors)
mapping_redcap_event_name = c(
	"baseline_arm_1" = "Baseline",
	"visit_1_arm_1" = "Visit 1",
	"visit_2_arm_1" = "Visit 2",
	"visit_3_arm_1" = "Visit 3",
	"visit_4_arm_1" = "Visit 4"
)
data$redcap_event_name = factor(data$redcap_event_name, levels = names(mapping_redcap_event_name), labels = mapping_redcap_event_name)

mapping_colegio_id = c(
	"2025A" = "Colegio Jorge Basadre - VMT",
	"2025B" = "Colegio Santísima Virgen de Chapi - Pachacamac",
	"2025C" = "Colegio 0028 Jesus y María - La Molina"
)
data$colegio_id = factor(data$colegio_id, levels = names(mapping_colegio_id), labels = mapping_colegio_id)

mapping_numero_visita = c(
	"0" = "Tamizaje",
	"1" = "Basal (visita 1)",
	"2" = "Visita 2",
	"3" = "Visita 3",
	"4" = "Visita 4",
	"5" = "Visita 5"
)
data$numero_visita = factor(data$numero_visita, levels = names(mapping_numero_visita), labels = mapping_numero_visita)

mapping_consentimiento_1 = c(
	"0" = "No",
	"1" = "Sí"
)
data$consentimiento_1 = factor(data$consentimiento_1, levels = names(mapping_consentimiento_1), labels = mapping_consentimiento_1)

mapping_consentimiento_2 = c(
	"0" = "No",
	"1" = "Sí"
)
data$consentimiento_2 = factor(data$consentimiento_2, levels = names(mapping_consentimiento_2), labels = mapping_consentimiento_2)

mapping_consenti_relacion = c(
	"1" = "madre",
	"2" = "padre",
	"3" = "otro (especificar)"
)
data$consenti_relacion = factor(data$consenti_relacion, levels = names(mapping_consenti_relacion), labels = mapping_consenti_relacion)

mapping_asentimiento_1 = c(
	"0" = "No",
	"1" = "Sí"
)
data$asentimiento_1 = factor(data$asentimiento_1, levels = names(mapping_asentimiento_1), labels = mapping_asentimiento_1)

mapping_asentimiento_2 = c(
	"0" = "No",
	"1" = "Sí"
)
data$asentimiento_2 = factor(data$asentimiento_2, levels = names(mapping_asentimiento_2), labels = mapping_asentimiento_2)

mapping_consent_asent_investig = c(
	"0" = "No",
	"1" = "Sí"
)
data$consent_asent_investig = factor(data$consent_asent_investig, levels = names(mapping_consent_asent_investig), labels = mapping_consent_asent_investig)

mapping_cuestionario_adolescentes_0_consent_asent_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_0_consent_asent_complete = factor(data$cuestionario_adolescentes_0_consent_asent_complete, levels = names(mapping_cuestionario_adolescentes_0_consent_asent_complete), labels = mapping_cuestionario_adolescentes_0_consent_asent_complete)

mapping_pariente_del_infante = c(
	"1" = "Madre",
	"2" = "Padre",
	"3" = "Otro pariente (especifique):"
)
data$pariente_del_infante = factor(data$pariente_del_infante, levels = names(mapping_pariente_del_infante), labels = mapping_pariente_del_infante)

mapping_estado_civil_pariente = c(
	"1" = "Soltero(a)",
	"2" = "Casado(a)",
	"3" = "Conviviente",
	"4" = "Separado(a)",
	"5" = "Divorciado(a)",
	"6" = "Viudo(a)",
	"99" = "Prefiero no responder"
)
data$estado_civil_pariente = factor(data$estado_civil_pariente, levels = names(mapping_estado_civil_pariente), labels = mapping_estado_civil_pariente)

mapping_estad_civil_pariente = c(
	"1" = "Vive con el padre/madre del niño(a)",
	"2" = "Vive con otra pareja",
	"3" = "No vive con su pareja, pero mantiene una relación (por ejemplo, su pareja vive en otra casa o en el extranjero)",
	"4" = "No vive con una pareja y no tiene una relación",
	"99" = "Prefiere no responder"
)
data$estad_civil_pariente = factor(data$estad_civil_pariente, levels = names(mapping_estad_civil_pariente), labels = mapping_estad_civil_pariente)

mapping_nivel_educativo_pariente = c(
	"1" = "Inicial",
	"2" = "Primaria",
	"3" = "Secundaria",
	"4" = "Técnica",
	"5" = "Universitaria"
)
data$nivel_educativo_pariente = factor(data$nivel_educativo_pariente, levels = names(mapping_nivel_educativo_pariente), labels = mapping_nivel_educativo_pariente)

mapping_situacion_laboral_pariente = c(
	"1" = "Trabaja actualmente (empleada/o o independiente)",
	"2" = "Desempleada/o",
	"3" = "Estudiante",
	"4" = "Ama/o de casa o se dedica a labores del hogar",
	"5" = "Jubilada/o o pensionista",
	"6" = "Persona con discapacidad o en rehabilitación",
	"7" = "Militar o miembro de las fuerzas armadas/policía",
	"8" = "Otra, especifique:",
	"99" = "Prefiere no responder"
)
data$situacion_laboral_pariente = factor(data$situacion_laboral_pariente, levels = names(mapping_situacion_laboral_pariente), labels = mapping_situacion_laboral_pariente)

mapping_sit_economica_1 = c(
	"1" = "Viven con comodidad",
	"2" = "Les alcanza bien",
	"3" = "Se las arreglan con lo que tienen",
	"4" = "Les resulta algo difícil cubrir los gastos",
	"5" = "Les resulta muy difícil cubrir los gastos",
	"99" = "Prefiere no responder"
)
data$sit_economica_1 = factor(data$sit_economica_1, levels = names(mapping_sit_economica_1), labels = mapping_sit_economica_1)

mapping_sit_economica_2 = c(
	"1" = "Mejor que antes",
	"2" = "Peor que antes",
	"3" = "Más o menos igual",
	"99" = "Prefiere no responder"
)
data$sit_economica_2 = factor(data$sit_economica_2, levels = names(mapping_sit_economica_2), labels = mapping_sit_economica_2)

mapping_sit_economica_3 = c(
	"1" = "Menos de S/. 1130",
	"2" = "Entre S/.1131 y S/.2260",
	"3" = "Entre S/. 2261 y S/. 3390",
	"4" = "Entre S/. 3391 y S/. 4520",
	"5" = "Más de 4521",
	"99" = "Prefiere no responder"
)
data$sit_economica_3 = factor(data$sit_economica_3, levels = names(mapping_sit_economica_3), labels = mapping_sit_economica_3)

mapping_seguro_de_salud_adolescente = c(
	"1" = "SIS",
	"2" = "EsSalud",
	"3" = "Privado"
)
data$seguro_de_salud_adolescente = factor(data$seguro_de_salud_adolescente, levels = names(mapping_seguro_de_salud_adolescente), labels = mapping_seguro_de_salud_adolescente)

mapping_orden_del_hijo = c(
	"1" = "Primer hijo(a)",
	"2" = "Segundo hijo(a)",
	"3" = "Tercer hijo(a)",
	"4" = "Cuarto hijo(a)",
	"5" = "Quinto hijo(a)",
	"6" = "Sexto hijo(a)",
	"7" = "Más de seis hijos(as)"
)
data$orden_del_hijo = factor(data$orden_del_hijo, levels = names(mapping_orden_del_hijo), labels = mapping_orden_del_hijo)

mapping_lactancia_materna = c(
	"1" = "Sí",
	"0" = "No"
)
data$lactancia_materna = factor(data$lactancia_materna, levels = names(mapping_lactancia_materna), labels = mapping_lactancia_materna)

mapping_lactancia_materna_2 = c(
	"1" = "Meses",
	"99" = "No recuerda"
)
data$lactancia_materna_2 = factor(data$lactancia_materna_2, levels = names(mapping_lactancia_materna_2), labels = mapping_lactancia_materna_2)

mapping_lactancia_materna_3 = c(
	"1" = "Meses",
	"2" = "Nunca tomó fórmula",
	"99" = "No recuerda"
)
data$lactancia_materna_3 = factor(data$lactancia_materna_3, levels = names(mapping_lactancia_materna_3), labels = mapping_lactancia_materna_3)

mapping_lactancia_materna_4 = c(
	"1" = "Meses",
	"99" = "No recuerda"
)
data$lactancia_materna_4 = factor(data$lactancia_materna_4, levels = names(mapping_lactancia_materna_4), labels = mapping_lactancia_materna_4)

mapping_hospitalizado_nino_nacer = c(
	"1" = "Sí",
	"0" = "No"
)
data$hospitalizado_nino_nacer = factor(data$hospitalizado_nino_nacer, levels = names(mapping_hospitalizado_nino_nacer), labels = mapping_hospitalizado_nino_nacer)

mapping_enf_bajopeso_prematuro = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_bajopeso_prematuro = factor(data$enf_bajopeso_prematuro, levels = names(mapping_enf_bajopeso_prematuro), labels = mapping_enf_bajopeso_prematuro)

mapping_enf_macrosomia = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_macrosomia = factor(data$enf_macrosomia, levels = names(mapping_enf_macrosomia), labels = mapping_enf_macrosomia)

mapping_enf_pulmonares___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___1 = factor(data$enf_pulmonares___1, levels = names(mapping_enf_pulmonares___1), labels = mapping_enf_pulmonares___1)

mapping_enf_pulmonares___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___2 = factor(data$enf_pulmonares___2, levels = names(mapping_enf_pulmonares___2), labels = mapping_enf_pulmonares___2)

mapping_enf_pulmonares___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___3 = factor(data$enf_pulmonares___3, levels = names(mapping_enf_pulmonares___3), labels = mapping_enf_pulmonares___3)

mapping_enf_pulmonares___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___4 = factor(data$enf_pulmonares___4, levels = names(mapping_enf_pulmonares___4), labels = mapping_enf_pulmonares___4)

mapping_enf_pulmonares___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___0 = factor(data$enf_pulmonares___0, levels = names(mapping_enf_pulmonares___0), labels = mapping_enf_pulmonares___0)

mapping_enf_pulmonares___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___unk = factor(data$enf_pulmonares___unk, levels = names(mapping_enf_pulmonares___unk), labels = mapping_enf_pulmonares___unk)

mapping_enf_pulmonares___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___ni = factor(data$enf_pulmonares___ni, levels = names(mapping_enf_pulmonares___ni), labels = mapping_enf_pulmonares___ni)

mapping_enf_pulmonares___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___inv = factor(data$enf_pulmonares___inv, levels = names(mapping_enf_pulmonares___inv), labels = mapping_enf_pulmonares___inv)

mapping_enf_pulmonares___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$enf_pulmonares___nask = factor(data$enf_pulmonares___nask, levels = names(mapping_enf_pulmonares___nask), labels = mapping_enf_pulmonares___nask)

mapping_enf_dm1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_dm1 = factor(data$enf_dm1, levels = names(mapping_enf_dm1), labels = mapping_enf_dm1)

mapping_enf_resit_insulina = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_resit_insulina = factor(data$enf_resit_insulina, levels = names(mapping_enf_resit_insulina), labels = mapping_enf_resit_insulina)

mapping_enf_dislipidemias = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_dislipidemias = factor(data$enf_dislipidemias, levels = names(mapping_enf_dislipidemias), labels = mapping_enf_dislipidemias)

mapping_inf_respirat_recurrentes = c(
	"1" = "Sí",
	"0" = "No"
)
data$inf_respirat_recurrentes = factor(data$inf_respirat_recurrentes, levels = names(mapping_inf_respirat_recurrentes), labels = mapping_inf_respirat_recurrentes)

mapping_enf_medicamentos_cronicos = c(
	"1" = "Sí",
	"0" = "No"
)
data$enf_medicamentos_cronicos = factor(data$enf_medicamentos_cronicos, levels = names(mapping_enf_medicamentos_cronicos), labels = mapping_enf_medicamentos_cronicos)

mapping_hospita_previas = c(
	"1" = "Sí",
	"0" = "No"
)
data$hospita_previas = factor(data$hospita_previas, levels = names(mapping_hospita_previas), labels = mapping_hospita_previas)

mapping_vacunas = c(
	"1" = "Sí",
	"0" = "No"
)
data$vacunas = factor(data$vacunas, levels = names(mapping_vacunas), labels = mapping_vacunas)

mapping_ant_familiar_pulmon = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_familiar_pulmon = factor(data$ant_familiar_pulmon, levels = names(mapping_ant_familiar_pulmon), labels = mapping_ant_familiar_pulmon)

mapping_ant_diabetes2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_diabetes2 = factor(data$ant_diabetes2, levels = names(mapping_ant_diabetes2), labels = mapping_ant_diabetes2)

mapping_ant_hta = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_hta = factor(data$ant_hta, levels = names(mapping_ant_hta), labels = mapping_ant_hta)

mapping_ant_fenf_cardiov = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_fenf_cardiov = factor(data$ant_fenf_cardiov, levels = names(mapping_ant_fenf_cardiov), labels = mapping_ant_fenf_cardiov)

mapping_ant_dislipidemias = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_dislipidemias = factor(data$ant_dislipidemias, levels = names(mapping_ant_dislipidemias), labels = mapping_ant_dislipidemias)

mapping_ant_cancer = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_cancer = factor(data$ant_cancer, levels = names(mapping_ant_cancer), labels = mapping_ant_cancer)

mapping_ant_obesidad = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_obesidad = factor(data$ant_obesidad, levels = names(mapping_ant_obesidad), labels = mapping_ant_obesidad)

mapping_ant_familiar_otros = c(
	"1" = "Sí",
	"0" = "No"
)
data$ant_familiar_otros = factor(data$ant_familiar_otros, levels = names(mapping_ant_familiar_otros), labels = mapping_ant_familiar_otros)

mapping_ansiedad_1 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$ansiedad_1 = factor(data$ansiedad_1, levels = names(mapping_ansiedad_1), labels = mapping_ansiedad_1)

mapping_ansiedad_2 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$ansiedad_2 = factor(data$ansiedad_2, levels = names(mapping_ansiedad_2), labels = mapping_ansiedad_2)

mapping_depresion_1 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$depresion_1 = factor(data$depresion_1, levels = names(mapping_depresion_1), labels = mapping_depresion_1)

mapping_depresion_2 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$depresion_2 = factor(data$depresion_2, levels = names(mapping_depresion_2), labels = mapping_depresion_2)

mapping_cond_agresiv_1 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_1 = factor(data$cond_agresiv_1, levels = names(mapping_cond_agresiv_1), labels = mapping_cond_agresiv_1)

mapping_cond_agresiv_2 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_2 = factor(data$cond_agresiv_2, levels = names(mapping_cond_agresiv_2), labels = mapping_cond_agresiv_2)

mapping_cond_agresiv_3 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_3 = factor(data$cond_agresiv_3, levels = names(mapping_cond_agresiv_3), labels = mapping_cond_agresiv_3)

mapping_cond_agresiv_4 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_4 = factor(data$cond_agresiv_4, levels = names(mapping_cond_agresiv_4), labels = mapping_cond_agresiv_4)

mapping_cond_agresiv_5 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_5 = factor(data$cond_agresiv_5, levels = names(mapping_cond_agresiv_5), labels = mapping_cond_agresiv_5)

mapping_cond_agresiv_6 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_6 = factor(data$cond_agresiv_6, levels = names(mapping_cond_agresiv_6), labels = mapping_cond_agresiv_6)

mapping_cond_agresiv_7 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_7 = factor(data$cond_agresiv_7, levels = names(mapping_cond_agresiv_7), labels = mapping_cond_agresiv_7)

mapping_cond_agresiv_8 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_8 = factor(data$cond_agresiv_8, levels = names(mapping_cond_agresiv_8), labels = mapping_cond_agresiv_8)

mapping_cond_agresiv_9 = c(
	"1" = "Nunca",
	"2" = "1-2 veces",
	"3" = "3-5 veces",
	"4" = "6-10 veces",
	"5" = "Más de 10 veces"
)
data$cond_agresiv_9 = factor(data$cond_agresiv_9, levels = names(mapping_cond_agresiv_9), labels = mapping_cond_agresiv_9)

mapping_cuestionario_padres_sociodemografico_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_padres_sociodemografico_complete = factor(data$cuestionario_padres_sociodemografico_complete, levels = names(mapping_cuestionario_padres_sociodemografico_complete), labels = mapping_cuestionario_padres_sociodemografico_complete)

mapping_exposoma_3 = c(
	"1" = "Sí salió de casa ayer",
	"0" = "No salió de casa ayer"
)
data$exposoma_3 = factor(data$exposoma_3, levels = names(mapping_exposoma_3), labels = mapping_exposoma_3)

mapping_exposoma_3_lugares___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___1 = factor(data$exposoma_3_lugares___1, levels = names(mapping_exposoma_3_lugares___1), labels = mapping_exposoma_3_lugares___1)

mapping_exposoma_3_lugares___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___2 = factor(data$exposoma_3_lugares___2, levels = names(mapping_exposoma_3_lugares___2), labels = mapping_exposoma_3_lugares___2)

mapping_exposoma_3_lugares___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___3 = factor(data$exposoma_3_lugares___3, levels = names(mapping_exposoma_3_lugares___3), labels = mapping_exposoma_3_lugares___3)

mapping_exposoma_3_lugares___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___unk = factor(data$exposoma_3_lugares___unk, levels = names(mapping_exposoma_3_lugares___unk), labels = mapping_exposoma_3_lugares___unk)

mapping_exposoma_3_lugares___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___ni = factor(data$exposoma_3_lugares___ni, levels = names(mapping_exposoma_3_lugares___ni), labels = mapping_exposoma_3_lugares___ni)

mapping_exposoma_3_lugares___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___inv = factor(data$exposoma_3_lugares___inv, levels = names(mapping_exposoma_3_lugares___inv), labels = mapping_exposoma_3_lugares___inv)

mapping_exposoma_3_lugares___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_3_lugares___nask = factor(data$exposoma_3_lugares___nask, levels = names(mapping_exposoma_3_lugares___nask), labels = mapping_exposoma_3_lugares___nask)

mapping_exposoma_3_lugar1_d = c(
	"1" = "Caminando",
	"2" = "Bicicleta",
	"3" = "Bus/Combi/Metropolitano",
	"4" = "Carro/Taxi/Movilidad",
	"5" = "Moto/Mototaxi",
	"6" = "Otro (especifique):"
)
data$exposoma_3_lugar1_d = factor(data$exposoma_3_lugar1_d, levels = names(mapping_exposoma_3_lugar1_d), labels = mapping_exposoma_3_lugar1_d)

mapping_exposoma_3_lugar2_d = c(
	"1" = "Caminando",
	"2" = "Bicicleta",
	"3" = "Bus/Combi/Metropolitano",
	"4" = "Carro/Taxi/Movilidad",
	"5" = "Moto/Mototaxi",
	"6" = "Otro (especifique):"
)
data$exposoma_3_lugar2_d = factor(data$exposoma_3_lugar2_d, levels = names(mapping_exposoma_3_lugar2_d), labels = mapping_exposoma_3_lugar2_d)

mapping_exposoma_3_lugar3_d = c(
	"1" = "Caminando",
	"2" = "Bicicleta",
	"3" = "Bus/Combi/Metropolitano",
	"4" = "Carro/Taxi/Movilidad",
	"5" = "Moto/Mototaxi",
	"6" = "Otro (especifique):"
)
data$exposoma_3_lugar3_d = factor(data$exposoma_3_lugar3_d, levels = names(mapping_exposoma_3_lugar3_d), labels = mapping_exposoma_3_lugar3_d)

mapping_exposoma_14___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___1 = factor(data$exposoma_14___1, levels = names(mapping_exposoma_14___1), labels = mapping_exposoma_14___1)

mapping_exposoma_14___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___2 = factor(data$exposoma_14___2, levels = names(mapping_exposoma_14___2), labels = mapping_exposoma_14___2)

mapping_exposoma_14___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___3 = factor(data$exposoma_14___3, levels = names(mapping_exposoma_14___3), labels = mapping_exposoma_14___3)

mapping_exposoma_14___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___4 = factor(data$exposoma_14___4, levels = names(mapping_exposoma_14___4), labels = mapping_exposoma_14___4)

mapping_exposoma_14___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___5 = factor(data$exposoma_14___5, levels = names(mapping_exposoma_14___5), labels = mapping_exposoma_14___5)

mapping_exposoma_14___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___unk = factor(data$exposoma_14___unk, levels = names(mapping_exposoma_14___unk), labels = mapping_exposoma_14___unk)

mapping_exposoma_14___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___ni = factor(data$exposoma_14___ni, levels = names(mapping_exposoma_14___ni), labels = mapping_exposoma_14___ni)

mapping_exposoma_14___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___inv = factor(data$exposoma_14___inv, levels = names(mapping_exposoma_14___inv), labels = mapping_exposoma_14___inv)

mapping_exposoma_14___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_14___nask = factor(data$exposoma_14___nask, levels = names(mapping_exposoma_14___nask), labels = mapping_exposoma_14___nask)

mapping_espacio_verde_seguro = c(
	"0" = "No",
	"1" = "Sí, totalmente",
	"2" = "Parcialmente"
)
data$espacio_verde_seguro = factor(data$espacio_verde_seguro, levels = names(mapping_espacio_verde_seguro), labels = mapping_espacio_verde_seguro)

mapping_exposoma_15_1 = c(
	"4" = "Totalmente de acuerdo",
	"3" = "De acuerdo",
	"2" = "Ni de acuerdo ni en desacuerdo",
	"1" = "En desacuerdo",
	"0" = "Totalmente en desacuerdo"
)
data$exposoma_15_1 = factor(data$exposoma_15_1, levels = names(mapping_exposoma_15_1), labels = mapping_exposoma_15_1)

mapping_exposoma_15_2 = c(
	"4" = "Totalmente de acuerdo",
	"3" = "De acuerdo",
	"2" = "Ni de acuerdo ni en desacuerdo",
	"1" = "En desacuerdo",
	"0" = "Totalmente en desacuerdo"
)
data$exposoma_15_2 = factor(data$exposoma_15_2, levels = names(mapping_exposoma_15_2), labels = mapping_exposoma_15_2)

mapping_exposoma_15_3 = c(
	"4" = "Totalmente de acuerdo",
	"3" = "De acuerdo",
	"2" = "Ni de acuerdo ni en desacuerdo",
	"1" = "En desacuerdo",
	"0" = "Totalmente en desacuerdo"
)
data$exposoma_15_3 = factor(data$exposoma_15_3, levels = names(mapping_exposoma_15_3), labels = mapping_exposoma_15_3)

mapping_exposoma_16 = c(
	"0" = "No fumadora, nunca he fumado",
	"1" = "Fumé anteriormente, pero ya no fumo",
	"2" = "Fumo ocasionalmente (menos de una vez por semana)",
	"3" = "Fumo regularmente (una o más veces por semana)"
)
data$exposoma_16 = factor(data$exposoma_16, levels = names(mapping_exposoma_16), labels = mapping_exposoma_16)

mapping_exposoma_17 = c(
	"1" = "Sí",
	"0" = "No"
)
data$exposoma_17 = factor(data$exposoma_17, levels = names(mapping_exposoma_17), labels = mapping_exposoma_17)

mapping_exposoma_17_1 = c(
	"1" = "Usted",
	"2" = "Su pareja",
	"3" = "Otra persona del hogar (por ejemplo, abuelo, tío, hermano)"
)
data$exposoma_17_1 = factor(data$exposoma_17_1, levels = names(mapping_exposoma_17_1), labels = mapping_exposoma_17_1)

mapping_exposoma_18 = c(
	"1" = "Yes",
	"0" = "No"
)
data$exposoma_18 = factor(data$exposoma_18, levels = names(mapping_exposoma_18), labels = mapping_exposoma_18)

mapping_exposoma_18_1 = c(
	"1" = "Una vez",
	"2" = "2 - 3 veces",
	"3" = "Más de 3 veces"
)
data$exposoma_18_1 = factor(data$exposoma_18_1, levels = names(mapping_exposoma_18_1), labels = mapping_exposoma_18_1)

mapping_exposoma_19 = c(
	"0" = "No",
	"1" = "Sí",
	"99" = "No sabe / No responde"
)
data$exposoma_19 = factor(data$exposoma_19, levels = names(mapping_exposoma_19), labels = mapping_exposoma_19)

mapping_exposoma_20___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___1 = factor(data$exposoma_20___1, levels = names(mapping_exposoma_20___1), labels = mapping_exposoma_20___1)

mapping_exposoma_20___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___2 = factor(data$exposoma_20___2, levels = names(mapping_exposoma_20___2), labels = mapping_exposoma_20___2)

mapping_exposoma_20___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___3 = factor(data$exposoma_20___3, levels = names(mapping_exposoma_20___3), labels = mapping_exposoma_20___3)

mapping_exposoma_20___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___4 = factor(data$exposoma_20___4, levels = names(mapping_exposoma_20___4), labels = mapping_exposoma_20___4)

mapping_exposoma_20___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___5 = factor(data$exposoma_20___5, levels = names(mapping_exposoma_20___5), labels = mapping_exposoma_20___5)

mapping_exposoma_20___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___unk = factor(data$exposoma_20___unk, levels = names(mapping_exposoma_20___unk), labels = mapping_exposoma_20___unk)

mapping_exposoma_20___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___ni = factor(data$exposoma_20___ni, levels = names(mapping_exposoma_20___ni), labels = mapping_exposoma_20___ni)

mapping_exposoma_20___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___inv = factor(data$exposoma_20___inv, levels = names(mapping_exposoma_20___inv), labels = mapping_exposoma_20___inv)

mapping_exposoma_20___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$exposoma_20___nask = factor(data$exposoma_20___nask, levels = names(mapping_exposoma_20___nask), labels = mapping_exposoma_20___nask)

mapping_exposoma_21 = c(
	"1" = "Menos de 50 metros",
	"2" = "Entre 50 y 100 metros",
	"3" = "Más de 100 metros"
)
data$exposoma_21 = factor(data$exposoma_21, levels = names(mapping_exposoma_21), labels = mapping_exposoma_21)

mapping_exposoma_22 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe / No responde"
)
data$exposoma_22 = factor(data$exposoma_22, levels = names(mapping_exposoma_22), labels = mapping_exposoma_22)

mapping_exposoma_23 = c(
	"1" = "Todos los días",
	"2" = "Solo los fines de semana",
	"3" = "Solo los días de semana",
	"4" = "de 1 a 3 días",
	"5" = "de 4 a 6 días"
)
data$exposoma_23 = factor(data$exposoma_23, levels = names(mapping_exposoma_23), labels = mapping_exposoma_23)

mapping_exposoma_24 = c(
	"1" = "En la madrugada (00:00-06:00)",
	"2" = "En la mañana (06:00-12:00)",
	"3" = "En la tarde (12:00-18:00)",
	"4" = "En la noche (18:00-00:00)",
	"99" = "No sabe / No observa"
)
data$exposoma_24 = factor(data$exposoma_24, levels = names(mapping_exposoma_24), labels = mapping_exposoma_24)

mapping_exposoma_25 = c(
	"1" = "Termina a las 2 horas",
	"2" = "Termina entre 3 o 6 horas después de haber iniciado",
	"3" = "Termina entre 7 o 12  horas después de haber iniciado",
	"4" = "Termina entre 13 o 18  horas después de haber iniciado",
	"5" = "Permanece todo el día",
	"99" = "No sabe / No observa"
)
data$exposoma_25 = factor(data$exposoma_25, levels = names(mapping_exposoma_25), labels = mapping_exposoma_25)

mapping_exposoma_26 = c(
	"1" = "Blanco o gris claro",
	"2" = "Gris oscuro o negro",
	"3" = "Marrón o amarillento",
	"4" = "Otro color",
	"99" = "No sabe / No observa"
)
data$exposoma_26 = factor(data$exposoma_26, levels = names(mapping_exposoma_26), labels = mapping_exposoma_26)

mapping_exposoma_27 = c(
	"1" = "Sí",
	"2" = "A veces",
	"0" = "No"
)
data$exposoma_27 = factor(data$exposoma_27, levels = names(mapping_exposoma_27), labels = mapping_exposoma_27)

mapping_exposoma_28 = c(
	"1" = "A quemado o plástico",
	"2" = "A combustible o aceite",
	"3" = "A productos químicos o solventes",
	"4" = "A basura o residuos (ejemplo: huevo podrido)",
	"5" = "Otro (especifique):"
)
data$exposoma_28 = factor(data$exposoma_28, levels = names(mapping_exposoma_28), labels = mapping_exposoma_28)

mapping_humo_impacto = c(
	"1" = "Sí, mucho",
	"2" = "Algo",
	"3" = "Poco",
	"0" = "No",
	"99" = "No sabe / No responde"
)
data$humo_impacto = factor(data$humo_impacto, levels = names(mapping_humo_impacto), labels = mapping_humo_impacto)

mapping_cuestionario_de_padres_exposoma_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_de_padres_exposoma_complete = factor(data$cuestionario_de_padres_exposoma_complete, levels = names(mapping_cuestionario_de_padres_exposoma_complete), labels = mapping_cuestionario_de_padres_exposoma_complete)

mapping_entorno_hogar_3 = c(
	"1" = "Una casa para una sola familia",
	"2" = "Una casa compartida con otras familias",
	"3" = "Un departamento en edificio",
	"4" = "Un cuarto en vivienda o quinta",
	"5" = "Una vivienda improvisada (choza, cabaña, vivienda temporal)",
	"6" = "Otro tipo de vivienda (especifique):_______________________________"
)
data$entorno_hogar_3 = factor(data$entorno_hogar_3, levels = names(mapping_entorno_hogar_3), labels = mapping_entorno_hogar_3)

mapping_sala_cortina = c(
	"1" = "Sí",
	"0" = "No"
)
data$sala_cortina = factor(data$sala_cortina, levels = names(mapping_sala_cortina), labels = mapping_sala_cortina)

mapping_sala_alfombra_fija = c(
	"1" = "Sí",
	"0" = "No"
)
data$sala_alfombra_fija = factor(data$sala_alfombra_fija, levels = names(mapping_sala_alfombra_fija), labels = mapping_sala_alfombra_fija)

mapping_sala_tapete = c(
	"1" = "Sí",
	"0" = "No"
)
data$sala_tapete = factor(data$sala_tapete, levels = names(mapping_sala_tapete), labels = mapping_sala_tapete)

mapping_dormitorio_hijo_cortina = c(
	"1" = "Sí",
	"0" = "No"
)
data$dormitorio_hijo_cortina = factor(data$dormitorio_hijo_cortina, levels = names(mapping_dormitorio_hijo_cortina), labels = mapping_dormitorio_hijo_cortina)

mapping_dormitorio_hijo_alfombra = c(
	"1" = "Sí",
	"0" = "No"
)
data$dormitorio_hijo_alfombra = factor(data$dormitorio_hijo_alfombra, levels = names(mapping_dormitorio_hijo_alfombra), labels = mapping_dormitorio_hijo_alfombra)

mapping_dormitorio_hijo_tapete = c(
	"1" = "Sí",
	"0" = "No"
)
data$dormitorio_hijo_tapete = factor(data$dormitorio_hijo_tapete, levels = names(mapping_dormitorio_hijo_tapete), labels = mapping_dormitorio_hijo_tapete)

mapping_bano_cortina = c(
	"1" = "Sí",
	"0" = "No"
)
data$bano_cortina = factor(data$bano_cortina, levels = names(mapping_bano_cortina), labels = mapping_bano_cortina)

mapping_bano_alfombra = c(
	"1" = "Sí",
	"0" = "No"
)
data$bano_alfombra = factor(data$bano_alfombra, levels = names(mapping_bano_alfombra), labels = mapping_bano_alfombra)

mapping_bano_tapete = c(
	"1" = "Sí",
	"0" = "No"
)
data$bano_tapete = factor(data$bano_tapete, levels = names(mapping_bano_tapete), labels = mapping_bano_tapete)

mapping_sala_forma_limpieza = c(
	"1" = "Barrido",
	"2" = "Aspiradora",
	"3" = "Lavado manual",
	"4" = "Lavado profesional"
)
data$sala_forma_limpieza = factor(data$sala_forma_limpieza, levels = names(mapping_sala_forma_limpieza), labels = mapping_sala_forma_limpieza)

mapping_dormitorio_forma_limpieza = c(
	"1" = "Barrido",
	"2" = "Aspiradora",
	"3" = "Lavado manual",
	"4" = "Lavado profesional"
)
data$dormitorio_forma_limpieza = factor(data$dormitorio_forma_limpieza, levels = names(mapping_dormitorio_forma_limpieza), labels = mapping_dormitorio_forma_limpieza)

mapping_bano_forma_limpieza = c(
	"1" = "Barrido",
	"2" = "Aspiradora",
	"3" = "Lavado manual",
	"4" = "Lavado profesional"
)
data$bano_forma_limpieza = factor(data$bano_forma_limpieza, levels = names(mapping_bano_forma_limpieza), labels = mapping_bano_forma_limpieza)

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
	"10" = "Otro (especifique):"
)
data$entorno_hogar_7 = factor(data$entorno_hogar_7, levels = names(mapping_entorno_hogar_7), labels = mapping_entorno_hogar_7)

mapping_entorno_hogar_8_sala = c(
	"1" = "Exterior",
	"2" = "Interior",
	"0" = "Sin ventana"
)
data$entorno_hogar_8_sala = factor(data$entorno_hogar_8_sala, levels = names(mapping_entorno_hogar_8_sala), labels = mapping_entorno_hogar_8_sala)

mapping_entorno_hogar_8_dormitorio = c(
	"1" = "Exterior",
	"2" = "Interior",
	"0" = "Sin ventana"
)
data$entorno_hogar_8_dormitorio = factor(data$entorno_hogar_8_dormitorio, levels = names(mapping_entorno_hogar_8_dormitorio), labels = mapping_entorno_hogar_8_dormitorio)

mapping_entorno_hogar_8_banos = c(
	"1" = "Exterior",
	"2" = "Interior",
	"0" = "Sin ventana"
)
data$entorno_hogar_8_banos = factor(data$entorno_hogar_8_banos, levels = names(mapping_entorno_hogar_8_banos), labels = mapping_entorno_hogar_8_banos)

mapping_entorno_hogar_9_frio = c(
	"0" = "Nunca",
	"1" = "< 30 min",
	"2" = "30 min a 2 h",
	"3" = ">3 h"
)
data$entorno_hogar_9_frio = factor(data$entorno_hogar_9_frio, levels = names(mapping_entorno_hogar_9_frio), labels = mapping_entorno_hogar_9_frio)

mapping_entorno_hogar_9_calor = c(
	"0" = "Nunca",
	"1" = "< 30 min",
	"2" = "30 min a 2 h",
	"3" = ">3 h"
)
data$entorno_hogar_9_calor = factor(data$entorno_hogar_9_calor, levels = names(mapping_entorno_hogar_9_calor), labels = mapping_entorno_hogar_9_calor)

mapping_entorno_hogar_10 = c(
	"0" = "Nada",
	"1" = "Poco",
	"2" = "Moderadamente",
	"3" = "Mucho"
)
data$entorno_hogar_10 = factor(data$entorno_hogar_10, levels = names(mapping_entorno_hogar_10), labels = mapping_entorno_hogar_10)

mapping_entorno_hogar_11 = c(
	"1" = "Hacia la calle o carretera",
	"2" = "Hacia un jardín o patio",
	"3" = "Hacia una vía férrea / tranvía / tren",
	"4" = "Otra vista, especifique: _____________________________"
)
data$entorno_hogar_11 = factor(data$entorno_hogar_11, levels = names(mapping_entorno_hogar_11), labels = mapping_entorno_hogar_11)

mapping_entorno_hogar_12_frio = c(
	"1" = "Abierta",
	"2" = "Entreabierta",
	"3" = "Cerrada"
)
data$entorno_hogar_12_frio = factor(data$entorno_hogar_12_frio, levels = names(mapping_entorno_hogar_12_frio), labels = mapping_entorno_hogar_12_frio)

mapping_entorno_hogar_12_calor = c(
	"1" = "Abierta",
	"2" = "Entreabierta",
	"3" = "Cerrada"
)
data$entorno_hogar_12_calor = factor(data$entorno_hogar_12_calor, levels = names(mapping_entorno_hogar_12_calor), labels = mapping_entorno_hogar_12_calor)

mapping_entorno_hogar_15 = c(
	"1" = "Espuma",
	"2" = "Resortes",
	"3" = "Látex",
	"4" = "Otro (especifique): ___________________________________"
)
data$entorno_hogar_15 = factor(data$entorno_hogar_15, levels = names(mapping_entorno_hogar_15), labels = mapping_entorno_hogar_15)

mapping_entorno_hogar_17 = c(
	"1" = "SÍ",
	"0" = "No --> (Si marcó No, obvie las siguientes preguntas acerca de las mascotas"
)
data$entorno_hogar_17 = factor(data$entorno_hogar_17, levels = names(mapping_entorno_hogar_17), labels = mapping_entorno_hogar_17)

mapping_entorno_hogar_17_gatos = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_gatos = factor(data$entorno_hogar_17_gatos, levels = names(mapping_entorno_hogar_17_gatos), labels = mapping_entorno_hogar_17_gatos)

mapping_gato_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_1 = factor(data$gato_1, levels = names(mapping_gato_1), labels = mapping_gato_1)

mapping_gato_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_2 = factor(data$gato_2, levels = names(mapping_gato_2), labels = mapping_gato_2)

mapping_gato_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_3 = factor(data$gato_3, levels = names(mapping_gato_3), labels = mapping_gato_3)

mapping_gato_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$gato_4 = factor(data$gato_4, levels = names(mapping_gato_4), labels = mapping_gato_4)

mapping_entorno_hogar_17_perros = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_perros = factor(data$entorno_hogar_17_perros, levels = names(mapping_entorno_hogar_17_perros), labels = mapping_entorno_hogar_17_perros)

mapping_perro_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_1 = factor(data$perro_1, levels = names(mapping_perro_1), labels = mapping_perro_1)

mapping_perro_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_2 = factor(data$perro_2, levels = names(mapping_perro_2), labels = mapping_perro_2)

mapping_perro_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_3 = factor(data$perro_3, levels = names(mapping_perro_3), labels = mapping_perro_3)

mapping_perro_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$perro_4 = factor(data$perro_4, levels = names(mapping_perro_4), labels = mapping_perro_4)

mapping_entorno_hogar_17_aves = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_aves = factor(data$entorno_hogar_17_aves, levels = names(mapping_entorno_hogar_17_aves), labels = mapping_entorno_hogar_17_aves)

mapping_ave_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_1 = factor(data$ave_1, levels = names(mapping_ave_1), labels = mapping_ave_1)

mapping_ave_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_2 = factor(data$ave_2, levels = names(mapping_ave_2), labels = mapping_ave_2)

mapping_ave_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_3 = factor(data$ave_3, levels = names(mapping_ave_3), labels = mapping_ave_3)

mapping_ave_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$ave_4 = factor(data$ave_4, levels = names(mapping_ave_4), labels = mapping_ave_4)

mapping_entorno_hogar_17_corral = c(
	"1" = "SÍ",
	"0" = "No"
)
data$entorno_hogar_17_corral = factor(data$entorno_hogar_17_corral, levels = names(mapping_entorno_hogar_17_corral), labels = mapping_entorno_hogar_17_corral)

mapping_corral_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_1 = factor(data$corral_1, levels = names(mapping_corral_1), labels = mapping_corral_1)

mapping_corral_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_2 = factor(data$corral_2, levels = names(mapping_corral_2), labels = mapping_corral_2)

mapping_corral_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_3 = factor(data$corral_3, levels = names(mapping_corral_3), labels = mapping_corral_3)

mapping_corral_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$corral_4 = factor(data$corral_4, levels = names(mapping_corral_4), labels = mapping_corral_4)

mapping_entorno_hogar_18_roedores = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_18_roedores = factor(data$entorno_hogar_18_roedores, levels = names(mapping_entorno_hogar_18_roedores), labels = mapping_entorno_hogar_18_roedores)

mapping_entorno_cucarachas_18 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_cucarachas_18 = factor(data$entorno_cucarachas_18, levels = names(mapping_entorno_cucarachas_18), labels = mapping_entorno_cucarachas_18)

mapping_entorno_hogar_19 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_19 = factor(data$entorno_hogar_19, levels = names(mapping_entorno_hogar_19), labels = mapping_entorno_hogar_19)

mapping_entorno_hogar_20 = c(
	"1" = "Sí",
	"0" = "No → (Si marcó No, pase a la siguiente pregunta)"
)
data$entorno_hogar_20 = factor(data$entorno_hogar_20, levels = names(mapping_entorno_hogar_20), labels = mapping_entorno_hogar_20)

mapping_entorno_hogar_20_moho_1 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_1 = factor(data$entorno_hogar_20_moho_1, levels = names(mapping_entorno_hogar_20_moho_1), labels = mapping_entorno_hogar_20_moho_1)

mapping_entorno_hogar_20_moho_2 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_2 = factor(data$entorno_hogar_20_moho_2, levels = names(mapping_entorno_hogar_20_moho_2), labels = mapping_entorno_hogar_20_moho_2)

mapping_entorno_hogar_20_moho_3 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_3 = factor(data$entorno_hogar_20_moho_3, levels = names(mapping_entorno_hogar_20_moho_3), labels = mapping_entorno_hogar_20_moho_3)

mapping_entorno_hogar_20_moho_4 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_4 = factor(data$entorno_hogar_20_moho_4, levels = names(mapping_entorno_hogar_20_moho_4), labels = mapping_entorno_hogar_20_moho_4)

mapping_entorno_hogar_20_moho_5 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_20_moho_5 = factor(data$entorno_hogar_20_moho_5, levels = names(mapping_entorno_hogar_20_moho_5), labels = mapping_entorno_hogar_20_moho_5)

mapping_entorno_hogar_22 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_22 = factor(data$entorno_hogar_22, levels = names(mapping_entorno_hogar_22), labels = mapping_entorno_hogar_22)

mapping_entorno_hogar_24 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_24 = factor(data$entorno_hogar_24, levels = names(mapping_entorno_hogar_24), labels = mapping_entorno_hogar_24)

mapping_entorno_hogar_25 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_25 = factor(data$entorno_hogar_25, levels = names(mapping_entorno_hogar_25), labels = mapping_entorno_hogar_25)

mapping_entorno_hogar_26 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_26 = factor(data$entorno_hogar_26, levels = names(mapping_entorno_hogar_26), labels = mapping_entorno_hogar_26)

mapping_entorno_hogar_27 = c(
	"1" = "Dentro de la vivienda (interior)",
	"2" = "Fuera de la vivienda (en el patio, corredor o ambiente separado)",
	"3" = "Compartida con otro uso (por ejemplo: cocina-comedor o cocina-dormitorio)"
)
data$entorno_hogar_27 = factor(data$entorno_hogar_27, levels = names(mapping_entorno_hogar_27), labels = mapping_entorno_hogar_27)

mapping_entorno_hogar_28 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_28 = factor(data$entorno_hogar_28, levels = names(mapping_entorno_hogar_28), labels = mapping_entorno_hogar_28)

mapping_entorno_hogar_29 = c(
	"1" = "Siempre",
	"2" = "A veces",
	"0" = "Nunca",
	"99" = "No aplica (no tiene extractor)"
)
data$entorno_hogar_29 = factor(data$entorno_hogar_29, levels = names(mapping_entorno_hogar_29), labels = mapping_entorno_hogar_29)

mapping_entorno_hogar_30 = c(
	"1" = "Gas natural (conexión domiciliaria)",
	"2" = "Gas licuado (balón de GLP)",
	"3" = "Eléctrica / de inducción",
	"4" = "Leña",
	"5" = "Carbón",
	"6" = "Otro (especifique):"
)
data$entorno_hogar_30 = factor(data$entorno_hogar_30, levels = names(mapping_entorno_hogar_30), labels = mapping_entorno_hogar_30)

mapping_entorno_hogar_32_1 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_1 = factor(data$entorno_hogar_32_1, levels = names(mapping_entorno_hogar_32_1), labels = mapping_entorno_hogar_32_1)

mapping_entorno_hogar_32_2 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_2 = factor(data$entorno_hogar_32_2, levels = names(mapping_entorno_hogar_32_2), labels = mapping_entorno_hogar_32_2)

mapping_entorno_hogar_32_3 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_3 = factor(data$entorno_hogar_32_3, levels = names(mapping_entorno_hogar_32_3), labels = mapping_entorno_hogar_32_3)

mapping_entorno_hogar_32_4 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_4 = factor(data$entorno_hogar_32_4, levels = names(mapping_entorno_hogar_32_4), labels = mapping_entorno_hogar_32_4)

mapping_entorno_hogar_32_5 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_5 = factor(data$entorno_hogar_32_5, levels = names(mapping_entorno_hogar_32_5), labels = mapping_entorno_hogar_32_5)

mapping_entorno_hogar_32_6 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_6 = factor(data$entorno_hogar_32_6, levels = names(mapping_entorno_hogar_32_6), labels = mapping_entorno_hogar_32_6)

mapping_entorno_hogar_32_7 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_7 = factor(data$entorno_hogar_32_7, levels = names(mapping_entorno_hogar_32_7), labels = mapping_entorno_hogar_32_7)

mapping_entorno_hogar_32_8 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_8 = factor(data$entorno_hogar_32_8, levels = names(mapping_entorno_hogar_32_8), labels = mapping_entorno_hogar_32_8)

mapping_entorno_hogar_32_9 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_9 = factor(data$entorno_hogar_32_9, levels = names(mapping_entorno_hogar_32_9), labels = mapping_entorno_hogar_32_9)

mapping_entorno_hogar_32_10 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_10 = factor(data$entorno_hogar_32_10, levels = names(mapping_entorno_hogar_32_10), labels = mapping_entorno_hogar_32_10)

mapping_entorno_hogar_32_11 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_11 = factor(data$entorno_hogar_32_11, levels = names(mapping_entorno_hogar_32_11), labels = mapping_entorno_hogar_32_11)

mapping_entorno_hogar_32_12 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_12 = factor(data$entorno_hogar_32_12, levels = names(mapping_entorno_hogar_32_12), labels = mapping_entorno_hogar_32_12)

mapping_entorno_hogar_32_13 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_13 = factor(data$entorno_hogar_32_13, levels = names(mapping_entorno_hogar_32_13), labels = mapping_entorno_hogar_32_13)

mapping_entorno_hogar_32_14 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_14 = factor(data$entorno_hogar_32_14, levels = names(mapping_entorno_hogar_32_14), labels = mapping_entorno_hogar_32_14)

mapping_entorno_hogar_32_15 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_32_15 = factor(data$entorno_hogar_32_15, levels = names(mapping_entorno_hogar_32_15), labels = mapping_entorno_hogar_32_15)

mapping_entorno_hogar_33 = c(
	"1" = "Más de una vez por semana",
	"2" = "Una vez por semana",
	"3" = "Menos de una vez por semana"
)
data$entorno_hogar_33 = factor(data$entorno_hogar_33, levels = names(mapping_entorno_hogar_33), labels = mapping_entorno_hogar_33)

mapping_entorno_hogar_34 = c(
	"1" = "Sí",
	"0" = "No"
)
data$entorno_hogar_34 = factor(data$entorno_hogar_34, levels = names(mapping_entorno_hogar_34), labels = mapping_entorno_hogar_34)

mapping_entorno_hogar_35 = c(
	"1" = "Sí",
	"0" = "No",
	"99" = "No sabe"
)
data$entorno_hogar_35 = factor(data$entorno_hogar_35, levels = names(mapping_entorno_hogar_35), labels = mapping_entorno_hogar_35)

mapping_entorno_hogar_36 = c(
	"1" = "Más de una vez por semana",
	"2" = "Una vez por semana",
	"3" = "Menos de una vez por semana"
)
data$entorno_hogar_36 = factor(data$entorno_hogar_36, levels = names(mapping_entorno_hogar_36), labels = mapping_entorno_hogar_36)

mapping_cuestionario_de_padres_informacin_sobre_el_ambient_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_de_padres_informacin_sobre_el_ambient_complete = factor(data$cuestionario_de_padres_informacin_sobre_el_ambient_complete, levels = names(mapping_cuestionario_de_padres_informacin_sobre_el_ambient_complete), labels = mapping_cuestionario_de_padres_informacin_sobre_el_ambient_complete)

mapping_cuestionario_de_padres_cartilla_clnica_de_los_padr_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_de_padres_cartilla_clnica_de_los_padr_complete = factor(data$cuestionario_de_padres_cartilla_clnica_de_los_padr_complete, levels = names(mapping_cuestionario_de_padres_cartilla_clnica_de_los_padr_complete), labels = mapping_cuestionario_de_padres_cartilla_clnica_de_los_padr_complete)

mapping_desayuno_biomarcadores = c(
	"0" = "No desayunó (ayunas ≥ 8 horas)",
	"1" = "Sí desayunó parcialmente (< 8 horas)",
	"2" = "Sí desayunó (comida completa)",
	"99" = "No sabe / No recuerda"
)
data$desayuno_biomarcadores = factor(data$desayuno_biomarcadores, levels = names(mapping_desayuno_biomarcadores), labels = mapping_desayuno_biomarcadores)

mapping_cuestionario_adolescentes_biomarcadores_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_biomarcadores_complete = factor(data$cuestionario_adolescentes_biomarcadores_complete, levels = names(mapping_cuestionario_adolescentes_biomarcadores_complete), labels = mapping_cuestionario_adolescentes_biomarcadores_complete)

mapping_alergia_pteronyssinus = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_pteronyssinus = factor(data$alergia_pteronyssinus, levels = names(mapping_alergia_pteronyssinus), labels = mapping_alergia_pteronyssinus)

mapping_alergia_farinae = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_farinae = factor(data$alergia_farinae, levels = names(mapping_alergia_farinae), labels = mapping_alergia_farinae)

mapping_alergia_destructor = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_destructor = factor(data$alergia_destructor, levels = names(mapping_alergia_destructor), labels = mapping_alergia_destructor)

mapping_alergia_tropicalis = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_tropicalis = factor(data$alergia_tropicalis, levels = names(mapping_alergia_tropicalis), labels = mapping_alergia_tropicalis)

mapping_alergia_arcuatus = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_arcuatus = factor(data$alergia_arcuatus, levels = names(mapping_alergia_arcuatus), labels = mapping_alergia_arcuatus)

mapping_alergia_alternata = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_alternata = factor(data$alergia_alternata, levels = names(mapping_alergia_alternata), labels = mapping_alergia_alternata)

mapping_alergia_herbarum = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_herbarum = factor(data$alergia_herbarum, levels = names(mapping_alergia_herbarum), labels = mapping_alergia_herbarum)

mapping_alergia_fumigatus = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_fumigatus = factor(data$alergia_fumigatus, levels = names(mapping_alergia_fumigatus), labels = mapping_alergia_fumigatus)

mapping_alergia_notatum = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_notatum = factor(data$alergia_notatum, levels = names(mapping_alergia_notatum), labels = mapping_alergia_notatum)

mapping_alergia_grasses = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_grasses = factor(data$alergia_grasses, levels = names(mapping_alergia_grasses), labels = mapping_alergia_grasses)

mapping_alergia_vulgaris = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_vulgaris = factor(data$alergia_vulgaris, levels = names(mapping_alergia_vulgaris), labels = mapping_alergia_vulgaris)

mapping_alergia_ambrosia = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_ambrosia = factor(data$alergia_ambrosia, levels = names(mapping_alergia_ambrosia), labels = mapping_alergia_ambrosia)

mapping_alergia_perro = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_perro = factor(data$alergia_perro, levels = names(mapping_alergia_perro), labels = mapping_alergia_perro)

mapping_alergia_gato = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_gato = factor(data$alergia_gato, levels = names(mapping_alergia_gato), labels = mapping_alergia_gato)

mapping_alergia_germanica = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_germanica = factor(data$alergia_germanica, levels = names(mapping_alergia_germanica), labels = mapping_alergia_germanica)

mapping_alergia_americana = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_americana = factor(data$alergia_americana, levels = names(mapping_alergia_americana), labels = mapping_alergia_americana)

mapping_alergia_olivo = c(
	"0" = "Negativo",
	"1" = "Positivo"
)
data$alergia_olivo = factor(data$alergia_olivo, levels = names(mapping_alergia_olivo), labels = mapping_alergia_olivo)

mapping_asma = c(
	"0" = "No",
	"1" = "Sí"
)
data$asma = factor(data$asma, levels = names(mapping_asma), labels = mapping_asma)

mapping_severidad_asma = c(
	"1" = "Asma intermitente",
	"2" = "Asma persistente leve",
	"3" = "Asma persistente moderada",
	"4" = "Asma persistente severa"
)
data$severidad_asma = factor(data$severidad_asma, levels = names(mapping_severidad_asma), labels = mapping_severidad_asma)

mapping_rinitis_alergica = c(
	"0" = "No",
	"1" = "Sí"
)
data$rinitis_alergica = factor(data$rinitis_alergica, levels = names(mapping_rinitis_alergica), labels = mapping_rinitis_alergica)

mapping_severidad_rinitis = c(
	"1" = "Rinitis intermitente leve",
	"2" = "Rinitis intermitente moderada-severa",
	"3" = "Rinitis persistente leve",
	"4" = "Rinitis persistente moderada-severa"
)
data$severidad_rinitis = factor(data$severidad_rinitis, levels = names(mapping_severidad_rinitis), labels = mapping_severidad_rinitis)

mapping_sintomas_respiratorios___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___1 = factor(data$sintomas_respiratorios___1, levels = names(mapping_sintomas_respiratorios___1), labels = mapping_sintomas_respiratorios___1)

mapping_sintomas_respiratorios___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___2 = factor(data$sintomas_respiratorios___2, levels = names(mapping_sintomas_respiratorios___2), labels = mapping_sintomas_respiratorios___2)

mapping_sintomas_respiratorios___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___3 = factor(data$sintomas_respiratorios___3, levels = names(mapping_sintomas_respiratorios___3), labels = mapping_sintomas_respiratorios___3)

mapping_sintomas_respiratorios___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___4 = factor(data$sintomas_respiratorios___4, levels = names(mapping_sintomas_respiratorios___4), labels = mapping_sintomas_respiratorios___4)

mapping_sintomas_respiratorios___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___0 = factor(data$sintomas_respiratorios___0, levels = names(mapping_sintomas_respiratorios___0), labels = mapping_sintomas_respiratorios___0)

mapping_sintomas_respiratorios___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___unk = factor(data$sintomas_respiratorios___unk, levels = names(mapping_sintomas_respiratorios___unk), labels = mapping_sintomas_respiratorios___unk)

mapping_sintomas_respiratorios___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___ni = factor(data$sintomas_respiratorios___ni, levels = names(mapping_sintomas_respiratorios___ni), labels = mapping_sintomas_respiratorios___ni)

mapping_sintomas_respiratorios___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___inv = factor(data$sintomas_respiratorios___inv, levels = names(mapping_sintomas_respiratorios___inv), labels = mapping_sintomas_respiratorios___inv)

mapping_sintomas_respiratorios___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$sintomas_respiratorios___nask = factor(data$sintomas_respiratorios___nask, levels = names(mapping_sintomas_respiratorios___nask), labels = mapping_sintomas_respiratorios___nask)

mapping_isaac_asma_21 = c(
	"0" = "No",
	"1" = "Sí"
)
data$isaac_asma_21 = factor(data$isaac_asma_21, levels = names(mapping_isaac_asma_21), labels = mapping_isaac_asma_21)

mapping_isaac_asma_22 = c(
	"0" = "No",
	"1" = "Sí"
)
data$isaac_asma_22 = factor(data$isaac_asma_22, levels = names(mapping_isaac_asma_22), labels = mapping_isaac_asma_22)

mapping_isaac_asma_23 = c(
	"0" = "Ninguno",
	"1" = "1 a 3",
	"2" = "4 a 12",
	"3" = "Más de 12"
)
data$isaac_asma_23 = factor(data$isaac_asma_23, levels = names(mapping_isaac_asma_23), labels = mapping_isaac_asma_23)

mapping_isaac_asma_24 = c(
	"0" = "Nunca",
	"1" = "Menos de una noche por semana",
	"2" = "Una o más noches por semana"
)
data$isaac_asma_24 = factor(data$isaac_asma_24, levels = names(mapping_isaac_asma_24), labels = mapping_isaac_asma_24)

mapping_isaac_asma_25 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_asma_25 = factor(data$isaac_asma_25, levels = names(mapping_isaac_asma_25), labels = mapping_isaac_asma_25)

mapping_isaac_asma_26 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_asma_26 = factor(data$isaac_asma_26, levels = names(mapping_isaac_asma_26), labels = mapping_isaac_asma_26)

mapping_isaac_asma_27 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_asma_27 = factor(data$isaac_asma_27, levels = names(mapping_isaac_asma_27), labels = mapping_isaac_asma_27)

mapping_isaac_asma_28 = c(
	"0" = "No",
	"1" = "Si"
)
data$isaac_asma_28 = factor(data$isaac_asma_28, levels = names(mapping_isaac_asma_28), labels = mapping_isaac_asma_28)

mapping_isaac_rinitis_29 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_29 = factor(data$isaac_rinitis_29, levels = names(mapping_isaac_rinitis_29), labels = mapping_isaac_rinitis_29)

mapping_isaac_rinitis_30 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_30 = factor(data$isaac_rinitis_30, levels = names(mapping_isaac_rinitis_30), labels = mapping_isaac_rinitis_30)

mapping_isaac_rinitis_31 = c(
	"0" = "Menos de 1 mes al año",
	"1" = "1 a 3 meses al año",
	"2" = "4 o más meses al año"
)
data$isaac_rinitis_31 = factor(data$isaac_rinitis_31, levels = names(mapping_isaac_rinitis_31), labels = mapping_isaac_rinitis_31)

mapping_isaac_rinitis_32 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_32 = factor(data$isaac_rinitis_32, levels = names(mapping_isaac_rinitis_32), labels = mapping_isaac_rinitis_32)

mapping_isaac_rinitis_33 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_33 = factor(data$isaac_rinitis_33, levels = names(mapping_isaac_rinitis_33), labels = mapping_isaac_rinitis_33)

mapping_isaac_rinitis_34 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_rinitis_34 = factor(data$isaac_rinitis_34, levels = names(mapping_isaac_rinitis_34), labels = mapping_isaac_rinitis_34)

mapping_isaac_dermatitis_35 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_35 = factor(data$isaac_dermatitis_35, levels = names(mapping_isaac_dermatitis_35), labels = mapping_isaac_dermatitis_35)

mapping_isaac_dermatitis_36 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_36 = factor(data$isaac_dermatitis_36, levels = names(mapping_isaac_dermatitis_36), labels = mapping_isaac_dermatitis_36)

mapping_isaac_dermatitis_37 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_37 = factor(data$isaac_dermatitis_37, levels = names(mapping_isaac_dermatitis_37), labels = mapping_isaac_dermatitis_37)

mapping_isaac_dermatitis_38 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_38 = factor(data$isaac_dermatitis_38, levels = names(mapping_isaac_dermatitis_38), labels = mapping_isaac_dermatitis_38)

mapping_isaac_dermatitis_39 = c(
	"0" = "No ha afectado mi sueño",
	"1" = "Ha afectado ligeramente mi sueño",
	"2" = "Ha afectado moderadamente mi sueño",
	"3" = "Ha afectado severamente mi sueño"
)
data$isaac_dermatitis_39 = factor(data$isaac_dermatitis_39, levels = names(mapping_isaac_dermatitis_39), labels = mapping_isaac_dermatitis_39)

mapping_isaac_dermatitis_40 = c(
	"1" = "Sí",
	"0" = "No"
)
data$isaac_dermatitis_40 = factor(data$isaac_dermatitis_40, levels = names(mapping_isaac_dermatitis_40), labels = mapping_isaac_dermatitis_40)

mapping_cuestionario_adolescentes_alergias_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_alergias_complete = factor(data$cuestionario_adolescentes_alergias_complete, levels = names(mapping_cuestionario_adolescentes_alergias_complete), labels = mapping_cuestionario_adolescentes_alergias_complete)

mapping_cuestionario_adolescentes_antropometria_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_antropometria_complete = factor(data$cuestionario_adolescentes_antropometria_complete, levels = names(mapping_cuestionario_adolescentes_antropometria_complete), labels = mapping_cuestionario_adolescentes_antropometria_complete)

mapping_cuestionario_adolescentes_presion_arterial_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_presion_arterial_complete = factor(data$cuestionario_adolescentes_presion_arterial_complete, levels = names(mapping_cuestionario_adolescentes_presion_arterial_complete), labels = mapping_cuestionario_adolescentes_presion_arterial_complete)

mapping_sintomas_depresivos_1 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_1 = factor(data$sintomas_depresivos_1, levels = names(mapping_sintomas_depresivos_1), labels = mapping_sintomas_depresivos_1)

mapping_sintomas_depresivos_2 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_2 = factor(data$sintomas_depresivos_2, levels = names(mapping_sintomas_depresivos_2), labels = mapping_sintomas_depresivos_2)

mapping_sintomas_depresivos_3 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_3 = factor(data$sintomas_depresivos_3, levels = names(mapping_sintomas_depresivos_3), labels = mapping_sintomas_depresivos_3)

mapping_sintomas_depresivos_4 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_4 = factor(data$sintomas_depresivos_4, levels = names(mapping_sintomas_depresivos_4), labels = mapping_sintomas_depresivos_4)

mapping_sintomas_depresivos_5 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_5 = factor(data$sintomas_depresivos_5, levels = names(mapping_sintomas_depresivos_5), labels = mapping_sintomas_depresivos_5)

mapping_sintomas_depresivos_6 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_6 = factor(data$sintomas_depresivos_6, levels = names(mapping_sintomas_depresivos_6), labels = mapping_sintomas_depresivos_6)

mapping_sintomas_depresivos_7 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_7 = factor(data$sintomas_depresivos_7, levels = names(mapping_sintomas_depresivos_7), labels = mapping_sintomas_depresivos_7)

mapping_sintomas_depresivos_8 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_8 = factor(data$sintomas_depresivos_8, levels = names(mapping_sintomas_depresivos_8), labels = mapping_sintomas_depresivos_8)

mapping_sintomas_depresivos_9 = c(
	"0" = "Nunca",
	"1" = "Varios días",
	"2" = "Más de la mitad de los días",
	"3" = "Casi todos los días"
)
data$sintomas_depresivos_9 = factor(data$sintomas_depresivos_9, levels = names(mapping_sintomas_depresivos_9), labels = mapping_sintomas_depresivos_9)

mapping_sintomas_ansiedad_1 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_1 = factor(data$sintomas_ansiedad_1, levels = names(mapping_sintomas_ansiedad_1), labels = mapping_sintomas_ansiedad_1)

mapping_sintomas_ansiedad_2 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_2 = factor(data$sintomas_ansiedad_2, levels = names(mapping_sintomas_ansiedad_2), labels = mapping_sintomas_ansiedad_2)

mapping_sintomas_ansiedad_3 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_3 = factor(data$sintomas_ansiedad_3, levels = names(mapping_sintomas_ansiedad_3), labels = mapping_sintomas_ansiedad_3)

mapping_sintomas_ansiedad_4 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_4 = factor(data$sintomas_ansiedad_4, levels = names(mapping_sintomas_ansiedad_4), labels = mapping_sintomas_ansiedad_4)

mapping_sintomas_ansiedad_5 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_5 = factor(data$sintomas_ansiedad_5, levels = names(mapping_sintomas_ansiedad_5), labels = mapping_sintomas_ansiedad_5)

mapping_sintomas_ansiedad_6 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_6 = factor(data$sintomas_ansiedad_6, levels = names(mapping_sintomas_ansiedad_6), labels = mapping_sintomas_ansiedad_6)

mapping_sintomas_ansiedad_7 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_7 = factor(data$sintomas_ansiedad_7, levels = names(mapping_sintomas_ansiedad_7), labels = mapping_sintomas_ansiedad_7)

mapping_sintomas_ansiedad_8 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_8 = factor(data$sintomas_ansiedad_8, levels = names(mapping_sintomas_ansiedad_8), labels = mapping_sintomas_ansiedad_8)

mapping_sintomas_ansiedad_9 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_9 = factor(data$sintomas_ansiedad_9, levels = names(mapping_sintomas_ansiedad_9), labels = mapping_sintomas_ansiedad_9)

mapping_sintomas_ansiedad_10 = c(
	"0" = "Nunca",
	"1" = "Ocasionalmente",
	"2" = "Mitad del tiempo",
	"3" = "La mayor parte del tiempo",
	"4" = "Todo el tiempo"
)
data$sintomas_ansiedad_10 = factor(data$sintomas_ansiedad_10, levels = names(mapping_sintomas_ansiedad_10), labels = mapping_sintomas_ansiedad_10)

mapping_nutricion_1 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_1 = factor(data$nutricion_1, levels = names(mapping_nutricion_1), labels = mapping_nutricion_1)

mapping_nutricion_2 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_2 = factor(data$nutricion_2, levels = names(mapping_nutricion_2), labels = mapping_nutricion_2)

mapping_nutricion_3 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_3 = factor(data$nutricion_3, levels = names(mapping_nutricion_3), labels = mapping_nutricion_3)

mapping_nutricion_4 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_4 = factor(data$nutricion_4, levels = names(mapping_nutricion_4), labels = mapping_nutricion_4)

mapping_nutricion_5 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_5 = factor(data$nutricion_5, levels = names(mapping_nutricion_5), labels = mapping_nutricion_5)

mapping_nutricion_6 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_6 = factor(data$nutricion_6, levels = names(mapping_nutricion_6), labels = mapping_nutricion_6)

mapping_nutricion_7 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_7 = factor(data$nutricion_7, levels = names(mapping_nutricion_7), labels = mapping_nutricion_7)

mapping_nutricion_8 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_8 = factor(data$nutricion_8, levels = names(mapping_nutricion_8), labels = mapping_nutricion_8)

mapping_nutricion_9 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_9 = factor(data$nutricion_9, levels = names(mapping_nutricion_9), labels = mapping_nutricion_9)

mapping_nutricion_10 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_10 = factor(data$nutricion_10, levels = names(mapping_nutricion_10), labels = mapping_nutricion_10)

mapping_nutricion_11 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_11 = factor(data$nutricion_11, levels = names(mapping_nutricion_11), labels = mapping_nutricion_11)

mapping_nutricion_12 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_12 = factor(data$nutricion_12, levels = names(mapping_nutricion_12), labels = mapping_nutricion_12)

mapping_nutricion_13 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_13 = factor(data$nutricion_13, levels = names(mapping_nutricion_13), labels = mapping_nutricion_13)

mapping_nutricion_14 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_14 = factor(data$nutricion_14, levels = names(mapping_nutricion_14), labels = mapping_nutricion_14)

mapping_nutricion_15 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_15 = factor(data$nutricion_15, levels = names(mapping_nutricion_15), labels = mapping_nutricion_15)

mapping_nutricion_16 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_16 = factor(data$nutricion_16, levels = names(mapping_nutricion_16), labels = mapping_nutricion_16)

mapping_nutricion_17 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_17 = factor(data$nutricion_17, levels = names(mapping_nutricion_17), labels = mapping_nutricion_17)

mapping_nutricion_18 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_18 = factor(data$nutricion_18, levels = names(mapping_nutricion_18), labels = mapping_nutricion_18)

mapping_nutricion_19 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_19 = factor(data$nutricion_19, levels = names(mapping_nutricion_19), labels = mapping_nutricion_19)

mapping_nutricion_20 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_20 = factor(data$nutricion_20, levels = names(mapping_nutricion_20), labels = mapping_nutricion_20)

mapping_nutricion_21 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_21 = factor(data$nutricion_21, levels = names(mapping_nutricion_21), labels = mapping_nutricion_21)

mapping_nutricion_22 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_22 = factor(data$nutricion_22, levels = names(mapping_nutricion_22), labels = mapping_nutricion_22)

mapping_nutricion_23 = c(
	"1" = "Verdadero",
	"0" = "Falso",
	"99" = "Nunca"
)
data$nutricion_23 = factor(data$nutricion_23, levels = names(mapping_nutricion_23), labels = mapping_nutricion_23)

mapping_paqc_1 = c(
	"0" = "No tengo curso",
	"1" = "Casi nunca",
	"2" = "Algunas veces",
	"3" = "A menudo",
	"4" = "Siempre"
)
data$paqc_1 = factor(data$paqc_1, levels = names(mapping_paqc_1), labels = mapping_paqc_1)

mapping_paqc_2 = c(
	"1" = "Estuve sentado(a) (hablar, leer, trabajo de clases, revisar el celular)",
	"2" = "Estuve de pie o caminando",
	"3" = "Corrí o jugué un poco",
	"4" = "Corrí y jugué bastante",
	"5" = "Corrí y jugué intensamente la mayor parte del tiempo"
)
data$paqc_2 = factor(data$paqc_2, levels = names(mapping_paqc_2), labels = mapping_paqc_2)

mapping_paqc_3 = c(
	"1" = "Estuve sentado(a) (hablar, leer, trabajo de clases, revisar el celular)",
	"2" = "Estuve de pie o caminando",
	"3" = "Corrí o jugué un poco",
	"4" = "Corrí y jugué bastante",
	"5" = "Corrí y jugué intensamente la mayor parte del tiempo"
)
data$paqc_3 = factor(data$paqc_3, levels = names(mapping_paqc_3), labels = mapping_paqc_3)

mapping_paqc_4 = c(
	"0" = "Ninguna vez",
	"1" = "1 vez en la última semana",
	"2" = "2 o 3 veces en la última semana",
	"3" = "4 veces en la última semana",
	"4" = "6 o más veces en la última semana"
)
data$paqc_4 = factor(data$paqc_4, levels = names(mapping_paqc_4), labels = mapping_paqc_4)

mapping_paqc_5 = c(
	"0" = "Ninguna vez",
	"1" = "1 vez en la última semana",
	"2" = "2 o 3 veces en la última semana",
	"3" = "4 o 5 veces en la última semana",
	"4" = "6 o más veces en la última semana"
)
data$paqc_5 = factor(data$paqc_5, levels = names(mapping_paqc_5), labels = mapping_paqc_5)

mapping_paqc_6 = c(
	"0" = "Ninguna vez",
	"1" = "1 vez en la última semana",
	"2" = "2 o 3 veces en la última semana",
	"3" = "4 o 5 veces en la última semana",
	"4" = "6 o más veces en la última semana"
)
data$paqc_6 = factor(data$paqc_6, levels = names(mapping_paqc_6), labels = mapping_paqc_6)

mapping_paqc_7 = c(
	"1" = "Todo o la mayoría de mi tiempo libre lo dedique a actividades que requieren poco esfuerzo físico.",
	"2" = "A veces (1 o 2 veces en la última semana) hice actividad física en mi tiempo libre (por ejemplo: practicar deportes, correr, nadar, andar en bicicleta, hacer aeróbicos).",
	"3" = "Regularmente (3 o 4 veces en la última semana) hice actividad física en mi tiempo libre.",
	"4" = "Frecuentemente (5 o 6 veces en la última semana) hice actividad física en mi tiempo libre.",
	"5" = "Muy frecuentemente (7 o más veces la semana pasada) hice actividad física en mi tiempo libre."
)
data$paqc_7 = factor(data$paqc_7, levels = names(mapping_paqc_7), labels = mapping_paqc_7)

mapping_paqc_8_1___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___0 = factor(data$paqc_8_1___0, levels = names(mapping_paqc_8_1___0), labels = mapping_paqc_8_1___0)

mapping_paqc_8_1___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___1 = factor(data$paqc_8_1___1, levels = names(mapping_paqc_8_1___1), labels = mapping_paqc_8_1___1)

mapping_paqc_8_1___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___2 = factor(data$paqc_8_1___2, levels = names(mapping_paqc_8_1___2), labels = mapping_paqc_8_1___2)

mapping_paqc_8_1___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___3 = factor(data$paqc_8_1___3, levels = names(mapping_paqc_8_1___3), labels = mapping_paqc_8_1___3)

mapping_paqc_8_1___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___4 = factor(data$paqc_8_1___4, levels = names(mapping_paqc_8_1___4), labels = mapping_paqc_8_1___4)

mapping_paqc_8_1___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___unk = factor(data$paqc_8_1___unk, levels = names(mapping_paqc_8_1___unk), labels = mapping_paqc_8_1___unk)

mapping_paqc_8_1___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___ni = factor(data$paqc_8_1___ni, levels = names(mapping_paqc_8_1___ni), labels = mapping_paqc_8_1___ni)

mapping_paqc_8_1___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___inv = factor(data$paqc_8_1___inv, levels = names(mapping_paqc_8_1___inv), labels = mapping_paqc_8_1___inv)

mapping_paqc_8_1___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_1___nask = factor(data$paqc_8_1___nask, levels = names(mapping_paqc_8_1___nask), labels = mapping_paqc_8_1___nask)

mapping_paqc_8_2___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___0 = factor(data$paqc_8_2___0, levels = names(mapping_paqc_8_2___0), labels = mapping_paqc_8_2___0)

mapping_paqc_8_2___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___1 = factor(data$paqc_8_2___1, levels = names(mapping_paqc_8_2___1), labels = mapping_paqc_8_2___1)

mapping_paqc_8_2___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___2 = factor(data$paqc_8_2___2, levels = names(mapping_paqc_8_2___2), labels = mapping_paqc_8_2___2)

mapping_paqc_8_2___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___3 = factor(data$paqc_8_2___3, levels = names(mapping_paqc_8_2___3), labels = mapping_paqc_8_2___3)

mapping_paqc_8_2___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___4 = factor(data$paqc_8_2___4, levels = names(mapping_paqc_8_2___4), labels = mapping_paqc_8_2___4)

mapping_paqc_8_2___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___unk = factor(data$paqc_8_2___unk, levels = names(mapping_paqc_8_2___unk), labels = mapping_paqc_8_2___unk)

mapping_paqc_8_2___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___ni = factor(data$paqc_8_2___ni, levels = names(mapping_paqc_8_2___ni), labels = mapping_paqc_8_2___ni)

mapping_paqc_8_2___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___inv = factor(data$paqc_8_2___inv, levels = names(mapping_paqc_8_2___inv), labels = mapping_paqc_8_2___inv)

mapping_paqc_8_2___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_2___nask = factor(data$paqc_8_2___nask, levels = names(mapping_paqc_8_2___nask), labels = mapping_paqc_8_2___nask)

mapping_paqc_8_3___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___0 = factor(data$paqc_8_3___0, levels = names(mapping_paqc_8_3___0), labels = mapping_paqc_8_3___0)

mapping_paqc_8_3___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___1 = factor(data$paqc_8_3___1, levels = names(mapping_paqc_8_3___1), labels = mapping_paqc_8_3___1)

mapping_paqc_8_3___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___2 = factor(data$paqc_8_3___2, levels = names(mapping_paqc_8_3___2), labels = mapping_paqc_8_3___2)

mapping_paqc_8_3___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___3 = factor(data$paqc_8_3___3, levels = names(mapping_paqc_8_3___3), labels = mapping_paqc_8_3___3)

mapping_paqc_8_3___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___4 = factor(data$paqc_8_3___4, levels = names(mapping_paqc_8_3___4), labels = mapping_paqc_8_3___4)

mapping_paqc_8_3___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___unk = factor(data$paqc_8_3___unk, levels = names(mapping_paqc_8_3___unk), labels = mapping_paqc_8_3___unk)

mapping_paqc_8_3___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___ni = factor(data$paqc_8_3___ni, levels = names(mapping_paqc_8_3___ni), labels = mapping_paqc_8_3___ni)

mapping_paqc_8_3___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___inv = factor(data$paqc_8_3___inv, levels = names(mapping_paqc_8_3___inv), labels = mapping_paqc_8_3___inv)

mapping_paqc_8_3___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_3___nask = factor(data$paqc_8_3___nask, levels = names(mapping_paqc_8_3___nask), labels = mapping_paqc_8_3___nask)

mapping_paqc_8_4___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___0 = factor(data$paqc_8_4___0, levels = names(mapping_paqc_8_4___0), labels = mapping_paqc_8_4___0)

mapping_paqc_8_4___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___1 = factor(data$paqc_8_4___1, levels = names(mapping_paqc_8_4___1), labels = mapping_paqc_8_4___1)

mapping_paqc_8_4___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___2 = factor(data$paqc_8_4___2, levels = names(mapping_paqc_8_4___2), labels = mapping_paqc_8_4___2)

mapping_paqc_8_4___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___3 = factor(data$paqc_8_4___3, levels = names(mapping_paqc_8_4___3), labels = mapping_paqc_8_4___3)

mapping_paqc_8_4___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___4 = factor(data$paqc_8_4___4, levels = names(mapping_paqc_8_4___4), labels = mapping_paqc_8_4___4)

mapping_paqc_8_4___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___unk = factor(data$paqc_8_4___unk, levels = names(mapping_paqc_8_4___unk), labels = mapping_paqc_8_4___unk)

mapping_paqc_8_4___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___ni = factor(data$paqc_8_4___ni, levels = names(mapping_paqc_8_4___ni), labels = mapping_paqc_8_4___ni)

mapping_paqc_8_4___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___inv = factor(data$paqc_8_4___inv, levels = names(mapping_paqc_8_4___inv), labels = mapping_paqc_8_4___inv)

mapping_paqc_8_4___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_4___nask = factor(data$paqc_8_4___nask, levels = names(mapping_paqc_8_4___nask), labels = mapping_paqc_8_4___nask)

mapping_paqc_8_5___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___0 = factor(data$paqc_8_5___0, levels = names(mapping_paqc_8_5___0), labels = mapping_paqc_8_5___0)

mapping_paqc_8_5___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___1 = factor(data$paqc_8_5___1, levels = names(mapping_paqc_8_5___1), labels = mapping_paqc_8_5___1)

mapping_paqc_8_5___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___2 = factor(data$paqc_8_5___2, levels = names(mapping_paqc_8_5___2), labels = mapping_paqc_8_5___2)

mapping_paqc_8_5___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___3 = factor(data$paqc_8_5___3, levels = names(mapping_paqc_8_5___3), labels = mapping_paqc_8_5___3)

mapping_paqc_8_5___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___4 = factor(data$paqc_8_5___4, levels = names(mapping_paqc_8_5___4), labels = mapping_paqc_8_5___4)

mapping_paqc_8_5___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___unk = factor(data$paqc_8_5___unk, levels = names(mapping_paqc_8_5___unk), labels = mapping_paqc_8_5___unk)

mapping_paqc_8_5___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___ni = factor(data$paqc_8_5___ni, levels = names(mapping_paqc_8_5___ni), labels = mapping_paqc_8_5___ni)

mapping_paqc_8_5___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___inv = factor(data$paqc_8_5___inv, levels = names(mapping_paqc_8_5___inv), labels = mapping_paqc_8_5___inv)

mapping_paqc_8_5___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_5___nask = factor(data$paqc_8_5___nask, levels = names(mapping_paqc_8_5___nask), labels = mapping_paqc_8_5___nask)

mapping_paqc_8_6___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___0 = factor(data$paqc_8_6___0, levels = names(mapping_paqc_8_6___0), labels = mapping_paqc_8_6___0)

mapping_paqc_8_6___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___1 = factor(data$paqc_8_6___1, levels = names(mapping_paqc_8_6___1), labels = mapping_paqc_8_6___1)

mapping_paqc_8_6___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___2 = factor(data$paqc_8_6___2, levels = names(mapping_paqc_8_6___2), labels = mapping_paqc_8_6___2)

mapping_paqc_8_6___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___3 = factor(data$paqc_8_6___3, levels = names(mapping_paqc_8_6___3), labels = mapping_paqc_8_6___3)

mapping_paqc_8_6___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___4 = factor(data$paqc_8_6___4, levels = names(mapping_paqc_8_6___4), labels = mapping_paqc_8_6___4)

mapping_paqc_8_6___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___unk = factor(data$paqc_8_6___unk, levels = names(mapping_paqc_8_6___unk), labels = mapping_paqc_8_6___unk)

mapping_paqc_8_6___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___ni = factor(data$paqc_8_6___ni, levels = names(mapping_paqc_8_6___ni), labels = mapping_paqc_8_6___ni)

mapping_paqc_8_6___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___inv = factor(data$paqc_8_6___inv, levels = names(mapping_paqc_8_6___inv), labels = mapping_paqc_8_6___inv)

mapping_paqc_8_6___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_6___nask = factor(data$paqc_8_6___nask, levels = names(mapping_paqc_8_6___nask), labels = mapping_paqc_8_6___nask)

mapping_paqc_8_7___0 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___0 = factor(data$paqc_8_7___0, levels = names(mapping_paqc_8_7___0), labels = mapping_paqc_8_7___0)

mapping_paqc_8_7___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___1 = factor(data$paqc_8_7___1, levels = names(mapping_paqc_8_7___1), labels = mapping_paqc_8_7___1)

mapping_paqc_8_7___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___2 = factor(data$paqc_8_7___2, levels = names(mapping_paqc_8_7___2), labels = mapping_paqc_8_7___2)

mapping_paqc_8_7___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___3 = factor(data$paqc_8_7___3, levels = names(mapping_paqc_8_7___3), labels = mapping_paqc_8_7___3)

mapping_paqc_8_7___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___4 = factor(data$paqc_8_7___4, levels = names(mapping_paqc_8_7___4), labels = mapping_paqc_8_7___4)

mapping_paqc_8_7___unk = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___unk = factor(data$paqc_8_7___unk, levels = names(mapping_paqc_8_7___unk), labels = mapping_paqc_8_7___unk)

mapping_paqc_8_7___ni = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___ni = factor(data$paqc_8_7___ni, levels = names(mapping_paqc_8_7___ni), labels = mapping_paqc_8_7___ni)

mapping_paqc_8_7___inv = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___inv = factor(data$paqc_8_7___inv, levels = names(mapping_paqc_8_7___inv), labels = mapping_paqc_8_7___inv)

mapping_paqc_8_7___nask = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$paqc_8_7___nask = factor(data$paqc_8_7___nask, levels = names(mapping_paqc_8_7___nask), labels = mapping_paqc_8_7___nask)

mapping_paqc_9 = c(
	"0" = "No",
	"1" = "Sí"
)
data$paqc_9 = factor(data$paqc_9, levels = names(mapping_paqc_9), labels = mapping_paqc_9)

mapping_cuestionario_adolescentes_salud_mental_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_salud_mental_complete = factor(data$cuestionario_adolescentes_salud_mental_complete, levels = names(mapping_cuestionario_adolescentes_salud_mental_complete), labels = mapping_cuestionario_adolescentes_salud_mental_complete)

mapping_cirujia = c(
	"0" = "No",
	"1" = "Si"
)
data$cirujia = factor(data$cirujia, levels = names(mapping_cirujia), labels = mapping_cirujia)

mapping_ataque_corazon = c(
	"0" = "No",
	"1" = "Si"
)
data$ataque_corazon = factor(data$ataque_corazon, levels = names(mapping_ataque_corazon), labels = mapping_ataque_corazon)

mapping_presion_espirometria = c(
	"0" = "No",
	"1" = "Si"
)
data$presion_espirometria = factor(data$presion_espirometria, levels = names(mapping_presion_espirometria), labels = mapping_presion_espirometria)

mapping_pulso_espirometria = c(
	"0" = "No",
	"1" = "Si"
)
data$pulso_espirometria = factor(data$pulso_espirometria, levels = names(mapping_pulso_espirometria), labels = mapping_pulso_espirometria)

mapping_infeccion_respiratoria = c(
	"0" = "No",
	"1" = "Si"
)
data$infeccion_respiratoria = factor(data$infeccion_respiratoria, levels = names(mapping_infeccion_respiratoria), labels = mapping_infeccion_respiratoria)

mapping_broncodilatador_12h = c(
	"0" = "No",
	"1" = "Si"
)
data$broncodilatador_12h = factor(data$broncodilatador_12h, levels = names(mapping_broncodilatador_12h), labels = mapping_broncodilatador_12h)

mapping_broncodilatador_4h = c(
	"0" = "No",
	"1" = "Si"
)
data$broncodilatador_4h = factor(data$broncodilatador_4h, levels = names(mapping_broncodilatador_4h), labels = mapping_broncodilatador_4h)

mapping_fumo = c(
	"0" = "No",
	"1" = "Si"
)
data$fumo = factor(data$fumo, levels = names(mapping_fumo), labels = mapping_fumo)

mapping_fiebre = c(
	"0" = "No",
	"1" = "Si"
)
data$fiebre = factor(data$fiebre, levels = names(mapping_fiebre), labels = mapping_fiebre)

mapping_tos = c(
	"0" = "No",
	"1" = "Si"
)
data$tos = factor(data$tos, levels = names(mapping_tos), labels = mapping_tos)

mapping_dolor_garganta = c(
	"0" = "No",
	"1" = "Si"
)
data$dolor_garganta = factor(data$dolor_garganta, levels = names(mapping_dolor_garganta), labels = mapping_dolor_garganta)

mapping_flema = c(
	"0" = "No",
	"1" = "Si"
)
data$flema = factor(data$flema, levels = names(mapping_flema), labels = mapping_flema)

mapping_escalofrios = c(
	"0" = "No",
	"1" = "Si"
)
data$escalofrios = factor(data$escalofrios, levels = names(mapping_escalofrios), labels = mapping_escalofrios)

mapping_dolor_cuerpo = c(
	"0" = "No",
	"1" = "Si"
)
data$dolor_cuerpo = factor(data$dolor_cuerpo, levels = names(mapping_dolor_cuerpo), labels = mapping_dolor_cuerpo)

mapping_fatiga = c(
	"0" = "No",
	"1" = "Si"
)
data$fatiga = factor(data$fatiga, levels = names(mapping_fatiga), labels = mapping_fatiga)

mapping_dolor_cabeza = c(
	"0" = "No",
	"1" = "Si"
)
data$dolor_cabeza = factor(data$dolor_cabeza, levels = names(mapping_dolor_cabeza), labels = mapping_dolor_cabeza)

mapping_congestion = c(
	"0" = "No",
	"1" = "Si"
)
data$congestion = factor(data$congestion, levels = names(mapping_congestion), labels = mapping_congestion)

mapping_goteo = c(
	"0" = "No",
	"1" = "Si"
)
data$goteo = factor(data$goteo, levels = names(mapping_goteo), labels = mapping_goteo)

mapping_estornudos = c(
	"0" = "No",
	"1" = "Si"
)
data$estornudos = factor(data$estornudos, levels = names(mapping_estornudos), labels = mapping_estornudos)

mapping_espirometria = c(
	"0" = "No",
	"1" = "Sí"
)
data$espirometria = factor(data$espirometria, levels = names(mapping_espirometria), labels = mapping_espirometria)

mapping_error_espirometria = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria = factor(data$error_espirometria, levels = names(mapping_error_espirometria), labels = mapping_error_espirometria)

mapping_espirometria_aceptable = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable = factor(data$espirometria_aceptable, levels = names(mapping_espirometria_aceptable), labels = mapping_espirometria_aceptable)

mapping_espirometria_2 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_2 = factor(data$espirometria_2, levels = names(mapping_espirometria_2), labels = mapping_espirometria_2)

mapping_error_espirometria_2 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_2 = factor(data$error_espirometria_2, levels = names(mapping_error_espirometria_2), labels = mapping_error_espirometria_2)

mapping_espirometria_aceptable_2 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_2 = factor(data$espirometria_aceptable_2, levels = names(mapping_espirometria_aceptable_2), labels = mapping_espirometria_aceptable_2)

mapping_espirometria_3 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_3 = factor(data$espirometria_3, levels = names(mapping_espirometria_3), labels = mapping_espirometria_3)

mapping_error_espirometria_3 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_3 = factor(data$error_espirometria_3, levels = names(mapping_error_espirometria_3), labels = mapping_error_espirometria_3)

mapping_espirometria_aceptable_3 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_3 = factor(data$espirometria_aceptable_3, levels = names(mapping_espirometria_aceptable_3), labels = mapping_espirometria_aceptable_3)

mapping_espirometria_4 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_4 = factor(data$espirometria_4, levels = names(mapping_espirometria_4), labels = mapping_espirometria_4)

mapping_error_espirometria_4 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_4 = factor(data$error_espirometria_4, levels = names(mapping_error_espirometria_4), labels = mapping_error_espirometria_4)

mapping_espirometria_aceptable_4 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_4 = factor(data$espirometria_aceptable_4, levels = names(mapping_espirometria_aceptable_4), labels = mapping_espirometria_aceptable_4)

mapping_espirometria_5 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_5 = factor(data$espirometria_5, levels = names(mapping_espirometria_5), labels = mapping_espirometria_5)

mapping_error_espirometria_5 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_5 = factor(data$error_espirometria_5, levels = names(mapping_error_espirometria_5), labels = mapping_error_espirometria_5)

mapping_espirometria_aceptable_5 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_5 = factor(data$espirometria_aceptable_5, levels = names(mapping_espirometria_aceptable_5), labels = mapping_espirometria_aceptable_5)

mapping_espirometria_6 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_6 = factor(data$espirometria_6, levels = names(mapping_espirometria_6), labels = mapping_espirometria_6)

mapping_error_espirometria_6 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_6 = factor(data$error_espirometria_6, levels = names(mapping_error_espirometria_6), labels = mapping_error_espirometria_6)

mapping_espirometria_aceptable_6 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_6 = factor(data$espirometria_aceptable_6, levels = names(mapping_espirometria_aceptable_6), labels = mapping_espirometria_aceptable_6)

mapping_espirometria_7 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_7 = factor(data$espirometria_7, levels = names(mapping_espirometria_7), labels = mapping_espirometria_7)

mapping_error_espirometria_7 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_7 = factor(data$error_espirometria_7, levels = names(mapping_error_espirometria_7), labels = mapping_error_espirometria_7)

mapping_espirometria_aceptable_7 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_7 = factor(data$espirometria_aceptable_7, levels = names(mapping_espirometria_aceptable_7), labels = mapping_espirometria_aceptable_7)

mapping_espirometria_8 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_8 = factor(data$espirometria_8, levels = names(mapping_espirometria_8), labels = mapping_espirometria_8)

mapping_error_espirometria_8 = c(
	"1" = "Vacilación",
	"2" = "Tos",
	"3" = "Soplar más rápido",
	"4" = "Espiración corta",
	"5" = "Cero flujos",
	"6" = "No meseta",
	"7" = "No error"
)
data$error_espirometria_8 = factor(data$error_espirometria_8, levels = names(mapping_error_espirometria_8), labels = mapping_error_espirometria_8)

mapping_espirometria_aceptable_8 = c(
	"1" = "Yes",
	"0" = "No"
)
data$espirometria_aceptable_8 = factor(data$espirometria_aceptable_8, levels = names(mapping_espirometria_aceptable_8), labels = mapping_espirometria_aceptable_8)

mapping_razon_detener = c(
	"1" = "ATS/ERA OK",
	"2" = "Mareos",
	"3" = "8 pruebas realizadas",
	"4" = "La máquina no funciona",
	"5" = "Participante rechazó",
	"6" = "Otro"
)
data$razon_detener = factor(data$razon_detener, levels = names(mapping_razon_detener), labels = mapping_razon_detener)

mapping_revision_curvas = c(
	"1" = "Sí",
	"0" = "No"
)
data$revision_curvas = factor(data$revision_curvas, levels = names(mapping_revision_curvas), labels = mapping_revision_curvas)

mapping_clasificacion_revision = c(
	"1" = "3 pruebas aceptables y 2 valores reproducibles dentro de 0.1 L;",
	"2" = "3 pruebas aceptables y 2 valores reproducibles dentro de 0.15 L;",
	"3" = "2 pruebas aceptables y 2 valores reproducibles dentro de 0.15 L;",
	"4" = "2+ pruebas aceptables y 2 valores dentro de 0.25 L;",
	"5" = "0/1 pruebas aceptables o 2 pruebas con valores > 0.25 L"
)
data$clasificacion_revision = factor(data$clasificacion_revision, levels = names(mapping_clasificacion_revision), labels = mapping_clasificacion_revision)

mapping_cuestionario_adolescentes_vi_espirometra_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$cuestionario_adolescentes_vi_espirometra_complete = factor(data$cuestionario_adolescentes_vi_espirometra_complete, levels = names(mapping_cuestionario_adolescentes_vi_espirometra_complete), labels = mapping_cuestionario_adolescentes_vi_espirometra_complete)

mapping_fin_de_cuestionarios_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$fin_de_cuestionarios_complete = factor(data$fin_de_cuestionarios_complete, levels = names(mapping_fin_de_cuestionarios_complete), labels = mapping_fin_de_cuestionarios_complete)

