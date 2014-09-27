PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	cd requests && $(PYTHON) setup.py install --prefix=../python-requests/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-requests
	cp /tmp/tcztools/python-requests.tcz .
	cp /tmp/tcztools/python-requests.tcz.list .
	cp /tmp/tcztools/python-requests.tcz.md5.txt .

clean:
	rm -rf requests python-requests

get:
	git clone https://github.com/kennethreitz/requests.git
