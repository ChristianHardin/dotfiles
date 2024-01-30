local awful = require("awful")

-- Auto Start
awful.spawn.with_shell(
    'if (xrdb -query | grep -q "^awesome\\.started:\\s*true$"); then exit; fi;' ..
    'xrdb -merge <<< "awesome.started:true";' ..
    -- list each of your autostart commands, followed by ; inside single quotes, followed by ..
    'dex --environment Awesome --autostart'
    )

-- Handles exceptions to autostart above (i.e. polkit)
awful.spawn.with_shell("~/.config/awesome/scripts/autorun.sh")
awful.spawn.with_shell("~/.config/awesome/scripts/background.sh")