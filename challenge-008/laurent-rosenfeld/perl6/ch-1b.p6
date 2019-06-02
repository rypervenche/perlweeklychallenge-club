use v6;

sub divisors (Int $num) {
    return 1, | grep { $num %% $_ }, 2 .. (1 + ($num / 2).Int);
}
my $triangular-num = 1;
for 2..200 -> $num {
    $triangular-num += $num;
    my $sum-div = [+] divisors $triangular-num;
    say " $triangular-num : @divisors[]" if $sum-div == $triangular-num;
    last if $triangular-num > 10000;
}
say now -  INIT now;
