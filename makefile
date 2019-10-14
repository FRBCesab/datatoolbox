all: index.html

index.html: css/* img/* index.rmd
	Rscript -e "rmarkdown::render(input = \"index.rmd\", output_file = \"index.html\", clean = TRUE, quiet = TRUE)"
