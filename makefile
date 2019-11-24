theme=assets/css/xaringan-themer.css
part41=sessions/session04/index01.html
part42=sessions/session04/index02.html
part7=sessions/session07/index.html
index=index.html

all: $(theme) $(part41) $(part42) $(part7) $(index)

$(theme): template/*
	Rscript -e "source(\"template/xaringan_themer.R\")"

$(part41): assets/* sessions/session04/assets/* sessions/session04/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session04/index01.rmd\", output_file = \"index01.html\", output_dir = \"sessions/session04\", clean = TRUE, quiet = TRUE)"

$(part42): assets/* sessions/session04/assets/* sessions/session04/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session04/index02.rmd\", output_file = \"index02.html\", output_dir = \"sessions/session04\", clean = TRUE, quiet = TRUE)"

$(part7): assets/* sessions/session07/assets/* sessions/session07/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session07/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session07\", clean = TRUE, quiet = TRUE)"

$(index): assets/* index.rmd
	Rscript -e "rmarkdown::render(input = \"index.rmd\", output_file = \"index.html\", clean = TRUE, quiet = TRUE)"
