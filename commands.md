# Useful commands

## Info

- lscpu: Overview of this computers cpu architecture

## Profiling tools

- OProfile
- Pfmon
- /usr/bin/time -v (not the shell 'time')

### Cachegrind

Useful for insights in regard to how the application interacts
with the cache.

```
valgrind --tool=cachegrind --cache-sim=yes command arg
```

Can simulate different cache sizes and cache associativity.

It should, at this point, be noted again: cachegrind is
a simulator which does not use measurements from the
processor. The actual cache implementation in the pro-
cessor might very well be quite different. cachegrind
simulates Least Recently Used (LRU) eviction, which is
likely to be too expensive for caches with large associa-
tivity. Furthermore, the simulation does not take context
switches and system calls into account, both of which
can destroy large parts of L2 and must flush L1i and L1d.
This causes the total number of cache misses to be lower
than experienced in reality. Nevertheless, cachegrind is a
nice tool to learn about a program’s memory use and its
problems with memory.


### Massif

Useful for insight into memory usage. 

```
valgrind --tool=massif command args
```

### memusage

Simpler profiling tool than massif for memory usage

```
memusage command arg
```

Can use `-n NAME` if the program starts another program.
