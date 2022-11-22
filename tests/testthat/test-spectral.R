test_that(
  "The spec_sig() is a list when the input has the right format.",
  {
    expect_type(spec_sig(ukb_accel), "list")
  }
)

test_that(
  "The spec_sig() errors when the input does not have columns X, Y, Z,
  and time sorted in time.",
  {
    expect_error(spec_sig(iris))
  }
)

test_that(
  "The output of the spec_sig() changes when the take_log is TRUE.",
  {
    expect_false(identical(spec_sig(ukb_accel),
                           spec_sig(ukb_accel, take_log = TRUE)))
  }
)
