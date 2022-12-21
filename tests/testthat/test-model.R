test_that(
  "The vital_model_smoke() run without warnings when the input is a disease that vital dataset contains",
  {
    data(vital)
    expect_no_warning(vital_model_smoke(vital, "prca"))
  }
)

test_that(
  "The vital_model_nosmoke() run without warnings when the input is a disease that vital dataset contains",
  {
    data(vital)
    expect_no_warning(vital_model_nosmoke(vital, "prca"))
  }
)

test_that(
  "The vital_model_smoke() errors when the dataset is not the vital dataset",
  {
    data(iris)
    expect_error(vital_model_smoke(iris, "prca"), "It is not the vital dataset.")
  }
)

test_that(
  "The vital_model_nosmoke() errors when the dataset is not the vital dataset",
  {
    data(iris)
    expect_error(vital_model_nosmoke(iris, "prca"), "It is not the vital dataset.")
  }
)

test_that(
  "The vital_model_smoke() returns a ggplot object when the input is a disease in the vital dataset.",
  {
    data(vital)
    p <-  vital_model_smoke(vital, "brca")
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The vital_model_nosmoke() returns a ggplot object when the input is a disease in the vital dataset.",
  {
    data(vital)
    p <-  vital_model_nosmoke(vital, "brca")
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The vital_model_smoke() returns a ggplot2 point when using the vital dataset and the input is a disease in the vital dataset.",
  {
    data(vital)
    vdiffr::expect_doppelganger("ggplot2 point", vital_model_smoke(vital, "brca"))
  }
)

test_that(
  "The vital_model_smoke() returns a ggplot2 point when using the vital dataset and the input is a disease in the vital dataset.",
  {
    data(vital)
    vdiffr::expect_doppelganger("ggplot2 point", vital_model_smoke(vital, "brca"))
  }
)




