% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grouped_ggcorrmat.R
\name{grouped_ggcorrmat}
\alias{grouped_ggcorrmat}
\title{Visualization of a correlalogram (or correlation matrix) using
'ggplot2'/'ggcorrplot' for all levels of a grouping variable}
\usage{
grouped_ggcorrmat(grouping.var, title.prefix = "Group", data, cor.vars,
  cor.vars.names = NULL, output = "plot", type = "full",
  method = "square", corr.method = "pearson", exact = FALSE,
  continuity = TRUE, beta = 0.2, digits = 2, sig.level = 0.05,
  hc.order = FALSE, hc.method = "complete", lab = TRUE,
  colors = c("#E69F00", "white", "#009E73"), outline.color = "black",
  ggtheme = ggplot2::theme_gray, ggstatsplot.theme = TRUE,
  subtitle = NULL, caption = NULL, caption.default = TRUE,
  lab.col = "black", lab.size = 5, insig = "pch", pch = 4,
  pch.col = "black", pch.cex = 11, tl.cex = 12, tl.col = "black",
  tl.srt = 45, axis.text.x.margin.t = 0, axis.text.x.margin.r = 0,
  axis.text.x.margin.b = 0, axis.text.x.margin.l = 0,
  legend.title.margin = TRUE, t.margin = unit(0, "mm"), b.margin = unit(3,
  "mm"), messages = TRUE, ...)
}
\arguments{
\item{grouping.var}{Grouping variable.}

\item{title.prefix}{Character specifying the prefix text for the fixed plot
title (name of each factor level) (Default: \code{"Group"}).}

\item{data}{Dataframe from which variables specified are preferentially to be
taken.}

\item{cor.vars}{List of variables for which the correlation matrix is to be
computed and visualized.}

\item{cor.vars.names}{Optional list of names to be used for \code{cor.vars}. The
names should be entered in the same order.}

\item{output}{Expected output from this function: \code{"plot"} (visualization
matrix) or \code{"correlations"} (correlation matrix) or \code{"p-values"} (matrix of
p-values).}

\item{type}{Character, \code{"full"} (default), \code{"upper"} or \code{"lower"}, display
full matrix, lower triangular or upper triangular matrix.}

\item{method}{Character argument that decides the visualization method of
correlation matrix to be used. Allowed values are \code{"square"} (default),
\code{"circle"}}

\item{corr.method}{A character string indicating which correlation
coefficient is to be computed (\code{"pearson"} (default) or \code{"kendall"} or
\code{"spearman"}). \code{"robust"} can also be entered but only if \code{output} argument
is set to either \code{"correlations"} or \code{"p-values"}. The robust correlation
used is percentage bend correlation (see \code{?WRS2::pball}). Abbreviations
will \strong{not} work.}

\item{exact}{A logical indicating whether an exact \emph{p}-value should be
computed. Used for Kendall's \emph{tau} and Spearman's \emph{rho}. For more details,
see \code{?stats::cor.test}.}

\item{continuity}{A logical. If \code{TRUE}, a continuity correction is used for
Kendall's \emph{tau} and Spearman's \emph{rho} when not computed exactly (Default:
\code{TRUE}).}

\item{beta}{A numeric bending constant for robust correlation coefficient
(Default: \code{0.2}).}

\item{digits}{Decides the number of decimal digits to be added into the plot
(Default: \code{2}).}

\item{sig.level}{Significance level (Default: \code{0.05}). If the p-value in
p-mat (p-value matrix) is bigger than \code{sig.level}, then the corresponding
correlation coefficient is regarded as insignificant.}

\item{hc.order}{Logical value. If \code{TRUE}, correlation matrix will be
hc.ordered using \code{hclust} function (Default is \code{FALSE}).}

\item{hc.method}{The agglomeration method to be used in \code{hclust} (see
\code{?hclust}).}

\item{lab}{Logical value. If \code{TRUE}, correlation coefficient values will be
displayed in the plot.}

\item{colors}{A vector of 3 colors for low, mid, and high correlation values.}

\item{outline.color}{The outline color of square or circle. Default value is
\code{"gray"}.}

\item{ggtheme}{A function, \code{ggplot2} theme name. Default value is
\code{ggplot2::theme_gray}. Allowed values are the official \code{ggplot2} themes,
including \code{theme_bw}, \code{theme_minimal}, \code{theme_classic}, \code{theme_void}, etc.}

\item{ggstatsplot.theme}{A logical. Decides whether default theme for
\code{ggstatsplot}, which is \code{theme_mprl}, is to be overlaid on the entered
theme (Default: \code{ggstatsplot.theme = TRUE}).}

\item{subtitle}{The text for the plot subtitle.}

\item{caption}{The text for the plot caption. If not specified (if it is
\code{NULL}, i.e.), a default caption will be shown.}

\item{caption.default}{Logical decides whether the default caption should be
shown.}

\item{lab.col}{Color to be used for the correlation coefficient labels
(applicable only when \code{lab = TRUE}).}

\item{lab.size}{Size to be used for the correlation coefficient labels
(applicable only when \code{lab = TRUE}).}

\item{insig}{Character used to show specialized insignificant correlation
coefficients (\code{"pch"} (default) or \code{"blank"}). If \code{"blank"}, the
corresponding glyphs will be removed; if "pch" is used, characters (see
\code{?pch} for details) will be added on the corresponding glyphs.}

\item{pch}{Decides the glyphs (read point shapes) to be used for insignificant correlation
coefficients (only valid when \code{insig = "pch"}). Default value is \code{pch = 4}.}

\item{pch.col, pch.cex}{The color and the cex (size) of \code{pch} (only valid when
\code{insig = "pch"}). Defaults are \code{pch.col = "#F0E442"} and \code{pch.cex = 10}.}

\item{tl.cex, tl.col, tl.srt}{The size, the color, and the string rotation of
text label (variable names, i.e.).}

\item{axis.text.x.margin.t, axis.text.x.margin.r, axis.text.x.margin.b, axis.text.x.margin.l}{Margins between x-axis and the variable name texts (t: top, r: right, b:
bottom, l:left), especially useful in case the names are slanted, i.e. when the tl.srt is
between \code{45} and \code{75} (Defaults: \code{0}, \code{0}, \code{0}, \code{0}, resp.).}

\item{legend.title.margin}{Logical indicating whether to adjust the margin between legend title and the
colorbar (Default: \code{TRUE}).}

\item{t.margin, b.margin}{Margins in grid units. For more details, see
\code{?grid::unit()}.}

\item{messages}{Decides whether messages references, notes, and warnings are
to be displayed (Default: \code{TRUE}).}

\item{...}{Arguments passed on to \code{combine_plots}
\describe{
  \item{title.text}{String or plotmath expression to be drawn as title for the
\emph{combined plot}.}
  \item{title.color}{Text color for title.}
  \item{title.size}{Point size of title text.}
  \item{title.vjust}{Vertical justification for title. Default = 0.5 (centered
on y). 0 = baseline at y, 1 = ascender at y.}
  \item{title.hjust}{Horizontal justification for title. Default = 0.5
(centered on x). 0 = flush-left at x, 1 = flush-right.}
  \item{title.fontface}{The font face ("plain", "bold", etc.) for title.}
  \item{caption.text}{String or plotmath expression to be drawn as the caption
for the \emph{combined plot}.}
  \item{caption.color}{Text color for caption.}
  \item{caption.size}{Point size of title text.}
  \item{caption.vjust}{Vertical justification for caption. Default = \code{0.5}
(centered on y). \code{0} = baseline at y, \code{1} = ascender at y.}
  \item{caption.hjust}{Horizontal justification for caption. Default = \code{0.5}
(centered on x). \code{0} = flush-left at x, \code{1} = flush-right.}
  \item{caption.fontface}{The font face (\code{"plain"}, \code{"bold"}, \code{"italic"},
\code{"bold.italic"}) for caption.}
  \item{sub.text}{The label with which the \emph{combined plot} should be annotated.
Can be a plotmath expression.}
  \item{sub.color}{Text color for annotation label.}
  \item{sub.size}{Point size of annotation text.}
  \item{sub.x}{The x position of annotation label.}
  \item{sub.y}{The y position of annotation label.}
  \item{sub.hjust}{Horizontal justification for annotation label.}
  \item{sub.vjust}{Vertical justification for annotation label.}
  \item{sub.vpadding}{Vertical padding. The total vertical space added to the
label, given in grid units. By default, this is added equally above and
below the label. However, by changing the y and vjust parameters, this can
be changed.}
  \item{sub.fontface}{The font face (\code{"plain"}, \code{"bold"}, \code{"italic"},
\code{"bold.italic"}) for the annotation label.}
  \item{sub.angle}{Angle at which annotation label is to be drawn.}
  \item{sub.lineheight}{Line height of annotation label.}
  \item{title.caption.rel.heights}{Numerical vector of relative columns heights
while combining (title, plot, caption).}
  \item{title.rel.heights}{Numerical vector of relative columns heights while
combining (title, plot).}
  \item{caption.rel.heights}{Numerical vector of relative columns heights while
combining (plot, caption).}
}}
}
\description{
Helper function for \code{ggstatsplot::ggcorrmat} to apply this
function across multiple levels of a given factor and combining the
resulting plots using \code{ggstatsplot::combine_plots}.
}
\note{
If you are using R Notebook or Markdown and see a blank image being
inserted when a chunk is executed, this behavior can be turned off by
setting \code{legend.title.margin = FALSE}.
}
\examples{

# for getting correlations
ggstatsplot::grouped_ggcorrmat(
 data = datasets::iris,
 grouping.var = Species,
 cor.vars = Sepal.Length:Petal.Width,
 output = "plot",
 nrow = 3,
 ncol = 1
)

# for getting correlations
ggstatsplot::grouped_ggcorrmat(
 data = datasets::iris,
 grouping.var = Species,
 cor.vars = Sepal.Length:Petal.Width,
 output = "correlations"
)

}
\seealso{
\code{\link{ggcorrmat}}
}
\author{
Indrajeet Patil
}
