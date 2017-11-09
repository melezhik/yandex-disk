# SYNOPSIS

Simple wrapper for [Yandex::Disk](https://metacpan.org/pod/Yandex::Disk)


# INSTALL

    $ sparrow plg install yandex-disk

# USAGE

Basic usage:

    $ sparrow plg run yandex-disk --param token=$token --param action=$action

For example:

    # List folders:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=disk-info 

    # Create remote folder named Foo:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=create-folder \
    --param folder=Foo

    # Upload local file /path/to/file.txt to remote folder named Foo/:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=upload-file \
    --param folder=Foo \
    --param file=/path/to/file.txt

    # Download remote file Foo/path/to/file.txt and save it as local file /path/to/local/file.txt:
    $ sparrow plg run yandex-disk \
    --param token=********************************************* 
    --param action=upload-file \
    --param remote-file=Foo/path/to/file.txt \
    --param file=/path/to/local/file.txt

# Parameter

## action

Should be one of the list:

- create-folder
- disk-info
- download-file
- upload-file


## Token

Should Oauth token

# Author

* The plugin maintainer is [Alexey Melezhik](https://github.com/melezhik/)

# See also

[Yandex::Disk](https://metacpan.org/pod/Yandex::Disk)



