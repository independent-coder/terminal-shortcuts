using Microsoft.Win32;

// Create/Open key for "Open in Terminal" context menu option for directories
RegistryKey key = Registry.ClassesRoot.CreateSubKey(@"Directory\Background\shell\Open in Terminal");

// Set default value for "Open in Terminal" key
key.SetValue(null, "Open in Terminal");

// Set "Icon" value for "Open in Terminal" key
key.SetValue("Icon", @"%SystemRoot%\system32\imageres.dll,-5324");

// Create/Open key for command to execute when "Open in Terminal" is clicked
RegistryKey commandKey = key.CreateSubKey("command");

// Set default value for command key
commandKey.SetValue(null, @"cmd.exe /k cd ""%V""");

Console.WriteLine("Open in Terminal context menu option added successfully.");
