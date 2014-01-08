#!/usr/bin/env ruby
#coding : utf-8

require 'gtk2'

win = Gtk::Window.new()

hbox = Gtk::HBox.new(false, 10)
lbl1 = Gtk::Label.new("hoge")
lbl2 = Gtk::Label.new("fuga")
lbl3 = Gtk::Label.new("piyo")
hbox.pack_start(lbl1)
hbox.pack_start(lbl2)
hbox.pack_start(lbl3)

win.add(hbox)
win.show_all()
Gtk.main()
