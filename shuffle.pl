use 5.014;
use common::sense;
use List::MoreUtils qw/pairwise any/;
use Getopt::Long qw/GetOptions/;
use Math::Random::MT::Auto qw/shuffle/;
use Pod::Usage;
use YAML::Tiny;
use Data::Dumper;


my $yaml_file;
GetOptions("data=s"=>\$yaml_file);
pod2usage("ERROR: required '--data' option.") unless $yaml_file;
my $yaml = eval { YAML::Tiny->read($yaml_file) };
pod2usage("ERROR: --data '$yaml_file' is yaml file?") unless $yaml;

my $members = $yaml->[0]->{members};
my $first_member = $yaml->[0]->{first_member};
say '-' x 50;
while(1) {
    my @facilitator_order = shuffle(@$members);
    my @presenter_order = shuffle(@$members);
    next unless any { $first_member eq $_ } ('', $facilitator_order[0]);
    next unless any { $first_member eq $_ } ('', $presenter_order[0]);

    say 'facilitator: ' . join ', ', @facilitator_order;
    say 'presenter  : ' . join ', ', @presenter_order;
    say '-' x 50;

    unless ($first_member eq '') {
        shift @facilitator_order;
        shift @presenter_order;
    }
    my $is_duplicated = any { $_ eq 1 } pairwise { $a eq $b } @facilitator_order, @presenter_order;
    exit unless $is_duplicated;
}

=encoding utf8

=head1 NAME

shuffle.pl - yamlファイルに記述されたメンバーリストをシャッフルして返します

=head1 USAGE

    # run script

    $ carton exec -- perl shuffle.pl --data ./data/team_members.yaml

    # yaml file as follows

    members:
        - foo
        - bar
        - baz
    first_member: baz
=cut
