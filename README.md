# Silicium-ACPI

This Repo Contains ACPI Tables for varios Devices and SoCs.

## Compile ACPI

To Compile the SoC ACPI Tables, use `iasl` from this Repo and run this Command:
```bash
# On WSL2 you don't need to use wine
wine iasl.exe /Path/To/SoC/*.dsl
```

To Compile the Minimal DSDT, use `asl` instead of `iasl`. <br>
Here is the Command to Compile the Minimal DSDT:
```bash
# Again, On WSL2 you don't need to use wine
wine asl.exe DSDT_minimal.asl
```

Same for Device DSDT Tables, Just Replace `DSDT_minimal.asl` with `DSDT.asl`.

## Notes

You can't Compile `FACP` Table Manually, You have to Compile all others at once so it Compiles.

All Files that have the Extension `.asl` are desinged to be Compiled with `asl`. <br>
The other Files with `.dsl` are designed to be Compiled with `iasl`.
