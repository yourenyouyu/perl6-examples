use v6;

=begin pod

=TITLE Mortal Fibonacci Rabbits

=AUTHOR grondilu

L<http://rosalind.info/problems/fibd/>

Sample input

    6 3

Sample outut

    4

=end pod

my ($n, $m) = get.words;

my @population = 1, 0 xx ($m-1);
for 1 .. $n-1 -> \n {
    @population.unshift: [+] @population[1..*-1];  # reproduction
    @population.pop;                               # death
}

say [+] @population;

# vim: expandtab shiftwidth=4 ft=perl6
