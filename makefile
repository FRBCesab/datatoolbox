# PAS TOUCHE SVP !!!!!!
theme=assets/css/xaringan-themer.css
part1=sessions/session01/index.html
part2=sessions/session02/index.html
part3=sessions/session03/index.html
part41=sessions/session04/index01.html
part5=sessions/session05/index.html
part7=sessions/session07/index.html

exer1=exercises/exercise01/index.html
exer3=exercises/exercise03/index.html

index=index.html

all: $(theme) $(part1) $(part2) $(part3) $(part41) $(part5) $(part7) $(exer1) $(exer3) $(index)

$(theme): template/*
	Rscript -e "source(\"template/xaringan_themer.R\")"

$(part1): assets/* sessions/session01/assets/* sessions/session01/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session01/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session01\", clean = TRUE, quiet = TRUE)"

$(part2): assets/* sessions/session02/assets/* sessions/session02/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session02/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session02\", clean = TRUE, quiet = TRUE)"

$(part3): assets/* sessions/session03/assets/* sessions/session03/*.rmd
		Rscript -e "rmarkdown::render(input = \"sessions/session03/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session03\", clean = TRUE, quiet = TRUE)"

$(part41): assets/* sessions/session04/assets/* sessions/session04/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session04/index01.rmd\", output_file = \"index01.html\", output_dir = \"sessions/session04\", clean = TRUE, quiet = TRUE)"

$(part5): assets/* sessions/session05/assets/* sessions/session05/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session05/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session05\", clean = TRUE, quiet = TRUE)"

$(part7): assets/* sessions/session07/assets/* sessions/session07/*.rmd
	Rscript -e "rmarkdown::render(input = \"sessions/session07/index.rmd\", output_file = \"index.html\", output_dir = \"sessions/session07\", clean = TRUE, quiet = TRUE)"

$(exer1): assets/* exercises/exercise01/assets/* exercises/exercise01/*.rmd
	Rscript -e "rmarkdown::render(input = \"exercises/exercise01/index.rmd\", output_file = \"index.html\", output_dir = \"exercises/exercise01\", clean = TRUE, quiet = TRUE)"

$(exer3): assets/* exercises/exercise03/assets/* exercises/exercise03/*.rmd
	Rscript -e "rmarkdown::render(input = \"exercises/exercise03/index.rmd\", output_file = \"index.html\", output_dir = \"exercises/exercise03\", clean = TRUE, quiet = TRUE)"

$(index): assets/* index.rmd
	Rscript -e "rmarkdown::render(input = \"index.rmd\", output_file = \"index.html\", clean = TRUE, quiet = TRUE)"
