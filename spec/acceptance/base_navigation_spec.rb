require File.dirname(__FILE__) + '/../acceptance_helper'

describe 'Application navigation' do

  it "opens the home page" do
    visit "/"

    assert_content 'Strona domowa Urszuli Sablik'

    assert_content 'Strona Urszuli Sablik'
    assert_content 'Podziękowania'
  end

  it "opens the Apel page" do
    visit '/apel'

    assert_content 'Mam na imię Urszula'
  end

  it "opens the Historia page" do
    visit '/historia'

    assert_content 'Definicja choroby'
    assert_content 'Opis choroby'
    assert_content 'Leczenie'
  end

  it "opens the Dokumenty page" do
    visit '/dok'

    assert_content 'Ważne dokumenty'
    assert_img_alt 'porozumienie z PCK'
    assert_img_alt 'technologia medyczna'
    assert_img_alt 'program leczenia'
    assert_img_alt 'konsultacja medyczna'
  end

  it 'opens the Klinika page' do
    visit '/klinika'

    assert_content 'Klinika'
    assert_content 'Neurovita'
  end

  it 'opens the Cel page' do
    visit '/cel'

    assert_content "Jak mogę pomóc"
    assert_content 'W PRZEKAZANIU 1% PODATKU NALEŻY PODAĆ'
    assert_content '0000232680'
    assert_content 'pomoc dla Urszuli'
  end

  it 'opens the Zdjecia page' do
    visit '/zdjecia'

    assert_content 'Galeria fotografii'
  end
end