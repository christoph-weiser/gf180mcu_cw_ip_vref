# Xschem project Makefile

SHELL := /bin/bash
PRJ := $(CURDIR)
TOOLS_DIR = $(PRJ)/tools
VENV_DIR = $(TOOLS_DIR)/cad


all: corners venv ictools

corners:
	@ echo Creating Corners 
	@( cd xschem/corners/ && python3 corner_gen.py )

structure: 
	@( mkdir -p $(TOOLS_DIR) )

venv: structure
	@ echo Creating virtual environment
	@( python3 -m venv $(VENV_DIR) )
	@( source $(VENV_DIR)/bin/activate; \
   	   pip install spctl spatk pandas )

ictools: 
