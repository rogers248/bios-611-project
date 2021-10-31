# bios-611-project





# Docker Use

## Step1:
Create a dockerfile and save the txt on the desktop.

## Step2:
Create a docker image through the code: ‘docker build . -f /Users/moyi/Desktop/Dockerfile.txt -t tianyi’
Name the new image tianyi.

## Step3:
To use Rstudio, write the following codes in terminal
‘docker run -v /$(pwd):/home/rstudio/work -e PASSWORD=12345 --rm -p 8787:8787 tianyi’


# Shiny
