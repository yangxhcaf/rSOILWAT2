#!/bin/bash
rm *.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Main.c -o SW_Main.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_VegEstab.c -o SW_VegEstab.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Control.c -o SW_Control.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c generic.c -o generic.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c rands.c -o rands.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c Times.c -o Times.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c mymemory.c -o mymemory.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c filefuncs.c -o filefuncs.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Files.c -o SW_Files.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Model.c -o SW_Model.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Site.c -o SW_Site.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_SoilWater.c -o SW_SoilWater.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Markov.c -o SW_Markov.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Weather.c -o SW_Weather.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Sky.c -o SW_Sky.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Output.c -o SW_Output.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_VegProd.c -o SW_VegProd.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Flow_lib.c -o SW_Flow_lib.o
gcc -I/usr/share/R/include     -fpic  -g -O3 -Wall -c SW_Flow.c -o SW_Flow.o
#gcc -shared  -o sw_v27.so SW_Main.o SW_VegEstab.o SW_Control.o generic.o rands.o Times.o mymemory.o filefuncs.o SW_Files.o SW_Model.o SW_Site.o SW_SoilWater.o SW_Markov.o SW_Weather.o SW_Sky.o SW_Output.o SW_VegProd.o SW_Flow_lib.o SW_Flow.o -lm -L/usr/lib/R/lib -lR
gcc -shared  -o sw_v27.so SW_Main.o SW_VegEstab.o SW_Control.o generic.o rands.o Times.o mymemory.o filefuncs.o SW_Files.o SW_Model.o SW_Site.o SW_SoilWater.o SW_Markov.o SW_Weather.o SW_Sky.o SW_Output.o SW_VegProd.o SW_Flow_lib.o SW_Flow.o -lm -L/opt/local/Library/Frameworks/R.framework/Versions/3.1/Resources/lib/ -lR
mv sw_v27.so testing
