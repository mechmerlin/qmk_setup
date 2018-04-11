# Instructions for using QMK and Git

## Introduction
One of the major features of using QMK is source control. In fact, it is the feature I use the most often. Almost all my keymaps can be recreated easily with BootMapperClient as I don't use most of the QMK features. 

Using Git, you're able to store your keymaps publicly and keep track of all its revisions. This guide will hopefully give you enough information to do this. 

The purpose of this guide is to help you get started as quick as possible and understand some of the basic concepts of git and how to best manage your QMK keymaps. 

It is assumed that you know your way around a terminal and already possess some basic Git and QMK knowledge. 

### Forking

Github describes forking as follows:

```
A fork is a copy of a repository. Forking a repository allows you to freely experiment with changes without affecting the original project.
```

In fact, QMK documentation also suggests this as a good starting point. Forking the qmk_firmware repo will create a copy of the project in your github account. 

Fork the [qmk_firmware repo](https://github.com/qmk/qmk_firmware)

### Branching

Now that you have your own fork, it is a good idea to have separate branches for each project you are working on. 

Begin by cloning your fork of the qmk_firmware repo

```
git clone https://github.com/your_github_user_here/qmk_firmware.git
```

Create a branch 

```
cd qmk_firmware
git checkout -b your_branch_name
```

In my case, I have a branch for each project I'm working on, and also a branch called merlin_keymaps, which keeps all my keymaps.

**Please Note**
Always make sure you are branching off of master

```
git checkout master
git checkout -b your_branch_name
```

When you have already created a branch, you can simply execute

```
git checkout your_branch_name
```

to switch to it. 

### Keeping things up to date

As mentioned earlier, you have your own copy of the qmk_firmware repo. Anything you check in, or push will not affect the qmk_firmware repo unless you open a pull request. 

Conversely, anything that is checked into the qmk_firmware repo will not be present in your fork. 

#### Configuring a remote

To keep your fork synced up with qmk_firmware, do the following

```
git remote add upstream https://github.com/qmk/qmk_firmware.git
```

Verify that you now have a remote repo named upstream

```
git remote -v
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
upstream  https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git (fetch)
upstream  https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git (push)
```

#### Syncing
Everytime you want to sync your fork with qmk_firmware, you can issue a 

```
git pull upstream master
```

which pulls from the master branch of the qmk_firmware and puts the changes in your branch. Make sure you commit and push after this. 

**Please Note***
You will have to sync ALL your branches. 

#### Summary

To update your fork from what you have checked in to Github do
```
git pull origin master
```
To update your fork from the original qmk_firmware project do
```
git pull upstream master
```

### Submitting Your Changes

Ideally, you will have a branch for a project that you want to contribute to the qmk_firmware repo for all to see. 

As long as you have commited and pushed all your changes in the specified branch

```
git push origin your_branch_name
```

the rest can be done on [qmk_firmware github webpage](https://github.com/qmk/qmk_firmware).

Click on the Pull Request Tab
Press the green New Pull Request button
Make sure the changes are going from your selected branch to qmk_firmware master branch
Write a detailed pull request and click submit!



