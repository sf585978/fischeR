
#' theme_saf
#'
#' My ggplot2 theme
#'
#' @param base_size Base font size
#' @param base_family Font family.
#' @return My ggplot2 theme (similar to theme_minimal/theme_bw)
#' @export
theme_saf <-
  function(base_size = 12,
           base_family = "Futura") {
    if (!requireNamespace("ggplot2", quietly = FALSE)) {
      stop("Must install ggplot2 pkg", call. = FALSE)
    }
    theme_bw(base_size = base_size, base_family = base_family) %+replace%
      theme(
        panel.grid = element_blank(),
        panel.border = element_rect(color = "black", size = 1, fill = NA),
        panel.background = element_blank(),
        axis.title = element_text(size = 14),
        axis.text = element_text(size = 10),
        # axis.line.x = element_line(size = 0.5),
        title = element_text(size = 16, face = "bold", hjust = 0),
        legend.background = element_rect(fill="transparent", colour=NA),
        legend.key = element_rect(fill="transparent", colour=NA),
        legend.title = element_text(size = 14),
        legend.text = element_text(size = 10),
        plot.caption = element_text(size = 10, face = "plain")
      )
  }
