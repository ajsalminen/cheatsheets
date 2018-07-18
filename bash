# To implement a for loop:
for file in `ls .`;
do
    echo $file found;
done

# To implement a case command:
case "$1"
in
    0) echo "zero found";;
    1) echo "one found";;
    2) echo "two found";;
    3*) echo "something beginning with 3 found";;
esac


# extract everything before / from $1.
dir="${1%/*}"
# everything before _
tmp=${a#*_}