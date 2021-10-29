FROM rocker/verse
MAINTAINER Tianyi Wang <rogers24@ad.unc.edu>
RUN apt update && apt-get -y update && apt-get install -y  libudunits2-dev libgdal-dev libgeos-dev libproj-dev
RUN R -e "install.packages(\"tinytex\")"
RUN R -e "install.packages(\"tidyverse\")"
RUN R -e "install.packages(\"tidygeocoder\")"
RUN R -e "install.packages(\"janitor\")"
RUN R -e "install.packages(\"tidycensus\")"
RUN R -e "install.packages(\"labelled\")"
RUN R -e "install.packages(\"shiny\")"
RUN R -e "install.packages(\"dplyr\")"
RUN R -e "install.packages(\"ggplot2\")"
RUN R -e "install.packages(\"data.table\")"
RUN R -e "install.packages(\"ggthemes\")"
