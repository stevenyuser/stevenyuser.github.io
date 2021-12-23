---
title: PeerTutor
description: A SwiftUI application that allows students to tutor their peers.
tags: iOS, Swift, PeerTutor
---

# PeerTutor

![PeerTutor](/images/peertutor_banner.png)
*Background is from [BasicAppleGuy](https://basicappleguy.com/basicappleblog/macosbliss)*

## Overview
PeerTutor is an app that allows students to tutor their peers. Users create an account, request courses to get tutored (or tutor others) in, and then get automatically matched for a tutoring session that fits both tutor and tutee's schedule.

It's a pretty cool app if I may say so myself...

Building it was a pretty fun experience. I built it with (Paul Evans)[https://github.com/pevans927] and (Malcolm Krolick)[https://github.com/Mkrolick] and it was less chaotic than the last project we did together...

We custom built a Flask REST API that accessed data from the SQL database. It automatically performed the matching script (thanks Paul) and the data is fetched by the SwiftUI app. There's also a web app with an admin panel.

## Process
My friends and I came up with this idea because I tutor some students in Chinese and Math and thought it would be pretty cool and useful to automate. 
### Swift
I did most of the Swift stuff. We used SwiftUI for the UI. SwiftUI is actually really fun to write with, the declarative nature cuts the development time down a lot. Doing this project really helped solidify my SwiftUI skills. :) I also used Combine to handle the asynchronous data (we are doing networking after all...) and used the (Networking Package)[https://github.com/freshOS/Networking] (highly recommend) to handle working with the JSON REST API. The networking part wasn't super bad, but dealing with user accounts and how to authenticate them was a headache the first time to say the least... Since this app didn't really have to deal with storage, at least I didn't have to mess with Core Data, but I did have to use UserDefaults to save the user's credentials on device.

Overall, Swift and SwiftUI are pretty fun. :D

(All the iOS source code is available here.)[https://github.com/VerseGroup/PeerTutor-ios]

### Flask
Paul and Malcolm did most of the Python Flask stuff. There was a lot of back and forth on how models should be formatted and returned in JSON, but after that was done, the whole app was basically done. Also, I pushed for there to be clear documentation, because documentation is really important!!! Basically, we used Flask RESTful to make a REST API. We also used a SQL database, which makes sense for our project because we are dealing with lots of relationships (tutor to tutee, tutor tutoring what class, etc.) in PeerTutor. 


## What's next?
We're currently working on another app (stay tuned), but we definetely plan to revisit this project and completely rewrite it, so stay tuned...?
