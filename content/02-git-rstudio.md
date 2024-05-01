---
title: Basic Git/GitHub Skills Using RStudio
---

::: {.callout-note icon=false}

## Learning Objectives

- Set up Git in the JupyterHub
- Learn how to use the Git GUI in RStudio
- Clone GitHub repositories to RStudio = get the repo into RStudio
- Practice 4 basic Git/GitHub skills: cloning, committing, push/pull

:::


## What is Git and GitHub?

**Git** A program to track your file changes and create a history of those changes. Creates a 'container' for a set of files called a repository.

**GitHub** A website to host these repositories and allow you to sync local copies (on your computer) to the website. *Lots* of functionality built on top of this.

![](img/git-repo-structure.png){width=200px}

## Some basic Git jargon

* **Repo** Repository. It is your code and the record of your changes. This record and also the status of your repo is a hidden folder called `.git` . You have a local repo and a remote repo. The remote repo is on GitHub (for in our case) is called `origin`. The local repo is on the JupyterHub.
* **Stage** Tell Git which changes you want to commit (write to the repo history).
* **Commit** Write a note about what change the staged files and "commit" that note to the repository record. You are also tagging this state of the repo and you could go back to this state if you wanted.
* **Push** Push local changes (commits) up to the remote repository on GitHub (`origin`).
* **Pull** Pull changes on GitHub into the local repository on the JupyterHub.
* **Git GUIs** A graphical interface for Git (which is command line). Today I will use `jupyterlab-git` which we have installed on JupyterHub.
* **Shell** A terminal window where we can issue `git` commands.


## Overview

Today I will cover the four basic Git/GitHub skills. The goal for today is to first get you comfortable with the basic skills and terminology. We will use what is called a  "trunk-based workflow".

### Simple Trunk-based Workflow:

* Make local (on your computer) changes to code.
* Record what those changes were about and commit to the code change record (history).
* Push those changes to your remote repository (aka origin)

We'll do this

![](./img/git-linear-flow-2.png)

## Setting up Git

**You should have gotten this done on Tuesday but if not here are the instructions**

Before we can work with Git in the JupyterHub, we need to do some set up.

1. Tell Git who you are and to store your credentials (GitHub login info)

[Show me](https://youtu.be/F0jsBeMcU24)

Paste this into a terminal window:
```
git config --global user.email "<your email>"
git config --global user.name "<your name>"
git config --global pull.rebase false
git config --global credential.helper store
```

2. Get a Personal Access Token from GitHub

Copy the token! You will need it in the next step.

[Show me](https://youtu.be/tkioJhF_gO8) Note, one change to this video is that you need to specify that you want a **classic** token.

3. Trigger Git to ask for your password (that personal access token)

You can do this by cloning a private repo. In the Terminal, issue this command

```shell
git clone https://github.com/nmfs-opensci/github_setup_check
```

It will ask for your GitHub username and password. At the password part, paste in the Personal Access Token.


## Git tab

When the instructions say to use or open or click the Git tab, 

![](./img/rstudio-git-tab.jpg)

## The Key Skills

* Skill 1: Create a blank repo on GitHub
* Skill 2: Clone your **GitHub** repo to RStudio
* Skill 3: Make some changes and commit those local changes
* Skill 4: Push the changes to GitHub

* Skill 1b: Copy someone else's GitHub repository

## Let's see it done!

### Skill 1: Create a blank repo on GitHub

1. Click the + in the upper left from YOUR GitHub page.
2. Give your repo the name `Test` and make sure it is public.
3. Click new and check checkbox to add the Readme file and `.gitignore`
4. Copy the URL of your new repo. It's in the browser where you normally see a URL.

[Show me](https://youtu.be/_QszqhWW_Mg)

### Skill 2: Clone your repo to the RStudio

In RStudio we do this by making a new project.

1. Copy the URL of your repo. `https://www.github.com/yourname/Test`
2. File > New Project > Version Control > Git
3. Past in the URL of your repo from Step 1
3. Check that it is being created in your Home directory which will be denoted `~` in the JupyterHub.
4. Click Create.

[Show me](https://youtu.be/GObjzx6v6rU)


### Skill 3: Make some changes and commit your changes

This writes a note about what changes you have made. It also marks a 'point' in time that you can go back to if you need to.

1. Make some changes to the README.md file in the Test repo.
2. Click the Git tab, and stage the change(s) by checking the checkboxes next to the files listed.
2. Click the Commit button.
3. Add a commit comment, click commit.

[Show me](https://youtu.be/9XfChAPpVm4)

### Skill 4: Push changes to GitHub / Pull changes from GitHub

To push changes you committed in Skill #3

1. From Git tab, click on the Green up arrow that says Push.

2. To pull changes on GitHub that are not on your local computer:

1. Make some changes directly on GitHub (not in RStudio)
2. From Git tab, click on the down arrow that says Pull.

[Show me](https://youtu.be/wcQNQH0matE)

### Pair-activity 1

In RStudio,

1. Make a copy of README.md
2. Rename it to <youname>.md
3. Add some text.
4. Stage and commit the added file.
5. Push to GitHub.

Try before watching.

[Show me in RStudio](https://youtu.be/xUbxqzp7Rss) -- [Show me in the shell](https://youtu.be/tvmX41b5pTU) -- [Show me in jupyter-git](https://youtu.be/ejmkkjWJ_Es)

### Pair-activity 2

All of this activity is in RStudio.

1. Clone this repo <https://github.com/nmfs-opensci/git-basics> to RStudio and create a new project
2. Navigate to the files in your new project, create a filed called to `<yourname>.md`. Use your actual name so the filename is different from everyone elses.
3. Stage and then commit that new file.
4. Push to GitHub.
5. Make some more changes and push to GitHub.
6. Pull in your partner's (and everyone elses) changes

[Show me in RStudio](https://youtu.be/y8YWuPHC60g) -- [Show me in JupyterLab](https://youtu.be/w0ub1hBZh70)

### Pair-activity 3

You can copy your own or other people's repos^[This is different from forking. There is no connection to the original repository.].

1. In a browser, go to the GitHub repository <https://github.com/RWorkflow-Workshops/Week5>
2. Copy its URL.
3. Navigate to your GitHub page: click your icon in the upper right and then 'your repositories'
4. Click the `+` in top right and click `import repository`. Paste in the URL and give your repo a name.
5. Use Skill #1 to clone your new repo to RStudio and create a new project

