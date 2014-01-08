#!/usr/bin/env ruby
# coding : utf-8

require 'gtk2'

win = Gtk::Window.new()   #ウィンドウのウィジェットを作成
win.show()                #ウィンドウを表示状態に変更
Gtk.main()                #GTKを実行
