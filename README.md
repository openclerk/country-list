openclerk/country-list
======================

List of all countries with names and ISO 3166-1 codes in many languages and many data formats.

This uses all of the ICU data from [umpirsky/country-list](https://github.com/umpirsky/country-list)
but reduces the size of the component by:

* Not including language dialects (e.g. just `en` rather than `en_GB`, `en_AU`, `en_NZ`, ...)
* Only including [ISO 639-1 languages](http://en.wikipedia.org/wiki/ISO_639-1), which covers the world major's languages
* Not including CLDR data, which includes country codes such as `Unknown or Invalid Region (ZZ)`

## Installing

Include `openclerk/country-list` as a requirement in your project `composer.json`,
and run `composer update` to install it into your project:

```json
{
  "require": {
    "openclerk/country-list": "~1.0"
  }
}
```

You can then import the files through a number of different ways, e.g.

```php
require(__DIR__ . "/vendor/openclerk/country-list/country/en/country.txt");
```

## Building

Building requires `composer` and `grunt`:

```
npm install
composer update
grunt
```

