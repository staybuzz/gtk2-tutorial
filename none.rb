#!/usr/bin/env ruby
# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()   #ウィンドウのウィジェットを作成

win.signal_connect("destroy") do
  Gtk.main_quit()         #GTKを終了
end

lbl = Gtk::Label.new("label")    #ラベルのウィジェットを生成

#下の2行は上の1行でまとめられる
#
#lbl = Gtk::Label.new()
#lbl.set_text("label")     #文字列"label"のセット
win.add(lbl)              #ウィンドウにラベルをパッキング

win.show_all()    #下2行をまとめて書く
#win.show()                #ウィンドウを表示状態に変更
#lbl.show()                #ラベルを表示
Gtk.main()                #GTKを実行
