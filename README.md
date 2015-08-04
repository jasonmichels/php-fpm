## Docker PHP FPM Image
Docker PHP FPM base image from php:5.6-fpm php image on docker hub. This project is a work in progress and will work with basic PHP/FPM needs.  Work is being done to make this more Laravel friendly.

### Build
To build this image yourself from the code follow these command
```sh
$ docker build -t <name>/php-fpm .
```

### Demo Usage
```sh
$ docker run -d --restart=always --volumes-from data --name php-fpm <name>/php-fpm
```

### TODO
- 

### License
This code is maintained by Jason Michels (http://jasonmichels.com) and open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)
