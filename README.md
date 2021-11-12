# bios-611-project

## *Analysis of Powerlifting Database*
### Introduction

![john-hack](https://user-images.githubusercontent.com/91029009/141522571-ba33421b-6c0d-482e-91fe-47ad7c02cf7d.jpeg)

This dataset is a snapshot of the OpenPowerlifting database as of 2015 to 2019. OpenPowerlifting is an organization which tracks meets and competitor results in the sport of powerlifting, in which competitors complete to lift the most weight for their class in three separate weightlifting categories. I'm using the data from it to make some deeper analysis in the powerlift field recently.


## Docker Use

### Step1:
Create a dockerfile and save the txt on the desktop.

### Step2:
Create a docker image through the code:   
```docker build . -f /Users/moyi/Desktop/Dockerfile.txt -t tianyi```

Name the new image tianyi.

### Step3:
To use Rstudio, write the following codes in terminal

```docker run -v /$(pwd):/home/rstudio/work -e PASSWORD=12345 --rm -p 8787:8787 tianyi```

## Makefile
The makefile will help build components of the report. To build figures, run the command in Rstudio terminal:
```make Figures/<figurename>.png```

To build the final report, run in Rstudio terminal:
```make report.pdf```
