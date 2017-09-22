#
# Example R code to install packages
# See http://cran.r-project.org/doc/manuals/R-admin.html#Installing-packages for details
#

#remove.packages("codetools")
update.packages("codetools")

###########################################################
# Update this line with the R packages to install:

my_packages = c("shiny")

###########################################################

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p, dependencies = TRUE)
  }
  else {
    cat(paste("Skipping already installed package:", p, "\n"))
  }
}
invisible(sapply(my_packages, install_if_missing))
