# Symfony Rest Api

$ composer create-project symfony/website-skeleton .
 
 What's next?

  * Run your application:
    1. Change to the project directory
    2. Create your code repository with the git init command
    3. Execute the php -S 127.0.0.1:8000 -t public command
    4. Browse to the http://localhost:8000/ URL.

       Quit the server with CTRL-C.
       Run composer require server --dev for a better web server.

  * Read the documentation at https://symfony.com/doc
  
  
$ composer require beberlei/DoctrineExtensions
  
$ composer require sensio/framework-extra-bundle

$ composer require sensiolabs/security-checker --dev

$ composer require symfony/maker-bundle --dev

$ composer require security-csrf


# Included create-project

$ composer require form validator twig-bundle orm-pack

$ composer require symfony/routing

$ composer require symfony/http-foundation

$ composer require symfony/cache _apcu_

$ composer require symfony/serializer _https://symfony.com/doc/current/components/serializer.html_

$ composer require stof/doctrine-extensions-bundle _https://symfony.com/doc/master/bundles/StofDoctrineExtensionsBundle/index.html_

# Configuring a Web Server

https://symfony.com/doc/current/setup/web_server_configuration.html

$ composer require symfony/apache-pack


# Optimise composer class map

https://symfony.com/doc/current/performance.html#use-composer-s-class-map-functionality

$ composer dump-autoload --optimize --no-dev --classmap-authoritative

_Cache Tool_
_https://github.com/gordalina/cachetool_


