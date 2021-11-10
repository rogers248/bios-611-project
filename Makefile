.PHONY: clean
SHELL: /bin/bash

#Final report output ##############
report.pdf:\
 report.tex\
 Figures/Country and Meets.png\
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
