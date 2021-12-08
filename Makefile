.PHONY: clean
SHELL: /bin/bash

clean:
	rm -f Figures/*
	rm -f report.pdf
	

Figures/Country and Meets.png: Data/meets.csv Scripts/Country and Meets.R
	mkdir -p Figures
	Rscript Scripts/Country and Meets.R


Figures/Men Weight Class.png: Data/powerlifting2015-2019.csv Scripts/Men Weight Class.R
	mkdir -p Figures
	Rscript Scripts/Men Weight Class.R

Figures/Women Weight Class.png: Data/powerlifting2015-2019.csv Scripts/Women Weight Class.R
	mkdir -p Figures
	Rscript Scripts/Women Weight Class.R

	
Figures/Highest Wilk for Men.png: Data/powerlifting2015-2019.csv Scripts/Highest Wilk for Men.R
	mkdir -p Figures
	Rscript Scripts/Highest Wilk for Men.R

Figures/Highest Wilk for Women.png: Data/powerlifting2015-2019.csv Scripts/Highest Wilk for Women.R
	mkdir -p Figures
	Rscript Scripts/Highest Wilk for Women.R
	
	
Figures/TotalKg.png: Data/powerlifting2015-2019.csv Scripts/TotalKg.R
	mkdir -p Figures
	Rscript Scripts/Relationship between lifted weights and body weights.R

Figures/BestBenchPress.png: Data/powerlifting2015-2019.csv Scripts/BestBenchPress.R
	mkdir -p Figures
	Rscript Scripts/Relationship between lifted weights and body weights.R
	
Figures/BestDeadlift.png: Data/powerlifting2015-2019.csv Scripts/BestDeadlift.R
	mkdir -p Figures
	Rscript Scripts/Relationship between lifted weights and body weights.R
	
Figures/BestSquat.png: Data/powerlifting2015-2019.csv Scripts/BestSquat.R
	mkdir -p Figures
	Rscript Scripts/Relationship between lifted weights and body weights.R

	
#Final report output ##############
report.pdf:\
 report.tex\
 Figures/Country and Meets.png\
 Figures/Men Weight Class.png\
 Figures/Women Weight Class.png\
 Figures/Highest Wilk for Men.png\
 Figures/Highest Wilk for Women.png\
 Figures/TotalKg.png\
 Figures/BestBenchPress.png\
 Figures/BestDeadlift.png\
 Figures/BestSquat.png
	R -e "tinytex::pdflatex('report.tex')"
