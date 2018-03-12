README.md: guessinggame.sh
	touch README.md
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub " >> README.md
	date >> README.md
	echo "the number of lines in the script are:"
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md
 
