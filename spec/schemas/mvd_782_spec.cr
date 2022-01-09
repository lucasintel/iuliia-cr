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

describe Iuliia::Mvd782 do
  it "transliterates Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю" do
    cyrilic = "Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю"
    transliteration = "Yuliya, syesh' eshche etikh myagkikh frantsuzskikh bulok iz Yoshkar-Oly, da vypey altayskogo chayu"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Юлия Щеглова" do
    cyrilic = "Юлия Щеглова"
    transliteration = "Yuliya Shcheglova"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Гайа Васильева" do
    cyrilic = "Гайа Васильева"
    transliteration = "Gaya Vasilyeva"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Андрей Видный" do
    cyrilic = "Андрей Видный"
    transliteration = "Andrey Vidnyy"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Артём Краевой" do
    cyrilic = "Артём Краевой"
    transliteration = "Artyem Krayevoy"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Мадыр Чёткий" do
    cyrilic = "Мадыр Чёткий"
    transliteration = "Madyr Chetkiy"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Оксана Клеёнкина" do
    cyrilic = "Оксана Клеёнкина"
    transliteration = "Oksana Kleyonkina"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Игорь Ильин" do
    cyrilic = "Игорь Ильин"
    transliteration = "Igor' Ilyin"

    Iuliia::Mvd782.translate(cyrilic).should eq(transliteration)
  end
end
