# Invoice Generator
This generates a pdf invoice from a csv file.

## Requirements
### R and RStudio
Download the latest version of R from [https://www.r-project.org](https://www.r-project.org).

You will also need a software to run R, most people use RStudio, available from [https://www.rstudio.com](https://www.r-studio.com)

### R packages
Once you have R installed, run the following commands in the console in order to install the necessary packages.

R Markdown, `install.packages("rmarkdown")`, the document format in which this was written.

Remotes, `install.packages("remotes")`, to allow for the downloading of the most up-to-date packages that are not on CRAN.

Pagedown, `remotes::install_github('rstudio/pagedown')`, to render the pdf.

Other packages relate to the reading of data, manipulation of data, and rendering.

    install.packages("data.table")
    install.packages("dplyr")
    install.packages("lubridate")
    install.packages("pander")
    install.packages("stats")
    install.packages("utils")
    install.packages("withr")
    install.packages("stringr")
    
## Getting Started
Open `invoice_generation.Rmd`.

Modify the header, invoice information, and bottom material to your liking. These sections will not change except for the variables that are gathered from the csv. The document is in Markdown, a guide is available from [https://www.markdownguide.org](https://www.markdownguide.org). It also accepts HTML. CSS settings are also included in the file.

In the date section, the date due is set as a number of days past the issue date. This can be modified here. Additionally, if language support is necessary, it is possible to change the names of the months here for a second language.

Replace the default logo and signature files with your own. 

### csv file
The document reads from this file. An associated Excel file is included to export this.

`invoice_no`: be careful whether there is a leading zero or not, this must be consistent with the invoice number when running.

`date_issue`: input date in `%m/%d/%y` format, that is 3/21/21. If your date format is different, modify within `invoice_generation.Rmd`. This carries no bearing on how the output date is rendered, which can be customized within the text.

`description` and `bill_to`: no line breaks are allowed. Markdown and HTML is allowed, therefore, use `<br/>` for a linebreak.

### Generate pdf
Open `run.R`.

Modify invoice number and output file name and location.

Run. 
