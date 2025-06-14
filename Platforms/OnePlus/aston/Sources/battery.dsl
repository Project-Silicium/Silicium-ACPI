Device (BAT1)
{
    Name (_HID, "ASTO2754")
    Name (_UID, 0x01)

    Name (_DEP, Package(0x1) {
        \_SB_.I2C9
    })

    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF, ResourceTemplate () {
            I2CSerialBus(0x55,, 100000, AddressingMode7Bit, "\\_SB.I2C9",,,,)
        })
        Return (RBUF)
    }
}