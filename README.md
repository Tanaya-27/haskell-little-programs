# Haskell Programs
A small collection of tasks to build my competency in haskell; these are loosely based on demonstrations from Graham Hutton's book "Programming in Haskell":

## firstScript.hs
This basic project offers essential numerical operations, including functions to calculate double and quadruple values, identify smallest and largest numbers between inputs, and compute the difference between the largest and smallest values.

## typesAndClasses.hs
In this project, various type declarations (```e1, e2, ..., e8```) are defined, covering a range of types from boolean lists to functions. It also introduces functions (```copy```, ```one```, ```first```, ```second```, ```mult```) that demonstrate diverse capabilities, including value replication, list creation, tuple element extraction, two-argument function manipulation, and higher-order multiplication.

## functions.hs
This project includes multiple methods: 
- three functions to extract the second element from a list ```second1```, ```second2```, and ```second3```;
- three exclusive OR operations for boolean inputs ```xor1```, ```xor2```, and ```xor3```;
- mathematical calculations: sum of squares ```sumsqr```, grid coordinate generation ```grid```, and the Euclidean algorithm for finding the greatest common divisor ```euclid```;
- and an efficient list reversal function ```fastrev``` by utilising an auxiliary recursive function ```rev```.

## stringCompression.hs
This Haskell project includes functions for run-length encoding and decoding. The ```chomp``` function removes repeated characters, ```munch``` and ```runs``` group characters into runs, ```encode``` encodes runs with character-frequency pairs, and ```flatten``` converts the encoding into a string. The ```compress``` function combines these steps, while ```decode``` and ```expand``` handle decoding. The ```decompress``` function utilizes these functions to decompress a compressed string. Together, these functions showcases a simple example of data compression and decompression techniques using run-length encoding.
