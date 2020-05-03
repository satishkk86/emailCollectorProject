# emailCollectorProject
My Shell script gets the Developers Information that are contributed to any Github Projects.

Problem Statement:

From a Github project link we need to collect developer name and Email Address.

Developer name and Email ID is present in Commits section of Github log.

Collected logs directory from the Project folder and placed one step back so that we can work on it with ease.

Github Project Links considered for this script as input (i.e link.txt):

https://github.com/JakeWharton/ActionBarSherlock
https://github.com/nathanmarz/storm

Challenges:

Getting the Project folder into the script for each github project and setting up the Path to download github projects and collecting logs directory from downloaded project and place it one step outside so that our script can easily access it.

Once we get the Logs file from project we will delete the github project which we just downloaded automatically through script and we will keep only Log file for finding developer Information.


We have the Log files now for the 2 projects and we will search the word "Author: " where the developer information will begin with, Thanks to github.

Now we have developers information but they are duplicated(Since one developer can do muliple commits), Hence I have used Linux 'grep' command which will help filter the information and avoid duplication.

We have clean information of All developers who contributed to these Projects.
