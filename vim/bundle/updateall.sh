for i in `ls`; do
    if [ -d "$i" ]; then
        # Control will enter here if $DIRECTORY exists.
        echo "--------------------------------------------"
        echo "Directory $i"
        echo "--------------------------------------------"
        cd "$i"
        git pull
        cd ..
    fi
done
