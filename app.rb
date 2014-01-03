require 'sinatra'

MENU = [
  { :page => :main,     :title => "Strona główna",            :label => "Strona główna" },
  { :page => :apel,     :title => "Treść naszego Apelu",      :label => "Coś o mnie" },
  { :page => :historia, :title => "Poznaj historię choroby",  :label => "Choroba" },
  { :page => :dok,      :title => "Dokumenty",                :label => "Dokumenty" },
  { :page => :klinika,  :title => "Klinika NeuroVita",        :label => "O Klinice"},
  { :page => :cel,      :title => "Na co zbieramy?",          :label => "Jak pomóc?"},
  { :page => :zdjecia,  :title => "Kilka zdjęć...",           :label => "Zdjęcia"}
]

settings.root = File.expand_path '.'

set :protection, :except => :frame_options

get('/') do
  @menu = MENU
  haml :index
end

MENU.map{|e| e[:page] }.each do |page|
  get("/#{page.to_s}") do
    @menu = MENU
    haml page.to_sym
  end
end