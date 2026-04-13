# MerantheMapping

Mapping repo for Eternia 4.

## Installation

- You will need [Git](https://github.com/git-for-windows/git/releases/download/v2.53.0.windows.2/Git-2.53.0.2-64-bit.exe) to properly install this repository. Click on the link for the installer.
- You will need a GitHub account to create pull requests and own a fork.
- It is recommended you use [Visual Studio Code](https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user) for code edits. Click on the link for the installer.

### Steps

1. Once you have installed Git, press the "Fork" button in the top right of the GitHub repo to create your own fork. Do not edit the repository name.
2. Now that you have forked the repository, go to your command prompt (`cmd` in Windows search) and figure out where you want to store your repo; the desktop or in documents works well. Navigate there by using the `cd FOLDER_PATH_HERE` command. As an example, to navigate to my git folder in my documents, I would use `cd C:\Users\zonespace\Documents\git`
3. Once you have navigated to the desired folder, type the following command: `git clone https://github.com/YOUR_USERNAME_HERE/Map.git`, replacing YOUR_USERNAME_HERE with your GitHub username—not case sensitive.
4. Once it is done cloning, you are finished with setup. You can now access the folder where the repository is stored.

## Scripts

As people may not be familiar with how Git works, a variety of scripts have been added to the `/scripts` folder in the repository to make Git management easier. These are not mandatory to use, especially if you are already familiar with Git.

- **1_sync.bat**: Pulls latest changes from the main EterniaDevelopment/Map repository onto your local branch.
- **2_new_branch.bat**: Allows you to create a new 'branch', which is effectively a place to store changes for one specific thing, e.g. making a new cave.
- **3_save_work.bat**: Stages all changes and commits them with a message. This uploads your changes to the GitHub repository fork you created. Good for saving progress.
- **4_create_pr.bat**: Opens up the GitHub 'compare' page, which allows you to make a Pull Request back into the main EterniaDevelopment/Map repository. A Pull Request is how you bundle up the changes on a branch and request that the main EterniaMapping repository add them to its master branch.
- **status.bat**: Shows the name of your current branch and any changed files.
- **switch_branch.bat**: Lists your branches and is able to switch between them.

## Help

For Git-related mistakes, [OhShitGit](https://ohshitgit.com/) is a helpful website.
For any questions at all, ask in #map-discussion.
