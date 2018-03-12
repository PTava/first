function guessing {
if [[ $guessed_number -eq $files_number ]]
then
result="Congratulation! You guessed the right number" 
elif [[ $guessed_number -lt $files_number ]]
then
result="you guessed a lower number"
else
result="you guessed an higher number"
fi
echo $result
}
files_number=$(ls -l | egrep "^[-]" | wc -l)
while [[ $result != "Congratulation! You guessed the right number" ]]
do
echo -n -e "\nguess the number of files in the current folder:"
read guessed_number
result=$(guessing)
echo $result
done
