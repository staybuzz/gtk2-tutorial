# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()

tbl = Gtk::Table.new(4, 3, true) # 列4 行3のテーブル
lbl1 = Gtk::Label.new("hoge")
lbl2 = Gtk::Label.new("fuga")
lbl3 = Gtk::Label.new("piyo")
tbl.attach_defaults(lbl1, 0, 1, 0, 3)
tbl.attach_defaults(lbl2, 1, 4 ,0, 1)
tbl.attach_defaults(lbl3, 1, 4, 1, 3)

win.add(tbl)
win.show_all()
Gtk.main()
