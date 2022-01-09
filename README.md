# Iuliia

Cyrillic → Latin transliteration for Crystal.

The library includes all main international and Russian transliteration
standards. For schema details and other information, see
https://github.com/nalgeon/iuliia (schemas ❤️)
and https://dangry.ru/iuliia (in Russian).

[![CI](https://github.com/kandayo/iuliia-cr/actions/workflows/ci.yml/badge.svg)](https://github.com/kandayo/iuliia-cr/actions/workflows/ci.yml)

## Quickstart

```cr
require "iuliia"

Iuliia::Wikipedia.translate("Национальный Технический Университет «Днепровская политехника»")
# 🇷🇺 => "Natsionalny Tekhnichesky Universitet «Dneprovskaya Politekhnika»"

Iuliia::Wikipedia.translate("Національний Технічний Університет «Дніпровська Політехніка»")
# 🇺🇦 => "Natsіonalny Tekhnіchny Unіversitet «Dnіprovska Polіtekhnіka»"

Iuliia::Wikipedia.translate("Фёдор Достоевский")
# => "Fyodor Dostoyevsky"

Iuliia::IcaoDoc9303.translate("Фёдор Достоевский")
# => "Fedor Dostoevskii"
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

[iuliia] >> Кто твой любимый преподаватель?
=> Kto tvoy lyubimy prepodavatel?

[iuliia] >> Кафе находится вниз по лестнице
=> Kafe nakhoditsya vniz po lestnitse

[iuliia] >>
```

## Supported schemas

```cr
{
  Iuliia::AlaLc         => "ALA-LC transliteration schema",
  Iuliia::AlaLcAlt      => "ALA-LC transliteration schema",
  Iuliia::BgnPcgn       => "BGN/PCGN transliteration schema",
  Iuliia::BgnPcgnAlt    => "BGN/PCGN transliteration schema",
  Iuliia::Bs2979        => "British Standard 2979:1958 transliteration schema",
  Iuliia::Bs2979Alt     => "British Standard 2979:1958 transliteration schema",
  Iuliia::Gost16876     => "GOST 16876-71 (aka GOST 1983) transliteration schema",
  Iuliia::Gost16876Alt  => "GOST 16876-71 (aka GOST 1983) transliteration schema",
  Iuliia::Gost52290     => "GOST R 52290-2004 transliteration schema",
  Iuliia::Gost52535     => "GOST R 52535.1-2006 transliteration schema",
  Iuliia::Gost7034      => "GOST R 7.0.34-2014 transliteration schema",
  Iuliia::Gost779       => "GOST 7.79-2000 (aka ISO 9:1995) transliteration schema",
  Iuliia::Gost779Alt    => "GOST 7.79-2000 (aka ISO 9:1995) transliteration schema",
  Iuliia::IcaoDoc9303   => "ICAO DOC 9303 transliteration schema",
  Iuliia::Iso91954      => "ISO/R 9:1954 transliteration schema",
  Iuliia::Iso91968      => "ISO/R 9:1968 transliteration schema",
  Iuliia::Iso91968Alt   => "ISO/R 9:1968 transliteration schema",
  Iuliia::Mosmetro      => "Moscow Metro map transliteration schema",
  Iuliia::Mvd310        => "MVD 310-1997 transliteration schema",
  Iuliia::Mvd310Fr      => "MVD 310-1997 transliteration schema",
  Iuliia::Mvd782        => "MVD 782-2000 transliteration schema",
  Iuliia::Scientific    => "Scientific transliteration schema",
  Iuliia::Telegram      => "Telegram transliteration schema",
  Iuliia::Ungegn1987    => "UNGEGN 1987 V/18 transliteration schema",
  Iuliia::Wikipedia     => "Wikipedia transliteration schema",
  Iuliia::YandexMaps    => "Yandex.Maps transliteration schema",
  Iuliia::YandexMoney   => "Yandex.Money transliteration schema"
}
```

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
