#build function
FUNCTION_NAME <- function(INPUT, PARAM) {
  #BODY
  return(OUTPUT)
}

#square
custom_squared <- function(x) {
  squared_x <- x **2
  return(squared_x)
}
custom_squared(-3)
custom_squared(-3:3)

#BMI cal
get_bmi <- function(height, weight) {
  height <- height/100
  bmi <- weight / (height **2)
  return(bmi)
}
get_bmi(183, 85.5)
get_bmi(c(200,150),c(225,169))

#bool param
circle_calculation <- function(r, is_area = TRUE) {
  #call build-in function
  area <- pi * (r**2)
  perimeter <- 2 * pi * r
  if (is_area) {
    return(area)
  } else {
    return(perimeter)
  }
}
circle_calculation(3)
circle_calculation(3, FALSE)

#multi param
bmi_calculation <- function(height, weight) {
  height <- height/100
  bmi <- weight / (height **2)
  if (bmi <18.5) {
    bmi_label <- '過輕'
  } else if (bmi > 30) {
    bmi_label <- '肥胖'
  } else if (bmi >= 18.5 & bmi < 25) {
    bmi_label <- '正常'
  } else {
    bmi_label <- '過重'
  }
  bmi_list <- list(
    bmi = bmi,
    bmiLabel = bmi_label
  )
  return(bmi_list)
}
shaq <- bmi_calculation(216, 147)
shaq$bmi
shaq$bmiLabel

#clean function
messy_data <- data.frame(c(1, 2, 3, 4, NA), c(1, 2, 3, NA, 5), c(1, 2, NA, 4, 5))
names(messy_data) <- c('var_1', 'var_2', 'var_3')
messy_data

clean_data <- function(df, impute_value){
  n_rows <- nrow(df)
  na_sum <- rep(NA, times = n_rows)
  for (i in 1:n_rows) {
    na_sum[i] <- sum(is.na(df[i, ]))
    df[i, ][is.na(df[i, ])] <- impute_value
  }
  complete_case <- df[as.logical(!na_sum), ]
  imputed_data <- df
  df_list <- list(
    complete_case = complete_case,
    imputed_data = imputed_data
  )
  return(df_list)
}
cleaned_data <- clean_data(messy_data, impute_value = 999)
cleaned_data$complete_cases
cleaned_data$imputed_data