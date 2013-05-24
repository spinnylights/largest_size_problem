# Largest size problem

Given the running time of an algorithm as a function and the number of operations per second a computer can perform per second, this program will tell you the size of a problem that can be solved in certain spans of time using that algorithm and computer. The time spans are a millisecond, a second, a minute, an hour, a day, a month, a year, and a century.

I wrote this program in response to a problem given in an algorithms textbook in which the student is given a number of running times and asked to calculate the largest size of problem that can be solved in that running time in a second, a minute, and so on. It seemed more efficient and entertaining to write a program to do the calculations instead of doing them by hand. After I wrote a basic program to solve this problem, I decided to expand it into a more full command-line app with some user feedback and so on for kicks.

Using it is pretty simple--you pass it a running time as an expression (the right-hand side of the run time function) with `-f` and the OPS of the computer in question with `-o`. Here's an example of it in action:

```
$ ./larsip -f 2**n -o 10**6
milisecond: <b>6</b>
second: 9
minute: 25
hour: 28
day: 33
month: 38
year: 46
century: 53
```

Since OPS [is a crude performance measure](http://en.wikipedia.org/wiki/Instructions_per_second) this is more of a toy than a tool. It does give a nice, concrete sense of how the performance of different run times scales.

As a side note, if you happen to have been assigned this problem for a class (I wasn't), do your own work! You'll be robbing yourself of the fancy education you're getting otherwise! Plus, how can you know I've done this right without doing it yourself?
