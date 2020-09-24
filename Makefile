VBOXMANAGE="vboxmanage.exe"
PATH := $(PATH);"C:\Program Files\Oracle\VirtualBox";"C:\HashiCorp\Vagrant\bin"
export

.ONESHELL .PHONY: install build test
.DEFAULT_GOAL := build

install:
	$(MAKE) -C install

build:
	(PACKER_LOG=1; cd packer; rm -rf output-hashistack; packer build -force .) || (echo '\n\nIf you get an SSL error you might be behind a transparent proxy. \nMore info https://github.com/fredrikhgrelland/vagrant-hashistack/blob/master/README.md#proxy\n\n' && exit 2)

test:
ifeq (,$(wildcard ./packer/output-hashistack/package.box))
	$(MAKE) build
endif
	$(MAKE) -C test

wintest:
	$(MAKE) -C template template_example

ssh:
	(cd template; vagrant ssh)

clean:
	(cd template; vagrant destroy -f)

# submodules
# https://www.vogella.com/tutorials/GitSubmodules/article.html
## Point to latest commit in remote submodule
update-submodule:
	git submodule update --remote
