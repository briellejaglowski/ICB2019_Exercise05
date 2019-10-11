#usage: bash wagesAssig.sh wages.csv

#Task 1
echo "Question 1: see new .txt file 'gender-yearsExperience.txt'"
cat $1 | sed '1d' | cut -d , -f 1,2| tr "," " " | sort -t " " -k1,1 -k2,2n | uniq > gender-yearsExperience.txt

#Task 2
#1 Return gender, yearExperience and wage for highest earner
#2 Return gender, yearExperience and wage for lowest earner
#3 Return number of females in top 10 earners of data set

#Task 3
