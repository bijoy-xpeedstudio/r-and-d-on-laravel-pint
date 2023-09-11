> The goal was for this r&d to use out custom coding style in our code and if code's are not meet rules then show error or suggestion where need to change in code to user.
### Install pint command

> [Laravel Pint](https://github.com/laravel/pint) is an opinionated PHP code style fixer for minimalists. Pint is built on top of PHP-CS-Fixer and makes it simple to ensure that your code style stays clean and consistent.

    composer require  laravel/pint  --dev

> Run in windows

    php vendor/bin/pint

> Run in Linux

    ./vendor/bin/pint

> Run pint on a specific file or folder

    for directory
    ./vendor/bin/pint app/Models
    for specific file
    ./vendor/bin/pint app/Models/User.php

> add custom rules in pint.json in your laravel root directory.

    {
	    "preset": "laravel",
	    "rules": {
            "simplified_null_return": true,
            "braces": false,
            "new_with_braces": {
                "anonymous_class": false,
                "named_class": false
            },
            "clean_namespace": true,
            "class_attributes_separation": false,
            "array_syntax": true,
            "combine_consecutive_issets": true
	    }
    }

### Install husky

> At first of all you have to install node.js in your device to rum npm command. Then you have to install husky as npm package. The official link are https://typicode.github.io/husky/.

    npx husky-init && npm install

> Then Have to active git hook to prevent commit if need to change. Run the following command

    npx  husky  add  .husky/pre-commit  "php vendor/bin/pint --test"
    git  add  .husky/pre-commit

> now git hook are created to prevent git commit. if any custom rules are not match the coding style it'll prevent git commit.

![error description](https://i.ibb.co/3BwMd0N/Screenshot-2023-09-11-102602.png)