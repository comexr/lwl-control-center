#!/bin/bash

# In case TFC service is active, deactivate
systemctl stop tuxedofancontrol > /dev/null 2>&1 || true
systemctl disable tuxedofancontrol > /dev/null 2>&1 || true

DIST_DATA=/opt/lwl-control-center/resources/dist/lwl-control-center/data/dist-data

rm /usr/share/applications/lwl-control-center.desktop || true
cp ${DIST_DATA}/lwl-control-center.desktop /usr/share/applications/lwl-control-center.desktop || true

mkdir -p /etc/skel/.config/autostart || true
cp ${DIST_DATA}/lwl-control-center-tray.desktop /etc/skel/.config/autostart/lwl-control-center-tray.desktop || true

cp ${DIST_DATA}/com.tuxedocomputers.tccd.policy /usr/share/polkit-1/actions/com.tuxedocomputers.tccd.policy || true
cp ${DIST_DATA}/com.tuxedocomputers.tccd.conf /usr/share/dbus-1/system.d/com.tuxedocomputers.tccd.conf || true

cp ${DIST_DATA}/com.tuxedocomputers.tomte.policy /usr/share/polkit-1/actions/com.tuxedocomputers.tomte.policy || true

# Copy and enable services
cp ${DIST_DATA}/tccd.service /etc/systemd/system/tccd.service || true
cp ${DIST_DATA}/tccd-sleep.service /etc/systemd/system/tccd-sleep.service || true
systemctl daemon-reload
systemctl enable tccd tccd-sleep
systemctl restart tccd

# set up udev rules
mv ${DIST_DATA}/99-webcam.rules /etc/udev/rules.d/99-webcam.rules
udevadm control --reload-rules && udevadm trigger

# ---
# Original electron-builder after-install.tpl
# ---
ln -sf '/opt/lwl-control-center/lwl-control-center' '/usr/bin/lwl-control-center' || true

# SUID chrome-sandbox for Electron 5+
chmod 4755 '/opt/lwl-control-center/chrome-sandbox' || true

update-mime-database /usr/share/mime || true
update-desktop-database /usr/share/applications || true
