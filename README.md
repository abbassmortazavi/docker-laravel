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