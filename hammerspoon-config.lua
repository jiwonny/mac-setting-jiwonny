local pasteboard = require("hs.pasteboard")

hs.hotkey.bind({"cmd", "option", "shift"}, "n", function ()
	hs.timer.doAfter(0.1, function()
		local saved = pasteboard.getContents()
		local splitted = convert(saved, '\n')
		hs.pasteboard.setContents(splitted)
		hs.alert.show("enter separated to comma separated completed")
	end)
end)

function convert (inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t= ""
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		local spaceRemovedStr = str:gsub("%s+", "")
		t = t .. spaceRemovedStr .. ', '
	end
	return t:sub(1, -3)
end

escape_keyevent = hs.eventtap.new (
  {hs.eventtap.event.types.keyDown},
  function (event)
    local flags = event:getFlags()
    local keycode = hs.keycodes.map[event:getKeyCode()]

    if (keycode == 'escape') then
      -- print("This is escape")
      local input_korean = "com.apple.inputmethod.Korean.2SetKorean"
      local input_english = "com.apple.keylayout.ABC"

      local input_source = hs.keycodes.currentSourceID()

      if (input_source ~= input_english) then
        hs.keycodes.currentSourceID(input_english)
      end
    end
  end
)
escape_keyevent:start()
