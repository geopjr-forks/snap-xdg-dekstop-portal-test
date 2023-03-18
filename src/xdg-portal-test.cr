require "gtk4"

GC.disable

module Xdg::Portal::Test
  APP = Gtk::Application.new("dev.geopjr.xdgportaltest", Gio::ApplicationFlags::None)

  def self.activate(app : Gtk::Application)
    window = Gtk::ApplicationWindow.new(app)
    window.title = "xdg desktop portal test"

    button = Gtk::Button.new_with_label("Open FileChooserNative")

    filechoosernative = Gtk::FileChooserNative.new
    filechoosernative.transient_for = window

    filechoosernative.response_signal.connect do |response|
      next unless response == -3

      puts filechoosernative.file.not_nil!.path
    end

    button.clicked_signal.connect do
      filechoosernative.show
    end

    window.child = button

    window.present
  end

  APP.activate_signal.connect(->activate(Gtk::Application))
  exit(APP.run(ARGV))
end
