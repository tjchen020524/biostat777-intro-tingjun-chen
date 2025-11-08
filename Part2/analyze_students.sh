curl -o students.csv https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/refs/heads/main/projects/01-project/students.csv

cat students.csv

head -n 5 students.csv

tail -n 3 students.csv

wc -l students.csv

grep "Math" students.csv

grep ",F," students.csv

(head -n 1 students.csv && tail -n +2 students.csv | sort -t',' -k3 -n)

cut -d',' -f6 students.csv | tail -n +2 | sort | uniq

awk -F',' 'NR>1 {sum+=$5; count++} END {print "Average Grade:", sum/count}' students.csv

sed 's/Math/Mathematics/g' students.csv