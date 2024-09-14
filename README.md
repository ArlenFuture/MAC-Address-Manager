# MAC Address Manager

This project provides two simple batch scripts to manage MAC addresses on Windows:
1. `SetRandomMac.bat` - Generates a random MAC address and applies it to a network adapter.
2. `RestoreDefaultMac.bat` - Restores the network adapter's default (hardware) MAC address by removing the custom MAC setting.

## Features
- **Random MAC Generation:** Automatically generate and set a random MAC address for your network adapter.
- **Restore Default MAC Address:** Easily revert to the adapter's factory default MAC address.

## Usage

### 1. Set a Random MAC Address

The `SetRandomMac.bat` script generates a random MAC address and applies it to the specified network adapter. 

**Steps:**
1. Open a command prompt with administrator privileges.
2. Run the script:
`SetRandomMac.bat`
3. The script will generate a new MAC address and apply it. You may need to restart your computer or disable/enable the network adapter for the changes to take effect.
### 2. Restore the Default MAC Address
The RestoreDefaultMac.bat script removes the custom MAC address and restores the adapter's default MAC.

**Steps:**

1. Open a command prompt with administrator privileges.
2. Run the script:
`RestoreDefaultMac.bat`
3. The custom MAC address will be removed from the registry. Restart your computer or disable/enable the network adapter to apply the changes.

## Requirements
- Windows OS with administrative privileges.
- A network adapter that supports changing MAC addresses.
## Customization
The scripts modify the following registry path:
`HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001`
You may need to adjust the subkey (e.g., `0001`) to match the correct network adapter in your system. Use `regedit` or `getmac` to find the corresponding subkey for your network adapter.

## Disclaimer
These scripts modify the Windows registry and may affect your network settings. Use at your own risk and ensure you have backups of any important data.

## License
MIT License
