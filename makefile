all: README.md

README.md:
	@echo "Making..."
	@echo "##GUESSING GAME" >> README.md
	@echo "#Created" >> README.md
	@date >> README.md
	@echo "#Line count" >> README.md
	@wc -l guessinggame.sh >> README.md
	@echo "Complete!"

clean:
	rm README.md