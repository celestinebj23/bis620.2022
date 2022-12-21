test_that(
  "The vital_hist run without warnings when the input is a disease that vital dataset contains",
  {
    data(vital)
    expect_no_warning(vital_hist(vital, "prca"))
  }
)

test_that(
  "The vital_hist run without errors when the input is a disease that vital dataset contains",
  {
    data(vital)
    expect_no_error(vital_hist(vital,"brca"))
  }
)

test_that(
  "The vital_hist() returns a ggplot object when the input is a disease in the vital dataset.",
  {
    data(vital)
    p <-  vital_hist(vital, "brca")
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The vital_hist() returns a ggplot object.",
  {
    data(vital)
    p <-  vital_hist(vital, "malca")
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The vital_hist() returns a ggplot object.",
  {
    data(vital)
    p <-  vital_hist(vital, "colca")
    expect_true(inherits(p, "gg"))
  }
)


test_that(
  "The vital_hist() returns a ggplot2 histogram when using the vital dataset and the input is a disease in the vital dataset.",
  {
    data(vital)
    vdiffr::expect_doppelganger("ggplot2 histogram", vital_hist(vital, "brca"))
  }
)

test_that(
  "The vital_hist errors when the input is not a disease in the vital dataset",
  {
    data(vital)
    expect_error(vital_hist(vital, "nnnn"), "It is not a disease in the vital dataset.")
  }
)

test_that(
  "The vital_hist errors when the dataset is not the vital dataset",
  {
    data(iris)
    expect_error(vital_hist(iris, "prca"), "It is not the vital dataset.")
  }
)
