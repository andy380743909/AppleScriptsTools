-- Andy Cui, 2017-08-30
-- The "cd to" command for iTerm2
-- Inspired by:
-- Stefan van den Oord, 2010-12-29
-- The "cd to" command for iTerm2

tell application "Finder"
	set _cwd to POSIX path of ((folder of (front window)) as alias)
end tell

tell application "iTerm"
	activate
	set newWindow to (create window with default profile)
	
	tell current tab of current window
		tell current session
			write text "pushd \"" & _cwd & "\""
		end tell
	end tell
end tell

