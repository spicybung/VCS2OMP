# Vice City Stories

Vice City Stories converted to open.mp by spicybung.

How to configure:

config.json setup:
Open config.json and find the pawn section.
Add the filterscript as a side script. Do not include the .amx extension.

Example:

"pawn": {
    "legacy_plugins": [
        "streamer",
        "sscanf"
    ],
    "main_scripts": [
        "your_gamemode 1"
    ],
    "side_scripts": [
        "filterscripts/VCS2OMP"
    ]
}
