read -p "Enter two number followed by spacing:" a b
while [ $b -ne 0 ]
do
  temp=$b
  b=$((a % b))
  a=$temp
done

echo "GCD is: $a"
