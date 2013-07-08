use 5.014;
use common::sense;
use Math::Random::MT::Auto qw/shuffle/;
my @members = qw/funatsu funagakure tojo watanabe yoshinaga yoshiike/;
while(my @order_list = shuffle(@members, @members)) {
    say join ',', @order_list;
    exit if $order_list[0] eq 'funatsu';
}
__END__
watanabe,funagakure,tojo,funatsu,yoshinaga,yoshiike,watanabe,funagakure,funatsu,yoshinaga,tojo,yoshiike
yoshiike,funatsu,tojo,funagakure,funatsu,tojo,yoshinaga,yoshinaga,funagakure,watanabe,watanabe,yoshiike
yoshinaga,funagakure,yoshiike,tojo,funatsu,tojo,yoshiike,watanabe,watanabe,funatsu,yoshinaga,funagakure
yoshinaga,yoshinaga,yoshiike,funatsu,funatsu,yoshiike,watanabe,watanabe,funagakure,tojo,tojo,funagakure
yoshinaga,watanabe,yoshiike,funagakure,tojo,yoshinaga,watanabe,yoshiike,funatsu,funatsu,funagakure,tojo
funagakure,yoshiike,funatsu,watanabe,yoshinaga,funagakure,tojo,tojo,watanabe,funatsu,yoshiike,yoshinaga
watanabe,yoshinaga,yoshinaga,funatsu,yoshiike,funagakure,watanabe,funatsu,funagakure,tojo,yoshiike,tojo
tojo,yoshiike,tojo,funatsu,funatsu,yoshinaga,watanabe,funagakure,yoshiike,yoshinaga,funagakure,watanabe
yoshiike,yoshinaga,funatsu,funagakure,watanabe,funagakure,tojo,funatsu,tojo,yoshiike,yoshinaga,watanabe
funagakure,tojo,watanabe,yoshinaga,yoshiike,tojo,funatsu,watanabe,funagakure,yoshinaga,yoshiike,funatsu
yoshiike,tojo,funatsu,funagakure,funagakure,watanabe,watanabe,yoshinaga,yoshinaga,tojo,yoshiike,funatsu
tojo,watanabe,yoshinaga,funatsu,funagakure,funagakure,funatsu,tojo,yoshiike,yoshiike,yoshinaga,watanabe
yoshinaga,tojo,funagakure,yoshiike,yoshinaga,funatsu,watanabe,tojo,funatsu,yoshiike,funagakure,watanabe
tojo,yoshinaga,watanabe,yoshiike,funagakure,yoshiike,funatsu,funagakure,yoshinaga,tojo,watanabe,funatsu
watanabe,watanabe,funatsu,yoshiike,tojo,funagakure,yoshinaga,yoshinaga,yoshiike,tojo,funatsu,funagakure
funatsu,yoshinaga,tojo,funatsu,watanabe,yoshiike,funagakure,yoshinaga,tojo,watanabe,funagakure,yoshiike

