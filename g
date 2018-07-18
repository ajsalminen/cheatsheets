# Search for hidden files:
g --hidden pattern

These are just a few examples I do pretty frequently:
Nested Search:
  ag functionName | ag moreSpecificContextLikeArgs
Find variable changed yesterday:
  git log -p --since yesterday | ag varName
Find controllers changed yesterday:
  git log --oneline --showfile | ag controllers
What files did I work on last week:
  git log --name-only --oneline --author me --since 1.weeks
How many JS commits did I do last month?
  git log --since 1.months --author me  --name-only | ag -i '\.js$' | wc -l
How many JS commits did I do on each file last month?
   git log --since 1.months --author me  --name-only | ag -i '\.js$' | awk '{arr[$1]++} END {for(i in arr) print arr[i]," - ",i}' | sort -r -n
Change a "classname" from MyClass to BetterName:
  ag MyClass # verify it only finds what you think it will
  ag MyClass | awk -F':' '{print $1}' | sort | uniq | while read line
  do
    sed -i' ' 's/MyClass/BetterName/g' $line
  done