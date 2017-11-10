# SYNOPSIS

Simple wrapper for [Yandex::Disk](https://metacpan.org/pod/Yandex::Disk)

# INSTALL

    $ sparrow plg install yandex-disk

# USAGE

Basic usage:

    $ sparrow plg run yandex-disk --param token=$token --param action=$action

For example:

    # List system folders:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=disk-info 

    # Create remote folder named Foo:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=create-folder \
    --param folder=Foo/Bar

    # Upload local file /tmp/foo.txt to remote folder named Foo/Bar:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=upload-file \
    --param folder=Foo/Bar \
    --param file=/tmp/foo.txt

    # Download remote file Foo/Bar/foo.txt and save it as local file /path/to/local/file.txt:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=upload-file \
    --param remote-file=Foo/Bar/foo.txt \
    --param file=/path/to/local/file.txt

    # List files in remote folder Foo/Bar:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=list-files \
    --param folder=Foo/Bar

    # List files in remote folder /:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=list-files \
    --param folder=/

# Parameters

## action

Should be one of the list:

- create-folder
- disk-info
- download-file
- upload-file


## token

Should be oauth token

# Author

[Alexey Melezhik](https://github.com/melezhik/)

# See also

[Yandex::Disk](https://metacpan.org/pod/Yandex::Disk)



