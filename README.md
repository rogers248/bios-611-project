# bios-611-project

## *Analysis of Powerlifting Database*
### Introduction

This dataset is a snapshot of the OpenPowerlifting database as of February 2018. OpenPowerlifting is an organization which tracks meets and competitor results in the sport of powerlifting, in which competitors complete to lift the most weight for their class in three separate weightlifting categories.


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
