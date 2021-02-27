# Sum calculator
Write a program in C that sums the integers provided as command line arguments.

## Examples

```
$ ./sum 5 5 10
20
$ ./sum -1 4 1 2
6
$ ./sum
0
```

```
$ ./sum 4.0 1
'4.0' is not an integer
$ ./sum 1 1 2 toto tata
'toto' is not an integer
$ echo $?
1
```