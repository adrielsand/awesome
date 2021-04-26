local filesystem = require('gears.filesystem')
local color_schemes = require('theme.color-schemes')
local theme_dir = filesystem.get_configuration_dir() .. '/theme'
local gears = require('gears')
local dpi = require('beautiful').xresources.apply_dpi
local theme = {}

-- Color Scheme
theme.primary = color_schemes.flat_remix_teal.primary
theme.accent = color_schemes.flat_remix_teal.accent

local awesome_overrides = function(theme)
    theme.dir = os.getenv('HOME') .. '/.config/awesome/theme'

    theme.icons = theme.dir .. '/.config/awesome/theme/icons/'
    theme.font = 'Product Sans Regular 9'         -- Glyphs don't work properly with this (#442)
    --theme.font = 'Robotomono nerd font 9'         -- Glyphs don't work properly with this (#442)
    theme.font_large = 'Product Sans Regular 11'
    theme.icon_font = 'Product Sans Medium 10'          -- Fira mono patched version
    --theme.icon_font = 'firamono nerd font 11'          -- Fira mono patched version

    -- Layout icons
    theme.layout_txt_tile                           = "|til|"
    theme.layout_txt_max                            = "|max|"
    theme.layout_txt_fair                           = "|fai|"
    theme.layout_txt_spiral_dwindle                 = "|spi|"
    theme.layout_txt_floating                       = "|flt|"

    -- Taglist
    theme.taglist_font = theme.font
    theme.taglist_bg_empty = theme.primary.hue_100
    theme.taglist_bg_occupied = 'linear:0,0:0,' .. dpi(32) .. ':0,' ..
                                    theme.primary.hue_200 .. ':0.1,' ..
                                    theme.primary.hue_200 .. ':0.1,' ..
                                    theme.primary.hue_100 .. ':0.9,' ..
                                    theme.primary.hue_100
    theme.taglist_bg_urgent = 'linear:0,0:0,' .. dpi(48) .. ':0,' ..
                                  theme.accent.hue_700 .. ':0.07,' ..
                                  theme.accent.hue_700 .. ':0.07,' ..
                                  theme.primary.hue_100 .. ':1,' ..
                                  theme.primary.hue_100
    theme.taglist_bg_focus = theme.accent.hue_200
    theme.taglist_fg_focus = theme.primary.hue_100

    -- Tasklist
    theme.tasklist_font = theme.font
    theme.tasklist_bg_normal = theme.primary.hue_200
    theme.tasklist_bg_focus = theme.primary.hue_100
    theme.tasklist_bg_urgent = theme.primary.hue_200

    -- Icons
    theme.icon_theme = 'Flat-Remix-Green-Dark'

    -- Client
    theme.gaps = dpi(2)
    theme.border_width = dpi(2)
    theme.border_focus = theme.accent.hue_200
    theme.border_normal = theme.primary.hue_100
    theme.gap_single_client = true
    theme.bg_normal = theme.primary.hue_100
end
return {theme = theme, awesome_overrides = awesome_overrides}
