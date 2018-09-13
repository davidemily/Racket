## Why make a website in Racket?
Racket gives lots of different functionality and is incredibly easy to program in. In fact, the [HackerNews](https://news.ycombinator.com/) is run in a single-threaded Racket process using the Arc language mode.
Plus I'm currently in a Web Dev class so let's use it to make a website.

## Beginning
Beginning to start the process was really easy. There's a ton great documentation on [web hosting in racket](https://docs.racket-lang.org/continue/). The documentation goes over making a blog, so I figured I'd give that a go. The beginning was pretty simple and, thanks to the DrRacket, can be ran directly from the IDE. 

## Description
The typical start for a Racket document is ```#lang Racket```which uses the default Racket language. This can be done through the Racket ![RacketLang](./racketLang.png) 
For use in web development the ```#lang web-server/insta``` language, which matches the Racket syntax but uses different commands. ![Beginning Blog](./beginningWebsite.png) Using the web-server/insta language comes with benefits of settings ports, handle styling, SSL, etc.


## What I did
I used the documentation to create the folling website ![RacketWebsite](./standaloneRacket.png), <br> which can be accessed at [http://thedavidemily.com:3000/servlets/standalone.rkt](http://thedavidemily.com:3000/servlets/standalone.rkt)
To host it as an instance, there were a few basic steps. 
1. Install Racket on the server. For ubuntu, this is as simple as ```sudo apt-get install Racket```
2. Insert into your Racket code what port to use to allow foreign IP's by using 
```
(serve/servlet my-app
               #:port 3000
               #:listen-ip #f)
```
3. Move saved Racket program and move to /public_html/ folder using SFTP, Filezilla, etc.
4. Use the ```racket <filename>``` instruction to launch the website on the given port.

Tip: Most servers come with the 'Screen' program installed, which lets you continually run a program in another window on the server.
There you have it! Now you have your very own Racket-made website!
