rm *.o
rm *.out
rm *.lis

echo "Compile main.cpp"
g++ -c -Wall -m64 -std=c++14 -o main.o -fno-pie -no-pie main.cpp

echo "Compile getdata.cpp"
g++ -c -Wall -m64 -std=c++14 -o getdata.o -fno-pie -no-pie getdata.cpp

echo "Compile showarray.cpp"
g++ -c -Wall -m64 -std=c++14 -o showarray.o -fno-pie -no-pie showarray.cpp

echo "Assemble manage.asm"
nasm -f elf64 -l manage.lis -o manage.o manage.asm

echo "Assemble reverse.asm"
nasm -f elf64 -l reverse.lis -o reverse.o reverse.asm

echo "Link all object files"
g++ -m64 -std=c++14 -fno-pie -no-pie main.o getdata.o showarray.o manage.o -o myprog.out

echo "Now the program will run"
./myprog.out
