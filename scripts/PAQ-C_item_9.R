# Función para obtener el puntaje del día
obtener_puntaje_dia <- function(ninguna, a_veces, regular, frecuente, muy_frecuente) {
  case_when(
    ninguna == "Yes" ~ 1,
    a_veces == "Yes" ~ 2,
    regular == "Yes" ~ 3,
    frecuente == "Yes" ~ 4,
    muy_frecuente == "Yes" ~ 5,
    TRUE ~ NA_real_
  )
}