#' Run one of the `shi18ny` examples.
#'
#' For a list of available examples, run `shi18ny::runExample()`.
#'
#' @param example_name Name of the example
#'
#' @export
runExample <- function(example_name = NULL){
  rootDir <- system.file("examples", package = "shi18ny")

  valid_examples <- list.files(rootDir)

  valid_examples_string <- paste0("'", paste0(valid_examples, collapse = "', '"), "'.")

  if(is.null(example_name)) return(paste0("Valid examples are ", valid_examples_string))

  if(!example_name %in% valid_examples) stop(paste0("Invalid example file. Choose one of ", valid_examples_string))

  rootDir <- system.file("examples", package = "shi18ny")
  exampleDir <- paste0(rootDir, "/", example_name)

  shiny::runApp(exampleDir)

}
