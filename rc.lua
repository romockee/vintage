
--{{---| Awesome Vintage Theme :: only for awesome-3.4.x |------------------------------------------

require("awful")
require("awful.autofocus")
require("awful.rules")
require("beautiful")
require("naughty")
require("vicious")
require('couth.couth')
require('couth.alsa')

--{{---| Java GUI's fix |---------------------------------------------------------------------------

awful.util.spawn_with_shell("wmname LG3D")

--{{---| Error handling |---------------------------------------------------------------------------

if awesome.startup_errors then
naughty.notify({ preset = naughty.config.presets.critical,
title = "Oops, there were errors during startup!",
text = awesome.startup_errors })
end
do
local in_error = false
awesome.add_signal("debug::error", function (err)
if in_error then return end
in_error = true
naughty.notify({ preset = naughty.config.presets.critical,
title = "Oops, an error happened!",
text = err })
in_error = false
end)
end

--{{---| Theme |------------------------------------------------------------------------------------

config_dir = ("/home/rom/.config/awesome/")
themes_dir = (config_dir .. "/themes")
beautiful.init(themes_dir .. "/vintage/theme.lua")

--{{---| Variables |--------------------------------------------------------------------------------

modkey          = "Mod4"
terminal        = "terminal --geometry=200x50+80+60"
terminalr       = "sudo terminal --default-working-directory=/root/ --geometry=200x49+80+36"
configuration   = "lilyterm -T 'Awesome Configuration' -g 228x68+0+16 -x vim .config/awesome/rc.lua"
configurationwt = "TERM=screen-256color lilyterm -T 'Awesome Configuration' -g 228x68+0+16 -x ~/.gem/ruby/1.9.1/bin/mux start configuration"
rttmux          = "sudo terminal --geometry=220x59+20+36 --default-working-directory=/root/ -x tmux -2"
ttmux           = "lilyterm -T 'tmux' -g 221x60+20+36 -e tmux -2"
tetmux          = "terminal --geometry=214x54+40+40 -x tmux -2"
lilyterm        = "lilyterm -g 221x60+20+36"
ncmpcpp         = "lilyterm -T 'Music' -g 200x34-84+16 -e ncmpcpp"
-- mailmutt        = "lilyterm -T 'Mutt' -g 240x44+20+16 -e mutt"
newsbeuter      = "urxvt -g 180x45+50+50 -e newsbeuter"
browser         = "firefox"
fm              = "spacefm"

--{{---| Couth Alsa volume applet |-----------------------------------------------------------------

couth.CONFIG.ALSA_CONTROLS = { 'Master', 'PCM' }

--{{---| Table of layouts |-------------------------------------------------------------------------

layouts =
{
  awful.layout.suit.floating,
  awful.layout.suit.tile,
  awful.layout.suit.tile.left,
  awful.layout.suit.tile.bottom,
  awful.layout.suit.tile.top
}

--{{---| Naughty theme |----------------------------------------------------------------------------

naughty.config.default_preset.font         = beautiful.notify_font
naughty.config.default_preset.fg           = beautiful.notify_fg
naughty.config.default_preset.bg           = beautiful.notify_bg
naughty.config.presets.normal.border_color = beautiful.notify_border
naughty.config.presets.normal.opacity      = 0.8
naughty.config.presets.low.opacity         = 0.8
naughty.config.presets.critical.opacity    = 0.8

--{{---| Tags |-------------------------------------------------------------------------------------

tags = {}
-- if screen.count() > 1 then
for s = 1, screen.count() do
    tags[s] = awful.tag({ 1, 2, 3, 4, 5 }, s, layouts[1])
end
-- else
-- for s = 1, screen.count() do
    -- tags[s] = awful.tag({ 1, 2, 3, 4, 5 }, s, layouts[1])
-- end
-- end

--{{---| Menu |-------------------------------------------------------------------------------------

menu_awesome = {
  {"edit config",           "terminal -x vim /home/rom/.config/awesome/rc.lua"},
  {"edit theme",            "terminal -x vim /home/rom/.config/awesome/themes/penumbra/theme.lua"},
  {"hibernate",             "sudo pm-hibernate"},
  {"poweroff",              "sudo poweroff"},
  {"restart",               awesome.restart },
  {"reboot",                "sudo reboot"},
  {"quit",                  awesome.quit }
}

menu_docs = {
  {" C",                    "/home/rom/Tools/doc_c", beautiful.books_c_icon},
  {" JavaScript",           "/home/rom/Tools/doc_js", beautiful.books_js_icon},
  {" HTML/CSS",             "/home/rom/Tools/doc_markup", beautiful.books_markup_icon},
  {" Ruby",                 "/home/rom/Tools/doc_ruby", beautiful.books_ruby_icon} 
}

menu_learning = {
  {" C",                    "/home/rom/Books/C.sh", beautiful.books_c_icon},
  {" JavaScript",           "/home/rom/Books/JavaScrip.sh", beautiful.books_js_icon},
  {" Ruby On Rails",        "/home/rom/Books/RubyOnRails.sh", beautiful.books_ror_icon}
}

menu_books = {
  {" Documentation",        menu_docs, beautiful.menu_docs_icon},
  {" Learning",             menu_learning, beautiful.learning_icon},
  {"                                                            "}, 
  {" Assembler",            fm .. " ~/Books/Assembler/", beautiful.books_assembler_icon},
  {" C",                    fm .. " ~/Books/C/", beautiful.books_c_icon},
  {" C++",                  fm .. " ~/Books/C++/", beautiful.books_cpp_icon},
  {" D",                    fm .. " ~/Books/D/", beautiful.books_dlang_icon},
  {" Databases",            fm .. " ~/Books/Databases/", beautiful.books_db_icon},
  {" Erlang",               fm .. " ~/Books/Erlang/", beautiful.books_erlang_icon},
  {" Java",                 fm .. " ~/Books/Java/", beautiful.books_java_icon},
  {" JavaScript",           fm .. " ~/Books/JavaScript/", beautiful.books_js_icon},
  {" Linux",                fm .. " ~/Books/Linux/", beautiful.books_linux_icon},
  {" Markup",               fm .. " ~/Books/Markup/", beautiful.books_markup_icon},
  {" Objective-C",          fm .. " ~/Books/Objective-C/"},
  {" Python",               fm .. " ~/Books/Python/", beautiful.books_python_icon},
  {" Regexp",               fm .. " ~/Books/Regexp/"},
  {" Ruby",                 fm .. " ~/Books/Ruby/", beautiful.books_ruby_icon},
  {" VCS",                  fm .. " ~/Books/VCS", beautiful.books_vcs_icon}
}

menu_education = {
  {" Anki",                 "anki", beautiful.anki_icon},
  {" Free42dec",            "/home/rom/Tools/Free42Linux/gtk/free42dec", beautiful.free42_icon},
  {" GElemental",           "gelemental", beautiful.gelemental_icon},
  {" GoldenDict",           "goldendict", beautiful.goldendict_icon},
  {" Qalculate",            "qalculate-gtk", beautiful.qalculate_icon},
  {" Wolfram Mathematica",  "Mathematica", beautiful.mathematica_icon},
  {" XMind",                "xmind", beautiful.xmind_icon}
}

menu_development = {
  {" IntellijIDEA",         "/home/rom/Tools/idea.run", beautiful.ideaUE_icon},
  -- {" Kdiff3",               "kdiff3", beautiful.kdiff3_icon},
  -- {" Qt Creator",           "qtcreator", beautiful.qt_icon},
  {" RubyMine",             "/home/rom/Tools/RubyMine-5.4.2/bin/rubymine.sh", beautiful.rubymine_icon},
  {" SublimeText",          "sublime_text", beautiful.sublime_icon}
  -- {" Tkdiff",               "tkdiff", beautiful.tkdiff_icon}
}

menu_graphics = {
  {" Character Map",        "gucharmap", beautiful.gucharmap_icon},
  {" Fonty Python",         "fontypython", beautiful.fontypython_icon},
  {" gcolor2",              "gcolor2", beautiful.gcolor_icon},
  {" Gimp",                 "gimp", beautiful.gimp_icon},
  {" Screengrab",           "screengrab", beautiful.screengrab_icon},
  {" Xmag",                 "xmag", beautiful.xmag_icon},
  {" XnView",               "/home/rom/Tools/XnView/xnview.sh", beautiful.xnview_icon}
}

menu_multimedia = {
  {" DeadBeef",             "deadbeef", beautiful.deadbeef_icon},
  {" SMPlayer",             "smplayer", beautiful.smplayer_icon},
  {" VLC",                  "vlc", beautiful.vlc_icon}
}

menu_office = {
  {" Acrobat Reader",       "acroread", beautiful.acroread_icon},
  {" DjView",               "djview", beautiful.djview_icon},
  {" KChmViewer",           "kchmviewer", beautiful.kchmviewer_icon},
  {" Leafpad",              "leafpad", beautiful.leafpad_icon},
  {" LibreOffice Base",     "libreoffice --base", beautiful.librebase_icon},
  {" LibreOffice Calc",     "libreoffice --calc", beautiful.librecalc_icon},
  {" LibreOffice Draw",     "libreoffice --draw", beautiful.libredraw_icon},
  {" LibreOffice Impress",  "libreoffice --impress", beautiful.libreimpress_icon},
  {" LibreOffice Math",     "libreoffice --math", beautiful.libremath_icon},	
  {" LibreOffice Writer",   "libreoffice --writer", beautiful.librewriter_icon},
  {" Qpdfview",             "qpdfview", beautiful.qpdfview_icon}
  -- {" Sigil",                "sigil", beautiful.sigil_icon}, 
  -- {" TeXworks",             "texworks", beautiful.texworks_icon}
}

menu_web = {
  {" Chromium",             "chromium-browser", beautiful.chromium_icon},
  {" Droppox",              "dropbox", beautiful.dropbox_icon},
  {" Dwb",                  "dwb", beautiful.dwb_icon},
  {" Firefox",              "firefox", beautiful.firefox_icon},
  {" Gajim",                "gajim", beautiful.gajim_icon},
  {" Qbittorrent",          "qbittorrent", beautiful.qbittorrent_icon},
  {" Skype",                "skype", beautiful.skype_icon},
  {" Tor",                  "/home/rom/Tools/tor-browser_en-US/start-tor-browser", beautiful.tor_icon},
  {" Thunderbird",          "thunderbird", beautiful.thunderbird_icon}
}

menu_settings = {
  -- {" CUPS Settings",        "sudo system-config-printer", beautiful.cups_icon},
  {" JDK6 Settings",        "/opt/sun-jdk-1.6.0.37/bin/ControlPanel", beautiful.books_java_icon},
  {" JDK7 Settings",        "/opt/oracle-jdk-bin-1.7.0.9/bin/ControlPanel", beautiful.books_java_icon},
  -- {" Nvidia Settings",      "sudo nvidia-settings", beautiful.nvidia_icon},
  {" Qt Configuration",     "qtconfig", beautiful.qt_icon}    
}

menu_tools = {
  {" Gparted",              "sudo gparted", beautiful.gparted_icon},
  {" Synergy",              "synergy", beautiful.synergy_icon}
  -- {" TeamViewer",           "/home/rom/Tools/teamviewer7/teamviewer", beautiful.teamviewer_icon},
  -- {" VirtualBox",           "VirtualBox", beautiful.virtualbox_icon},
}

mymainmenu = awful.menu({ items = { 
  { " @wesome",             menu_awesome, beautiful.awesome_icon },
  {" books",                menu_books, beautiful.menu_books_icon},
  {" development",          menu_development, beautiful.menu_development_icon},
  {" education",            menu_education, beautiful.menu_education_icon},
  {" graphics",             menu_graphics, beautiful.menu_graphics_icon},
  {" multimedia",           menu_multimedia, beautiful.menu_multimedia_icon},	    
  {" office",               menu_office, beautiful.menu_office_icon},
  {" tools",                menu_tools, beautiful.menu_tools_icon},
  {" web",                  menu_web, beautiful.menu_web_icon},
  {" settings",             menu_settings, beautiful.menu_settings_icon},
  {" calc",                 "gcalctool", beautiful.gcalctool_icon},
  {" htop",                 terminal .. " -x htop", beautiful.htop_icon},
  {" sound",                "qasmixer", beautiful.wmsmixer_icon},
  {" file manager",         "spacefm", beautiful.spacefm_icon},
  {" root terminal",        "sudo " .. terminal, beautiful.terminalroot_icon},
  {" terminal",             terminal, beautiful.terminal_icon} 
}
})

mylauncher = awful.widget.launcher({ image = image(beautiful.clear_icon), menu = mymainmenu })

--{{---| Wibox |------------------------------------------------------------------------------------

mysystray = widget({ type = "systray" })
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, awful.tag.viewnext),
                    awful.button({ }, 5, awful.tag.viewprev)
                    )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  if not c:isvisible() then
                                                      awful.tag.viewonly(c:tags()[1])
                                                  end
                                                 client.focus = c
                                                  c:raise()
                                              end
                                          end),
                     awful.button({ }, 3, function ()
                                              if instance then
                                                  instance:hide()
                                                  instance = nil
                                              else
                                                  instance = awful.menu.clients({ width=450 })
                                              end
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                              if client.focus then client.focus:raise() end
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                              if client.focus then client.focus:raise() end
                                          end))
for s = 1, screen.count() do
    mypromptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)
    mytasklist[s] = awful.widget.tasklist(function(c)
                                              return awful.widget.tasklist.label.currenttags(c, s)
                                          end, mytasklist.buttons)

--{{---| Music widget |-----------------------------------------------------------------------------

music = widget ({type = "imagebox" })
music.image = image(beautiful.widget_music)
music:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn_with_shell(ncmpcpp) end),
  awful.button({ modkey }, 1, function () awful.util.spawn_with_shell("ncmpcpp toggle") end),
  awful.button({ }, 3, function () couth.notifier:notify( couth.alsa:setVolume('Master','toggle')) end),
  awful.button({ }, 4, function () couth.notifier:notify( couth.alsa:setVolume('PCM','2dB+')) end),
  awful.button({ }, 5, function () couth.notifier:notify( couth.alsa:setVolume('PCM','2dB-')) end),
  awful.button({ }, 4, function () couth.notifier:notify( couth.alsa:setVolume('Master','2dB+')) end),
  awful.button({ }, 5, function () couth.notifier:notify( couth.alsa:setVolume('Master','2dB-')) end)))

--{{---| MEM widget |-------------------------------------------------------------------------------

memwidget = widget({ type = "textbox" })
vicious.register(memwidget, vicious.widgets.mem, '<span background="#17100f" font="Terminus 12"> <span font="Terminus 9" color="#5C5142" background="#17100f">$2MB </span></span>', 13)
memicon = widget ({type = "imagebox" })
memicon.image = image(beautiful.widget_mem)

--{{---| CPU / sensors widget |---------------------------------------------------------------------

cpuwidget = widget({ type = "textbox" })
vicious.register(cpuwidget, vicious.widgets.cpu,
'<span background="#211514" font="Terminus 12"> <span font="Terminus 9" color="#5C5142">$2% <span color="#4B4741">·</span> $3% </span></span>', 3)
cpuicon = widget ({type = "imagebox" })
cpuicon.image = image(beautiful.widget_cpu)
sensors = widget({ type = "textbox" })
vicious.register(sensors, vicious.widgets.sensors)
tempicon = widget ({type = "imagebox" })
tempicon.image = image(beautiful.widget_temp)

--{{---| FS's widget / devmon-unmount widget |-------------------------------------------------------

fswidget = widget({ type = "textbox" })
vicious.register(fswidget, vicious.widgets.fs,
'<span background="#211514" font="Terminus 12"> <span font="Terminus 9" color="#5C5142">${/ avail_gb}GB </span></span>', 8)
udevilwidget = widget ({type = "imagebox" })
udevilwidget.image = image(beautiful.widget_hdd)
udevilwidget:buttons(awful.util.table.join(
awful.button({ }, 1, function () awful.util.spawn_with_shell("devmon --unmount-removable") end)
))

--{{---| Battery widget |---------------------------------------------------------------------------  

baticon = widget ({type = "imagebox" })
baticon.image = image(beautiful.widget_battery)
batwidget = widget({ type = "textbox" })
vicious.register( batwidget, vicious.widgets.bat, '<span background="#17100f" font="Terminus 12"> <span font="Terminus 9" color="#5C5142" background="#17100f">$1$2% </span></span>', 1, "BAT0" )

--{{---| Net widget |-------------------------------------------------------------------------------

netwidget = widget({ type = "textbox" })
vicious.register(netwidget, 
vicious.widgets.net,
'<span background="#211514" font="Terminus 12"> <span font="Terminus 9" color="#5C5142">${wlp3s0 down_kb} ↓↑ ${wlp3s0 up_kb}</span> </span>', 3)
neticon = widget ({type = "imagebox" })
neticon.image = image(beautiful.widget_net)

--{{---| Binary Clock |-----------------------------------------------------------------------------

binaryclock = {}
binaryclock.widget = widget({
    type = "imagebox"
})
binaryclock.w = 42
binaryclock.h = 16
binaryclock.show_sec = true
binaryclock.color_active = beautiful.binclock_fga
binaryclock.color_bg = beautiful.binclock_bg
binaryclock.color_inactive = beautiful.binclock_fgi
binaryclock.dotsize = math.floor(binaryclock.h / 5)
binaryclock.step = math.floor(binaryclock.dotsize / 3)
binaryclock.widget.image = image.argb32(binaryclock.w, binaryclock.h, nil)
if (binaryclock.show_sec) then binaryclock.timeout = 1
else binaryclock.timeout = 20 end
binaryclock.DEC_BIN = function (IN)
local B, K, OUT, I, D = 2, "01", "", 0
while IN > 0 do
    I = I + 1
IN, D = math.floor(IN / B), math.mod(IN, B) + 1
OUT = string.sub(K, D, D)..OUT
end
return OUT
end
binaryclock.paintdot = function (val, shift, limit)
local binval = binaryclock.DEC_BIN(val)
local l = string.len(binval)
local height = 0
if (l < limit) then
for i = 1, limit - l do binval = "0"..binval end
end
for i = 0, limit - 1 do
    if (string.sub(binval, limit - i, limit - i) == "1") then
binaryclock.
widget.image: draw_rectangle(shift,
    binaryclock.h - binaryclock.dotsize - height,
    binaryclock.dotsize, binaryclock.dotsize, true, binaryclock.color_active)
else
    binaryclock.widget.image: draw_rectangle(shift,
        binaryclock.h - binaryclock.dotsize - height,
        binaryclock.dotsize, binaryclock.dotsize, true, binaryclock.color_inactive)
end
height = height + binaryclock.dotsize + binaryclock.step
end
end
binaryclock.drawclock = function ()
binaryclock.widget.image: draw_rectangle(0, 0, binaryclock.w, binaryclock.h, true, binaryclock.color_bg)
local t = os.date("*t")
local hour = t.hour
if (string.len(hour) == 1) then
hour = "0"..t.hour
end
local min = t.min
if (string.len(min) == 1) then
min = "0"..t.min
end
local sec = t.sec
if (string.len(sec) == 1) then
sec = "0"..t.sec
end
local col_count = 6
if (not binaryclock.show_sec) then col_count = 4 end
local step = math.floor((binaryclock.w - col_count * binaryclock.dotsize) / 8)
binaryclock.paintdot(0 + string.sub(hour, 1, 1), step, 2)
binaryclock.paintdot(0 + string.sub(hour, 2, 2), binaryclock.dotsize + 2 * step, 4)
binaryclock.paintdot(0 + string.sub(min, 1, 1), binaryclock.dotsize * 2 + 4 * step, 3)
binaryclock.paintdot(0 + string.sub(min, 2, 2), binaryclock.dotsize * 3 + 5 * step, 4)
if (binaryclock.show_sec) then
binaryclock.paintdot(0 + string.sub(sec, 1, 1), binaryclock.dotsize * 4 + 7 * step, 3)
binaryclock.paintdot(0 + string.sub(sec, 2, 2), binaryclock.dotsize * 5 + 8 * step, 4)
end
binaryclock.widget.image = binaryclock.widget.image
end
binarytimer = timer {
    timeout = binaryclock.timeout
}
binarytimer: add_signal("timeout", function () binaryclock.drawclock() end)
binarytimer: start()

--{{---| Separators widgets |-----------------------------------------------------------------------

spr    = widget ({type = "textbox"  }) spr.text     = ' '
a_ld   = widget ({type = "imagebox" }) a_ld.image   = image(beautiful.a_ld)
a_dl   = widget ({type = "imagebox" }) a_dl.image   = image(beautiful.a_dl)
a_bcdl = widget ({type = "imagebox" }) a_bcdl.image = image(beautiful.a_bcdl)
a_bcld = widget ({type = "imagebox" }) a_bcld.image = image(beautiful.a_bcld)

--{{---| Panel |------------------------------------------------------------------------------------

mywibox[s] = awful.wibox({ position = "top", screen = s, height = "16" })

if screen.count() > 1 then
mywibox[s].widgets = {
   { mylauncher, mytaglist[s], mypromptbox[s], layout = awful.widget.layout.horizontal.leftright },
     mylayoutbox[s],
     a_bcdl,
     s == 2 and binaryclock.widget,
     a_bcld, 
     netwidget,
     neticon,
     a_dl,
     batwidget,
     baticon,
     a_ld, 
     fswidget,
     udevilwidget, 
     a_dl,
     sensors,
     tempicon,
     a_ld,
     cpuwidget,
     cpuicon,
     a_dl,
     memwidget,
     memicon,
     a_ld,
     music,
     a_dl,
     spr,
     s == 2 and mysystray, spr or nil, mytasklist[s], 
     layout = awful.widget.layout.horizontal.rightleft } 
else
mywibox[s].widgets = {
   { mylauncher, mytaglist[s], mypromptbox[s], layout = awful.widget.layout.horizontal.leftright },
     mylayoutbox[s],
     a_bcdl,
     binaryclock.widget,
     a_bcld, 
     netwidget,
     neticon,
     a_dl,
     batwidget,
     baticon,
     a_ld, 
     fswidget,
     udevilwidget, 
     a_dl,
     sensors,
     tempicon,
     a_ld,
     cpuwidget,
     cpuicon,
     a_dl,
     memwidget,
     memicon,
     a_ld,
     music,
     a_dl,
     spr,
     s == 1 and mysystray, spr or nil, mytasklist[s], 
     layout = awful.widget.layout.horizontal.rightleft } 
end
end

--{{---| Mouse bindings |---------------------------------------------------------------------------

root.buttons(awful.util.table.join(awful.button({ }, 3, function () mymainmenu:toggle() end)))

--{{---| Key bindings |-----------------------------------------------------------------------------

globalkeys = awful.util.table.join(

awful.key({ modkey,                    }, "w",                    function () mymainmenu:show({keygrabber=true}) end),
awful.key({ modkey,                    }, "Escape",               awful.tag.history.restore),
awful.key({ modkey,                    }, "Tab",                  function () awful.client.focus.history.previous() if client.focus then client.focus:raise() end end),
awful.key({ modkey, "Control"          }, "r",                    awesome.restart),
awful.key({ modkey, "Shift", "Control" }, "r",                    awesome.quit),
awful.key({ modkey, "Control"          }, "n",                    awful.client.restore),
awful.key({ modkey                     }, "r",                    function () mypromptbox[mouse.screen]:run() end),                                                                                                        --
awful.key({ modkey                     }, "a",                    function () awful.util.spawn_with_shell(configuration) end), 
awful.key({ modkey, "Shift"            }, "a",                    function () awful.util.spawn_with_shell(configurationwt) end), 
awful.key({ modkey,                    }, "Return",               function () awful.util.spawn(terminal) end),                 
awful.key({ modkey, "Control"          }, "Return",               function () awful.util.spawn(terminalr) end),                
awful.key({ modkey, "Control"          }, "t",                    function () awful.util.spawn(rttmux) end),                   
awful.key({ modkey                     }, "t",                    function () awful.util.spawn(tetmux) end),                   
awful.key({ modkey,                    }, "u",                    function () awful.util.spawn("urxvt -geometry 200x50+80+60") end),
awful.key({ modkey,                    }, "z",                    function () awful.util.spawn("urxvt -geometry 200x50+80+60 -e zsh") end), 
awful.key({ modkey, "Shift"            }, "u",                    function () awful.util.spawn("urxvt -geometry 200x50+80+60 -e tmux") end), 
awful.key({ modkey, "Control"          }, "u",                    function () awful.util.spawn("sudo urxvt -geometry 200x50+80+60 -cd /root/") end),
awful.key({ modkey, "Control", "Shift" }, "u",                    function () awful.util.spawn("sudo urxvt -geometry 200x50+80+60 -cd /root/ -e tmux") end),
awful.key({ modkey,                    }, "space",                function () awful.layout.inc(layouts,  1) end),
awful.key({ modkey, "Shift"            }, "space",                function () awful.layout.inc(layouts, -1) end),
awful.key({ modkey,                    }, "s",                    function () awful.util.spawn("spacefm") end),
awful.key({ modkey, "Control"          }, "s",                    function () awful.util.spawn("qsynergy") end),
awful.key({ modkey                     }, "v",                    function () awful.util.spawn(terminal .. " -x vim") end),    
awful.key({ modkey                     }, "Menu",                 function () awful.util.spawn_with_shell("gmrun") end),
awful.key({ modkey                     }, "d",                    function () awful.util.spawn_with_shell("goldendict") end),
awful.key({ modkey                     }, "g",                    function () awful.util.spawn_with_shell("gcolor2") end),
awful.key({ modkey                     }, "Print",                function () awful.util.spawn_with_shell("screengrab") end),
awful.key({ modkey, "Control"          }, "Print",                function () awful.util.spawn_with_shell("screengrab --region") end),
awful.key({ modkey, "Shift"            }, "Print",                function () awful.util.spawn_with_shell("screengrab --active") end),
awful.key({ modkey                     }, "7",                    function () awful.util.spawn_with_shell("firefox") end),
awful.key({ modkey                     }, "8",                    function () awful.util.spawn_with_shell("chromium") end),
awful.key({ modkey                     }, "9",                    function () awful.util.spawn_with_shell("dwb") end),
awful.key({ modkey                     }, "0",                    function () awful.util.spawn_with_shell("thunderbird") end),
awful.key({ modkey                     }, "'",                    function () awful.util.spawn_with_shell("leafpad") end),
awful.key({ modkey                     }, "\\",                   function () awful.util.spawn_with_shell("sublime_text") end),
awful.key({ modkey                     }, "i",                    function () awful.util.spawn_with_shell(iptraf) end),
awful.key({ modkey                     }, "b",                    function () awful.util.spawn_with_shell("~/Tools/rubymine.run") end),
awful.key({ modkey                     }, "`",                    function () awful.util.spawn_with_shell("xwinmosaic") end),
awful.key({ modkey, "Control"          }, "m",                    function () awful.util.spawn_with_shell(ncmpcpp) end),
awful.key({ modkey, "Control"          }, "f",                    function () awful.util.spawn_with_shell(newsbeuter) end),
awful.key({                            }, "XF86Calculator",       function () awful.util.spawn_with_shell("gcalctool") end),
awful.key({                            }, "XF86Sleep",            function () awful.util.spawn_with_shell("sudo pm-hibernate") end),
awful.key({                            }, "XF86AudioPlay",        function () awful.util.spawn_with_shell("ncmpcpp toggle") end),
awful.key({                            }, "XF86AudioStop",        function () awful.util.spawn_with_shell("ncmpcpp stop") end),
awful.key({                            }, "XF86AudioPrev",        function () awful.util.spawn_with_shell("ncmpcpp prev") end),
awful.key({                            }, "XF86AudioNext",        function () awful.util.spawn_with_shell("ncmpcpp next") end),
awful.key({                            }, "XF86AudioLowerVolume", function () couth.notifier:notify(couth.alsa:setVolume('Master','3dB-')) end),
awful.key({                            }, "XF86AudioRaiseVolume", function () couth.notifier:notify(couth.alsa:setVolume('Master','3dB+')) end),
awful.key({                            }, "XF86AudioMute",        function () couth.notifier:notify(couth.alsa:setVolume('Master','toggle')) end), 
awful.key({ modkey                     }, "F2",                   function () awful.util.spawn_with_shell("sudo wlan") end),
awful.key({ modkey                     }, "p",                    function () if mywibox[mouse.screen].screen == nil then mywibox[mouse.screen].screen = mouse.screen
                                                                              else mywibox[mouse.screen].screen = nil end end)
-- awful.key({ modkey,                    }, "Left",                 awful.tag.viewprev),
-- awful.key({ modkey,                    }, "Right",                awful.tag.viewnext),
-- awful.key({                            }, "F11",                  function () scratch.pad.toggle() end),
-- awful.key({ modkey                     }, "Next",                 function () awful.client.moveresize( 20,  20, -40, -40) end),
-- awful.key({ modkey                     }, "Prior",                function () awful.client.moveresize(-20, -20,  40,  40) end),
-- awful.key({ modkey                     }, "Down",                 function () awful.client.moveresize(  0,  20,   0,   0) end),
-- awful.key({ modkey                     }, "Up",                   function () awful.client.moveresize(  0, -20,   0,   0) end),
-- awful.key({ modkey                     }, "Left",                 function () awful.client.moveresize(-20,   0,   0,   0) end),
-- awful.key({ modkey                     }, "Right",                function () awful.client.moveresize( 20,   0,   0,   0) end),
-- awful.key({ modkey                     }, "l",                    function () awful.tag.incmwfact( 0.05) end),
-- awful.key({ modkey                     }, "h",                    function () awful.tag.incmwfact(-0.05) end),
-- awful.key({ modkey, "Shift"            }, "l",                    function () awful.client.incwfact(-0.05) end),
-- awful.key({ modkey, "Shift"            }, "h",                    function () awful.client.incwfact( 0.05) end),
-- awful.key({ modkey,                    }, "j",                    function () awful.client.focus.byidx( 1) if client.focus then client.focus:raise() end end),
-- awful.key({ modkey,                    }, "k",                    function () awful.client.focus.byidx(-1) if client.focus then client.focus:raise() end end),
-- awful.key({ modkey, "Shift"            }, "j",                    function () awful.client.swap.byidx(  1)    end),
-- awful.key({ modkey, "Shift"            }, "k",                    function () awful.client.swap.byidx( -1)    end),
-- awful.key({ modkey, "Control"          }, "j",                    function () awful.screen.focus_relative( 1) end),
-- awful.key({ modkey, "Control"          }, "k",                    function () awful.screen.focus_relative(-1) end),
-- awful.key({ modkey,                    }, "l",                    function () awful.tag.incmwfact( 0.05)    end),
-- awful.key({ modkey,                    }, "h",                    function () awful.tag.incmwfact(-0.05)    end),
-- awful.key({ modkey, "Shift"            }, "h",                    function () awful.tag.incnmaster( 1)      end),
-- awful.key({ modkey, "Control"          }, "h",                    function () awful.tag.incncol( 1)         end),
-- awful.key({ modkey, "Shift"            }, "l",                    function () awful.tag.incnmaster(-1)      end),
-- awful.key({ modkey, "Control"          }, "l",                    function () awful.tag.incncol(-1)         end),
-- awful.key({ modkey,                    }, "x",                    function () awful.util.spawn("xmind") end),
-- awful.key({                            }, "F12",                  function () scratch.drop("urxvt", "bottom", nil, nil, 0.30) end),
-- awful.key({ modkey                     }, "x",                    function () awful.prompt.run({ prompt = "Run Lua code: " }, mypromptbox[mouse.screen].widget,
--                                                                               awful.util.eval, nil, awful.util.getdir("cache") .. "/history_eval") end)

)

clientkeys = awful.util.table.join(

awful.key({ modkey,                    }, "f",                    function (c) c.fullscreen = not c.fullscreen  end),
awful.key({ modkey                     }, "l",                    function (c) c:geometry({x=150, y=150}) end),
awful.key({ modkey,                    }, "c",                    function (c) c:kill()                         end),
-- awful.key({ modkey, "Control"          }, "space",                awful.client.floating.toggle                     ),
awful.key({ modkey, "Control"          }, "Return",               function (c) c:swap(awful.client.getmaster()) end),
awful.key({ modkey,                    }, "o",                    awful.client.movetoscreen                        ),
awful.key({ modkey, "Shift"            }, "r",                    function (c) c:redraw()                       end),
awful.key({ modkey,                    }, "n",                    function (c) c.minimized = true end),
-- awful.key({                            }, "F10",                  function (c) scratch.pad.set(c, 0.60, 0.60, true) end),
awful.key({ modkey,                    }, "m",                    function (c) 
                                                                      c.maximized_horizontal = not c.maximized_horizontal
                                                                      c.maximized_vertical   = not c.maximized_vertical
                                                                  end)

)

clientbuttons = awful.util.table.join(

awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
awful.button({ modkey }, 1, awful.mouse.client.move),
awful.button({ modkey }, 3, awful.mouse.client.resize)

)

keynumber = 0
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

for i = 1, keynumber do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          awful.tag.viewtoggle(tags[screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end))
end

--{{---| Set keys |---------------------------------------------------------------------------------

root.keys(globalkeys)

--{{---| Rules |------------------------------------------------------------------------------------

awful.rules.rules = {
    { rule = { },
    properties = { size_hints_honor = false,
    border_width = beautiful.border_width,
    border_color = beautiful.border_normal,
    focus = true,
    keys = clientkeys,
    buttons = clientbuttons } },
    { rule = { class = "goldendict" },
    properties = { floating = true } },
    { rule = { class = "xwinmosaic" },
    properties = { floating = true } },
    -- { rule = { class = "URxvt" },
    -- properties = { tag = tags[1][5] } },
}

--{{---| Disable startup-notification globally (annoying cursor animation) |------------------------

local oldspawn = awful.util.spawn
awful.util.spawn = function (s)
  oldspawn(s, false)
end

--{{---| Signals |----------------------------------------------------------------------------------

client.add_signal("manage", function (c, startup)
    -- Add a titlebar
    -- awful.titlebar.add(c, { modkey = modkey })
    c:add_signal("mouse::enter", function(c) if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then client.focus = c end end)
    if not startup then if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.no_overlap(c) awful.placement.no_offscreen(c) end end end)
client.add_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.add_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

--{{---| run_once |---------------------------------------------------------------------------------

function run_once(prg)
  awful.util.spawn_with_shell("pgrep -u $USER -x " .. prg .. " || (" .. prg .. ")") end

--{{---| run_once with args |-----------------------------------------------------------------------

function run_oncewa(prg) if not prg then do return nil end end
    awful.util.spawn_with_shell('ps ux | grep -v grep | grep -F ' .. prg .. ' || ' .. prg .. ' &') end

--{{--| Autostart |---------------------------------------------------------------------------------

os.execute("pkill xcape")
os.execute("pkill compton")
os.execute("setxkbmap -layout 'us,ru' -variant 'winkeys' -option 'grp:caps_toggle,grp_led:caps,compose:menu' &")
os.execute("xcape -e 'Pause=Control_L|Insert;Print=Shift_L|Insert'")
os.execute("xbindkeys -f /home/rom/.xbindkeysrc &")
-- os.execute("xmodmap /home/rom/.Xmodmap &")
-- os.execute("pkill devmon")
-- os.execute('devmon --internal --ignore-device /dev/sda1 --ignore-device /dev/sdb1 --ignore-device /dev/sdb2 --exec-on-drive "notify-send \"Volume %l has been mounted\""')
os.execute("parcellite &")
run_once("kbdd")
run_once("compton")

--{{Xx----------------------------------------------------------------------------------------------

