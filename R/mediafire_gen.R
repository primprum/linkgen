#' Mediafire Link Generator
#'
#' @importFrom xml2 read_html
#' @importFrom rvest html_nodes html_attr
#' @importFrom magrittr %>%
#'
#' @param link Shared Mediafire link
#'
#' @return Generated Mediafire link for download
#' @export
#'
#' @examples
#' mediafire_gen("http://mediafiresharedlink/file")
mediafire_gen <- function(link) {
  mediafire <- read_html(link)

  link <- mediafire %>%
    html_nodes(".download_link .input") %>%
    html_attr("href")

  return(link)
}
