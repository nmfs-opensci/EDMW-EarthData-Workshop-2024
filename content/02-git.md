---
title: Git - Set-up for Pushing
---

# To push to GitHub (optional)

This is optional if you want to save your work to GitHub.

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


