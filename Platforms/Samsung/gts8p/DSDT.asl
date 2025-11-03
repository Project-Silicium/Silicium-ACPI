DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM8450 ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "MTP08450")
        Name (SOID, 0xFFFFFFFF)
        Name (STOR, 0xABCABCAB)
        Name (SIDS, "899800000000000")
        Name (SIDV, 0xFFFFFFFF)
        Name (SVMJ, 0xFFFF)
        Name (SVMI, 0xFFFF)
        Name (SDFE, 0xFFFF)
        Name (SFES, "899800000000000")
        Name (SIDM, 0xFFFFFFFFF)
        Name (SUFS, 0xFFFFFFFF)
        Name (PUS3, 0xFFFFFFFF)
        Name (SUS3, 0xFFFFFFFF)
        Name (SIDT, 0xFFFFFFFF)
        Name (SOSN, 0xAAAAAAAABBBBBBBB)
        Name (PLST, 0xFFFFFFFF)
        Name (EMUL, 0xFFFFFFFF)
        Name (SJTG, 0xFFFFFFFF)
        Name (RMTB, 0xAAAAAAAA)
        Name (RMTX, 0xBBBBBBBB)
        Name (RFMB, 0xCCCCCCCC)
        Name (RFMS, 0xDDDDDDDD)
        Name (RFAB, 0xEEEEEEEE)
        Name (RFAS, 0x77777777)
        Name (TCMA, 0xDEADBEEF)
        Name (TCML, 0xBEEFDEAD)
        Name (SOSI, 0xDEADBEEFFFFFFFFF)
        Name (PRP0, 0xFFFFFFFF)
        Name (PRP1, 0xFFFFFFFF)
        Name (PRP2, 0xFFFFFFFF)
        Name (PRP3, 0xFFFFFFFF)
        Name (PRP4, 0xFFFFFFFF)
        Name (PRP5, 0xFFFFFFFF)
        Name (PRP6, 0xFFFFFFFF)
        Name (PRP7, 0xFFFFFFFF)

        Device (UFS0)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.EMUL, EMUL)

            Name (_HID, "QCOM24A5")
            Name (_UID, 0)
            Name (_CCA, 1)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x01D84000, 0x00015000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x129 }
            })

            Method (_STA, 0, NotSerialized)
            {
                If (STOR == 1 || STOR == 3)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Device (DEV0)
            {
                Name (_ADR, 8)
                Name (_RMV, 0)
            }
        }

        Device (ABD)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0427")
            Name (_UID, 0)
            Name (AVBL, 0)

            OperationRegion (ROP1, GenericSerialBus, 0x00000000, 0x00000100)

            Method (_REG, 2, NotSerialized)
            {
                If (Arg0 == 9)
                {
                    AVBL = Arg1
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PMIC)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C2B")
            Name (_CID, "PNP0CA3")
            Name (_DEP, Package () { \_SB.SPMI })

            Name (PMCF, Package ()
            {
                0x07,

                Package ()
                {
                    0x00,
                    0x10
                },

                Package ()
                {
                    0x01,
                    0x10
                },

                Package ()
                {
                    0x02,
                    0x10
                },

                Package ()
                {
                    0x04,
                    0x10
                },

                Package ()
                {
                    0x05,
                    0x10
                },

                Package ()
                {
                    0x10,
                    0x10
                },

                Package ()
                {
                    0x07,
                    0x10
                }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PM01)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C2D")
            Name (_DEP, Package () { \_SB.PMIC })
            Name (_UID, 1)

            Name (_CRS, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x201 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x203 }
            })

            Method (_DSM, 4, NotSerialized)
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("4F248F40-D5E2-499F-834C-27758EA1CD3F"))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0)
                            {
                                Return (Buffer () { 0x03 })
                            }

                            Case (1)
                            {
                                Return (Package () { 0x07, 0x06 })
                            }

                            Default 
                            {
                                // Do Nothing.
                            }
                        }
                    }

                    Default
                    {
                        Return (Buffer () { 0x00 })
                    }
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PMAP)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C2C")
            Name (_DEP, Package () { \_SB.PMIC, \_SB.ABD, \_SB.SCM0 })

            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04) {})

                CreateByteField (BUFF, 0x00, STAT)
                CreateWordField (BUFF, 0x02, DATA)

                DATA = 2

                Return (DATA)
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PRTC)
        {
            Name (_HID, "ACPI000E")
            Name (_DEP, Package () { \_SB.PMAP })
            Name (_GCP, 4)

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (I2CSerialBus (0x02, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )),
                AccessAs (BufferAcc, AttribRawBytes (24)),
                FLD0, 192
            }

            Method (_GRT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x1A) {})

                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)

                BUFF = FLD0

                Return (TME1)
            }

            Method (_SRT, 1, NotSerialized)
            {
                Name (BUFF, Buffer (0x32) {})

                CreateByteField (BUFF, 0x00, STAT)

                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)

                ACT1 = 0
                TME1 = Arg0
                ACW1 = 0
                BUFF = FLD0 = BUFF

                If (STAT != 0)
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        // NOTE: USB Stuff Removed
        Device (PMGK)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C8E")
            Name (_DEP, Package () { \_SB.GLNK, \_SB.ABD })

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (I2CSerialBus (0x03, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )),
                AccessAs (BufferAcc, AttribRawBytes (48)),
                UCSI, 384
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (I2CSerialBus (0x04, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )),
                AccessAs (BufferAcc, AttribRawBytes (64)),
                GOEM, 512
            }

            Method (GEPT, 0, NotSerialized)
            {
                Return (Buffer () { 0x03, 0x04, 0x06 })
            }

            Method (USBN, 1, NotSerialized)
            {
                Return (0)
            }

            Method (UPAN, 1, NotSerialized)
            {
                Return (0)
            }

            Method (LKST, 1, NotSerialized)
            {
                Return (0)
            }

            Method (OEMN, 1, NotSerialized)
            {
                Return (0)
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BAM1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C0A")
            Name (_UID, 1)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate()
            {
                Memory32Fixed (ReadWrite, 0x01DC4000, 0x00028000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x130 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BAM5)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C0A")
            Name (_UID, 5)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x03304000, 0x00020000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0xC4 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (RPEN)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM06E1")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (TFTP)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM06DC")
            Name (_DEP, Package () { \_SB.IPC0 })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (SCM0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM04DD")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (TLOG)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0CE4")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (SPMI)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C0B")
            Name (_CID, "PNP0CA2")
            Name (_UID, 1)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0C400000, 0x00500000)
            })

            Name (CONF, Buffer ()
            {
                // SPMI Bus 0
                0x00,
                0x01,
                0x01,
                0x02, 0xFF,
                0x00,
                0x03, 0x00,
                0x07,
                0x04,
                0x08,
                0x0A,
                0x02, 0xFF,
                0x18,
                0x01, 0x00,
                0x02,
                0x0C, 0x40, 0x00, 0x00,
                0x00, 0x50, 0x00, 0x00,

                // SPMI Bus 1
                0x00,
                0x01,
                0x01,
                0x00, 0xFF,
                0x00,
                0x01, 0x00,
                0x07,
                0x04,
                0x08,
                0x0A,
                0x00, 0xFF,
                0x08,
                0x01, 0x00,
                0x02,
                0x0C, 0x40, 0x00, 0x00,
                0x00, 0x50, 0x00, 0x00
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (IPCC)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM06C2")
            Name (_UID, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x105 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x106 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x107 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x2EA }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (IPC0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C0D")
            Name (_DEP, Package () { \_SB.GLNK })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (GLNK)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C84")
            Name (_DEP, Package () { \_SB.IPCC, \_SB.RPEN })
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU0)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU1)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 1)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU2)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 2)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU3)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 3)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU4)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 4)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU5)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 5)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU6)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 6)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU7)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 7)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QGP0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C88")
            Name (_UID, 0)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00904000, 0x00050000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x114 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x115 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QGP1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C88")
            Name (_UID, 1)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00A04000, 0x00050000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x137 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x138 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QGP2)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C88")
            Name (_UID, 2)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00804000, 0x00050000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x26C }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x26D }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BTNS)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "ACPI0011")
            Name (_UID, 0)

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000, "\\_SB.PM01", ,) { 0x07 }
                GpioInt (Edge, ActiveBoth, Exclusive,        PullUp,   0x0BB8, "\\_SB.PM01", ,) { 0xC6 }
                GpioInt (Edge, ActiveBoth, Exclusive,        PullDown, 0x0000, "\\_SB.PM01", ,) { 0x06 }
            })

            Name (_DSD, Package ()
            {
                ToUUID ("FA6BD625-9CE8-470D-A2C7-B3CA36C4282E"),

                Package ()
                {
                    Package ()
                    {
                        0,
                        1,
                        0,
                        1,
                        13
                    }, 

                    Package ()
                    {
                        1,
                        0,
                        1,
                        1,
                        129
                    }, 

                    Package ()
                    {
                        1,
                        1,
                        1,
                        12,
                        233
                    }, 

                    Package ()
                    {
                        1,
                        2,
                        1,
                        12,
                        234
                    }
                }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }
    }
}
