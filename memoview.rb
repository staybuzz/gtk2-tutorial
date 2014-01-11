# coding: utf-8
# 現在時刻と入力した文字を表示させたいなーなんて
# ref: http://noqisofon.hatenablog.com/entry/20110913/1315917614

require 'gtk2'

list_store = Gtk::ListStore.new( String, String ) # 表示するためのデータを作るよ
it = list_store.append
it.set_value( 0, Time.now.to_s ) # 0番目のセルに時刻を入れる
str = "" 
it.set_value( 1, str )           # 1番目のセルに変数strの中身を入れる

view = Gtk::TreeView.new(list_store)
renderer = Gtk::CellRendererText.new # セルをレンダリング？するためのオブジェクト
new_col = Gtk::TreeViewColumn    # カラムの中身をつくる

entry = Gtk::Entry.new    # 1行分のテキストボックスつくる！
entry.set_visibility(true) # 入力した文字が見えちゃう///


# カラムを作る
time_col = new_col.new( "Time", renderer, :text => 0 )
view.append_column(time_col)

str_col = new_col.new( "Strings", renderer, :text => 1)
view.append_column(str_col)

# ボタンを作る
button = Gtk::Button.new("Post")
button.signal_connect("clicked") do # ボタンが押された時の処理
  str = entry.text
  entry.text = ""
  it.set_value( 0, Time.now.to_s )
  it.set_value( 1, str )
end

vbox = Gtk::VBox.new(false,0)
vbox.pack_start(view)
vbox.pack_start(entry)
vbox.pack_start(button)

window = Gtk::Window.new("text")
window.signal_connect("destroy") { Gtk.main_quit }
window.add(vbox)
window.show_all
Gtk.main
