#' Plot VITAL Data
#' This function plots Vital data of a disease by groups.
#' @param v a data frame
#' @param x a particular disease in vital data frame
#' @return a histogram of person years of a particular disease faceted by four groups.
#' @importFrom dplyr select filter group_by vdiffr
#' @importFrom ggplot2 aes ggplot geom_histogram facet_grid
#' @examples
#' data(vital)
#' @export

'%!in%' <- function(x,y)!('%in%'(x,y))
vital_hist <- function(v, x) {
  ## Check parameters
  ## Check that the given dataset is the vital dataset
  if (identical(v, vital) == FALSE) {
    stop(paste0("It is not the vital dataset."))
  }
  ## Check that the given x disease type exists in the data
  if (x %!in% colnames(vital)) {
    stop(paste0("It is not a disease in the vital dataset."))
  }
  ## Begin the function
  if ("brca" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, brca, brcayrs) %>%
      filter(brca == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(brcayrs, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("malca" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, malca, malcayrs) %>%
      filter(malca == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(malcayrs, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("prca" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, prca, prcayrs) %>%
      filter(prca == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(prcayrs, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("colca" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, colca, colcayrs) %>%
      filter(colca == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(colcayrs, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("majorcvd" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, majorcvd, majryears) %>%
      filter(majorcvd == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(majryears, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("imporcvd" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, imporcvd, impryears) %>%
      filter(imporcvd == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(impryears, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("totmi" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, totmi, miyears) %>%
      filter(totmi == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(miyears, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }else if ("totst" %!in% x) {
    dfv <- data.frame(v)
    dfdisease <- dfv %>%
      select(vitdactive, fishoilactive, totst, styears) %>%
      filter(totst == 1) %>%
      group_by(vitdactive, fishoilactive)
    ggplot(dfdisease, aes(styears, fill = vitdactive, color = fishoilactive)) +
      geom_histogram(bins = 30) +
      facet_grid(c("vitdactive", "fishoilactive"))
  }

}
