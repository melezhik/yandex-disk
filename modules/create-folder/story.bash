set -e

export token=$(config token)
export folder=$(config folder)

perl -MYandex::Disk -e '
Yandex::Disk->new( -token => $ENV{token} )->createFolder( -path => $ENV{folder}, -recursive => 1 );
print "\n";
'

