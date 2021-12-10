.PHONY: clean


clean:
	rm -f Figures/*
	rm -f report.pdf
	

Figures/Country_and_Meet.png: Data/meets.csv Scripts/Country_and_Meet.R
	mkdir -p Figures
	Rscript Scripts/Country_and_Meet.R


Figures/Men_Weight_Class.png: Data/powerlifting2015-2019.csv Scripts/Men_Weight_Class.R
	mkdir -p Figures
	Rscript Scripts/Men_Weight_Class.R

Figures/Women_Weight_Class.png: Data/powerlifting2015-2019.csv Scripts/Women_Weight_Class.R
	mkdir -p Figures
	Rscript Scripts/Women_Weight_Class.R

	
Figures/Highest_Wilk_for_Men.png: Data/powerlifting2015-2019.csv Scripts/Highest_Wilk_for_Men.R
	mkdir -p Figures
	Rscript Scripts/Highest_Wilk_for_Men.R

Figures/Highest_Wilk_for_Women.png: Data/powerlifting2015-2019.csv Scripts/Highest_Wilk_for_Women.R
	mkdir -p Figures
	Rscript Scripts/Highest_Wilk_for_Women.R
	
Figures/Relationship_between_lifted_weights_and_body_weights.png: Data/powerlifting2015-2019.csv Scripts/Relationship_between_lifted_weights_and_body_weights.R
	mkdir -p Figures
	Rscript Scripts/Relationship_between_lifted_weights_and_body_weights.R
	
#Final report output ##############
report.pdf:\
 Data/powerlifting2015-2019.csv\
 Figures/Country_and_Meet.png\
 Figures/Men_Weight_Class.png\
 Figures/Women_Weight_Class.png\
 Figures/Highest_Wilk_for_Men.png\
 Figures/Highest_Wilk_for_Women.png\
 Figures/Relationship_between_lifted_weights_and_body_weights.png\
 report.tex
	R -e "tinytex::pdflatex('report.tex')"
