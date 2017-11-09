set -e

export token=$(config token)

perl -MYandex::Disk -e '

print join "\n", sort keys %{Yandex::Disk->new( -token => $ENV{token} )->getDiskInfo()->{system_folders}};
print "\n";
'
