pythonfile="xmlTosrt.py"
ytfile="youtube.xml"
if [ -f $pythonfile ]
    then
        if [ ! -f $ftfile ]
            then
                echo "XML File not found"
            else
                python $pythonfile
                
        fi
    else
        echo "Python file not found"
fi
