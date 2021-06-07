all: make_README

make_README:
	echo "## Title of the project : Guess the Count" > README.md
	echo "### Last make file executed on: $$(date)" >> README.md
	echo "*guessinggame.sh* has $$(cat guessinggame.sh | wc -l) lines" >> README.md
