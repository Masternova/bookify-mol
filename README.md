# bookify-mol
These are scripts for creating an ebook of the web novel [Mother of Learning](https://www.fictionpress.com/s/2961893/1/Mother-of-Learning) by nobody103 (Domagoj Kurmaic). To run this you need Linux (I run Arch Linux) or something fairly similar -- I guess it would work in OSX, it'll probably work in cygwin environments like [mobaXterm](http://mobaxterm.mobatek.net/) or [Babun](http://babun.github.io/) and most certainly will work on WSL (the ubuntu-on-win10 thing).

The output is intended for use as an input file on [Calibre](https://calibre-ebook.com/), which will create an ebook file in whatever format you like. You'll probably want to tune the conversion so that it adds `<h1>` and `<h2>` header tags to the book's table of contents. I update `dl.sh` when a new chapter is released and upload a release, if you just want the ebook it's easier to grab that.

You can find a list of the Reddit discussion threads related to the novel on [this reddit post](https://www.reddit.com/r/motheroflearning/comments/5v0zl0/links_to_discussion_threads/) (most are from r/noveltranslations and r/rational)

This is published with permission of the novel's author, the repository will be taken down if that permission is ever rescinded.

## Requirements / stuff used by these scripts
* cookies from the webpage after opening in your browser. You can use https://addons.mozilla.org/en-US/firefox/addon/cookies-txt/ to get the file. Place it in dl directory
* bash
* standard linux userland tools:
  * sed
  * tr
* **curl (you may need to install this one)**
* python 2 (`chapextract.py` calls `/usr/bin/python2`, check if your python 2 binary is somewhere else)
* uses python 2 libs:
  * **bs4 (also known as "beautiful soup", you may need to install this one)**
  * sys
  * locale
  * unicodedata
  * re

## Files included
* `dl.sh` downloads the chapters (I'll update it once in a while to get the newer stuff, check before using just in case)
* `chapextract.py` converts each chapter's raw HTML into a nice and clean chunk of HTML
* `build.sh` gets outputs everything together in a single file


## Instructions
```bash
bash dl.sh
bash build.sh
```

## Other tools used
*`html to epub` to convert the end results https://github.com/gonejack/html-to-epub
*`cookies-txt` to get through the websites security https://addons.mozilla.org/en-US/firefox/addon/cookies-txt/