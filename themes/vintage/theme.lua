    --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
--{{  Awesome Vintage theme  |  Rom Ockee;  2013 | only for awesome-3.4.x  }}---
    --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---

theme = {}

theme.wallpaper_cmd = { "awsetbg /home/rom/.config/awesome/themes/vintage/wallpapers/0d0909.png" }

theme.font                                  = "Terminus 9"
theme.fg_normal                             = "#5C5142"
theme.bg_normal                             = "#17100F"
theme.fg_focus                              = "#DDDDDD"
theme.bg_focus                              = "#17100F"
theme.fg_urgent                             = "#CC9393"
theme.bg_urgent                             = "#17100F"
theme.border_normal                         = "#3F3F3F"
theme.border_focus                          = "#6F6F6F"
theme.border_marked                         = "#CC9393"
theme.titlebar_bg_focus                     = "#3F3F3F"
theme.titlebar_bg_normal                    = "#3F3F3F"
theme.binclock_bg                           = "#17100F"
theme.binclock_fga                          = "#726e56"
theme.binclock_fgi                          = "#444444"
theme.taglist_bg_focus                      = "#17100F" 
theme.taglist_fg_focus                      = "#C3C13D"
theme.tasklist_bg_focus                     = "#17100F" 
theme.tasklist_fg_focus                     = "#778725"
theme.textbox_widget_as_label_font_color    = "#ffffff" 
theme.text_font_color_1                     = "#7fb219"
theme.text_font_color_2                     = "#00ccff"
theme.text_font_color_3                     = "#ffffff"
theme.notify_font_color_1                   = "#7fb219"
theme.notify_font_color_2                   = "#00ccff"
theme.notify_font_color_3                   = "#3f3f3f"
theme.notify_font_color_4                   = "#ffffff"
theme.notify_font                           = "Terminus 9"
theme.notify_fg                             = theme.fg_normal
theme.notify_bg                             = theme.bg_normal
theme.notify_border                         = theme.bg_normal 
theme.awful_widget_bckgrd_color             = "#333333"
theme.awful_widget_border_color             = "#333333"
theme.awful_widget_color                    = "#00ccff"
-- theme.awful_widget_gradien_color_1          = 
-- theme.awful_widget_gradien_color_2          = 
-- theme.awful_widget_gradien_color_3          = 

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
-- theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.fg_widget        = "#AECF96"
-- theme.fg_center_widget = "#88A175"
-- theme.fg_end_widget    = "#FF5656"
-- theme.bg_widget        = "#494B4F"
-- theme.border_widget    = "#3F3F3F"

theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]

-- theme.menu_bg_normal    = ""
-- theme.menu_bg_focus     = ""
-- theme.menu_fg_normal    = ""
-- theme.menu_fg_focus     = ""
-- theme.menu_border_color = ""
-- theme.menu_border_width = ""

theme.menu_height                           = "16"
theme.menu_width                            = "140"
theme.border_width                          = "0"
theme.textbox_widget_margin_top             = 1
theme.awful_widget_height                   = 14
theme.awful_widget_margin_top               = 2

--{{--- Theme icons ------------------------------------------------------------------------------------------

theme.awesome_icon                              = themes_dir .. "/vintage/icons/vintage/awesome-icon.png"
theme.clear_icon                                = themes_dir .. "/vintage/icons/vintage/clear.png"
theme.menu_submenu_icon                         = themes_dir .. "/vintage/icons/vintage/submenu.png"
theme.tasklist_floating_icon                    = themes_dir .. "/vintage/icons/vintage/floatingm.png"
theme.titlebar_close_button_focus               = themes_dir .. "/vintage/icons/vintage/close_focus.png"
theme.titlebar_close_button_normal              = themes_dir .. "/vintage/icons/vintage/close_normal.png"
theme.titlebar_ontop_button_focus_active        = themes_dir .. "/vintage/icons/vintage/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = themes_dir .. "/vintage/icons/vintage/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = themes_dir .. "/vintage/icons/vintage/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = themes_dir .. "/vintage/icons/vintage/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = themes_dir .. "/vintage/icons/vintage/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = themes_dir .. "/vintage/icons/vintage/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = themes_dir .. "/vintage/icons/vintage/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = themes_dir .. "/vintage/icons/vintage/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = themes_dir .. "/vintage/icons/vintage/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = themes_dir .. "/vintage/icons/vintage/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = themes_dir .. "/vintage/icons/vintage/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = themes_dir .. "/vintage/icons/vintage/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = themes_dir .. "/vintage/icons/vintage/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = themes_dir .. "/vintage/icons/vintage/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_dir .. "/vintage/icons/vintage/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_dir .. "/vintage/icons/vintage/maximized_normal_inactive.png"
theme.taglist_squares_sel                       = themes_dir .. "/vintage/icons/vintage/square_sel.png"
theme.taglist_squares_unsel                     = themes_dir .. "/vintage/icons/vintage/square_unsel.png"
theme.layout_floating                           = themes_dir .. "/vintage/icons/vintage/floating.png"
theme.layout_tile                               = themes_dir .. "/vintage/icons/vintage/tile.png"
theme.layout_tileleft                           = themes_dir .. "/vintage/icons/vintage/tileleft.png"
theme.layout_tilebottom                         = themes_dir .. "/vintage/icons/vintage/tilebottom.png"
theme.layout_tiletop                            = themes_dir .. "/vintage/icons/vintage/tiletop.png"
theme.a_ld                                      = themes_dir .. "/vintage/icons/vintage/a_ld.png"
theme.a_dl                                      = themes_dir .. "/vintage/icons/vintage/a_dl.png"
theme.a_bcdl                                    = themes_dir .. "/vintage/icons/vintage/a_bcdl.png"
theme.a_bcld                                    = themes_dir .. "/vintage/icons/vintage/a_bcld.png"
theme.widget_net                                = themes_dir .. "/vintage/icons/vintage/p_net.png"
theme.widget_battery                            = themes_dir .. "/vintage/icons/vintage/p_battery.png"
theme.widget_hdd                                = themes_dir .. "/vintage/icons/vintage/p_hdd.png"
theme.widget_temp                               = themes_dir .. "/vintage/icons/vintage/p_temp.png"
theme.widget_cpu                                = themes_dir .. "/vintage/icons/vintage/p_cpu.png"
theme.widget_mem                                = themes_dir .. "/vintage/icons/vintage/p_mem.png"
theme.widget_music                              = themes_dir .. "/vintage/icons/vintage/p_music.png"

--{{--- User icons ------------------------------------------------------------------------------------------

theme.acroread_icon                             = themes_dir .. "/vintage/icons/acroread.png"
theme.anki_icon                                 = themes_dir .. "/vintage/icons/anki.png"
theme.books_assembler_icon                      = themes_dir .. "/vintage/icons/books_assembler.png"
theme.binclock_bgicon                           = themes_dir .. "/vintage/icons/transbinclock.png"
theme.books_c_icon                              = themes_dir .. "/vintage/icons/books_c.png"
theme.books_ror_icon                            = themes_dir .. "/vintage/icons/books_ror.png"
theme.books_cpp_icon                            = themes_dir .. "/vintage/icons/books_cpp.png"
theme.books_db_icon                             = themes_dir .. "/vintage/icons/books_db.png"
theme.books_dlang_icon                          = themes_dir .. "/vintage/icons/books_dlang.png"
theme.books_erlang_icon                         = themes_dir .. "/vintage/icons/books_erlang.png"
theme.books_java_icon                           = themes_dir .. "/vintage/icons/books_java.png"
theme.books_js_icon                             = themes_dir .. "/vintage/icons/books_js.png"
theme.books_vcs_icon                            = themes_dir .. "/vintage/icons/books_vcs.png"
theme.books_markup_icon                         = themes_dir .. "/vintage/icons/books_markup.png"
theme.books_python_icon                         = themes_dir .. "/vintage/icons/books_python.png"
theme.books_ruby_icon                           = themes_dir .. "/vintage/icons/books_ruby.png"
theme.cdrom                                     = themes_dir .. "/vintage/icons/disc.png"
theme.chromium_icon                             = themes_dir .. "/vintage/icons/chromium.png"
theme.cups_icon                                 = themes_dir .. "/vintage/icons/cups.png"
theme.deadbeef_icon                             = themes_dir .. "/vintage/icons/deadbeef.png"
theme.djview_icon                               = themes_dir .. "/vintage/icons/djview.png"
theme.dropbox_icon                              = themes_dir .. "/vintage/icons/dropbox.png"
theme.dwb_icon                                  = themes_dir .. "/vintage/icons/dwb.png"
theme.firefox_icon                              = themes_dir .. "/vintage/icons/firefox.png"
theme.fontypython_icon                          = themes_dir .. "/vintage/icons/fontypython.png"
theme.free42_icon                               = themes_dir .. "/vintage/icons/free42.png"
theme.gajim_icon                                = themes_dir .. "/vintage/icons/gajim.png"
theme.gcalctool_icon                            = themes_dir .. "/vintage/icons/gcalctool.png"
theme.gcolor_icon                               = themes_dir .. "/vintage/icons/gcolor2.png"
theme.gelemental_icon                           = themes_dir .. "/vintage/icons/gelemental.png"
theme.gimp_icon                                 = themes_dir .. "/vintage/icons/gimp.png"
theme.goldendict_icon                           = themes_dir .. "/vintage/icons/goldendict.png"
theme.gparted_icon                              = themes_dir .. "/vintage/icons/gparted.png"
theme.gucharmap_icon                            = themes_dir .. "/vintage/icons/gucharmap.png"
theme.htop_icon                                 = themes_dir .. "/vintage/icons/htop.png"
theme.ideaCE_icon                               = themes_dir .. "/vintage/icons/ideaCE.png"
theme.ideaUE_icon                               = themes_dir .. "/vintage/icons/ideaUE.png"
theme.kchmviewer_icon                           = themes_dir .. "/vintage/icons/kchmviewer.png"
theme.kdiff3_icon                               = themes_dir .. "/vintage/icons/kdiff3.png"
theme.leafpad_icon                              = themes_dir .. "/vintage/icons/leafpad.png"
theme.learning_icon                             = themes_dir .. "/vintage/icons/learning.png"
theme.librebase_icon                            = themes_dir .. "/vintage/icons/libreoffice-base.png"
theme.librecalc_icon                            = themes_dir .. "/vintage/icons/libreoffice-calc.png"
theme.libredraw_icon                            = themes_dir .. "/vintage/icons/libreoffice-draw.png"
theme.libreimpress_icon                         = themes_dir .. "/vintage/icons/libreoffice-impress.png"
theme.libremath_icon                            = themes_dir .. "/vintage/icons/libreoffice-math.png"
theme.librewriter_icon                          = themes_dir .. "/vintage/icons/libreoffice-writer.png"
theme.books_linux_icon                          = themes_dir .. "/vintage/icons/books_linux.png"
theme.mathematica_icon                          = themes_dir .. "/vintage/icons/mathematica.png"
theme.menu_books_icon                           = themes_dir .. "/vintage/icons/menu_books.png"
theme.menu_development_icon                     = themes_dir .. "/vintage/icons/menu_development.png"
theme.menu_docs_icon                            = themes_dir .. "/vintage/icons/menu_docs.png"
theme.menu_education_icon                       = themes_dir .. "/vintage/icons/menu_education.png"
theme.menu_graphics_icon                        = themes_dir .. "/vintage/icons/menu_graphics.png"
theme.menu_multimedia_icon                      = themes_dir .. "/vintage/icons/menu_multimedia.png"
theme.menu_office_icon                          = themes_dir .. "/vintage/icons/menu_office.png"
theme.menu_settings_icon                        = themes_dir .. "/vintage/icons/menu_settings.png"
theme.menu_tools_icon                           = themes_dir .. "/vintage/icons/menu_tools.png"
theme.menu_web_icon                             = themes_dir .. "/vintage/icons/menu_web.png"
theme.multiplemonitors_icon                     = themes_dir .. "/vintage/icons/multiple_monitors.png"
theme.nvidia_icon                               = themes_dir .. "/vintage/icons/nvidia-settings.png"
theme.qalculate_icon                            = themes_dir .. "/vintage/icons/qalculate.png"
theme.qbittorrent_icon                          = themes_dir .. "/vintage/icons/qbittorrent.png"
theme.qpdfview_icon                             = themes_dir .. "/vintage/icons/qpdfview.png"
theme.qt_icon                                   = themes_dir .. "/vintage/icons/qt.png"
theme.rubymine_icon                             = themes_dir .. "/vintage/icons/rubymine.png"
theme.screengrab_icon                           = themes_dir .. "/vintage/icons/screengrab.png"
theme.sigil_icon                                = themes_dir .. "/vintage/icons/sigil.png"
theme.skype_icon                                = themes_dir .. "/vintage/icons/skype.png"
theme.smplayer_icon                             = themes_dir .. "/vintage/icons/smplayer.png"
theme.spacefm_icon                              = themes_dir .. "/vintage/icons/fm.png"
theme.sublime_icon                              = themes_dir .. "/vintage/icons/SublimeText.png"
theme.synergy_icon                              = themes_dir .. "/vintage/icons/synergy.png"
theme.teamviewer_icon                           = themes_dir .. "/vintage/icons/teamviewer.png"
theme.terminal_icon                             = themes_dir .. "/vintage/icons/terminal.png"
theme.terminalroot_icon                         = themes_dir .. "/vintage/icons/terminal-root.png"
theme.texworks_icon                             = themes_dir .. "/vintage/icons/TeXworks.png"
theme.thunderbird_icon                          = themes_dir .. "/vintage/icons/thunderbird.png"
theme.tkdiff_icon                               = themes_dir .. "/vintage/icons/tkdiff.png"
theme.tor_icon                                  = themes_dir .. "/vintage/icons/tor.png"
theme.vlc_icon                                  = themes_dir .. "/vintage/icons/vlc.png"
theme.wmsmixer_icon                             = themes_dir .. "/vintage/icons/qasmixer.png"
theme.xmag_icon                                 = themes_dir .. "/vintage/icons/xmag.png"
theme.xmind_icon                                = themes_dir .. "/vintage/icons/xmind.png"
theme.xnview_icon                               = themes_dir .. "/vintage/icons/xnview.png"
theme.xvkbd_icon                                = themes_dir .. "/vintage/icons/xvkbd.png"

--{{----------------------------------------------------------------------------

return theme


