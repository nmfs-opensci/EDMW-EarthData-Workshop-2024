---
title: Set-up
---

## User accounts

1. **GitHub username**
    - Create a GitHub account (if you don’t already have one) at <https://github.com>. Advice for choosing a GitHub username: this is a professional username that you will use in work settings. GitHub accounts are not anonymous; this is for sharing work. Using your real name is common.
    - Remember your username and password; you will need to be logged in during the course!
    - Here is [a video](https://www.youtube.com/watch?v=nHXw4mGoqiE) showing the whole process
1. **Earthdata Login account** 
    - Create an Earthdata Login account (if you don't already have one) at <https://urs.earthdata.nasa.gov>
    - Remember your username and password; you will need to be logged in during the course!
    
## Get on the JupyterHub

Once you have submitted your GitHub username and have been accepted as a member of the DaskHub team on the nmfs-opensci organization, you can log-into the JupyterHub.

<https://dhub.opensci.live/>

* **Make sure to choose an R image** or else you will not see the RStudio Server button. [Watch a video](https://youtu.be/o99jZWHqKi8) of the login process and basic JupyterHub orientation.

* home directory is yours and no one else can see it. To share files, you can connect to a GitHub repository or use the `shared` directory. Everyone can read and write to this directory. Please don't delete content that is not your own.



## Set up authentication to GitHub

You need to tell GitHub who you are so you can **push** your local changes up to GitHub. There are a few ways to do this. I am going to show you a way that works on any computer, including a virtual computer like the JupyterHub.

### Step 1: Generate a Personal Access Token

We are going to generate a **classic** token.

1. Go to https://github.com/settings/tokens
2. Click Generate new token > Generate new token (classic)
3. When the pop-up shows up, fill in a description, click the "repo" checkbox, and then scroll to bottom to click "Generate".
4. For scope, select "repo".
5. SAVE the token. You need it for the next step.

### Step 2: Tell Git who your are

1. Open a terminal. In Jupyter Lab, you will see a box labelled "Terminal" on the Launcher window. In RStudio, you will see a tab (usually in lower left) with the label "Terminal"
2. Paste these 3 lines of code into the terminal
```
git config --global user.email "<your email>"
git config --global user.name "<your name>"
git config --global pull.rebase false
git config --global credential.helper store
```
Replace `"<your email>"` with something like `jane.doe@noaa.gov`. Replace `"<your name>"` with something like `"Jane Doe"`. Notice the quotes.

### Step 3: Trigger git to ask for your password

There are a few ways to do this.

a) Clone a repo, make a change, and then commit and push the change
b) Clone a private repo

Option b is easiest if you are new to Git and GitHub. 

1. Open a terminal window
2. Make sure you are in the home directory by typing `cd ~`
3. Clone a repo and create an RStudio project. File > New Project > Version Control > Git. Paste in this URL https://github.com/nmfs-opensci/github_setup_check and make sure it is creating the repo at `~` (home directory).
4. You will be asked for your GitHub username and password. For the password, enter the PERSONAL ACCESS TOKEN from Step 1.

[Watch a video of these 4 steps](https://youtu.be/wivH2T9FwlA)

[Full instructions with other ways to do this from R](https://rverse-tutorials.github.io/RWorkflow-NWFSC-2022/set-up.html#Git_from_RStudio_Desktop)



<!--
## Install R and RStudio Desktop

We will mainly be using a browser based platform (JupyterHub) for coding and projects. JupyterHub and JupyterLab is a standard platform for "big data geoscience" and working on this platform will prepare you for using the tools and notebooks developed by this research community. However we also want you to be able to run R and RStudio on your own computer.

* R: [https://cran.r-project.org/](https://cran.r-project.org/)
    - Install the latest version of R that you can for your operating system. Preferably you want version 4.3+ but at the least you need version 4.1.
    - If you have R already installed, update to the newest version (4.3)
* RStudio Desktop: [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
    - Install the most recent version you can. Update your version if you have an old version installed.


## Intro to R courses

If you are unfamiliar with R, these will only take you a 2-3 hours and will make your experience much more worthwhile.

* [W3Schools Basic R](https://www.w3schools.com/r/default.asp)

* [Basics of R and installing RStudio](https://www.udemy.com/course/r-basics/)

* [YouTube: R for Beginners](https://www.youtube.com/watch?v=fDRa82lxzaU)

* For a longer free course, CodeAcademy has a good [Intro to R](https://www.codecademy.com/learn/learn-r). Note this is 20 hours. You do NOT need to do this whole course before the hackweek! 

* If you know the basics of R but have never done modeling, then you can start with this [2.5 hour course](https://www.udemy.com/course/machlearn1) that covers basic linear regression with R and plotting with ggplot2: 

* One of the best free R courses is [Coursera's Learn R](https://www.coursera.org/learn/r-programming). You can see the lectures for free. Make sure to click AUDIT when it asks you to sign up for a 7-day trial. You do not need to sign up for anything to go through the material.

-->
