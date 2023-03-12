# Manuscript Template

This repo is a template for scientific manuscripts based on my own needs. While I would strongly prefer to write everything in plain text and export to PDF via LaTeX, collaborators often prefer to comment on Microsoft Word documents. The scripts herein make it a little easier for me to work in the manner I most enjoy while producing familiar manuscript files for co-authors.

## Dependencies

I am running Kubuntu 22.04.2 LTS, but this should probably work on other Linux operating systems as long as you can install the following tools.

- [LibreOffice 7.5](https://www.libreoffice.org)
- [make](https://www.gnu.org/software/make/)
- [R](https://cran.r-project.org)
- [quarto](https://quarto.org/docs/get-started/)

The `setup.r` file loads several R packages that can be installed as follows:

```r
install.packages(c(
  "data.table", "ggplot2", "ggthemes", "knitr", "kableExtra", "remotes"
))

remotes::install_github("jrgant/gantenmisc")
```
