from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

import os
import subprocess

from libqtile import hook

@hook.subscribe.startup
def autostart():
    subprocess.run("/home/davide/.config/qtile/autostart.sh")

mod = "mod4"
terminal = guess_terminal()
secondary_color = "#90FF0A"
bar_text_color = "#AAAAAA"

keys = [
    # Browsers
    Key([mod], "p", lazy.spawn("brave-browser"), desc="Brave"),
    Key([mod], "o", lazy.spawn("thunar"), desc="Thunar file manager"),

    # Volume
    Key([mod], "F6", lazy.spawn("amixer set Master 5%+"), desc="Volume up"),
    Key([mod], "F5", lazy.spawn("amixer set Master 5%-"), desc="Volume down"),
    Key([mod], "F4", lazy.spawn("amixer set Master toggle"), desc="Volume down"),

    # Brightness
    Key([mod], "F1", lazy.spawn("brightnessctl -q s 5%-"), desc="Brightness down"),
    Key([mod], "F2", lazy.spawn("brightnessctl -q s 5%+"), desc="Brightness up"),

    # Groups
    Key([mod], "m", lazy.screen.next_group(skip_empty=True), desc="Next Group"),
    Key([mod], "n", lazy.screen.prev_group(skip_empty=True), desc="Prev Group"),

    # Shutdown
    Key([mod], "F12", lazy.spawn("sudo reboot"), desc="Reboot"),
    Key([mod, "shift"], "F12", lazy.spawn("sudo shutdown now"), desc="Shutdown"),
    Key([mod, "control"], "F12", lazy.spawn("sudo systemctl suspend"), desc="Suspend"),

    # Keyboard
    Key([mod], "u", lazy.spawn("setxkbmap us"), desc="Set US keyboard"),
    Key([mod, "shift"], "u", lazy.spawn("setxkbmap it"), desc="Set US keyboard"),

    # touchpad
    Key([mod], "t", lazy.spawn("xinput --enable 13"), desc="switch on touchpad"),
    Key([mod, "shift"], "t", lazy.spawn("xinput --disable 13"), desc="switch off touchpad"),

    # other
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    Key([mod, "shift"], "space", lazy.layout.previous(), desc="Move window focus to other window"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    # Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key(
        [mod],
        "f",
        lazy.window.toggle_fullscreen(),
        desc="Toggle fullscreen on the focused window",
    ),
    # Key([mod], "t", lazy.window.toggle_floating(), desc="Toggle floating on the focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "shift"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "r", lazy.spawn("rofi -show run"), desc="Rofi menu"),
]

groups = [Group(i) for i in "1234567890"]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=False),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )
layouts = [
    layout.Max(
        margin=0,
        ),
    layout.Columns(
        margin= 0,
        border_focus=secondary_color,
        border_normal="#000000",
        border_width=1,
        border_on_single=False
        ),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font="VictorMono Nerd Font",
    fontsize=30,
    padding=6,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                # group box
                widget.CurrentLayoutIcon(foreground=bar_text_color, scale=0.75),
                widget.GroupBox(active=bar_text_color, highlight_method="line", highlight_color=["#000000", "#000000"], border=5, this_current_screen_border=secondary_color, hide_unused=False),

                # other indicators
                widget.Spacer(),
                # widget.Battery(foreground=bar_text_color, fmt=" {}", format="{percent:2.0%} {hour}:{min:02d} {watt:.2f}", update_interval=10, charge_char="", discharge_char="", full_char="", low_background='FF6600', low_foreground='000000', low_percentage=0.25),
                widget.Battery(foreground=bar_text_color, fmt="  {}", format="{percent:2.2%} {hour}:{min:02d}", update_interval=2, charge_char="", discharge_char="", full_char="", low_background='FF6600', low_foreground='000000', low_percentage=0.25),
                widget.Sep(),
                widget.Backlight(foreground=bar_text_color, backlight_name="intel_backlight", format=" {percent:2.0%}"),
                widget.Sep(),
                widget.Volume(foreground=bar_text_color, fmt="  {}"),
                widget.Sep(),
                widget.KeyboardLayout(fmt="  {}", foreground=bar_text_color),

                # widget.Spacer(),
                # widget.CPU(foreground=bar_text_color),
                # widget.Sep(),
                # widget.Memory(foreground=bar_text_color),
                # widget.Sep(),
                # widget.Net(foreground=bar_text_color),

                widget.Spacer(),

                # clock
                widget.Clock(foreground=bar_text_color, format="  %a %d/%m/%y %H:%M:%S"),
            ],
            48,
            background="#000000",
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
