#' Save your ESS email as an environment variable
#'
#' @param ess_email a character string with your registered email.
#'
#' @details You should only run \code{set_email()} once and every \code{import_} and \code{download_} function
#' should work fine. Make sure your email is registered at
#' \url{http://www.europeansocialsurvey.org/} before setting the email.
#'
#' @return Nothing. Executed to have the side effect of setting the env var.
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' set_email("my_registered@email.com")
#'
#' import_rounds(1)
#' }
#'
set_email <- function(ess_email) {
  Sys.setenv("ESS_EMAIL" = ess_email)
}

get_email <- function() {
  ess_email <- Sys.getenv("ESS_EMAIL")
  if (ess_email == "") {
    stop("No email account set as environment variable. Use set_email to set your email.")
  }
  ess_email
}
