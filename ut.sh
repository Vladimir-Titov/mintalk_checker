####################TEST1###################
pid=$(ps | grep "./server" | head -n 1 | awk '{print $1}')
input1=$(cat input1.txt)
./client $pid "$input1"
kill -TERM $pid 
sed -i -- "1d" output1.txt 
diff output1.txt input1.txt > test1.txt
test1=$(cat -e test1.txt | wc -m)
if [ $test1 -eq 0 ]; then echo "1.OK"; else echo "1.KO"; fi
rm output1.txt output1.txt--
####################TEST2###################
pid=$(ps | grep "./server" | head -n 1 | awk '{print $1}')
input2=$(cat input2.txt)
./client $pid "$input2"
kill -TERM $pid 
sed -i -- "1d" output2.txt 
diff output2.txt input2.txt > test2.txt
test2=$(cat -e test2.txt | wc -m)
if [ $test2 -eq 0 ]; then echo "2.OK"; else echo "2.KO"; fi
rm output2.txt output2.txt--
