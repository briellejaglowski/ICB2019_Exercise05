#usage: bash wagesAssig.sh wages.csv
#Task 1
echo "Question 1: see new .txt file 'gender-yearsExperience.txt'"
cat $1 | sed '1d' | cut -d , -f 1,2| tr "," " " | sort -t " " -k1,1 -k2,2n | uniq > gender-yearsExperience.txt
#Task 2
#1 Return gender, yearExperience and wage for highest earner
task1=$(cat $1 | sed '1d' | cut -d , -f 1,2,4 | sort -t "," -k3,3 | tail -n 1)
echo "1: $task1"
#2 Return gender, yearExperience and wage for lowest earner
task2=$(cat $1 | sed '1d' | cut -d , -f 1,2,4 | sort -t "," -k3,3 | head -n 1)
echo "2: $task2"
#3 Return number of females in top 10 earners of data set
task3=$(cat $1 | sed '1d' | cut -d , -f 1,2,4 | sort -t "," -k3,3 | tail | grep 'female' | wc -l)
echo "3: $task3"
#Task 3
val16=$(cat $1 | grep -E "[a-z]+,[0-9],16," | sort -n -t "," -k4 | head -n 1 | cut -d , -f 4)
val1212yrs=$(cat $1 | grep -E "[a-z]+,[0-9],12," | sort -n -t "," -k4 | head -n 1 | cut -d , -f 4)
echo "$val16-$val12"
