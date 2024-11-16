
SCRIPT=guessinggame.sh
README=README.md


$(README): $(SCRIPT)
	@echo "# Guessing Game" > $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < $(SCRIPT))" >> $(README)


make_script:
	chmod +x $(SCRIPT)


all: $(README) make_script
