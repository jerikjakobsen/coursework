# target to make the file report
all: 05_final_report.html

googlebooks-eng-all-1gram-20120701-1.gz: # add filenames for data and/or code this output depends on here
	bash 01_download_1grams.sh

year_counts.tsv: # add filenames for data and/or code this output depends on here 
	bash 02_filter_1grams.sh

googlebooks-eng-all-totalcounts-20120701.txt: # add filenames for data and/or code this output depends on here
	bash 03_downdload_totals.sh

total_counts.csv: # add filenames for data and/or code this output depends on here
	bash 04_reformat_totals.sh

05_final_report.html: # add filenames for data and/or code this output depends on here
	Rscript -e "rmarkdown::render('05_final_report.Rmd')"
