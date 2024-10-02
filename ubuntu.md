### Guide to Install AppImage in Ubuntu and Safely Manage Versions
1. Download the AppImage
Download the AppImage file to a directory of your choice (e.g., `~/Downloads`).
3. Make the AppImage Executable
Run the following command to make the file executable:
```
chmod +x ~/Downloads/your-app.AppImage
```
3. Extract the AppImage
Extract the contents of the AppImage by running:
```
~/Downloads/your-app.AppImage --appimage-extract
```
This will create a directory named squashfs-root in the current location, containing the extracted files.
4. Move Extracted Files to `/opt`
To organize the installation, move the extracted files to `/opt`:
```
sudo mv ~/Downloads/squashfs-root /opt/tari-universe
```
5. Ensure AppRun is Executable
Navigate to the new directory and make sure the AppRun file is executable:
```
sudo chmod +x /opt/tari-universe/AppRun
```
6. Create a Desktop Entry
To integrate the app with your desktop environment, create a .desktop file:
```sudo nano /usr/share/applications/tari-universe.desktop```
Add the following content to the file:
```
[Desktop Entry]
Name=Tari Universe
Exec=/opt/tari-universe/AppRun
Icon=/opt/tari-universe/tari-universe.png
Type=Application
Categories=Utility;
```
Save the file and update the desktop database:
```
sudo update-desktop-database
```
7. Run the App
You can run the application by executing:
```
/opt/tari-universe/AppRun
```
Or launch it from the application menu if you created a desktop entry.

### How to Safely Manage and Switch Between App Versions
1. Backup the Old Version
Before installing a new version, move the existing version to a backup directory:
```
sudo mv /opt/tari-universe /opt/tari-universe-backup
```
2. Install the New Version
Follow the steps above to install the new version into /opt/tari-universe.
3. Revert to the Old Version (if needed)
If you need to switch back to the old version, move the new version out of the way and restore the backup:
```
sudo mv /opt/tari-universe /opt/tari-universe-new
```
```
sudo mv /opt/tari-universe-backup /opt/tari-universe
```
Make sure to remove or adjust the desktop entry if needed.
By following this guide, you'll be able to manage different versions of the application and restore old versions as needed.
