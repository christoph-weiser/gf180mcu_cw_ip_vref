# Xschem project Makefile

SHELL := /bin/bash
PRJ := $(CURDIR)
TOOLS_DIR = $(PRJ)/tools
VENV_DIR = $(TOOLS_DIR)/cad


all: corners venv

corners:
	@ echo Creating Corners 
	@( cd tools/corners/ && python3 corner_gen.py )

venv:
	@ echo Creating virtual environment
	@( python3 -m venv $(VENV_DIR) )
	@( source $(VENV_DIR)/bin/activate; \
   	   pip install spctl spatk pandas )
