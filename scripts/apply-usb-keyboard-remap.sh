#!/bin/zsh

MATCH='{"VendorID":0x1a2c,"ProductID":0x2d23,"PrimaryUsagePage":1,"PrimaryUsage":6}'
MAPPING='{
  "UserKeyMapping": [
    {"HIDKeyboardModifierMappingSrc":0x7000000E0,"HIDKeyboardModifierMappingDst":0x7000000E3},
    {"HIDKeyboardModifierMappingSrc":0x7000000E2,"HIDKeyboardModifierMappingDst":0x7000000E3},
    {"HIDKeyboardModifierMappingSrc":0x7000000E3,"HIDKeyboardModifierMappingDst":0x7000000E2},
    {"HIDKeyboardModifierMappingSrc":0x7000000E4,"HIDKeyboardModifierMappingDst":0x7000000E0},
    {"HIDKeyboardModifierMappingSrc":0x7000000E6,"HIDKeyboardModifierMappingDst":0x7000000E2},
    {"HIDKeyboardModifierMappingSrc":0x7000000E7,"HIDKeyboardModifierMappingDst":0x7000000E3},
    {"HIDKeyboardModifierMappingSrc":0x700000065,"HIDKeyboardModifierMappingDst":0xFF00000003},
    {"HIDKeyboardModifierMappingSrc":0x70000003C,"HIDKeyboardModifierMappingDst":0xC0000029F},
    {"HIDKeyboardModifierMappingSrc":0x70000003D,"HIDKeyboardModifierMappingDst":0xC00000221},
    {"HIDKeyboardModifierMappingSrc":0x70000003E,"HIDKeyboardModifierMappingDst":0xC000000CF},
    {"HIDKeyboardModifierMappingSrc":0x70000003F,"HIDKeyboardModifierMappingDst":0x10000009B},
    {"HIDKeyboardModifierMappingSrc":0x700000040,"HIDKeyboardModifierMappingDst":0xC000000B6},
    {"HIDKeyboardModifierMappingSrc":0x700000041,"HIDKeyboardModifierMappingDst":0xC000000CD},
    {"HIDKeyboardModifierMappingSrc":0x700000042,"HIDKeyboardModifierMappingDst":0xC000000B5},
    {"HIDKeyboardModifierMappingSrc":0x700000043,"HIDKeyboardModifierMappingDst":0xC000000E2},
    {"HIDKeyboardModifierMappingSrc":0x700000044,"HIDKeyboardModifierMappingDst":0xC000000EA},
    {"HIDKeyboardModifierMappingSrc":0x700000045,"HIDKeyboardModifierMappingDst":0xC000000E9}
  ]
}'

/usr/bin/hidutil property --matching "$MATCH" --set "$MAPPING" >/dev/null
