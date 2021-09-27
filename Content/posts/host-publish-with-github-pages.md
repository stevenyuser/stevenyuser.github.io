---
date: 2021-09-26 16:35
description: Learn how to host your Swift Publish site on GitHub Pages for free!
tags: Publish, Tutorial
title: How to Host Your Swift Publish Site with GitHub Pages
---
## Introduction
Hi everyone! I finished building this personal site about a month ago and it took me a lot of struggles to make it, but it's finally done! In these few blog posts I'm making, I hope to help other Swift developers get their Swift Publish site up and running as painless as possible.
After I made my site, a part I struggled on was hosting the site on GitHub Pages. Now, why would you want to host on GitHub Pages? Well, it comes with your GitHub account, it's free hosting, connected to your repository, and (after this tutorial) easy to use! 

Before we start, the tutorial, please make sure you have installed the Publish Command Line Interface tool! [You can follow the instructions here, under Quick Start.](https://github.com/JohnSundell/Publish)
## Start the site
First, create a new empty repo on GitHub and name it something like stevenyuser.github.io, which will be your default URL for your site (unless you want to have a custom domain, which you can learn more about here). Then, you have to clone the repo.
```
$ git clone https://github.com/stevenyuser/stevenyuser.github.io.git
```
### WARNING: This will create an EMPTY repo!!!
After cloning the repository, change your directory to that empty repo, and make sure to initialize it! 
```
$ cd stevenyuser.github.io
$ git init
```
The above code will initialize a master branch (necessary for GitHub Pages), this is where the generated content (HTML, CSS) will live.
However, we want to make a new branch, where our Swift code that generates the website lives! We'll call the new branch author and switch to it, where we store the markdown files, themes, plugins, and other source code will live.
```
$ git checkout -b author
```
Now, it's time to actually create the Publish project inside your repository and open it in Xcode.
```
$ publish new
$ open Package.swift
```
Let's see if the site's up and running locally first at [http://localhost:8000](http://localhost:8000).
```
$ publish run
```
Now, let's add it to GitHub Pages and make it visible to the whole world!
Open main.swift under Sources -> StevenyuserGithubIo and change it to this...
```
...
try StevenyuserGithubIo().publish(
    ...
    deployedUsing: .gitHub("stevenyuser/stevenyuser.github.io", useSSH: false) // Add this!
)
...
```
This will make sure your code will deploy through GitHub pages.
Now, time to deploy! This code will add all the changed files, commit and push to your repo, and then using the Publish CLI tool, deploy it to GitHub Pages.
```
$ git add .
$ git commit -m "added stuff"
$ git push origin author
$ publish deploy
```
However, we are not yet finished!
## Make sure your site is being built through the master branch, where the generated content lives!
We can do this by going to the repo settings. Then, going to the Pages tab. Under Source, make sure your GitHub Pages site is being built from the master branch and save.

# 🎉🎉🎉🎉🎉
## You are done! You have your very own Swift Publish site hosted for free on GitHub Pages, open to the web! 
# 🎉🎉🎉🎉🎉

### Additional helpful articles:
[https://briancoyner.github.io/articles/2020-02-25-cocoaheads_publish_notes/](https://briancoyner.github.io/articles/2020-02-25-cocoaheads_publish_notes/ ) (English)
[https://www.fatbobman.com/posts/publish-1/](https://www.fatbobman.com/posts/publish-1/) (Chinese 中文)
[https://www.fatbobman.com/posts/publish-2/](https://www.fatbobman.com/posts/publish-2/) (Chinese 中文)
[https://www.fatbobman.com/posts/publish-3/](https://www.fatbobman.com/posts/publish-3/) (Chinese 中文)
