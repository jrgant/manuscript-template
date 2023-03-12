# Manuscript Template

This repo is a template for scientific manuscripts based on my own needs. While I would strongly prefer to write everything in plain text and export to PDF via LaTeX, collaborators often prefer to comment on Microsoft Word documents. The scripts herein make it a little easier for me to work in the manner I most enjoy while producing familiar manuscript files for co-authors.

## Dependencies

I am running Kubuntu 22.04.2 LTS, but this should probably work on other Linux operating systems as long as you can install the following tools.

- [LibreOffice 7.5](https://www.libreoffice.org)
- [make](https://www.gnu.org/software/make/)
- [R](https://cran.r-project.org)
- [quarto](https://quarto.org/docs/get-started/)

The `setup.r` file loads a number of R packages using the `p_load()` function from `pacman`. It should suffice to install the following items before running the R script, as `p_load()` will install any missing packages and their dependencies. One exception is the [`gantenmisc`](https://github.com/jrgant/gantenmisc/) package, which you'll need to install separately if you plan to use it.

```r
install.packages(c("pacman", "remotes"))
remotes::install_github("jrgant/gantenmisc")
```
