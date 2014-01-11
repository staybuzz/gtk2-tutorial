require 'gtk2'

win = Gtk::Window.new()
win.signal_connect("destroy") do
end

win.signal_connect("key-press-event") do |wdt, evt| # ウィンドウ上でキーを押された際
    if evt.state==Gdk::Window::ModifierType::CONTROL_MASK then # Controlキーを押したまま
          case evt.keyval
                when Gdk::Keyval::GDK_w
                        puts "quit"
                        Gtk.main_quit()
                            end
end
end
win.show()
Gtk.main()
