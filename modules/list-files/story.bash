set -e

export token=$(config token)
export folder=$(config folder)

perl -Mstrict -MYandex::Disk -e '
my $data = Yandex::Disk->new( -token => $ENV{token} )->listFiles(-path => $ENV{folder});
#use Data::Dumper; print Dumper($data);
binmode(STDOUT, ":utf8");
for my $i (@{$data}) {
  print $i->{path}, "\t", $i->{modified}, "\t", $i->{size}, "\n";
};
print "\n";
'
