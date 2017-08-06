# bookify-mol
scripts for creating an ebook of the web novel [Mother of Learning](https://www.fictionpress.com/s/2961893/1/Mother-of-Learning) by nobody103 (Domagoj Kurmaic).

The output is intended for use as an input file on [Calibre](https://calibre-ebook.com/), which will create an ebook file in whatever format you like.

## Requirements / stuff used by these scripts
* bash
* standard linux tools:
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
