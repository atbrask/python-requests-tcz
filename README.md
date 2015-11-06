#####Presenting python-requests-tcz
This is a script for downloading and packing the Requests python module as a TCZ extension for use on Tiny Core Linux (TCL). It outputs a file called `python-requests.tcz` that contains the packaged files. Also included are the other metadata files (ie. `python-requests.tcz.dep`, `python-requests.tcz.info`, `python-requests.tcz.list`, and `python-requests.tcz.md5.txt`).

DISCLAIMER: This script has been tested on piCore 6.1. It may work with other versions of TCL, but YMMV...

#####Prerequisites
You'll need a Tiny Core Linux installation with the following extensions (and all their dependencies) installed.
* python-dev
* compile-essentials
* linux-3.18.y_api_headers
* git
* squashfs-tools
* findutils
* tcztools (download from [here](https://github.com/MSumulong/tcztools))

#####How to build
* Clone this repository by running `git clone https://github.com/atbrask/python-requests-tcz.git`
* Type `cd python-requests-tcz` and run `make`
