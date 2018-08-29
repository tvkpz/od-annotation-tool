DIRECTORY=Images

for i in $DIRECTORY/*.jpg; do
    IFS='/' read -r -a array <<< "$i"
    echo "example_folder,""${array[1]}" >> labelme.txt
done

