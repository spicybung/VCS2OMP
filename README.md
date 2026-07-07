# Vice City Stories for open.mp

[![License](https://img.shields.io/badge/license-GPLv3-blue.svg)](LICENSE)


Vice City Stories converted to **open.mp** by **spicybung**.

## Configuration

Open your `config.json` file and locate the `"pawn"` section.

Add the filterscript to the `"side_scripts"` array.

> **Note:** Do **not** include the `.amx` extension.

### Example

```json
{
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
}
```

After saving `config.json`, restart your open.mp server. The VCS2OMP filterscript will be loaded automatically on startup.
