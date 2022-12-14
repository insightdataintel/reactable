% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/columns.R
\name{colGroup}
\alias{colGroup}
\title{Column group definitions}
\usage{
colGroup(
  name = NULL,
  columns = NULL,
  header = NULL,
  html = FALSE,
  align = NULL,
  headerVAlign = NULL,
  sticky = NULL,
  headerClass = NULL,
  headerStyle = NULL
)
}
\arguments{
\item{name}{Column group header name.}

\item{columns}{Character vector of column names in the group.}

\item{header}{Custom header renderer. An R function that takes the header value
as an argument, or a \code{\link[=JS]{JS()}} function that takes a column object and
table state object as arguments.}

\item{html}{Render header content as HTML? Raw HTML strings are escaped by default.}

\item{align}{Horizontal alignment of content in the column group header. One of
\code{"left"}, \code{"right"}, \code{"center"} (the default).}

\item{headerVAlign}{Vertical alignment of content in the column group header. One of
\code{"top"} (the default), \code{"center"}, \code{"bottom"}.}

\item{sticky}{Make the column group sticky when scrolling horizontally? Either
\code{"left"} or \code{"right"} to make the column group stick to the left or right side.

If a column group is sticky, all columns in the group will automatically
be made sticky.}

\item{headerClass}{Additional CSS classes to apply to the header.}

\item{headerStyle}{Inline styles to apply to the header. A named list or
character string.

Note that if \code{headerStyle} is a named list, property names should be camelCased.}
}
\value{
A column group definition object that can be used to create column
groups in \code{reactable()}.
}
\description{
Use \code{colGroup()} to create column groups in a table.
}
\examples{
reactable(
  iris,
  columns = list(
    Sepal.Length = colDef(name = "Length"),
    Sepal.Width = colDef(name = "Width"),
    Petal.Length = colDef(name = "Length"),
    Petal.Width = colDef(name = "Width")
  ),
  columnGroups = list(
    colGroup(name = "Sepal", columns = c("Sepal.Length", "Sepal.Width")),
    colGroup(name = "Petal", columns = c("Petal.Length", "Petal.Width"))
  )
)

}
