#!/usr/bin/env ruby
# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()   #ウィンドウのウィジェットを作成

win.signal_connect("destroy") do
  Gtk.main_quit()         #GTKを終了
end

lbl = Gtk::Label.new()    #ラベルのウィジェットを生成
lbl.set_text("label")     #文字列"label"のセット
win.add(lbl)              #ウィンドウにラベルをパッキング

win.show()                #ウィンドウを表示状態に変更
lbl.show()                #ラベルを表示
Gtk.main()                #GTKを実行
