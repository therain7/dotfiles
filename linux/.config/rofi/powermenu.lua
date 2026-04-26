#!/usr/bin/env luajit

local options = {
  {
    name = "Sleep",
    command = "systemctl suspend",
  },
  {
    name = "Shut down",
    command = "systemctl poweroff",
  },
  {
    name = "Restart",
    command = "systemctl reboot",
  },
  {
    name = "Lock",
    command = "swaylock",
  },
  {
    name = "Log out",
    command = "swaymsg exit",
  },
}

for i, opt in ipairs(options) do
  if arg[1] then
    if opt.name == arg[1] then
      os.execute(opt.command)
    end
  else
    print(opt.name)
  end
end
