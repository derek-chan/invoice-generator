# In case you need to install packages (only need to be done once)
# highlight this section and run
install.packages('rmarkdown')
install.packages('pagedown')
install.packages('fs')
install.packages('pagedown')
install.packages('withr')
install.packages('stringr')

# require these packages
library(pagedown)
library(withr)
library(stringr)

# Change invoice number below
invoice_number="2"

# Make the invoice number four digits by adding leading zeros.
# Change the second value in str_pad to change the length
invoice_number_print <- with_options(
  c(scipen = 999), 
  str_pad(invoice_number, 4, pad = "0")
)

temp_html <- fs::file_temp(ext = ".html")
rmarkdown::render("invoice_generation.Rmd", params = list(invoice_number_print=invoice_number_print),
             output_file = temp_html, envir = new.env())

# Change output location and file name below
pagedown::chrome_print(input=temp_html,output=paste("Invoice-Facture-",invoice_number_print,".pdf",sep=""))
