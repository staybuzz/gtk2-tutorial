# coding : utf-8

require 'gtk2'

treestore = Gtk::TreeStore.new(String, String, String)

# Append a toplevel row and fill in some data
parent = treestore.append(nil)
parent[0] = "staybuzz"
parent[1] = "man"
parent[2] = "MMA"

parent = treestore.append(nil)
parent[0] = "yukino"
parent[1] = "female"
parent[2] = "Housi"

parent = treestore.append(nil)
parent[0] = "yui"
parent[1] = "female"
parent[2] = "Housi"

parent = treestore.append(nil)
parent[0] = "hachiman"
parent[1] = "man"
parent[2] = "Housi"

child = treestore.append(parent)
child[0] = "komachi"
child[1] = "female"

parent = treestore.append(nil)
parent[0] = "saika"
parent[1] = "man"
parent[2] = "tennis"

view = Gtk::TreeView.new(treestore)
view.selection.mode = Gtk::SELECTION_NONE

#Create a renderer
renderer = Gtk::CellRendererText.new
# Add column using our renderer
col = Gtk::TreeViewColumn.new("Name", renderer, :text => 0)
view.append_column(col)

# Create another renderer and set the weight property
renderer = Gtk::CellRendererText.new
renderer.weight = Pango::FontDescription::WEIGHT_BOLD
# Add column using the second renderer
col = Gtk::TreeViewColumn.new("Sex", renderer, :text => 1)
view.append_column(col)

# Create another renderer
renderer = Gtk::CellRendererText.new
renderer.foreground = "red"
# Add column using the second renderer
col = Gtk::TreeViewColumn.new("Club", renderer, :text => 2)
view.append_column(col)

col.set_cell_data_func(renderer) do |col, renderer, model, iter|
  if (iter[2] == nil) then
    renderer.text = "Unknown"
    renderer.foreground_set = true
  end
end

vbox = Gtk::VBox.new(false, 0)
button = Gtk::Button.new("Click to Test")
button.signal_connect("clicked") do
end

vbox.pack_start_defaults(view)
vbox.pack_start_defaults(button)

window = Gtk::Window.new("Test")
window.signal_connect("destroy") { Gtk.main_quit }
window.add(vbox)
window.show_all
Gtk.main
