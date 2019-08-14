#' @import shiny
NULL

.onLoad <- function(libname, pkgname) {
  funs <- ls(envir = asNamespace("shiny"))
  new_funs <- janitor::make_clean_names(funs, "snake")
  for (i in seq_along(funs)) {
    assign(new_funs[[i]], get(funs[[i]], asNamespace("shiny")), asNamespace(pkgname))
  }
}
