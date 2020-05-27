on run {targetBuddyPhone, filePath}
  set dialog to paragraphs of (read POSIX file filePath)
  set list_of_dialogs to {}
  set number_of_lines to 0
  repeat with nextLine in dialog
    if length of nextLine is 0 then
      repeat with a from 3 to length of list_of_dialogs
        set theCurrentListItem to item a of list_of_dialogs
          tell application "Messages"
            set targetService to 1st service whose service type = iMessage
            set targetBuddy to buddy targetBuddyPhone of targetService
            send theCurrentListItem to targetBuddy
          end tell
          log theCurrentListItem
          set number_of_lines to number_of_lines + 1
      end repeat
      set list_of_dialogs to {}
    else
      set end of list_of_dialogs to nextLine
    end if
  end repeat
  log number_of_lines + " Messages sent"
end run