local lgi = require("lgi")
local Gtk = lgi.require("Gtk", "3.0")

local App = Gtk.Application({
  application_id = "com.github.moonsteal.lua-gtk-examples.GtkImage2"
})

function App:on_startup()
  Gtk.ApplicationWindow({
    application = self,
    default_width = 400,
    default_height = 400
  })
end

function App:on_activate()
  self.active_window:set_titlebar(Gtk.HeaderBar({
    visible = true,
    show_close_button = true,
    title = "Your app title",
    subtitle = "Your app subtitle"
  }))

  self.active_window:add(Gtk.Image({ visible = true, icon_name = "firefox", pixel_size = 256 }))
  self.active_window:present()
end

return App:run(arg)