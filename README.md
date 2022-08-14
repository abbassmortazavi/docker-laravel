<p align="center"><a href="https://laravel.com" target="_blank"></a> Laravel Vs Docker
<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>



## Services
- Nginx
- Redis
- Mysql
- PHP
- PhpMyAdmin
- Composer
- Npm
- Artisan
- Cron

## Installation
```sh
docker-compose up -d --bulid
docker-compose up -d down
```

## Migrate
```sh
docker-compose run --rm artisan migrate
```

## Composer update or Install
```sh
docker-compose run --rm composer i
docker-compose run --rm composer u
```

## Start and Stop Cron Job
```sh
docker-compose start cron
docker-compose stop cron
```

## Npm Install
```sh
docker-compose run --rm npm i
```

## Error Mysql
```sh
error : You do not have the SUPER privilege and binary logging is enabled
step 1: docker exec -it mysql bash
step 2: mysql -u root -p
step 3: SET GLOBAL log_bin_trust_function_creators = 1;
```

## Error Mysql
```sh
error : You do not have the SUPER privilege and binary logging is enabled (you *might* want to use the less safe log_bin_trust_function_creators variable)
step 1: docker exec -it mysql bash
step 2: mysql -u root -p
step 3: set global log_bin_trust_function_creators=1;
```

## Error Mysql
```sh
error : Access denied; you need (at least one of) the SUPER or SET_USER_ID privilege(s) for this operation
step 1: docker exec -it mysql bash
step 2: mysql -u root -p
step 3: grant all privileges on homestead.* to homestead@'%' with grant option;
```