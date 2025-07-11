#' Generate SmartInsights Report
#'
#' This function generates an AI-powered data profiling report using R Markdown.
#'
#' @param dataset_path The path to a structured CSV file.
#' @return A SmartInsights HTML report saved to the `/reports` folder.
#' @export
generate_smartinsights <- function(dataset_path = "inst/extdata/hotel_bookings.csv") {

  # Load Required Packages
  required_packages <- c("rmarkdown", "readr", "dplyr", "janitor", "skimr", "ggplot2", "lubridate")
  invisible(lapply(required_packages, function(pkg) {
    if (!require(pkg, character.only = TRUE)) install.packages(pkg)
    library(pkg, character.only = TRUE)
  }))

  # Logging Helper
  log_message <- function(msg) {
    timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
    message <- paste0("[", timestamp, "] ", msg)
    cat(message, "\n")
  }

  # Validate Dataset Path
  if (!file.exists(dataset_path)) {
    stop("⚠️ Dataset not found at: ", dataset_path)
  } else {
    log_message(paste("✅ Dataset found:", dataset_path))
  }

  # Create /reports folder if needed
  if (!dir.exists("reports")) {
    dir.create("reports", recursive = TRUE)
    log_message("📁 Created /reports folder.")
  }

  # Render RMarkdown Report
  log_message("📊 Rendering SmartInsights Report...")
  rmarkdown::render(
    input = system.file("rmarkdown/templates/smartinsights_case_study.Rmd", package = "smartinsights"),
    params = list(dataset_path = dataset_path),
    output_file = "SmartInsights_Report.html",
    output_dir = "reports",
    envir = new.env()
  )

  log_message("✅ Report successfully rendered and saved to /reports.")
}
