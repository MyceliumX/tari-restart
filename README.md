## Windows 11 Tari Setup

### Disable Windows Updates
1. Open the Start menu, type `regedit`, and then click on Registry Editor.
2. Navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU`
3. From the right panel, double-click on the NoAutoUpdate `(REG_DWORD)` and set its value to `1`. Click OK to confirm.
4. Restart the computer to affect the changes.

### Disable Permissions
1. Type `uac` into the Windows Start menu.
2. Click `Change User Account Control settings`
3. Move the slider down to `Never Notify`
4. Click OK and then restart the computer.

