.PHONY: clean
SHELL: /bin/bash

#Final report output ##############
report.pdf:\
 report.tex\
 Figures/Country and Meets.png\
 Figures/Men Weight Class.png\
 Figures/Women Weight Class.png\
 Figures/Men Common Division.png\
 Figures/Highest Wilk for Men.png\
 Figures/Highest Wilk for Women.png
	pdflatex report.tex




#Dataset needed for project & reading it in ############
powerlifting2015-2019.csv:\
 Scripts/read_data.R
	Rscript Scripts/read_data.R
  
  
#Data needed for the figures
Figures/Country and Meets.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Country and Meets.R
	Rscript Scripts/Country and Meets.R
	
Figures/Men Weight Class.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Men Weight Class.R
	Rscript Scripts/Men Weight Class.R
	
Figures/Women Weight Class.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Women Weight Class.R
	Rscript Scripts/Women Weight Class.R
	
Figures/Men Common Division.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Men Common Division.R
	Rscript Scripts/Men Common Division.R
	
Figures/Highest Wilk for Men:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Highest Wilk for Men.R
	Rscript Scripts/Highest Wilk for Men.R
	
Figures/Highest Wilk for Women.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Highest Wilk for Women.R
	Rscript Scripts/Highest Wilk for Women.R
