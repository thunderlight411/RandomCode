Dim objFSO, objShell, strCurrentFolder, strScriptFile, command, strFullPath, strArgument

' Create the necessary objects
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Check if a script file was passed as an argument
If WScript.Arguments.Count < 1 Then
    WScript.Echo "This script needs te be placed besids the PS1 that needs to be executed"
    WScript.Echo "Usage: start.vbs <PowerShellScript.ps1> ""<Arguments>"""
    WScript.Quit
End If

' Get the full path of the currently running VBScript
strFullPath = WScript.ScriptFullName

' Get the folder of the VBScript
strCurrentFolder = objFSO.GetParentFolderName(strFullPath)

' Get the PowerShell script file from arguments
strScriptFile = WScript.Arguments(0)

' Check if the file exists
If Not objFSO.FileExists(strCurrentFolder & "\" & strScriptFile) Then
    WScript.Echo "Error: PowerShell script not found: " & strScriptFile
    WScript.Quit
End If

' Get additional arguments for the PowerShell script, if provided
If WScript.Arguments.Count > 1 Then
    strArgument = WScript.Arguments(1)
Else
    strArgument = ""
End If

' Construct the PowerShell command
command = "powershell.exe -executionpolicy bypass -nologo -file """ & strCurrentFolder & "\" & strScriptFile &  """ " & strArgument

' Display the constructed command for debugging
'WScript.Echo "Command: " & command

' Run the PowerShell script
objShell.Run command, 0

' Clean up
Set objShell = Nothing
Set objFSO = Nothing
set strCurrentFolder = Nothing
Set strScriptFile = Nothing
Set strFullPath = Nothing
Set command = Nothing
Set strArgument = Nothing
