# Iuliia

🇷🇺Russian Cyrillic → Latin transliteration for Crystal.

The library includes all main international and Russian transliteration
standards. For schema details and other information, see
https://github.com/nalgeon/iuliia (schemas ❤️)
and https://iuliia.ru (in Russian).

For 🇺🇦Ukrainian Cyrillic transliteration, check out [**this library**](https://github.com/kandayo/ukrainian) instead.

[![CI](https://github.com/kandayo/iuliia-cr/actions/workflows/ci.yml/badge.svg)](https://github.com/kandayo/iuliia-cr/actions/workflows/ci.yml)

## Quickstart

```cr
require "iuliia"

Iuliia::Wikipedia.translate("Национальный Технический Университет «Днепровская политехника»")
# 🇷🇺 => "Natsionalny Tekhnichesky Universitet «Dneprovskaya Politekhnika»"

Iuliia::Wikipedia.translate("Фёдор Достоевский")
# 🇷🇺 => "Fyodor Dostoyevsky"

Iuliia::IcaoDoc9303.translate("Фёдор Достоевский")
# 🇷🇺 => "Fedor Dostoevskii"
```

## Performance

Library                                          | Throughput            |
-------------------------------------------------|-----------------------|
**Crystal**                                      | **544,680 words/sec** |
[Go](https://github.com/mehanizm/iuliia-go)      | 591,711 words/sec     |
[Ruby](https://github.com/adnikiforov/iuliia-rb) | 32,269 words/sec      |

## REPL

In the `examples` folder you can find a small REPL to play with.

```
$ crystal examples/repl.cr

[iuliia] >> Московский Кремль
=> Moskovsky Kreml

[iuliia] >> Парк Зарядье
=> Park Zaryadye

[iuliia] >>
```

## Supported schemas

For examples and specifics, please refer to [**📚 the documentation**](https://kandayo.github.io/iuliia-cr).

 - ALA-LC transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/AlaLc.html))
 - ALA-LC alternative transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/AlaLcAlt.html))
 - BGN/PCGN transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/BgnPcgn.html))
 - BGN/PCGN alternative transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/BgnPcgnAlt.html))
 - British Standard 2979:1958 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Bs2979.html))
 - British Standard 2979:1958 alternative transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Bs2979Alt.html))
 - GOST 16876-71 (aka GOST 1983) transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost16876.html))
 - GOST 16876-71 (aka GOST 1983) alternative transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost16876Alt.html))
 - GOST R 52290-2004 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost52290.html))
 - GOST R 52535.1-2006 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost52535.html))
 - GOST R 7.0.34-2014 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost7034.html))
 - GOST 7.79-2000 (aka ISO 9:1995) transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost779.html))
 - GOST 7.79-2000 (aka ISO 9:1995) alternative transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Gost779Alt.html))
 - ICAO DOC 9303 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/IcaoDoc9303.html))
 - ISO/R 9:1954 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Iso91954.html))
 - ISO/R 9:1968 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Iso91968.html))
 - ISO/R 9:1968 alternative transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Iso91968Alt.html))
 - **Moscow Metro map transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Mosmetro.html))**
 - MVD 310-1997 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Mvd310.html))
 - MVD 310-1997 french transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Mvd310Fr.html))
 - MVD 782-2000 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Mvd782.html))
 - Scientific transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Scientific.html))
 - Telegram transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Telegram.html))
 - UNGEGN 1988 V/18 transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Ungegn1987.html))
 - **Wikipedia transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/Wikipedia.html))**
 - Yandex.Maps transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/YandexMaps.html))
 - Yandex.Money transliteration schema ([📚 docs](https://kandayo.github.io/iuliia-cr/Iuliia/YandexMoney.html))

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     iuliia:
       github: kandayo/iuliia
   ```

2. Run `shards install`

## Development

To import Iuliia schemas, run `crystal schema_importer/importer.cr`.

## Contributing

1. Fork it (<https://github.com/kandayo/iuliia-cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [kandayo](https://github.com/kandayo) - creator and maintainer
