headphones_analog_only = {
    matches = {
        {
            { "device.name", "equals", "alsa_card.usb-Apple__Inc._USB-C_to_3.5mm_Headphone_Jack_Adapter_DWH2132076NJKLTAZ-00" },
        },
    },
    apply_properties = {
        ["device.profile-set"] = "analog-only.conf",
    },
}

lineout_analog_only = {
    matches = {
        {
            { "device.name", "equals", "alsa_card.pci-0000_0f_00.4"},
        },
    },
    apply_properties = {
        ["device.profile-set"] = "analog-only.conf",
    },
}

table.insert(alsa_monitor.rules, headphones_analog_only)
table.insert(alsa_monitor.rules, lineout_analog_only)