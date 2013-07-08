use 5.014;
use common::sense;
use Getopt::Long qw/GetOptions/;
use Math::Random::MT::Auto qw/shuffle/;
use Pod::Usage;
use YAML::Tiny;

my $yaml_file;
GetOptions("data=s"=>\$yaml_file);
pod2usage("ERROR: required '--data' option.") unless $yaml_file;
my $yaml = eval { YAML::Tiny->read($yaml_file) };
pod2usage("ERROR: --data '$yaml_file' is yaml file?") unless $yaml;

my $members = $yaml->[0]->{members};
my $first_member = $yaml->[0]->{first_member};
while(my @order_list = shuffle(@$members, @$members)) {
    say join ',', @order_list;
    exit if $order_list[0] eq $first_member;
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
