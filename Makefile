PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	mkdir -p python-requests/usr/local/lib/python2.7/site-packages/
	cd requests && \
	export PYTHONPATH=../python-requests/usr/local/lib/python2.7/site-packages/ && \
	$(PYTHON) setup.py install --prefix=../python-requests/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-requests
	cp /tmp/tcztools/python-requests.tcz .
	cp /tmp/tcztools/python-requests.tcz.list .
	cp /tmp/tcztools/python-requests.tcz.md5.txt .

clean:
	rm -rf requests python-requests

get:
	git clone https://github.com/kennethreitz/requests.git