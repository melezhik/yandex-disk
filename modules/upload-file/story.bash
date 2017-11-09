set -e

export token=$(config token)
export file=$(config file)
export folder=$(config folder)

perl -Mstrict -MYandex::Disk -e '
Yandex::Disk->new( -token => $ENV{token} )->uploadFile( 
  -overwrite => 1,
  -file => $ENV{file},
  -remote_path => $ENV{folder}
)  or die "cannot upload file";
'
