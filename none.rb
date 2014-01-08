#!/usr/bin/env ruby
# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()   #ウィンドウのウィジェットを作成

win.signal_connect("destroy") do
  Gtk.main_quit()         #GTKを終了
end

win.show()                #ウィンドウを表示状態に変更
Gtk.main()                #GTKを実行
