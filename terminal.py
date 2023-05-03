import winreg

# Create/Open key for "Open in Terminal" context menu option for directories
key = winreg.CreateKey(winreg.HKEY_CLASSES_ROOT, "Directory\\Background\\shell\\Open in Terminal")

# Set default value for "Open in Terminal" key
winreg.SetValue(key, None, winreg.REG_SZ, "Open in Terminal")

# Set "Icon" value for "Open in Terminal" key
winreg.SetValue(key, "Icon", winreg.REG_SZ, "%SystemRoot%\\system32\\imageres.dll,-5324")

# Create/Open key for command to execute when "Open in Terminal" is clicked
command_key = winreg.CreateKey(key, "command")

# Set default value for command key
winreg.SetValue(command_key, None, winreg.REG_SZ, "cmd.exe /k cd \"%V\"")

print("Open in Terminal context menu option added successfully.")

