# TrailDB cgo benchmark

This repository contains a benchmark comparing performance of the TrailDB C library
when used with cgo wrappers. The benchmark is contained in two simple files:

 * [tutorial_wikipedia_sessions.go](https://github.com/rasky/tdb-cgo-bench/blob/master/tutorial_wikipedia_sessions.go)
 * [c-src/tutorial_wikipedia_sessions.c](https://github.com/rasky/tdb-cgo-bench/blob/master/c-src/tutorial_wikipedia_sessions.c)
 
To build and run benchmarks in a Docker container:

    $ make

This will also download a 100Mb data file to run the benchmarks.

## Results on my laptop


```
******** BENCH C CODE ***********
0.32user 0.01system 0:00.33elapsed 97%CPU (0avgtext+0avgdata 36020maxresident)k
0inputs+0outputs (0major+686minor)pagefaults 0swaps
0.35user 0.00system 0:00.35elapsed 98%CPU (0avgtext+0avgdata 35984maxresident)k
0inputs+0outputs (0major+684minor)pagefaults 0swaps
0.33user 0.00system 0:00.34elapsed 97%CPU (0avgtext+0avgdata 36036maxresident)k
0inputs+0outputs (0major+685minor)pagefaults 0swaps
0.32user 0.00system 0:00.32elapsed 97%CPU (0avgtext+0avgdata 35964maxresident)k
0inputs+0outputs (0major+685minor)pagefaults 0swaps
0.36user 0.00system 0:00.37elapsed 97%CPU (0avgtext+0avgdata 36008maxresident)k
0inputs+0outputs (0major+686minor)pagefaults 0swaps
******** BENCH GO CODE ***********
1.97user 0.01system 0:01.98elapsed 99%CPU (0avgtext+0avgdata 37684maxresident)k
0inputs+0outputs (0major+797minor)pagefaults 0swaps
1.96user 0.00system 0:01.96elapsed 99%CPU (0avgtext+0avgdata 37652maxresident)k
0inputs+0outputs (0major+809minor)pagefaults 0swaps
2.26user 0.00system 0:02.25elapsed 100%CPU (0avgtext+0avgdata 37616maxresident)k
0inputs+0outputs (0major+798minor)pagefaults 0swaps
2.11user 0.02system 0:02.13elapsed 100%CPU (0avgtext+0avgdata 37664maxresident)k
0inputs+0outputs (0major+809minor)pagefaults 0swaps
2.21user 0.01system 0:02.20elapsed 100%CPU (0avgtext+0avgdata 37648maxresident)k
0inputs+0outputs (0major+796minor)pagefaults 0swaps
```
