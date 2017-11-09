set -e

export token=$(config token)

perl -Mstrict -MYandex::Disk -e '
my $data = Yandex::Disk->new( -token => $ENV{token} )->getDiskInfo();
#use Data::Dumper; print Dumper($data);
print join "\n", sort keys %{$data->{system_folders}};
print "\n";
'
