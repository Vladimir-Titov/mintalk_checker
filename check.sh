echo "---------------------------------Start checking---------------------------------";
make fclean > /dev/null;
make > /dev/null;
make clean > /dev/null;

if [ -x $server ]; then echo "server OK"; else echo "Not have server"; fi
if [ -x $server ]; then echo "client OK"; else echo "Not have server"; fi

./server | tee -a "output1.txt" > /dev/null
./server | tee -a "output2.txt" > /dev/null
./server | tee -a "output3.txt" > /dev/null