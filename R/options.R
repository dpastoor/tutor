
#' Set tutor options
#' 
#' Set various tutor options that control the display and evaluation of 
#' exercises.
#' 
#' @param exercise.cap Caption for exercise chunk (defaults to \code{"Code")}.
#' @param exercise.eval Whether to pre-evaluate the exercise so the reader can 
#'   see some default output (defaults to \code{FALSE}).
#' @param exercise.timelimit Number of seconds to limit execution time to 
#'   (defaults to \code{30}).
#' @param exercise.lines Lines of code for exercise editor (defaults to the 
#'   number of lines in the code chunk).
#' @param exercise.checker Function used to check exercise answers.
#' 
#' @export
tutor_options <- function(exercise.cap = "Code",
                          exercise.eval = FALSE,
                          exercise.timelimit = 30,
                          exercise.lines = NULL,
                          exercise.checker = NULL) {
  
  # string to evalute for setting chunk options  %1$s
  set_option_code <- 'if (!missing(%1$s)) knitr::opts_chunk$set(%1$s = %1$s)'
  
  # set options as required
  eval(parse(text = sprintf(set_option_code, "exercise.cap")))
  eval(parse(text = sprintf(set_option_code, "exercise.eval")))
  eval(parse(text = sprintf(set_option_code, "exercise.timelimit")))
  eval(parse(text = sprintf(set_option_code, "exercise.lines")))
  eval(parse(text = sprintf(set_option_code, "exercise.checker")))
}