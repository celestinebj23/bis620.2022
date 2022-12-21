
#' Plot VITAL Data
#' This function models and plots the relationship between bmi and disease with the effect of smkoing
#' @param v a data frame
#' @param x a particular disease in vital data frame
#' @return a scatter plot with regression line of a particular disease faceted by four groups.
#' @importFrom dplyr select filter group_by
#' @importFrom ggplot2 aes ggplot geom_histogram facet_grid geom_point geom_smooth geom_line ggtitle
#' @importFrom ggpubr stat_regline_equation stat_cor
#' @examples
#' data(vital)
#' @export
#'
vital_model_smoke <- function(v, x) {
  df <- data.frame(v)
  ## Check that the given dataset is the vital dataset
  if (identical(v, vital) == FALSE) {
    stop(paste0("It is not the vital dataset."))
  }
  ## Check that the given x disease type exists in the data
  if (x %!in% colnames(vital)) {
    stop(paste0("It is not a disease in the vital dataset."))
  }
  if ("brca" %in% x) {
  temp <- df %>% select(brcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
    filter(currsmk==1)%>%
    group_by(vitdactive, fishoilactive)
  p1 <- ggplot(temp, aes(bmi, brcayrs, fill = vitdactive, color = fishoilactive), fig(10,12)) +
    geom_point() +
    facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
    stat_regline_equation(label.x=30, label.y=8, size=2) +
    stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
    ggtitle("with effect of smoking")
  return(p1)
  }else if("malca" %in% x) {
    temp <- df %>% select(malcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, malcayrs, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }else if("prca" %in% x) {
    temp <- df %>% select(prcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, prcayrs, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }else if("colca" %in% x) {
    temp <- df %>% select(colcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, colcayrs, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }else if("majorcvd" %in% x) {
    temp <- df %>% select(majryears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, majryears, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }else if("imporcvd" %in% x) {
    temp <- df %>% select(impryears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, impryears, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }else if("totmi" %in% x) {
    temp <- df %>% select(miyears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, miyears, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }else if("totst" %in% x) {
    temp <- df %>% select(styears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==1)%>%
      group_by(vitdactive, fishoilactive)
    p1 <- ggplot(temp, aes(bmi, styears, fill = vitdactive, color = fishoilactive), fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("with effect of smoking")
    return(p1)
  }

}

#' Plot VITAL Data
#' This function models and plots the relationship between bmi and disease without the effect of smkoing
#' @param v a data frame
#' @param x a particular disease in vital data frame
#' @return a scatter plot with regression line of a particular disease faceted by four groups.
#' @importFrom dplyr select filter group_by
#' @importFrom ggplot2 aes ggplot geom_histogram facet_grid
#' @examples
#' data(vital)
#' @export
#'
vital_model_nosmoke <- function(v, x) {
  df <- data.frame(v)
  ## Check that the given dataset is the vital dataset
  if (identical(v, vital) == FALSE) {
    stop(paste0("It is not the vital dataset."))
  }
  ## Check that the given x disease type exists in the data
  if (x %!in% colnames(vital)) {
    stop(paste0("It is not a disease in the vital dataset."))
  }
  if ("brca" %in% x) {
  temp <- df %>% select(brcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
    filter(currsmk==0)%>%
    group_by(vitdactive, fishoilactive)
  p2 <- ggplot(temp, aes(bmi, brcayrs, fill = vitdactive, color = fishoilactive),fig(10,12)) +
    geom_point() +
    facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
    stat_regline_equation(label.x=30, label.y=8, size=2) +
    stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
    ggtitle("without effect of smoking")
  return(p2)
  }else if("malca" %in% x){
    temp <- df %>% select(malcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, malcayrs, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }else if("prca" %in% x){
    temp <- df %>% select(prcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, prcayrs, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }else if("colca" %in% x){
    temp <- df %>% select(colcayrs, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, colcayrs, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }else if("majorcvd" %in% x){
    temp <- df %>% select(majryears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, majryears, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }else if("imporcvd" %in% x){
    temp <- df %>% select(impryears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, impryears, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }else if("totmi" %in% x){
    temp <- df %>% select(miyears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, miyears, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }else if("totst" %in% x){
    temp <- df %>% select(styears, bmi, currsmk, vitdactive, fishoilactive) %>%
      filter(currsmk==0)%>%
      group_by(vitdactive, fishoilactive)
    p2 <- ggplot(temp, aes(bmi, styears, fill = vitdactive, color = fishoilactive),fig(10,12)) +
      geom_point() +
      facet_grid(c("vitdactive", "fishoilactive")) + geom_smooth(method=lm) +
      stat_regline_equation(label.x=30, label.y=8, size=2) +
      stat_cor(aes(label=..rr.label..), label.x=30, label.y=7, size=1.8) +
      ggtitle("without effect of smoking")
    return(p2)
  }




}
