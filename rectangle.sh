#!/bin/bash
echo "Portfolio 2 : Dimensions of rectangle"
echo "Name: Sanoj Withanage"
echo "Task 2"
#open and displaying the content 
cat rectangle.txt
echo "      "
echo "      "
echo "      "
echo "____________________________________________________"
echo "      "
#Arranging <Name>,< Height>, <Width>, <Area> , <Colour> to Name: <Name>: Height: <height>: Width <Width>: Colour: <Colour> using "sed"
sed -e 's/ /,/g' rectangle.txt | sed -e 's/Rec/Name: Rec/g' | sed -e 's/,/ height : /' | sed -e 's/,/ width : /' | sed -e 's/,[^,]*/ /' | sed -e 's/,/Color : /'