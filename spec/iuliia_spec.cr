require "./spec_helper"

describe Iuliia do
  describe ".avaialble_schemas" do
    it "returns the available iuliia schemas" do
      Iuliia.available_schemas.should eq(
        [
          Iuliia::AlaLc,
          Iuliia::AlaLcAlt,
          Iuliia::BgnPcgn,
          Iuliia::BgnPcgnAlt,
          Iuliia::Bs2979,
          Iuliia::Bs2979Alt,
          Iuliia::Gost16876,
          Iuliia::Gost16876Alt,
          Iuliia::Gost52290,
          Iuliia::Gost52535,
          Iuliia::Gost7034,
          Iuliia::Gost779,
          Iuliia::Gost779Alt,
          Iuliia::IcaoDoc9303,
          Iuliia::Iso91954,
          Iuliia::Iso91968,
          Iuliia::Iso91968Alt,
          Iuliia::Mosmetro,
          Iuliia::Mvd310,
          Iuliia::Mvd310Fr,
          Iuliia::Mvd782,
          Iuliia::Scientific,
          Iuliia::Telegram,
          Iuliia::Ungegn1987,
          Iuliia::Wikipedia,
          Iuliia::YandexMaps,
          Iuliia::YandexMoney,
        ]
      )
    end
  end
end
