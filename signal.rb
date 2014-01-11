# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()

win.signal_connect("destroy") do
#  Gtk.main_quit()
end

win.signal_connect("key_press_event") do |wdt, evt|
  p "#{evt.keyval},#{evt.state}, Gdk::Keyval::GDK_#{Gdk::Keyval.to_name(evt.keyval)}"
end

win.show()
Gtk.main()
