pythonfile="convert.py"
csvfile="input.csv"
if [ -f $pythonfile ]
    then
        if [ ! -f $csvfile ]
            then
               echo "CSV File Not Found"
            else
                python convert.py
        fi
    else
        echo "Python file not found"
fi
