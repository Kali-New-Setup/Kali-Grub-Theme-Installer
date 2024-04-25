sudo mv /boot/grub/themes/kali /boot/grub/themes/kali_backup 2>/dev/null
if [ $? -eq 0 ]; then
    echo "[Move]: Files moved successfully to Boot Directory!"
else
    # Handle the error case
    echo "{Move]: Command failed- Removing conflicting directory..."
    rm -rf /boot/grub/themes/kali_backup
    echo "[Move]: Trying again..."
    sudo mv /boot/grub/themes/kali /boot/grub/themes/kali_backup
    echo "[Move]: Files moved successfully to Boot Directory!"
fi
sudo mv /usr/share/grub/themes/kali /usr/share/grub/themes/kali_backup 2>/dev/null
if [ $? -eq 0 ]; then
    echo "[Move]: Files moved successfully to Grub Directory!"
else
    # Handle the error case
    echo "{Move]: Command failed- Removing conflicting directory..."
    rm -rf /usr/share/grub/themes/kali_backup
    echo "[Move]: Trying again..."
    sudo mv /usr/share/grub/themes/kali /usr/share/grub/themes/kali_backup
    echo "[Move]: Files moved successfully to Grub Directory!"
fi
sudo cp -rf ./Xenlism-Kali /boot/grub/themes/kali 2>/dev/null
sudo cp -rf ./Xenlism-Kali/background.png /usr/share/grub/themes/kali/grub-16x9.png 2>/dev/null
sudo update-grub 1>/dev/null
