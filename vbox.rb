# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()

vbox = Gtk::VBox.new(false, 10)
lbl1 = Gtk::Label.new("hoge")
lbl2 = Gtk::Label.new("fuga")
lbl3 = Gtk::Label.new("piyo")
vbox.pack_start(lbl1)
vbox.pack_start(lbl2)
vbox.pack_start(lbl3)

win.add(vbox)
win.show_all()
Gtk.main()
