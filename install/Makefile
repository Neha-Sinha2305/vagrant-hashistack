VBOXMANAGE="vboxmanage.exe"
PATH := $(PATH);"C:\Program Files\Oracle\VirtualBox";"C:\HashiCorp\Vagrant\bin"
export

.DEFAULT_GOAL := default
UNAME := $(shell uname -s)

default: install versions

install:
ifeq ($(UNAME),Linux)
	$(MAKE) -C linux
endif
ifeq ($(UNAME),Darwin)
	$(MAKE) -C mac
endif
ifeq ($(OS),Windows_NT)
	$(MAKE) -C windows
endif
versions:
ifneq ($(OS),Windows_NT)
	@echo "Virtualbox:\t`vboxmanage --version`"
	@echo "Vagrant:\t`vagrant --version`"
	@echo "Packer:\t\t`packer version`"
endif
ifeq ($(OS),Windows_NT)
	@echo "Virtualbox:\t`vboxmanage.exe --version`"
	@echo "Vagrant:\t`vagrant --version`"
	@echo "Packer:\t\t`packer version`"
endif