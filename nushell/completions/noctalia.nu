# Native Nushell completion for Noctalia
# Based on the generated Noctalia CLI schema.
#
# Nushell 0.115.1

# ─────────────────────────────────────────────────────────────
# Helpers
# ─────────────────────────────────────────────────────────────

def __noctalia-root [] {
    [
        { value: "completions", description: "Generate shell completion scripts" }
        { value: "config", description: "Validate config and support/replay helpers" }
        { value: "dmenu", description: "Read launcher choices from stdin" }
        { value: "firefox-theme", description: "Manage Firefox theme integration" }
        { value: "msg", description: "Send a command to the running instance" }
        { value: "plugins", description: "Offline plugin author tools" }
        { value: "theme", description: "Generate a color palette from an image" }
        { value: "-v", description: "Show version information" }
        { value: "--version", description: "Show version information" }
        { value: "-d", description: "Run in background" }
        { value: "--daemon", description: "Run in background" }
        { value: "-h", description: "Show this help message" }
        { value: "--help", description: "Show this help message" }
    ]
}

def __noctalia-help [] {
    [
        { value: "-h", description: "Show this help message" }
        { value: "--help", description: "Show this help message" }
    ]
}

def __noctalia-completions [] {
    [
        "bash"
        "fish"
        "zsh"
    ]
}

def __noctalia-config [] {
    [
        { value: "export", description: "Print the active config as TOML" }
        { value: "replay-report", description: "Reconstruct config and state from a support report" }
        { value: "settings-count", description: "Count Settings UI controls" }
        { value: "validate", description: "Check config validity" }
        ..(__noctalia-help)
    ]
}

def __noctalia-config-export [] {
    [
        { value: "merged", description: "Export merged config (default)" }
        { value: "full", description: "Export full config" }
        ..(__noctalia-help)
    ]
}

def __noctalia-config-replay-report [] {
    [
        { value: "--target", description: "Directory where replay files are written" }
        { value: "--flattened", description: "Write only merged_config.content as config.toml" }
        { value: "--force", description: "Remove an existing target directory before writing" }
        ..(__noctalia-help)
    ]
}

def __noctalia-firefox-theme [] {
    [
        { value: "install", description: "Install Firefox theme integration" }
        { value: "uninstall", description: "Uninstall Firefox theme integration" }
        { value: "update", description: "Update Firefox theme integration" }
        { value: "dark", description: "Use dark theme" }
        { value: "light", description: "Use light theme" }
        { value: "auto", description: "Use automatic theme" }
        { value: "host", description: "Manage Firefox native messaging host" }
        { value: "start", description: "Start Firefox integration" }
        { value: "help", description: "Show help" }
        ..(__noctalia-help)
    ]
}

def __noctalia-msg [] {
    [
        { value: "annotate", description: "Draw on the screen over running apps; press F or the Freeze button to capture the background" }

        { value: "bar-auto-hide-set", description: "Set auto-hide state for a bar" }
        { value: "bar-hide", description: "Hide one or all bars and release their layout gaps" }
        { value: "bar-layer-set", description: "Set one or all bar layers" }
        { value: "bar-reserve-toggle", description: "Toggle reserve space for one or all bars" }
        { value: "bar-show", description: "Show one or all bars" }
        { value: "bar-toggle", description: "Toggle visibility for one or all bars" }

        { value: "bluetooth-disable", description: "Disable Bluetooth" }
        { value: "bluetooth-enable", description: "Enable Bluetooth" }
        { value: "bluetooth-status", description: "Print Bluetooth state" }
        { value: "bluetooth-toggle", description: "Toggle Bluetooth" }

        { value: "brightness-down", description: "Decrease brightness" }
        { value: "brightness-list-backlight-devices", description: "List available sysfs backlight device names" }
        { value: "brightness-osd", description: "Show brightness OSD without changing brightness" }
        { value: "brightness-set", description: "Set brightness" }
        { value: "brightness-up", description: "Increase brightness" }

        { value: "caffeine-disable", description: "Disable caffeine (idle inhibitor)" }
        { value: "caffeine-enable", description: "Enable caffeine (idle inhibitor)" }
        { value: "caffeine-toggle", description: "Toggle caffeine (idle inhibitor)" }

        { value: "clipboard-clear", description: "Clear clipboard history" }
        { value: "clipboard-copy", description: "Copy text to the clipboard" }
        { value: "clipboard-text", description: "Print the most recent clipboard text" }

        { value: "color-scheme-get", description: "Print active color scheme" }
        { value: "color-scheme-set", description: "Set palette source and selection in settings.toml" }

        { value: "config-reload", description: "Reload the config file" }

        { value: "desktop-widgets-edit", description: "Open the desktop widgets editor" }
        { value: "desktop-widgets-exit", description: "Close the desktop widgets editor" }
        { value: "desktop-widgets-hide", description: "Hide desktop widgets now" }
        { value: "desktop-widgets-show", description: "Show desktop widgets now" }
        { value: "desktop-widgets-toggle", description: "Toggle desktop widgets visibility" }
        { value: "desktop-widgets-toggle-edit", description: "Toggle desktop widgets edit mode" }

        { value: "dock-hide", description: "Hide the dock" }
        { value: "dock-reload", description: "Reload dock configuration" }
        { value: "dock-show", description: "Show the dock" }
        { value: "dock-toggle", description: "Toggle dock visibility" }

        { value: "dpms-off", description: "Turn monitors off" }
        { value: "dpms-on", description: "Turn monitors on" }

        { value: "effects-profile-set", description: "Set the EasyEffects output or input profile" }

        { value: "greeter-sync", description: "Sync wallpaper, colors, and monitor layout to Noctalia Greeter" }

        { value: "keyboard-backlight-down", description: "Decrease all keyboard backlights by one level" }
        { value: "keyboard-backlight-osd", description: "Show keyboard backlight OSD without changing brightness" }
        { value: "keyboard-backlight-set", description: "Set all keyboard backlights (0-100 percentage)" }
        { value: "keyboard-backlight-toggle", description: "Toggle all keyboard backlights on/off" }
        { value: "keyboard-backlight-up", description: "Increase all keyboard backlights by one level" }

        { value: "keyboard-layout-cycle", description: "Switch to the next keyboard layout" }

        { value: "lockscreen-widgets-edit", description: "Open the lockscreen widgets editor" }
        { value: "lockscreen-widgets-exit", description: "Close the lockscreen widgets editor" }
        { value: "lockscreen-widgets-toggle-edit", description: "Toggle lockscreen widgets edit mode" }

        { value: "log-level-set", description: "Set the console log level" }
        { value: "log-level-status", description: "Print the current console log level" }

        { value: "media", description: "Control active media playback" }

        { value: "mic-mute", description: "Toggle microphone mute" }
        { value: "mic-volume-down", description: "Decrease microphone volume" }
        { value: "mic-volume-osd", description: "Show the microphone volume OSD without changing volume" }
        { value: "mic-volume-set", description: "Set microphone volume" }
        { value: "mic-volume-up", description: "Increase microphone volume" }

        { value: "network-toggle", description: "Disconnect the active network, or reconnect when nothing is connected" }

        { value: "nightlight-disable", description: "Disable night light schedule" }
        { value: "nightlight-enable", description: "Enable night light schedule" }
        { value: "nightlight-force-toggle", description: "Toggle forced night light mode" }
        { value: "nightlight-toggle", description: "Toggle night light schedule" }

        { value: "notification-clear-active", description: "Dismiss all currently active notifications" }
        { value: "notification-clear-history", description: "Clear notification history" }
        { value: "notification-dnd-set", description: "Set notification Do Not Disturb state" }
        { value: "notification-dnd-status", description: "Print notification Do Not Disturb state" }
        { value: "notification-dnd-toggle", description: "Toggle notification Do Not Disturb state" }
        { value: "notification-invoke-latest", description: "Invoke the default action of the most recent active notification" }
        { value: "notification-show", description: "Show an internal Noctalia notification" }

        { value: "osd-disable", description: "Disable OSD popups" }
        { value: "osd-enable", description: "Enable OSD popups" }
        { value: "osd-toggle", description: "Toggle OSD popups" }

        { value: "panel-close", description: "Close the active panel, or close the named panel if it is active" }
        { value: "panel-open", description: "Open a panel by id, optionally with context" }
        { value: "panel-toggle", description: "Toggle a panel by id, optionally with context" }

        { value: "plugin", description: "Dispatch an event to a plugin entry" }
        { value: "plugins", description: "Manage plugins and sources (list/enable/disable/update/source)" }

        { value: "power-cycle", description: "Step through UPower's ordered profile list" }
        { value: "power-set", description: "Set the UPower power profile" }

        { value: "screenshot-annotate", description: "Freeze the screen and annotate it, then copy or save" }
        { value: "screenshot-fullscreen", description: "Capture the focused monitor" }
        { value: "screenshot-region", description: "Start an interactive region screenshot" }

        { value: "session", description: "Run a built-in session action" }

        { value: "settings-close", description: "Close the settings window" }
        { value: "settings-open", description: "Open the settings window, or focus it if already open" }
        { value: "settings-open-plugin", description: "Open the settings window at a plugin's settings" }
        { value: "settings-open-widget", description: "Open the settings window at a bar widget" }
        { value: "settings-toggle", description: "Toggle the settings window" }

        { value: "status", description: "Print current state as JSON" }

        { value: "taskbar-cycle", description: "Step to the adjacent task or workspace group" }

        { value: "templates-apply", description: "Apply configured theme templates for the current palette" }

        { value: "theme-mode-get", description: "Print the current resolved theme mode" }
        { value: "theme-mode-set", description: "Set theme mode and persist to settings.toml" }
        { value: "theme-mode-toggle", description: "Toggle theme mode between dark and light" }

        { value: "volume-down", description: "Decrease speaker volume" }
        { value: "volume-mute", description: "Toggle speaker mute" }
        { value: "volume-osd", description: "Show the volume OSD without changing volume" }
        { value: "volume-set", description: "Set speaker volume" }
        { value: "volume-up", description: "Increase speaker volume" }

        { value: "wallpaper-get", description: "Print default wallpaper path, or effective path for an output" }
        { value: "wallpaper-next", description: "Switch to the next wallpaper immediately" }
        { value: "wallpaper-previous", description: "Switch to the previous wallpaper immediately" }
        { value: "wallpaper-random", description: "Switch to a random wallpaper immediately" }
        { value: "wallpaper-set", description: "Set wallpaper for all or a specific output" }

        { value: "wifi-disable", description: "Disable Wi-Fi" }
        { value: "wifi-enable", description: "Enable Wi-Fi" }
        { value: "wifi-status", description: "Print Wi-Fi state" }
        { value: "wifi-toggle", description: "Toggle Wi-Fi" }

        { value: "window-switcher", description: "Open or close the window switcher overlay" }

        { value: "workspace-alert-add", description: "Add a workspace alert" }
        { value: "workspace-alert-add-window", description: "Add a workspace alert for a window" }
        { value: "workspace-alert-clear", description: "Clear a workspace alert" }
        { value: "workspace-alert-clear-all", description: "Clear all workspace alerts" }
        { value: "workspace-alert-status", description: "Print workspace alerts" }
        { value: "workspace-switch", description: "Switch to the adjacent workspace on the target monitor" }

        ..(__noctalia-help)
    ]
}

def __noctalia-color-scheme-set [] {
    [
        { value: "builtin", description: "Use a built-in palette" }
        { value: "wallpaper", description: "Use a wallpaper generator scheme" }
        { value: "community", description: "Use a community palette" }
        { value: "custom", description: "Use a custom palette" }
        ..(__noctalia-help)
    ]
}

def __noctalia-builtin-palettes [] {
    [
        "Ayu"
        "Catppuccin"
        "Dracula"
        "Eldritch"
        "Gruvbox"
        "Kanagawa"
        "Noctalia"
        "Nord"
        "Rosé Pine"
        "Tokyo-Night"
    ]
}

def __noctalia-wallpaper-palettes [] {
    [
        "m3-tonal-spot"
        "m3-content"
        "m3-fruit-salad"
        "m3-rainbow"
        "m3-monochrome"
        "vibrant"
        "faithful"
        "soft"
        "dysfunctional"
        "muted"
    ]
}

def __noctalia-session [] {
    [
        "lock"
        "suspend"
        "lock-and-suspend"
        "logout"
        "reboot"
        "shutdown"
        ..(__noctalia-help)
    ]
}

def __noctalia-plugin-actions [] {
    [
        "list"
        "enable"
        "disable"
        "update"
        "source"
        ..(__noctalia-help)
    ]
}

def __noctalia-plugin-source [] {
    [
        "list"
        "add"
        "remove"
        ..(__noctalia-help)
    ]
}

def __noctalia-dynamic-plugins [state: string] {
    do { ^noctalia msg plugins list } | complete
    | get stdout
    | lines
    | each {|line|
        let fields = (
            $line
            | split row " "
            | where {|x| ($x | str length) > 0}
        )

        if ($fields | length) >= 4 and $fields.3 == $state {
            {
                value: $fields.0
                description: $"($state) Noctalia plugin"
            }
        }
    }
    | where $it != null
}

def __noctalia-dynamic-plugin-prefix [] {
    __noctalia-dynamic-plugins enabled
    | each {|item| $"($item.value):"}
}

# ─────────────────────────────────────────────────────────────
# Command-wide completion
# ─────────────────────────────────────────────────────────────

def __noctalia-completer [spans: list<string>] {
    let args = ($spans | skip 1)

    let current = if ($args | is-empty) {
        ""
    } else {
        $args | last
    }

    # The current token is not part of the already-entered path.
    let path = if ($current == "") {
        $args
    } else {
        $args | drop
    }

    # ─────────────────────────────────────────────────────────
    # Root
    # ─────────────────────────────────────────────────────────

    if ($path | is-empty) {
        return (__noctalia-root)
    }

    # ─────────────────────────────────────────────────────────
    # completions
    # ─────────────────────────────────────────────────────────

    if $path == ["completions"] {
        return (__noctalia-completions)
    }

    # ─────────────────────────────────────────────────────────
    # config
    # ─────────────────────────────────────────────────────────

    if $path == ["config"] {
        return (__noctalia-config)
    }

    if $path == ["config", "export"] {
        return (__noctalia-config-export)
    }

    if $path == ["config", "replay-report"] {
        if $current == "" {
            return (__noctalia-config-replay-report)
        }

        if $current == "--target" {
            return null
        }

        return (__noctalia-config-replay-report)
    }

    if $path == ["config", "settings-count"] {
        return (__noctalia-help)
    }

    if $path == ["config", "validate"] {
        return (__noctalia-help)
    }

    # ─────────────────────────────────────────────────────────
    # dmenu
    # ─────────────────────────────────────────────────────────

    if $path == ["dmenu"] {
        if $current == "" {
            return [
                { value: "-p", description: "Set the launcher prompt" }
                { value: "--prompt", description: "Set the launcher prompt" }
                ..(__noctalia-help)
            ]
        }

        if $current == "-p" or $current == "--prompt" {
            return null
        }

        return [
            { value: "-p", description: "Set the launcher prompt" }
            { value: "--prompt", description: "Set the launcher prompt" }
            ..(__noctalia-help)
        ]
    }

    # ─────────────────────────────────────────────────────────
    # firefox-theme
    # ─────────────────────────────────────────────────────────

    if $path == ["firefox-theme"] {
        return (__noctalia-firefox-theme)
    }

    # ─────────────────────────────────────────────────────────
    # msg
    # ─────────────────────────────────────────────────────────

    if $path == ["msg"] {
        return (__noctalia-msg)
    }

    if $path == ["msg", "bar-auto-hide-set"] {
        return ["on" "off" "smart" "true" "false" "1" "0" ..(__noctalia-help)]
    }

    if $path == ["msg", "bar-layer-set"] {
        return ["top" "overlay" ..(__noctalia-help)]
    }

    if $path == ["msg", "color-scheme-set"] {
        return (__noctalia-color-scheme-set)
    }

    if $path == ["msg", "color-scheme-set", "builtin"] {
        return (__noctalia-builtin-palettes)
    }

    if $path == ["msg", "color-scheme-set", "wallpaper"] {
        return (__noctalia-wallpaper-palettes)
    }

    if $path == ["msg", "effects-profile-set"] {
        return ["output" "input" ..(__noctalia-help)]
    }

    if $path == ["msg", "log-level-set"] {
        return ["debug" "info" "warn" "error" ..(__noctalia-help)]
    }

    if $path == ["msg", "media"] {
        return [
            "next"
            "previous"
            "toggle"
            "play"
            "pause"
            "stop"
            "next-player"
            "previous-player"
            ..(__noctalia-help)
        ]
    }

    if $path == ["msg", "notification-dnd-set"] {
        return ["on" "off" "true" "false" "1" "0" ..(__noctalia-help)]
    }

    if $path == ["msg", "plugins"] {
        return (__noctalia-plugin-actions)
    }

    if $path == ["msg", "plugins", "enable"] {
        return (__noctalia-dynamic-plugins disabled)
    }

    if $path == ["msg", "plugins", "disable"] {
        return (__noctalia-dynamic-plugins enabled)
    }

    if $path == ["msg", "plugins", "source"] {
        return (__noctalia-plugin-source)
    }

    if $path == ["msg", "plugins", "source", "add"] {
        return ["git" "path" ..(__noctalia-help)]
    }

    if $path == ["msg", "plugin"] {
        return (__noctalia-dynamic-plugin-prefix)
    }

    if $path == ["msg", "power-cycle"] {
        return ["next" "prev" ..(__noctalia-help)]
    }

    if $path == ["msg", "screenshot-fullscreen"] {
        return ["pick" "monitor" "all" ..(__noctalia-help)]
    }

    if $path == ["msg", "session"] {
        return (__noctalia-session)
    }

    if $path == ["msg", "taskbar-cycle"] {
        return ["next" "prev" ..(__noctalia-help)]
    }

    if $path == ["msg", "theme-mode-set"] {
        return ["dark" "light" "auto" ..(__noctalia-help)]
    }

    if $path == ["msg", "workspace-switch"] {
        return ["next" "prev" ..(__noctalia-help)]
    }

    # For msg commands that take no enum argument:
    # provide help only.
    if (($path | length) == 2) and (($path | get 0) == "msg") {
        return (__noctalia-help)
    }

    # ─────────────────────────────────────────────────────────
    # plugins
    # ─────────────────────────────────────────────────────────

    if $path == ["plugins"] {
        return [
            { value: "lint", description: "Cross-check declared settings against plugin code" }
            ..(__noctalia-help)
        ]
    }

    if $path == ["plugins", "lint"] {
        return (__noctalia-help)
    }

    # ─────────────────────────────────────────────────────────
    # theme
    # ─────────────────────────────────────────────────────────

    if $path == ["theme"] {
        return [
            { value: "--scheme", description: "Color generation scheme" }
            { value: "--dark", description: "Emit only the dark variant" }
            { value: "--light", description: "Emit only the light variant" }
            { value: "--both", description: "Emit both variants under dark/light keys" }
            { value: "--pure-black", description: "Re-anchor the dark surface ramp to true black (OLED)" }
            { value: "--theme-json", description: "Load precomputed dark/light token maps from JSON" }
            { value: "-o", description: "Write JSON to file instead of stdout" }
            { value: "-r", description: "Render a template file to an output path" }
            { value: "--render", description: "Render a template file to an output path" }
            { value: "-c", description: "Process a TOML template config file" }
            { value: "--config", description: "Process a TOML template config file" }
            { value: "--builtin-config", description: "Process the shipped built-in template catalog" }
            { value: "--list-templates", description: "List built-in, cached community, and configured user templates" }
            { value: "--default-mode", description: "Template default mode" }
            ..(__noctalia-help)
        ]
    }

    if $path == ["theme", "--scheme"] {
        return (__noctalia-wallpaper-palettes)
    }

    if $path == ["theme", "--theme-json"] {
        return null
    }

    if $path == ["theme", "-o"] or $path == ["theme", "-r"] or $path == ["theme", "--render"] or $path == ["theme", "-c"] or $path == ["theme", "--config"] {
        return null
    }

    if $path == ["theme", "--default-mode"] {
        return ["dark" "light" ..(__noctalia-help)]
    }

    return [
        ..(__noctalia-help)
    ]
}

# ─────────────────────────────────────────────────────────────
# Noctalia extern
# ─────────────────────────────────────────────────────────────

@complete __noctalia-completer
extern noctalia []