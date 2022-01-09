# DO NOT EDIT THIS FILE.
# Generated from Iuliia schemas. See `Iuliia::SchemaImporter`.
#
# ## SAMPLES
#
# ----------------------------------------------------------------------------
# Iuliia
# https://github.com/nalgeon/iuliia
# ----------------------------------------------------------------------------
#
# MIT License
#
# Copyright (c) 2020 Anton Zhiyanov
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require "../spec_helper"

describe Iuliia::BgnPcgnAlt do
  it "transliterates Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю" do
    cyrilic = "Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю"
    transliteration = "Yuliya, s”yesh’ yeshchё etikh myagkikh frantsuzskikh bulok iz Yoshkar-Oly, da vypey altayskogo chayu"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Россия, город Йошкар-Ола, улица Яна Крастыня" do
    cyrilic = "Россия, город Йошкар-Ола, улица Яна Крастыня"
    transliteration = "Rossiya, gorod Yoshkar-Ola, ulitsa Yana Krastynya"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Елизово" do
    cyrilic = "Елизово"
    transliteration = "Yelizovo"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Чапаевск" do
    cyrilic = "Чапаевск"
    transliteration = "Chapayevsk"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Мейеровка" do
    cyrilic = "Мейеровка"
    transliteration = "Meyyerovka"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Юрьев объезд" do
    cyrilic = "Юрьев объезд"
    transliteration = "Yur’yev ob”yezd"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Белкино" do
    cyrilic = "Белкино"
    transliteration = "Belkino"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Ёдва" do
    cyrilic = "Ёдва"
    transliteration = "Yёdva"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Змииёвка" do
    cyrilic = "Змииёвка"
    transliteration = "Zmiiyёvka"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Айёган" do
    cyrilic = "Айёган"
    transliteration = "Ayyёgan"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Воробьёво" do
    cyrilic = "Воробьёво"
    transliteration = "Vorob’yёvo"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Кебанъёль" do
    cyrilic = "Кебанъёль"
    transliteration = "Keban”yёl’"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Озёрный" do
    cyrilic = "Озёрный"
    transliteration = "Ozёrnyy"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Тыайа" do
    cyrilic = "Тыайа"
    transliteration = "Tyaya"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Сайылык" do
    cyrilic = "Сайылык"
    transliteration = "Sayylyk"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Ойусардах" do
    cyrilic = "Ойусардах"
    transliteration = "Oyusardakh"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Йошкар-Ола" do
    cyrilic = "Йошкар-Ола"
    transliteration = "Yoshkar-Ola"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Бийск" do
    cyrilic = "Бийск"
    transliteration = "Biysk"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Тыэкан" do
    cyrilic = "Тыэкан"
    transliteration = "Tyekan"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Суык-Су" do
    cyrilic = "Суык-Су"
    transliteration = "Suyk-Su"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Тында" do
    cyrilic = "Тында"
    transliteration = "Tynda"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Улан-Удэ" do
    cyrilic = "Улан-Удэ"
    transliteration = "Ulan-Ude"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Электрогорск" do
    cyrilic = "Электрогорск"
    transliteration = "Elektrogorsk"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Руэм" do
    cyrilic = "Руэм"
    transliteration = "Ruem"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Вяртсиля" do
    cyrilic = "Вяртсиля"
    transliteration = "Vyartsilya"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Ташчишма" do
    cyrilic = "Ташчишма"
    transliteration = "Tashchishma"

    Iuliia::BgnPcgnAlt.translate(cyrilic).should eq(transliteration)
  end
end
