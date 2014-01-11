# coding : utf-8

require 'gtk2'

def clicked(widget)         #クリック時によく関数
  puts "I am #{widget.label}." # 引数のラベル名の表示
end

window = Gtk::Window.new
window.border_width = 10    #ボタンの周囲に隙間を空ける
window.signal_connect('delete_event') do
  Gtk.main_quit
end

box = Gtk::HBox.new(false, 0) #ボタンを横に並べる箱を作る
window.add(box)

button1 = Gtk::Button.new("Button 1")   #1つ目のボタンの定義
button1.signal_connect("clicked") do |w| #ウィジェットを受け取る
  clicked(w)                  #受けたウィジェットを引数に
end
box.pack_start(button1, true, true, 0)

button2 = Gtk::Button.new("Button 2")   #2つ目のボタンを定義
button2.signal_connect("clicked") do |w|
  clicked(w)
end

box.pack_start(button2, true, true, 0)

window.show_all
Gtk.main
