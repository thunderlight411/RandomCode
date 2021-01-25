'----------------------
' Title: Create Custom Shortcut
' Purpose: Create shortcuts even when the executable is not available
' Created by: Marco van Wyngaarden (Attached b.v.)
' Date: 21 Januari 2020
' changelog
' 21-1-'20 : Initial version
'----------------------

Set Shell = CreateObject("WScript.Shell")
DesktopPath = Shell.SpecialFolders("Desktop")

Dim ShortcutName, titletextname, prompttextName
titletextname = "Shortcut name"
prompttextName = "name of the shortcut"
ShortcutName = InputBox(prompttextName, titletextname)

'location where the shortcut must be created
Dim ShortcutLocation, prompttextlocation, titletextlocation
titletextlocation = "Shortcut location"
prompttextlocation = "where must the shortcut be created" & vbCrLf & "Default location: " & DesktopPath
ShortcutLocation = InputBox(prompttextlocation, titletextlocation, ".")

'target of the shortcut
Dim ShortcutExecutable, titletexttarget, prompttexttarget
titletexttarget = "Shortcut target"
prompttexttarget = "What is the target of the shortcut"
ShortcutExecutable = InputBox(prompttexttarget,titletexttarget)

'Arguments for the shortcut
Dim shortcutArchuments, titletextarguments, promttextarguments
titletextarguments = "Arguments"
promttextarguments = "Enter the arguments if needed"
shortcutArchuments = InputBox(promttextarguments, titletextarguments)

'working directory
Dim ShortcutWorkingDirectory, titletextWorkingDirectory, prompttextWorkingDirectory
titletextWorkingDirectory = "Workingdirectory"
prompttextWorkingDirectory = "where is the working directory"
ShortcutWorkingDirectory = InputBox(prompttextWorkingDirectory, titletextWorkingDirectory)

'Icon location
Dim shortcuticon, titletextIcon, promttextIcon
titletextIcon = "Arguments"
promttextIcon = "Enter path to icon if different than shortcut"
iconlocatIcon = ShortcutExecutable
shortcutIcon = InputBox(promttextIcon, titletextIcon, ShortcutExecutable)


'create shortcut
Set link = Shell.CreateShortcut(ShortcutLocation & "\" & ShortcutName & ".lnk")
link.Arguments = shortcutArchuments 
link.TargetPath = ShortcutExecutable
link.IconLocation = shortcuticon
link.WindowStyle = 3
link.WorkingDirectory = ShortcutWorkingDirectory
link.Save
