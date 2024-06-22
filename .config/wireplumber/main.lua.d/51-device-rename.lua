rule1 = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.usb-Blue_Microphones_Yeti_Stereo_Microphone_797_2020_07_14_66549-00.3.analog-stereo" },
      { "media.class", "equals", "Audio/Sink" },
    },
  },
  apply_properties = {
    ["node.nick"] = "Yeti Output",
    ["node.description"] = "Yeti Audio Jack Output",
  },
}

rule2 = {
  matches = {
    {
      { "node.name", "equals", "alsa_input.usb-Blue_Microphones_Yeti_Stereo_Microphone_797_2020_07_14_66549-00.3.analog-stereo" },
      { "media.class", "equals", "Audio/Source" },
    },
  },
  apply_properties = {
    ["node.nick"] = "Yeti Microphone",
    ["node.description"] = "Yeti Stereo Microphone",
  },
}

-- table.insert(alsa_monitor.rules, rule1)
-- table.insert(alsa_monitor.rules, rule2)
