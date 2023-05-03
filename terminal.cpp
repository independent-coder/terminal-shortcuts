#include <Windows.h>

int main() {
    // Create/Open key for "Open in Terminal" context menu option for directories
    HKEY key;
    RegCreateKeyEx(HKEY_CLASSES_ROOT, "Directory\\Background\\shell\\Open in Terminal", 0, NULL, 0, KEY_WRITE, NULL, &key, NULL);

    // Set default value for "Open in Terminal" key
    RegSetValueEx(key, NULL, 0, REG_SZ, (BYTE*)"Open in Terminal", 17);

    // Set "Icon" value for "Open in Terminal" key
    RegSetValueEx(key, "Icon", 0, REG_SZ, (BYTE*)"%SystemRoot%\\system32\\imageres.dll,-5324", 46);

    // Create/Open key for command to execute when "Open in Terminal" is clicked
    HKEY commandKey;
    RegCreateKeyEx(key, "command", 0, NULL, 0, KEY_WRITE, NULL, &commandKey, NULL);

    // Set default value for command key
    RegSetValueEx(commandKey, NULL, 0, REG_SZ, (BYTE*)"cmd.exe /k cd \"%V\"", 21);

    RegCloseKey(key);
    RegCloseKey(commandKey);

    printf("Open in Terminal context menu option added successfully.\n");
    return 0;
}
