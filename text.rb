# coding : utf-8

require 'gtk2'

entry = Gtk::Entry.new
entry.set_visibility(true)
#entry.set_visibility(false) # => 入力した文字がパスワード表示？になる

button = Gtk::Button.new("click!")
button.signal_connect("clicked") do
  p entry.text
end

hbox = Gtk::HBox.new
hbox.pack_start(entry)
hbox.pack_start(button)

#vbox = Gtk::VBox.new
#vbox.pack_start(entry)
#vbox.pack_start(button)

window = Gtk::Window.new
window.signal_connect("destroy") do
  Gtk.main_quit
end

window.add(hbox)
window.show_all

Gtk.main
