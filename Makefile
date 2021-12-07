.PHONY: clean
SHELL: /bin/bash

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
	pdflatex report.tex




#Dataset needed for project & reading it in ############
powerlifting2015-2019.csv:\
 Scripts/read_data.R
	Rscript Scripts/read_data.R
	
meets.csv:\
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
	
Figures/TotalKg.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Relationship between lifted weights and body weights.R
	Rscript Scripts/Relationship between lifted weights and body weights.R
	
Figures/BestBenchPress.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Relationship between lifted weights and body weights.R
	Rscript Scripts/Relationship between lifted weights and body weights.R
	
Figures/BestDeadlift.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Relationship between lifted weights and body weights.R
	Rscript Scripts/Relationship between lifted weights and body weights.R
	
Figures/BestSquat.png:\
 Scripts/read_data.R\
 powerlifting2015-2019.csv\
 Scripts/Relationship between lifted weights and body weights.R
	Rscript Scripts/Relationship between lifted weights and body weights.R
