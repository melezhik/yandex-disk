set -e

export token=$(config token)
export file=$(config file)
export remote_file=$(config remote-file)

perl -Mstrict -MYandex::Disk -e '
Yandex::Disk->new( -token => $ENV{token} )->downloadFile( 
  -overwrite => 1,
  -file => $ENV{file},
  -path => $ENV{remote_file},
) or die "cannot download file";
'
