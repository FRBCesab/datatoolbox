all: session04 home

session04: sessions/session04/*
	Rscript -e "rmarkdown::render(input = \"sessions/session04/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session04\", clean = TRUE, quiet = TRUE)"


home: assets/* index.rmd
	Rscript -e "rmarkdown::render(input = \"index.rmd\", output_file = \"index.html\", clean = TRUE, quiet = TRUE)"
