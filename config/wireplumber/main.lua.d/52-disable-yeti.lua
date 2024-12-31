rule = {
    matches = {
        {
            { "device.name", "equals", "alsa_card.usb-Blue_Microphones_Yeti_Stereo_Microphone_REV8-00" },
        },
    },
    apply_properties = {
        ["device.disabled"] = true,
    },
}

table.insert(alsa_monitor.rules, rule)