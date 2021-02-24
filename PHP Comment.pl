#!/usr/bin/perl

# Comment should not in tab view.

$comment_open = "/**";
$comment_close = " */";

my $input  = do { local $/; <STDIN> };
my $output = "";

$input =~ s/^/ * /smg;

$output = "$comment_open" ."\n";
$output .= "$input";
$output .= "\n". "$comment_close";

print $output;
