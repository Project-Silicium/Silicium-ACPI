DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM8350 ", 3)
{
    External (_SB_.DMMY, UnknownObj)
    External (_SB_.DPP0, IntObj)
    External (_SB_.DPP1, IntObj)
    External (_SB_.MPP0, IntObj)
    External (_SB_.MPP1, IntObj)
    External (_SB_.TZ13.TPSV, UnknownObj)
    External (_SB_.TZ13.TTC1, UnknownObj)
    External (_SB_.TZ13.TTC2, UnknownObj)
    External (_SB_.TZ13.TTSP, UnknownObj)
    External (_SB_.TZ52, UnknownObj)
    External (_SB_.TZ52._PSV, IntObj)
    External (_SB_.TZ52._TC1, IntObj)
    External (_SB_.TZ52._TC2, IntObj)
    External (_SB_.TZ52._TSP, IntObj)
    External (_SB_.TZ52.TPSV, UnknownObj)
    External (_SB_.TZ52.TTC1, UnknownObj)
    External (_SB_.TZ52.TTC2, UnknownObj)
    External (_SB_.TZ52.TTSP, UnknownObj)

    // MARKED
    External (_SB_.ADSP, UnknownObj)
    External (_SB_.ADSP._STA, IntObj)
    External (_SB_.SCSS, UnknownObj)
    External (_SB_.SCSS._STA, IntObj)
    External (_SB_.NSP0, UnknownObj)
    External (_SB_.NSP0._STA, IntObj)
    External (_SB_.AMSS, UnknownObj)
    External (_SB_.AMSS._STA, IntObj)
    External (_SB_.SPSS, UnknownObj)
    External (_SB_.SPSS._STA, IntObj)

    Scope (\_SB)
    {
        Name (PSUB, "MTP08350")
        Name (SOID, 0xFFFFFFFF)
        Name (STOR, 0xABCABCAB)
        Name (SIDS, "899800000000000")
        Name (SIDV, 0xFFFFFFFF)
        Name (SVMJ, 0xFFFF)
        Name (SVMI, 0xFFFF)
        Name (SDFE, 0xFFFF)
        Name (SFES, "899800000000000")
        Name (SIDM, 0x0000000FFFFFFFFF)
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

        Device (UFS0)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.EMUL, EMUL)

            Name (_HID, "QCOM24A5")
            Name (_UID, 0)
            Name (_CCA, 1)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x01D84000, 0x00015000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x129 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }

            Device (DEV0)
            {
                Method (_ADR, 0, NotSerialized) { Return (0x08) }
                Method (_RMV, 0, NotSerialized) { Return (0x00) }
            }
        }

        // MARKED
        Device (SDC2)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM2466")
            Name (_UID, 1)
            Name (_CCA, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.GIO0
            })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x08804000, 0x00001000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )              { 0xEF }

                GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x1388, "\\_SB.GIO0", ,)          { 0x5C }
                GpioIo  (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone, "\\_SB.GIO0", ,) { 0x5C }
            })

            Method (_DIS, 0, NotSerialized) {}
            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (ABD)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0527")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (AVBL, 0)

            OperationRegion (ROP1, GenericSerialBus, 0, 0x100)

            Method (_REG, 2, NotSerialized)
            {
                If ((Arg0 == 9))
                {
                    AVBL = Arg1
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PMIC)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A2B")
            Name (_CID, "PNP0CA3")
            Name (_DEP, Package () { \_SB.SPMI })

            Name (PMCF, Package ()
            {
                0x0A,

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
                    0x03,
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
                    0x10,
                    0x10
                },

                Package ()
                {
                    0x10,
                    0x10
                },

                Package ()
                {
                    0x10,
                    0x10
                }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PM01)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A2D")
            Name (_UID, 1)
            Name (_DEP, Package () { \_SB.PMIC })

            Name (_CRS, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x201 }
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
                                Return (Buffer () { 0 })
                            }
                        }
                    }

                    Default
                    {
                        Return (Buffer () { 0 })
                    }
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BCL1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A77")
            Name (_DEP, Package () { \_SB.PMIC })

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveLow,  Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x108 }
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x109 }
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x10A }
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x10B }
                GpioInt (Edge, ActiveLow,  Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x210 }
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x211 }
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x212 }
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x213 }
            })

            Name (BCLQ, Package ()
            {
                "PM3_BCLBIG_LVL0", 
                "PM3_BCLBIG_LVL1", 
                "PM3_BCLBIG_LVL2", 
                "PM3_BCLBIG_BAN", 
                "PM7_BCLBIG_LVL0", 
                "PM7_BCLBIG_LVL1", 
                "PM7_BCLBIG_LVL2", 
                "PM7_BCLBIG_BAN"
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (PEP0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A17")
            Name (_CID, "PNP0D80")
            Name (_DEP, Package () { \_SB.IPCC })

            Name (_CRS, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, ) { 0x21A }
                Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, ) { 0x21C }
                Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, ) { 0x21B }
                Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, ) { 0x21D }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )        { 0x25 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )        { 0x3E }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )        { 0x3F }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )        { 0x33 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Exclusive, ,, )        { 0x265 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Exclusive, ,, )        { 0x10D }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Exclusive, ,, )        { 0x113 }
            })

            Name (DCVS, 0)
            Name (FPDP, 0)
            Name (ROST, 0)

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (I2cSerialBus (1, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", ,,,)),
                AccessAs (BufferAcc, AttribRawBytes (21)),
                FLD0, 168
            }

            Method (_DSM, 4, NotSerialized)
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("8D5CA34C-AE83-4A2A-9DD1-A74FFEAD548B"))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (0)
                                    {
                                        Return (0x7E)
                                    }

                                    Default
                                    {
                                        Return (0x00)
                                    }
                                }
                            }

                            Case (1)
                            {
                                Return (Package ()
                                {
                                    Package ()
                                    {
                                        "adsp",
                                        0x01,
                                        0x02
                                    },

                                    Package ()
                                    {
                                        "slpi",
                                        0x00,
                                        0x03
                                    },

                                    Package ()
                                    {
                                        "cdsp",
                                        0x01,
                                        0x04
                                    },

                                    Package ()
                                    {
                                        "modem",
                                        0x01,
                                        0x05
                                    },

                                    Package ()
                                    {
                                        "spss",
                                        0x00,
                                        0x06
                                    }
                                })
                            }

                            Case (2)
                            {
                                If (CondRefOf (\_SB.ADSP))
                                {
                                    If (CondRefOf (\_SB.ADSP._STA))
                                    {
                                        // MARKED
                                        //Return (\_SB.ADSP._STA ())
                                        Return (\_SB.ADSP._STA)
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Case (3)
                            {
                                If (CondRefOf (\_SB.SCSS))
                                {
                                    If (CondRefOf (\_SB.SCSS._STA))
                                    {
                                        // MARKED
                                        //Return (\_SB.SCSS._STA ())
                                        Return (\_SB.SCSS._STA)
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Case (4)
                            {
                                If (CondRefOf (\_SB.NSP0))
                                {
                                    If (CondRefOf (\_SB.NSP0._STA))
                                    {
                                        // MARKED
                                        //Return (\_SB.NSP0._STA ())
                                        Return (\_SB.NSP0._STA)
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Case (5)
                            {
                                If (CondRefOf (\_SB.AMSS))
                                {
                                    If (CondRefOf (\_SB.AMSS._STA))
                                    {
                                        // MARKED
                                        //Return (\_SB.AMSS._STA ())
                                        Return (\_SB.AMSS._STA)
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Case (6)
                            {
                                If (CondRefOf (\_SB_.SPSS))
                                {
                                    If (CondRefOf (\_SB.SPSS._STA))
                                    {
                                        // MARKED
                                        //Return (\_SB.SPSS._STA ())
                                        Return (\_SB.SPSS._STA)
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Default
                            {
                                Return (0x00)
                            }
                        }
                    }

                    Default
                    {
                        Return (0x00)
                    }
                }
            }

            Method (THTZ, 4, NotSerialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (0)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TPSV = Arg1
                                    Notify (\_SB.TZ1, 0x81)
                                }

                                Return (\_SB.TZ1._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TTSP = Arg1
                                    Notify (\_SB.TZ1, 0x81)
                                }

                                Return (\_SB.TZ1._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TTC1 = Arg1
                                    Notify (\_SB.TZ1, 0x81)
                                }

                                Return (\_SB.TZ1._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TTC2 = Arg1
                                    Notify (\_SB.TZ1, 0x81)
                                }

                                Return (\_SB.TZ1._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (3)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TPSV = Arg1
                                    Notify (\_SB.TZ3, 0x81)
                                }

                                Return (\_SB.TZ3._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TTSP = Arg1
                                    Notify (\_SB.TZ3, 0x81)
                                }

                                Return (\_SB.TZ3._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TTC1 = Arg1
                                    Notify (\_SB.TZ3, 0x81)
                                }

                                Return (\_SB.TZ3._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TTC2 = Arg1
                                    Notify (\_SB.TZ3, 0x81)
                                }

                                Return (\_SB.TZ3._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (5)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TPSV = Arg1
                                    Notify (\_SB.TZ5, 0x81)
                                }

                                Return (\_SB.TZ5._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TTSP = Arg1
                                    Notify (\_SB.TZ5, 0x81)
                                }

                                Return (\_SB.TZ5._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TTC1 = Arg1
                                    Notify (\_SB.TZ5, 0x81)
                                }

                                Return (\_SB.TZ5._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TTC2 = Arg1
                                    Notify (\_SB.TZ5, 0x81)
                                }

                                Return (\_SB.TZ5._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (11)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TPSV = Arg1
                                    Notify (\_SB.TZ11, 0x81)
                                }

                                Return (\_SB.TZ11._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TTSP = Arg1
                                    Notify (\_SB.TZ11, 0x81)
                                }

                                Return (\_SB.TZ11._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TTC1 = Arg1
                                    Notify (\_SB.TZ11, 0x81)
                                }

                                Return (\_SB.TZ11._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TTC2 = Arg1
                                    Notify (\_SB.TZ11, 0x81)
                                }

                                Return (\_SB.TZ11._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (13)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TPSV = Arg1
                                    Notify (\_SB.TZ13, 0x81)
                                }

                                Return (\_SB.TZ13._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TTSP = Arg1
                                    Notify (\_SB.TZ13, 0x81)
                                }

                                Return (\_SB.TZ13._TSP)
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TTC1 = Arg1
                                    Notify (\_SB.TZ13, 0x81)
                                }

                                Return (\_SB.TZ13._TC1)
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TTC2 = Arg1
                                    Notify (\_SB.TZ13, 0x81)
                                }

                                Return (\_SB.TZ13._TC2)
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (14)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ14.TPSV = Arg1
                                    Notify (\_SB.TZ14, 0x81)
                                }

                                Return (\_SB.TZ14._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ14.TTSP = Arg1
                                    Notify (\_SB.TZ14, 0x81)
                                }

                                Return (\_SB.TZ14._TFP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ14.TTC1 = Arg1
                                    Notify (\_SB.TZ14, 0x81)
                                }

                                Return (\_SB.TZ14._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ14.TTC2 = Arg1
                                    Notify (\_SB.TZ14, 0x81)
                                }

                                Return (\_SB.TZ14._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (15)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._TSP)
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (16)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._PSV ())
                            }

                            Case (1)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._CRT ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._TSP)
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (17)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._TSP)
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (18)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._TSP)
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (31)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TPSV = Arg1
                                    Notify (\_SB.TZ31, 0x81)
                                }

                                Return (\_SB.TZ31._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TTSP = Arg1
                                    Notify (\_SB.TZ31, 0x81)
                                }

                                Return (\_SB.TZ31._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TTC1 = Arg1
                                    Notify (\_SB.TZ31, 0x81)
                                }

                                Return (\_SB.TZ31._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TTC2 = Arg1
                                    Notify (\_SB.TZ31, 0x81)
                                }

                                Return (\_SB.TZ31._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (32)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TPSV = Arg1
                                    Notify (\_SB.TZ32, 0x81)
                                }

                                Return (\_SB.TZ32._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TTSP = Arg1
                                    Notify (\_SB.TZ32, 0x81)
                                }

                                Return (\_SB.TZ32._PSV ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TTC1 = Arg1
                                    Notify (\_SB.TZ32, 0x81)
                                }

                                Return (\_SB.TZ32._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TTC2 = Arg1
                                    Notify (\_SB.TZ32, 0x81)
                                }

                                Return (\_SB.TZ32._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (33)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TPSV = Arg1
                                    Notify (\_SB.TZ33, 0x81)
                                }

                                Return (\_SB.TZ33._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TTSP = Arg1
                                    Notify (\_SB.TZ33, 0x81)
                                }

                                Return (\_SB.TZ33._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TTC1 = Arg1
                                    Notify (\_SB.TZ33, 0x81)
                                }

                                Return (\_SB.TZ33._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TTC2 = Arg1
                                    Notify (\_SB.TZ33, 0x81)
                                }

                                Return (\_SB.TZ33._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (34)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TPSV = Arg1
                                    Notify (\_SB.TZ34, 0x81)
                                }

                                Return (\_SB.TZ34._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TTSP = Arg1
                                    Notify (\_SB.TZ34, 0x81)
                                }

                                Return (\_SB.TZ34._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TTC1 = Arg1
                                    Notify (\_SB.TZ34, 0x81)
                                }

                                Return (\_SB.TZ34._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TTC2 = Arg1
                                    Notify (\_SB.TZ34, 0x81)
                                }

                                Return (\_SB.TZ34._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (35)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TPSV = Arg1
                                    Notify (\_SB.TZ35, 0x81)
                                }

                                Return (\_SB.TZ35._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TTSP = Arg1
                                    Notify (\_SB.TZ35, 0x81)
                                }

                                Return (\_SB.TZ35._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TTC1 = Arg1
                                    Notify (\_SB.TZ35, 0x81)
                                }

                                Return (\_SB.TZ35._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TTC2 = Arg1
                                    Notify (\_SB.TZ35, 0x81)
                                }

                                Return (\_SB.TZ35._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (36)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TPSV = Arg1
                                    Notify (\_SB.TZ36, 0x81)
                                }

                                Return (\_SB.TZ36._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TTSP = Arg1
                                    Notify (\_SB.TZ36, 0x81)
                                }

                                Return (\_SB.TZ36._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TTC1 = Arg1
                                    Notify (\_SB.TZ36, 0x81)
                                }

                                Return (\_SB.TZ36._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TTC2 = Arg1
                                    Notify (\_SB.TZ36, 0x81)
                                }

                                Return (\_SB.TZ36._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (37)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TPSV = Arg1
                                    Notify (\_SB.TZ37, 0x81)
                                }

                                Return (\_SB.TZ37._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TTSP = Arg1
                                    Notify (\_SB.TZ37, 0x81)
                                }

                                Return (\_SB.TZ37._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TTC1 = Arg1
                                    Notify (\_SB.TZ37, 0x81)
                                }

                                Return (\_SB.TZ37._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TTC2 = Arg1
                                    Notify (\_SB.TZ37, 0x81)
                                }

                                Return (\_SB.TZ37._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (38)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TPSV = Arg1
                                    Notify (\_SB.TZ38, 0x81)
                                }

                                Return (\_SB.TZ38._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TTSP = Arg1
                                    Notify (\_SB.TZ38, 0x81)
                                }

                                Return (\_SB.TZ38._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TTC1 = Arg1
                                    Notify (\_SB.TZ38, 0x81)
                                }

                                Return (\_SB.TZ38._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TTC2 = Arg1
                                    Notify (\_SB.TZ38, 0x81)
                                }

                                Return (\_SB.TZ38._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (51)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TPSV = Arg1
                                    Notify (\_SB.TZ51, 0x81)
                                }

                                Return (\_SB.TZ51._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TTSP = Arg1
                                    Notify (\_SB.TZ51, 0x81)
                                }

                                Return (\_SB.TZ51._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TTC1 = Arg1
                                    Notify (\_SB.TZ51, 0x81)
                                }

                                Return (\_SB.TZ51._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TTC2 = Arg1
                                    Notify (\_SB.TZ51, 0x81)
                                }

                                Return (\_SB.TZ51._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (52)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TPSV = Arg1
                                    Notify (\_SB.TZ52, 0x81)
                                }

                                Return (\_SB.TZ52._PSV)
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TTSP = Arg1
                                    Notify (\_SB.TZ52, 0x81)
                                }

                                Return (\_SB.TZ52._TSP)
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TTC1 = Arg1
                                    Notify (\_SB.TZ52, 0x81)
                                }

                                Return (\_SB.TZ52._TC1)
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TTC2 = Arg1
                                    Notify (\_SB.TZ52, 0x81)
                                }

                                Return (\_SB.TZ52._TC2)
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (58)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TPSV = Arg1
                                    Notify (\_SB.TZ58, 0x81)
                                }

                                Return (\_SB.TZ58._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TTSP = Arg1
                                    Notify (\_SB.TZ58, 0x81)
                                }

                                Return (\_SB.TZ58._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TTC1 = Arg1
                                    Notify (\_SB.TZ58, 0x81)
                                }

                                Return (\_SB.TZ58._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TTC2 = Arg1
                                    Notify (\_SB.TZ58, 0x81)
                                }

                                Return (\_SB.TZ58._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (59)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TPSV = Arg1
                                    Notify (\_SB.TZ59, 0x81)
                                }

                                Return (\_SB.TZ59._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TTSP = Arg1
                                    Notify (\_SB.TZ59, 0x81)
                                }

                                Return (\_SB.TZ59._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TTC1 = Arg1
                                    Notify (\_SB.TZ59, 0x81)
                                }

                                Return (\_SB.TZ59._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TTC2 = Arg1
                                    Notify (\_SB.TZ59, 0x81)
                                }

                                Return (\_SB.TZ59._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (61)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TPSV = Arg1
                                    Notify (\_SB.TZ61, 0x81)
                                }

                                Return (\_SB.TZ61._PSV ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TTSP = Arg1
                                    Notify (\_SB.TZ61, 0x81)
                                }

                                Return (\_SB.TZ61._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TTC1 = Arg1
                                    Notify (\_SB.TZ61, 0x81)
                                }

                                Return (\_SB.TZ61._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TTC2 = Arg1
                                    Notify (\_SB.TZ61, 0x81)
                                }

                                Return (\_SB.TZ61._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Case (99)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (0)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TPSV = Arg1
                                    Notify (\_SB.TZ99, 0x81)
                                }

                                Return (\_SB.TZ99._PSV ())
                            }

                            Case (1)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TCRT = Arg1
                                    Notify (\_SB.TZ99, 0x81)
                                }

                                Return (\_SB.TZ99._CRT ())
                            }

                            Case (2)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TTSP = Arg1
                                    Notify (\_SB.TZ99, 0x81)
                                }

                                Return (\_SB.TZ99._TSP ())
                            }

                            Case (3)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TTC1 = Arg1
                                    Notify (\_SB.TZ99, 0x81)
                                }

                                Return (\_SB.TZ99._TC1 ())
                            }

                            Case (4)
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TTC2 = Arg1
                                    Notify (\_SB.TZ99, 0x81)
                                }

                                Return (\_SB.TZ99._TC2 ())
                            }

                            Default
                            {
                                Return (0xFFFF)
                            }
                        }
                    }

                    Default
                    {
                        Return (0xFFFF)
                    }
                }
            }

            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (4) {})

                CreateByteField (BUFF, 0, STAT)
                CreateWordField (BUFF, 2, DATA)

                DATA = 1

                Return (DATA)
            }

            Method (NPUR, 1, NotSerialized)
            {
                \_SB.AGR0._PUR [1] = Arg0

                Notify (\_SB.AGR0, 0x80)
            }

            Method (INTR, 0, NotSerialized)
            {
                Return (Package ()
                {
                    0x00000002,
                    0x00000001,
                    0x00000003,
                    0x00000001,

                    0x00000006,
                    0x17911008,
                    0x00000001,
                    0x00000000,

                    0x86000000,
                    0x00200000,
                    0x00000000,
                    0x00000000,

                    0x0C300000,
                    0x00001000,
                    0x00000000,
                    0x00000000,

                    0x01FD4000,
                    0x00000008,
                    0x00000000,
                    0x00000000,

                    0x17C0000C,
                    0x00000000,
                    0x00000000,
                    0x00000000 
                })
            }

            Method (STND, 0, NotSerialized)
            {
                Return (Package ()
                {
                    "DMPO",
                    "DMPA",
                    "DMPB",
                    "DMDS",
                    "DMPL",
                    "DMWE",
                    "XMPL",
                    "XMPK",
                    "XMPT",
                    "DMEP"
                })
            }

            Method (CTPM, 0, NotSerialized)
            {
                Return (Package ()
                {
                    "CORE_TOPOLOGY",
                    0x08
                })
            }

            Method (PPPM, 0, NotSerialized)
            {
                Return (Package ()
                {
                    Package () { "PPP_RESOURCE_ID_SMPS5_B" },
                    Package () { "PPP_RESOURCE_ID_SMPS6_B" },
                    Package () { "PPP_RESOURCE_ID_SMPS9_B" },
                    Package () { "PPP_RESOURCE_ID_SMPS10_B" },
                    Package () { "PPP_RESOURCE_ID_SMPS11_B" },
                    Package () { "PPP_RESOURCE_ID_SMPS12_B" },
                    Package () { "PPP_RESOURCE_ID_SMPS1_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS2_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS3_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS4_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS6_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS8_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS10_C" },
                    Package () { "PPP_RESOURCE_ID_SMPS1_E" },
                    Package () { "PPP_RESOURCE_ID_SMPS2_E" },
                    Package () { "PPP_RESOURCE_ID_SMPS3_E" },
                    Package () { "PPP_RESOURCE_ID_LDO1_B" },
                    Package () { "PPP_RESOURCE_ID_LDO2_B" },
                    Package () { "PPP_RESOURCE_ID_LDO3_B" },
                    Package () { "PPP_RESOURCE_ID_LDO4_B" },
                    Package () { "PPP_RESOURCE_ID_LDO5_B" },
                    Package () { "PPP_RESOURCE_ID_LDO6_B" },
                    Package () { "PPP_RESOURCE_ID_LDO7_B" },
                    Package () { "PPP_RESOURCE_ID_LDO8_B" },
                    Package () { "PPP_RESOURCE_ID_LDO9_B" },
                    Package () { "PPP_RESOURCE_ID_LDO1_C" },
                    Package () { "PPP_RESOURCE_ID_LDO2_C" },
                    Package () { "PPP_RESOURCE_ID_LDO3_C" },
                    Package () { "PPP_RESOURCE_ID_LDO4_C" },
                    Package () { "PPP_RESOURCE_ID_LDO5_C" },
                    Package () { "PPP_RESOURCE_ID_LDO6_C" },
                    Package () { "PPP_RESOURCE_ID_LDO7_C" },
                    Package () { "PPP_RESOURCE_ID_LDO8_C" },
                    Package () { "PPP_RESOURCE_ID_LDO9_C" },
                    Package () { "PPP_RESOURCE_ID_LDO10_C" },
                    Package () { "PPP_RESOURCE_ID_LDO11_C" },
                    Package () { "PPP_RESOURCE_ID_LDO12_C" },
                    Package () { "PPP_RESOURCE_ID_LDO13_C" },
                    Package () { "PPP_RESOURCE_ID_LDO1_D" },
                    Package () { "PPP_RESOURCE_ID_LDO1_E" },
                    Package () { "PPP_RESOURCE_ID_LDO2_E" },
                    Package () { "PPP_RESOURCE_ID_LDO3_E" },
                    Package () { "PPP_RESOURCE_ID_LDO4_E" },
                    Package () { "PPP_RESOURCE_ID_LDO5_E" },
                    Package () { "PPP_RESOURCE_ID_LDO6_E" },
                    Package () { "PPP_RESOURCE_ID_LDO7_E" },
                    Package () { "PPP_RESOURCE_ID_LDO1_P" },
                    Package () { "PPP_RESOURCE_ID_LDO2_P" },
                    Package () { "PPP_RESOURCE_ID_LDO3_P" },
                    Package () { "PPP_RESOURCE_ID_LDO4_P" },
                    Package () { "PPP_RESOURCE_ID_LDO5_P" },
                    Package () { "PPP_RESOURCE_ID_LDO6_P" },
                    Package () { "PPP_RESOURCE_ID_LDO7_P" },
                    Package () { "PPP_RESOURCE_ID_LDO1_Q" },
                    Package () { "PPP_RESOURCE_ID_LDO2_Q" },
                    Package () { "PPP_RESOURCE_ID_LDO3_Q" },
                    Package () { "PPP_RESOURCE_ID_LDO4_Q" },
                    Package () { "PPP_RESOURCE_ID_LDO5_Q" },
                    Package () { "PPP_RESOURCE_ID_LDO6_Q" },
                    Package () { "PPP_RESOURCE_ID_LDO7_Q" },
                    Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A" },
                    Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A" },
                    Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A" },
                    Package () { "PPP_RESOURCE_ID_BUCK_BOOST1_C" },
                    Package () { "PPP_RESOURCE_ID_FIXED_VREG1" },
                    Package () { "PPP_RESOURCE_ID_FIXED_VREG2" },
                })
            }

            Method (PPRR, 0, NotSerialized)
            {
                Return (Package ()
                {
                    "PPP_RESOURCE_ID_LDO1_P",
                    "PPP_RESOURCE_ID_SMPS12_B",
                    0x0012AD40, 
                    0x0014C080, 
                    0x0001D4C0, 
                    "PPP_RESOURCE_ID_LDO2_P",
                    "PPP_RESOURCE_ID_SMPS12_B",
                    0x0012AD40, 
                    0x0014C080, 
                    0x000157C0, 
                    "PPP_RESOURCE_ID_LDO3_P",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x00023280, 
                    "PPP_RESOURCE_ID_LDO4_P",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x0001F400, 
                    "PPP_RESOURCE_ID_LDO5_P",
                    "PPP_RESOURCE_ID_SMPS1_C",
                    0x001B7740, 
                    0x001DC900, 
                    0x00021340, 
                    "PPP_RESOURCE_ID_LDO6_P",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x0001F400, 
                    "PPP_RESOURCE_ID_LDO7_P",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x0004C2C0, 
                    "PPP_RESOURCE_ID_LDO1_Q",
                    "PPP_RESOURCE_ID_SMPS12_B",
                    0x0012AD40, 
                    0x0014C080, 
                    0x0001D4C0, 
                    "PPP_RESOURCE_ID_LDO2_Q",
                    "PPP_RESOURCE_ID_SMPS12_B",
                    0x0012AD40, 
                    0x0014C080, 
                    0x000157C0, 
                    "PPP_RESOURCE_ID_LDO3_Q",
                    "PPP_RESOURCE_ID_SMPS1_C",
                    0x001B7740, 
                    0x001DC900, 
                    0x00021340, 
                    "PPP_RESOURCE_ID_LDO4_Q",
                    "PPP_RESOURCE_ID_SMPS1_C",
                    0x001B7740, 
                    0x001DC900, 
                    0x00021340, 
                    "PPP_RESOURCE_ID_LDO5_Q",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x00017700, 
                    "PPP_RESOURCE_ID_LDO6_Q",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x00013880, 
                    "PPP_RESOURCE_ID_LDO7_Q",
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                    0x002DE600, 
                    0x003C6CC0, 
                    0x00013880
                })
            }

            Method (PGDS, 0, NotSerialized) { Return (DCVS) }
            Method (FPMD, 0, NotSerialized) { Return (FPDP) }
            Method (DPRF, 0, NotSerialized) { Return (\_SB.DPP0) }
            Method (DMRF, 0, NotSerialized) { Return (\_SB.DPP1) }
            Method (MPRF, 0, NotSerialized) { Return (\_SB.MPP0) }
            Method (MMRF, 0, NotSerialized) { Return (\_SB.MPP1) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Scope (\_SB.PEP0)
        {
            Method (PREL, 0, NotSerialized)
            {
                Return (Package ()
                {
                    "DM0G",
                    "DM7G",
                    "DM8G",
                    "DM9G",
                    "DMKG",
                    "DMLG",
                    "DMMG"
                })
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (PEPH, 0, NotSerialized) { Return (Package () { "ACPI\\VEN_QCOM&DEV_1A17" }) }
        }

        Scope (\_SB.PEP0)
        {
            Method (APMD, 0, NotSerialized) { Return (APCC) }

            Name (APCC, Package ()
            {
                Package ()
                {
                    "DEVICE",
                    "\\_SB.ADSP.ADCM.AUCD.QCRT",

                    Package ()
                    {
                        "COMPONENT",
                        0x00,

                        Package ()
                        {
                            "FSTATE",
                            0x00
                        }
                    },

                    Package ()
                    {
                        "DSTATE",
                        0x00,

                        Package ()
                        {
                            "NPARESOURCE",

                            Package ()
                            {
                                0x01,
                                "/arc/client/rail_xo",
                                0x80
                            }
                        }
                    },

                    Package ()
                    {
                        "DSTATE",
                        0x01,

                        Package ()
                        {
                            "NPARESOURCE",

                            Package ()
                            {
                                0x01,
                                "/arc/client/rail_xo",
                                0x00
                            }
                        }
                    },

                    Package ()
                    {
                        "DSTATE",
                        0x02,

                        Package ()
                        {
                            "NPARESOURCE",

                            Package ()
                            {
                                0x01,
                                "/arc/client/rail_xo",
                                0x00
                            }
                        }
                    }
                }
            })
        }

        // MARKED
        Scope (\_SB.PEP0)
        {
            Method (G0MD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x00,
    
                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 

                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x05, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })

                Return (GPCC)
            }

            Method (G7MD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x07, 

                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 

                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    },

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_edp2_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_pixel0_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_pixel0_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })
                
                Return (GPCC)
            }

            Method (G8MD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x08, 

                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 
                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_edp2_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })
                
                Return (GPCC)
            }

            Method (G9MD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x09, 

                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 

                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_edp0_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_top_edp0_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb3_prim_phy_pipe_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb4_eud_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb30_prim_sleep_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel0_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel0_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x05, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_usb_router_link_intf_clk", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })
                
                Return (GPCC)
            }

            Method (GKMD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x0A, 

                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 

                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb3_prim_phy_pipe_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb4_eud_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb30_prim_sleep_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_edp0_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_top_edp0_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel1_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel1_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x05, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_usb_router_link_intf_clk", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })
                
                Return (GPCC)
            }

            Method (GLMD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x0B, 

                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 

                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_edp1_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_top_edp1_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb3_sec_phy_pipe_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb4_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb30_sec_sleep_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel0_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel0_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x05, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_usb_router_link_intf_clk", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })
                
                Return (GPCC)
            }

            Method (GMMD, 0, NotSerialized)
            {
                Name (GPCC, Package ()
                {
                    Package ()
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 

                        Package ()
                        {
                            "COMPONENT", 
                            0x0C, 

                            Package ()
                            {
                                "FSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "EXIT", 

                                    Package ()
                                    {
                                        "NPARESOURCE", 

                                        Package ()
                                        {
                                            0x01, 
                                            "/arc/client/rail_mmcx", 
                                            0x40
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_xo_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_edp1_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_top_edp1_phy_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "FOOTSWITCH", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc", 
                                            0x01, 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_ROTATOR", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK",

                                        Package ()
                                        {
                                            "gcc_disp_sf_axi_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb3_sec_phy_pipe_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb4_clkref_en", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "gcc_usb30_sec_sleep_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel1_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "INIT_FSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PRELOAD_FSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x023C3460, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x02, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x00, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x03, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            0x00, 
                                            0x00
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "BUSARB", 

                                        Package ()
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x35A4E900, 
                                            0x00
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x04, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel1_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk", 
                                            0x01
                                        }
                                    }, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk", 
                                            0x01
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE_SET", 
                                0x05, 

                                Package ()
                                {
                                    "PSTATE", 
                                    0x00, 

                                    Package ()
                                    {
                                        "CLOCK", 

                                        Package ()
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_usb_router_link_intf_clk", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package ()
                                {
                                    "PRELOAD_PSTATE", 
                                    0x00
                                }
                            }
                        }
                    }
                })
                
                Return (GPCC)
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (MPMD, 0, NotSerialized) { Return (Package () {}) }
        }

        Scope (\_SB.PEP0)
        {
            Method (LPMD, 0, NotSerialized) { Return (LPCC) }

            Name (LPCC, Package ()
            {
                Package ()
                {
                    "DEVICE", 
                    "\\_SB.URS0", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "PSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "PSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.URS0.USB0", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "PSTATE", 
                            0x00
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x12
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x0100
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x28000000, 
                                0x28000000
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x0BEBC200, 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x12
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x12
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK",

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x13
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.URS0.UFN0", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "PSTATE", 
                            0x00
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x12
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x0100
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x28000000, 
                                0x28000000
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x0BEBC200, 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x12
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x09, 
                                0x13
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "CLOCK", 

                            Package ()
                            {
                                "gcc_usb4_eud_clkref_en", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB",
 
                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "BUSARB", 

                            Package ()
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "FOOTSWITCH", 

                            Package ()
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "NPARESOURCE", 

                            Package ()
                            {
                                0x01, 
                                "/arc/client/rail_cx", 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (BPMD, 0, NotSerialized) { Return (CPCC) }
            Method (SDMD, 0, NotSerialized) { Return (SDCC) }

            Name (CPCC, Package ()
            {
                Package ()
                {
                    "DEVICE",
                    "\\_SB.UFS0",

                    Package ()
                    {
                        "COMPONENT",
                        0x00,

                        Package ()
                        {
                            "FSTATE",
                            0x00,

                            Package ()
                            {
                                "PSTATE_ADJUST",

                                Package ()
                                {
                                    0x00,
                                    0x00
                                }
                            },

                            Package ()
                            {
                                "PSTATE_ADJUST",

                                Package ()
                                {
                                    0x01,
                                    0x00
                                }
                            },

                            Package ()
                            {
                                "PSTATE_ADJUST",

                                Package ()
                                {
                                    0x02,
                                    0x00
                                }
                            }
                        },

                        Package ()
                        {
                            "FSTATE",
                            0x01,

                            Package ()
                            {
                                "PSTATE_ADJUST",

                                Package ()
                                {
                                    0x02,
                                    0x01
                                }
                            },

                            Package ()
                            {
                                "PSTATE_ADJUST",

                                Package ()
                                {
                                    0x01,
                                    0x01
                                }
                            },

                            Package ()
                            {
                                "PSTATE_ADJUST",

                                Package ()
                                {
                                    0x00,
                                    0x01
                                }
                            }
                        },

                        Package ()
                        {
                            "PSTATE_SET",
                            0x00,

                            Package ()
                            {
                                "PSTATE",
                                0x00
                            },

                            Package ()
                            {
                                "PSTATE",
                                0x01
                            }
                        },

                        Package ()
                        {
                            "PSTATE_SET",
                            0x01,

                            Package ()
                            {
                                "PSTATE",
                                0x00
                            },

                            Package ()
                            {
                                "PSTATE",
                                0x01
                            }
                        },

                        Package ()
                        {
                            "PSTATE_SET",
                            0x02,

                            Package ()
                            {
                                "PSTATE",
                                0x00
                            },

                            Package ()
                            {
                                "PSTATE",
                                0x01
                            }
                        }
                    },

                    Package ()
                    {
                        "DSTATE",
                        0x00,

                        Package ()
                        {
                            "PSTATE_ADJUST",

                            Package ()
                            {
                                0x02,
                                0x00
                            }
                        },

                        Package ()
                        {
                            "PSTATE_ADJUST",

                            Package ()
                            {
                                0x00,
                                0x00
                            }
                        },

                        Package ()
                        {
                            "DELAY",

                            Package ()
                            {
                                0x23
                            }
                        },

                        Package ()
                        {
                            "PSTATE_ADJUST",

                            Package ()
                            {
                                0x01,
                                0x00
                            }
                        }
                    },

                    Package ()
                    {
                        "DSTATE",
                        0x03,

                        Package ()
                        {
                            "PSTATE_ADJUST",

                            Package ()
                            {
                                0x01,
                                0x01
                            }
                        },

                        Package ()
                        {
                            "PSTATE_ADJUST",

                            Package ()
                            {
                                0x00,
                                0x01
                            }
                        },

                        Package ()
                        {
                            "PSTATE_ADJUST",

                            Package ()
                            {
                                0x02,
                                0x01
                            }
                        }
                    },

                    Package ()
                    {
                        "CRASHDUMP_DSTATE",
                        0x00
                    }
                }
            })

            // MARKED
            Name (SDCC, Package ()
            {
                Package ()
                {
                    "DEVICE", 
                    "\\_SB.SDC2", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }, 

                        Package ()
                        {
                            "PSTATE_SET", 
                            0x00, 
            
                            Package ()
                            {
                                "PSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x01, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x02, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x03, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x04, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x05, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x06, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x07, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x08,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x09,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x0B,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x0C,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x0D,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x0E,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x0F,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x10,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x11,

                                Package ()
                                {
                                    "DELAY",

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x12,

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x13, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x14, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        0x01, 
                                        0x00, 
                                        0x00, 
                                        0x00, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        0x01, 
                                        0x00, 
                                        0x00, 
                                        0x00, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x23
                                    }
                                }, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        0x01, 
                                        0x002D2A80, 
                                        0x01, 
                                        0x07, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        0x01, 
                                        0x002D0370, 
                                        0x01, 
                                        0x07, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x15, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        0x01, 
                                        0x001B7740, 
                                        0x01, 
                                        0x07, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x16, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        0x01, 
                                        0x002D2A80, 
                                        0x01, 
                                        0x07, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        0x01, 
                                        0x002D0370, 
                                        0x01, 
                                        0x07, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x17, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        0x01, 
                                        0x00, 
                                        0x00, 
                                        0x00, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "PMICVREGVOTE", 

                                    Package ()
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        0x01, 
                                        0x00, 
                                        0x00, 
                                        0x00, 
                                        0x00
                                    }
                                }, 

                                Package ()
                                {
                                    "DELAY", 

                                    Package ()
                                    {
                                        0x23
                                    }
                                }
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_SET", 
                            0x01, 

                            Package ()
                            {
                                "PSTATE", 
                                0x00
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x01
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_SET", 
                            0x02, 

                            Package ()
                            {
                                "PSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "BUSARB", 

                                    Package ()
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_2", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x17D78400, 
                                        0x0BEBC200
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x01, 

                                Package ()
                                {
                                    "BUSARB", 

                                    Package ()
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_2", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x0BEBC200, 
                                        0x05F5E100
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x02, 

                                Package ()
                                {
                                    "BUSARB", 

                                    Package ()
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_2", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x00, 
                                        0x00
                                    }
                                }
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_SET", 
                            0x03, 

                            Package ()
                            {
                                "PSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "PSTATE_ADJUST", 

                                    Package ()
                                    {
                                        0x01, 
                                        0x02
                                    }
                                }, 

                                Package ()
                                {
                                    "PSTATE_ADJUST", 

                                    Package ()
                                    {
                                        0x02, 
                                        0x00
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x01, 

                                Package ()
                                {
                                    "PSTATE_ADJUST", 

                                    Package ()
                                    {
                                        0x01, 
                                        0x01
                                    }
                                }, 

                                Package ()
                                {
                                    "PSTATE_ADJUST", 

                                    Package ()
                                    {
                                        0x02, 
                                        0x01
                                    }
                                }
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_SET", 
                            0x04, 

                            Package ()
                            {
                                "PSTATE", 
                                0x00, 

                                Package ()
                                {
                                    "CLOCK", 

                                    Package ()
                                    {
                                        "gcc_sdcc2_ahb_clk", 
                                        0x01
                                    }
                                }, 

                                Package ()
                                {
                                    "CLOCK", 

                                    Package ()
                                    {
                                        "gcc_sdcc2_at_clk", 
                                        0x01
                                    }
                                }
                            }, 

                            Package ()
                            {
                                "PSTATE", 
                                0x01,

                                Package ()
                                {
                                    "CLOCK", 

                                    Package ()
                                    {
                                        "gcc_sdcc2_ahb_clk", 
                                        0x02
                                    }
                                }, 

                                Package ()
                                {
                                    "CLOCK", 

                                    Package ()
                                    {
                                        "gcc_sdcc2_at_clk", 
                                        0x02
                                    }
                                }
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x00, 
                                0x16
                            }
                        }, 

                        Package ()
                        {
                            "TLMMPORT", 

                            Package ()
                            {
                                0x001CF000, 
                                0x7FFF, 
                                0x1FE4
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x02, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x04, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x01, 
                                0x02
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x01, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x04, 
                                0x01
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x02, 
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "TLMMPORT", 

                            Package ()
                            {
                                0x001CF000, 
                                0x7FFF, 
                                0x0A00
                            }
                        }, 

                        Package ()
                        {
                            "PSTATE_ADJUST", 

                            Package ()
                            {
                                0x00, 
                                0x17
                            }
                        }
                    }, 

                    Package ()
                    {
                        "CRASHDUMP_EXCEPTION", 

                        Package ()
                        {
                            "EXECUTE_FUNCTION", 

                            Package ()
                            {
                                "ExecuteOcdSdCardExceptions"
                            }
                        }
                    }, 

                    Package ()
                    {
                        "CRASHDUMP_DSTATE", 
                        0x00
                    }
                }
            })
        }

        // MARKED
        Scope (\_SB.PEP0)
        {
            Method (EWMD, 0, NotSerialized) { Return (WBRC) }

            Name (WBRC, Package ()
            {
                Package ()
                {
                    "DEVICE", 
                    "\\_SB.FMRT", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_LDO7_E", 
                                0x01, 
                                0x002AB980, 
                                0x01, 
                                0x04, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_SMPS10_B", 
                                0x02, 
                                0x001B7740, 
                                0x01, 
                                0x00, 
                                0x00
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_SMPS10_B", 
                                0x02, 
                                0x001B7740, 
                                0x00, 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_LDO7_E", 
                                0x01, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            }
                        }
                    }
                }
            })
        }

        // MARKED
        Scope (\_SB.PEP0)
        {
            Method (PEMD, 0, NotSerialized) { Return (PEMC) }

            Name (PEMC, Package ()
            {
                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI0", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI0.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI1.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI2", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 
                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI2.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI3", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI3.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI4", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI4.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI5", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI5.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI6", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package ()
                {
                    "DEVICE", 
                    "\\_SB.PCI6.RP1", 

                    Package ()
                    {
                        "COMPONENT", 
                        0x00, 

                        Package ()
                        {
                            "FSTATE", 
                            0x00
                        }, 

                        Package ()
                        {
                            "FSTATE", 
                            0x01
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x00
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x01
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package ()
                    {
                        "DSTATE", 
                        0x03
                    }
                }
            })
        }

        // MARKED
        Scope (\_SB.PEP0)
        {
            Method (LPMX, 0, NotSerialized) { Return (LPXC) }

            Name (LPXC, Package ()
            {
                Package ()
                {
                    "DEVICE", 
                    "\\_SB.TSC5", 

                    Package ()
                    {
                        "DSTATE", 
                        0x00, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_LDO3_C", 
                                0x01, 
                                0x002DE600, 
                                0x01, 
                                0x04, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_LDO8_C", 
                                0x01, 
                                0x001B7740, 
                                0x01, 
                                0x04, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "DELAY", 

                            Package ()
                            {
                                0x02
                            }
                        }, 

                        Package ()
                        {
                            "TLMMGPIO", 

                            Package ()
                            {
                                0x16, 
                                0x01, 
                                0x00, 
                                0x01, 
                                0x03, 
                                0x03
                            }
                        }, 

                        Package ()
                        {
                            "DELAY", 

                            Package ()
                            {
                                0xC8
                            }
                        }
                    }, 

                    Package ()
                    {
                        "DSTATE", 

                        0x03, 
                        Package ()
                        {
                            "TLMMGPIO", 

                            Package ()
                            {
                                0x16, 
                                0x00, 
                                0x00, 
                                0x01, 
                                0x01, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_LDO8_C", 
                                0x01, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            }
                        }, 

                        Package ()
                        {
                            "PMICVREGVOTE", 

                            Package ()
                            {
                                "PPP_RESOURCE_ID_LDO3_C", 
                                0x01, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            }
                        }
                    }
                }
            })
        }

        Device (BAM1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0A")
            Name (_UID, 1)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x01DC4000, 0x00024000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,,) { 0x130 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BAM5)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0A")
            Name (_UID, 5)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x03A84000, 0x00032000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,,) { 0xC4 } 
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BAMD)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0A")
            Name (_UID, 13)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0A904000, 0x00017000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,,) { 0x34C }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BAME)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0A")
            Name (_UID, 14)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x06064000, 0x00015000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,,) { 0xC7 } 
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (BAMF)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0A")
            Name (_UID, 15)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0A704000, 0x00017000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,,) { 0x347 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (TFTP)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1ADC")
            Name (_DEP, Package () { \_SB.IPC0 })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (LLC)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.SVMJ, _HRV)

            Name (_HID, "QCOM1A83")
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x09600000, 0x00050000)
                Memory32Fixed (ReadOnly,  0x01FC8088, 0x00000004)

                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x266 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (MMU0)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.SVMJ, _HRV)

            Name (_HID, "QCOM1A09")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x15000000, 0x00100000)

                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x81 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x82 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x83 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x84 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x85 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x86 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x87 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x88 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x89 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x8A }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x8B }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x8C }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x8D }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x8E }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x8F }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x90 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x91 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x92 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x93 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x94 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x95 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x96 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xD5 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xD6 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xD7 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xD8 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xD9 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xDA }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xDB }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xDC }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xDD }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xDE }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xDF }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0xE0 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x15B }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x15C }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x15D }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x15E }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x15F }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x160 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x161 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x162 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x163 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x164 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x165 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x166 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x167 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x168 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x169 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x16A }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x16B }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x16C }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x16D }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x16E }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x16F }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x170 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x171 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x172 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x173 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x174 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x175 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x176 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x177 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x178 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x179 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x1AB }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x1AC }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x1AD }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x1AE }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x1AF }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x1B0 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (MMU1)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.SVMJ, _HRV)

            Name (_HID, "QCOM1A09")
            Name (_UID, 1)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x03DA0000, 0x00020000)

                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2C8 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2C9 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2CA }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2CB }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2CC }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2CD }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2CE }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2CF }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2D0 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x2DF }
            })

            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (IMM0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A8F")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (IMM1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A8F")
            Name (_UID, 1)

            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (RPEN)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1AE1")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (IPC0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0D")
            Name (_DEP, Package () { \_SB.GLNK })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (GLNK)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A84")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.IPCC,
                \_SB.RPEN
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (SYSM)
        {
            Name (_HID, "ACPI0010")
            Name (_UID, 2)

            Name (_LPI, Package ()
            {
                0,
                0x1000000,
                1,

                Package ()
                {
                    9500,
                    6000,
                    1,
                    0x20,
                    0,
                    0,
                    0xC300,

                    ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                    ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                    "platform.DRIPS"
                }
            })

            Device (CLUS)
            {
                Name (_HID, "ACPI0010")
                Name (_UID, 1)

                Name (_LPI, Package ()
                {
                    0,
                    0x1000000,
                    2,

                    Package ()
                    {
                        5900,
                        3000,
                        0,
                        0,
                        0,
                        0,
                        0x20,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                        "L3Cluster.D2"
                    }, 

                    Package ()
                    {
                        6000,
                        3300,
                        1,
                        0,
                        0,
                        1,
                        0x40,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                        "L3Cluster.D4"
                    }
                })

                Device (CPU0)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 0)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C4"
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU1)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 1)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C4"
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU2)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 2)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C4"
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU3)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 3)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C4"
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU4)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 4)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C1"  
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C2"  
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C3"  
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C4"  
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU5)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 5)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C1"  
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C2"  
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C3"  
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C4"  
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU6)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 6)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C1"  
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C2"  
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C3"  
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C4"  
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }

                Device (CPU7)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 7)

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C1" 
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C2" 
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C3" 
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C4" 
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }
                }
            }
        }

        Device (QGP0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A88")
            Name (_UID, 0)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00904000, 0x00050000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x117 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x118 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QGP1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A88")
            Name (_UID, 1)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00A04000, 0x00050000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x13C }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QGP2)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A88")
            Name (_UID, 2)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00804000, 0x00050000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x26D }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x270 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QWPP)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A79")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x09000000, 0x00600000)
                Memory32Fixed (ReadWrite, 0x09680000, 0x00070000)
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (SOCP)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.STOR, STOR)

            Name (_HID, "QCOM1ADD")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (QDSS)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A56")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0,
                \_SB.MMU0
            })

            Name (_CRS, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x13E }

                Memory32Fixed (ReadWrite, 0x06000000, 0x0004A000)
                Memory32Fixed (ReadWrite, 0x16000000, 0x01000000)
                Memory32Fixed (ReadWrite, 0x07000000, 0x00A00000)

                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x44 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x41 }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, ) { 0x42 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (SCM0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM05DD")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (TLOG)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1AE4")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (SPMI)
        {
            Alias(\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0B")
            Name (_CID, "PNP0CA2")
            Name (_UID, 1)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0C400000, 0x02800000)
            })

            Name (CONF, Buffer ()
            {
                0x00,
                0x01,
                0x01,
                0x01, 0xFF,
                0x00,
                0x02, 0x00,
                0x0A,
                0x07,
                0x04,
                0x07,
                0x01, 0xFF,
                0x10,
                0x01, 0x00,
                0x01,
                0x0C, 0x40, 0x00, 0x00,
                0x02, 0x80, 0x00, 0x00
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (GIO0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A0C")
            Name (_UID, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0F100000, 0x00300000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0xF0 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0xF0 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0xF0 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0xF0 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x2FC }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x228 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Shared, ,, ) { 0x111 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Shared, ,, ) { 0x112 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Shared, ,, ) { 0x12D }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Shared, ,, ) { 0x199 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Shared, ,, ) { 0x2DC }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x2A7 }
                Interrupt (ResourceConsumer, Edge,  ActiveHigh, Shared, ,, ) { 0x2AD }
            })

            Name (_AEI, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x1F4, "\\_SB.GIO0", , ) { 0x2 }
            })

            Name (GABL, 0)

            Method (_REG, 2, NotSerialized)
            {
                If ((Arg0 == 0x08))
                {
                    GABL = Arg1
                }
            }

            Method (OFNI, 0, NotSerialized) { Return (Buffer () { 0xCC, 0x00 } ) }

            //Method (_E02, 0, NotSerialized)
            //{
            //    Notify (\_SB.GPU0, 0x92)
            //}

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
                                Return (package () { 0x140 })
                            }

                            Default
                            {
                                BreakPoint
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

        Device (IPCC)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1AC2")
            Name (_CID, "QCOMFFE2")
            Name (_UID, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x105 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x106 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x107 }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x384 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (URS0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A8B")
            Name (_CID, Package ()
            {
                "PNP0CA1",
                "QCOMFFE1"
            })

            Name (_UID, 0)
            Name (_CCA, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0A600000, 0x00100000)
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }

            Device (USB0)
            {
                Name (_ADR, 0)
                Name (_S0W, 3)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0xA5 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA2 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0x211 }
                    Interrupt (ResourceConsumer, Edge,  ActiveHigh, SharedAndWake, ,, ) { 0x20F }
                    Interrupt (ResourceConsumer, Edge,  ActiveHigh, SharedAndWake, ,, ) { 0x20E }
                })

                Device (RHUB)
                {
                    Name (_ADR, 0)

                    Device (PRT1)
                    {
                        Name (_ADR, 1)
                        Name (_UPC, Package ()
                        {
                            1,
                            9,
                            0,
                            0 
                        })

                        Name (_PLD, Package ()
                        {
                            Buffer ()
                            {
                                0x82,
                                0x00, 0x00, 0x00,
                                0x00, 0x00, 0x00, 0x00,
                                0x69,
                                0x0C,
                                0x00, 0x00,
                                0x00, 0x00, 0x00, 0x00,
                                0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                    }
                }

                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 0x02 }) }

                Method (_DSM, 4, Serialized)
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("CE2EE385-00E6-48CB-9F05-2EDB927C4899"))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (0)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (0)
                                        {
                                            Return (Buffer () { 0x1D })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 0x01 })
                                        }
                                    }
                                }

                                Case (2)
                                {
                                    Return (0x00)
                                }

                                Case (3)
                                {
                                    Return (0x00)
                                }

                                Case (4)
                                {
                                    Return (0x02)
                                }

                                Default
                                {
                                    Return (Buffer () { 0x00 })
                                }
                            }
                        }

                        Default
                        {
                            Return (Buffer () { 0x00 })
                        }
                    }
                }

                Method (PHYC, 0, Serialized)
                {
                    Return ( Package () {} )
                }

                Method (_STA, 0, NotSerialized) { Return (0x0F) }
            }

            Device (UFN0)
            {
                Name (_ADR, 0)
                Name (_S0W, 3)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0xA5 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA2 }
                })

                Device (RHUB)
                {
                    Name (_ADR, 0)

                    Device (PRT1)
                    {
                        Name (_ADR, 1)
                        Name (_UPC, Package ()
                        {
                            1,
                            9,
                            0,
                            0 
                        })

                        Name(_PLD, Package()
                        {
                            Buffer()
                            {
                                0x82,
                                0x00, 0x00, 0x00,
                                0x00, 0x00, 0x00, 0x00,
                                0x69,
                                0x0C,
                                0x00, 0x00,
                                0x00, 0x00, 0x00, 0x00,
                                0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                    }
                }

                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 0x02 }) }

                Method (_DSM, 4, Serialized)
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("FE56CFEB-49D5-4378-A8A2-2978DBE54AD2"))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (0)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (0)
                                        {
                                            Return (Buffer () { 0x03 })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 0x01 })
                                        }
                                    }
                                }

                                Case (1)
                                {
                                    Return ( 0x20 )
                                }

                                Default
                                {
                                    Return (Buffer () { 0x00 })
                                }
                            }
                        }

                        Case (ToUUID ("18DE299F-9476-4FC9-B43B-8AEB713ED751"))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (0)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (0)
                                        {
                                            Return (Buffer () { 0x03 })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 0x01 })
                                        }
                                    }
                                }

                                Case (1)
                                {
                                    Return ( 0x39 )
                                }

                                Default
                                {
                                    Return (Buffer () { 0x00 })
                                }
                            }
                        }

                        Default
                        {
                            Return (Buffer () { 0x00 })
                        }
                    }
                }

                Method (PHYC, 0, Serialized)
                {
                    Return ( Package () {} )
                }

                Method (_STA, 0, NotSerialized) { Return (0x0F) }
            }
        }

        Device (MPA)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM05B4")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (MBS0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM05BA")

            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (MBS1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM05BB")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (MBS2)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM05BC")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (MSKN)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM05BE")

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ51)
        {
            Name (_HID, "QCOM05C0")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.MPA })
            Name (_TZD, Package () { \_SB.MPA })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF5A)
            Name (TTC1, 0x001)
            Name (TTC2, 0x002)
            Name (TTSP, 0x00A)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ51.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ51.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ51.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ51.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ51.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ58)
        {
            Name (_HID, "QCOM1A63")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.MBS1, 
                \_SB.ADC1
            })

            Name (_TZD, Package () { \_SB.MBS1 })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF5A)
            Name (TTC1, 0x001)
            Name (TTC2, 0x002)
            Name (TTSP, 0x00A)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ58.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ58.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ58.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ58.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ58.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        ThermalZone (TZ59)
        {
            Name (_HID, "QCOM1A64")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.MBS2, 
                \_SB.ADC1
            })

            Name (_TZD, Package () { \_SB.MBS2 })

            Name (TPSV, 0x0E60)
            Name (TCRT, 0xF5A)
            Name (TTC1, 0x001)
            Name (TTC2, 0x002)
            Name (TTSP, 0x00A)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ59.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ59.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ59.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ59.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ59.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        ThermalZone (TZ61)
        {
            Name (_HID, "QCOM1A61")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.MSKN, 
                \_SB.ADC1
            })

            Name (_TZD, Package ()
            {
                \_SB.MSKN, 
                \_SB.MJCT, 
                \_SB.MBJ0
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF5A)
            Name (TTC1, 0x001)
            Name (TTC2, 0x002)
            Name (TTSP, 0x00A)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ61.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ61.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ61.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ61.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ61.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x00) }
        }

        Device (AGR0)
        {
            Name (_HID, "ACPI000C")
            Name (_PUR, Package () { 0x01, 0x00 })

            Method (_OST, 3, NotSerialized) { \_SB.PEP0.ROST = Arg2 }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ0)
        {
            Name (_HID, "QCOM1A58")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ0.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ1)
        {
            Name (_HID, "QCOM1A58")
            Name (_UID, 1)
            Name (_DEP, Package () { \_SB.PEP0 })                                                                                               
            Name (_TZD, Package () { \_SB.PEP0 })

            Name (TPSV, 0xEC4)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x001)
            Name (TTSP, 0x032)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ1.TPSV) } 
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ1.TTC1) } 
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ1.TTC2) } 
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ1.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ2)
        {
            Name (_HID, "QCOM1A59")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ2.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ3)
        {
            Name (_HID, "QCOM1A59")
            Name (_UID, 1)
            Name (_DEP, Package () { \_SB.PEP0 })
            Name (_TZD, Package () { \_SB.PEP0 })

            Name (TPSV, 0xEC4)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x001)
            Name (TTSP, 0x001)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ3.TPSV) } 
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ3.TTC1) } 
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ3.TTC2) } 
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ3.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ5)
        {
            Name (_HID, "QCOM1A91")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })
            Name (_TZD, Package () { \_SB.GPU0 })

            Name (TPSV, 0xE60)
            Name (TTC1, 0x001)
            Name (TTC2, 0x002)
            Name (TTSP, 0x002)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ5.TPSV) } 
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ5.TTC1) } 
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ5.TTC2) } 
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ5.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ6)
        {
            Name (_HID, "QCOM1A47")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ6.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ7)
        {
            Name (_HID, "QCOM1AC4")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ7.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ8)
        {
            Name (_HID, "QCOM1AC5")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ8.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ9)
        {
            Name (_HID, "QCOM1AC6")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ9.TTSP) } 
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ10)
        {
            Name (_HID, "QCOM1A46")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ10.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ11)
        {
            Name (_HID, "QCOM1ABF")
            Name (_UID, 1)
            Name (_DEP, Package () { \_SB.PEP0 })
            Name (_TZD, Package () { \_SB.CSW0 })

            Name (TPSV, 0xEC4)
            Name (TTC1, 0x000)
            Name (TTC2, 0x001)
            Name (TTSP, 0x032)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ11.TPSV) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ11.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ11.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ11.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ12)
        {
            Name (_HID, "QCOM1AC0")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })

            Name (TTSP, 0x032)

            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ12.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ13)
        {
            Name (_HID, "QCOM1A57")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.BCL1
            })

            Name (_TZD, Package ()
            {
                \_SB.GPU0, 
                \_SB.WLTM, 
                \_SB.CSW0, 
                \_SB.MBCL
            })

            Name (_TC1, 0x001)                                         
            Name (_TC2, 0x005)                                         
            Name (_TSP, 0x014)                                         
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (0xDCA) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ14)
        {
            Name (_HID, "QCOM1AD6")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })
            Name (_TZD, Package () { \_SB.DMMY })

            Name (TPSV, 0xDCA)
            Name (TTC1, 0x000)
            Name (TTC2, 0x001)
            Name (TTSP, 0x00F)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ14.TPSV) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ14.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ14.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ14.TTSP) }
            Method (_TFP, 0, NotSerialized) { Return (\_SB.TZ14.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ15)
        {
            Name (_HID, "QCOM1AC8")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.PMIC
            })

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveHigh, Exclusive, PullUp, 0x0000, "\\_SB.PM01", , ) { 0xC0 }
            })

            Name (_TZD, Package ()
            {
                \_SB.SYSM.CLUS.CPU0, 
                \_SB.SYSM.CLUS.CPU1, 
                \_SB.SYSM.CLUS.CPU2, 
                \_SB.SYSM.CLUS.CPU3
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (_TSP, 0x001)                                         
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ15.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ15.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ15.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ15.TTC2) }

            Method (_DSM, 4, NotSerialized)
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("C2D42C4B-E25E-471C-8A4E-290AAC3A29A3"))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (0)
                                    {
                                        Return (Buffer () { 0x03 })
                                    }

                                    Default
                                    {
                                        Return (Buffer () { 0x00 })
                                    }
                                }
                            }

                            Case (1)
                            {
                                \_SB.TZ15.TPSV = DerefOf (Arg3 [0x00])
                                \_SB.TZ15.TCRT = DerefOf (Arg3 [0x01])
                                \_SB.TZ15.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ15.TTC1 = 0x00

                                Notify (\_SB.TZ15, 0x81)

                                Return (\_SB.TZ15.TPSV)
                            }

                            Default
                            {
                                Return (0)
                            }
                        }
                    }

                    Default
                    {
                        Return (0)
                    }
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ16)
        {
            Name (_HID, "QCOM1AC9")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.PMIC
            })

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", , ) { 0x100 }
            })

            Name (_TZD, Package () { \_SB.PEP0 })

            Name (_MTL, 0x032)
            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (_TSP, 0x001)                                         
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ16.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ16.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ16.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ16.TTC2) }

            Method (_DSM, 4, NotSerialized)
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("C2D42C4B-E25E-471C-8A4E-290AAC3A29A3"))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (0)
                                    {
                                        Return (Buffer () { 0x03 })
                                    }

                                    Default
                                    {
                                        Return (Buffer () { 0x00 })
                                    }
                                }
                            }

                            Case (1)
                            {
                                \_SB.TZ16.TPSV = DerefOf (Arg3 [0x00])
                                \_SB.TZ16.TCRT = DerefOf (Arg3 [0x01])
                                \_SB.TZ16.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ16.TTC1 = 0x00

                                Notify (\_SB.TZ16, 0x81)

                                Return (\_SB.TZ16.TPSV)
                            }

                            Default
                            {
                                Return (0)
                            }
                        }
                    }

                    Default
                    {
                        Return (0)
                    }
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ17)
        {
            Name (_HID, "QCOM1ACA")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.PMIC
            })

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", ,) { 0x140 }
            })

            Name (_TZD, Package () { \_SB.GPU0 })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (_TSP, 0x001)                                         
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ17.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ17.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ17.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ17.TTC2) }

            Method (_DSM, 4, NotSerialized)
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("C2D42C4B-E25E-471C-8A4E-290AAC3A29A3"))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (0)
                                    {
                                        Return (Buffer () { 0x03 })
                                    }

                                    Default
                                    {
                                        Return (Buffer () { 0x00 })
                                    }
                                }
                            }

                            Case (1)
                            {
                                \_SB.TZ17.TPSV = DerefOf (Arg3 [0x00])
                                \_SB.TZ17.TCRT = DerefOf (Arg3 [0x01])
                                \_SB.TZ17.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ17.TTC1 = 0x00

                                Notify (\_SB.TZ17, 0x81)

                                Return (\_SB.TZ17.TPSV)
                            }

                            Default
                            {
                                Return (0)
                            }
                        }
                    }

                    Default
                    {
                        Return (0)
                    }
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ18)
        {
            Name (_HID, "QCOM1ACB")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.PMIC
            })

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000, "\\_SB.PM01", ,) { 0x180 }
            })

            Name (_TZD, Package ()
            {
                \_SB.WLTM, 
                \_SB.CSW0
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (_TSP, 0x001)                                         
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ18.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ18.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ18.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ18.TTC2) }

            Method (_DSM, 4, NotSerialized)
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("C2D42C4B-E25E-471C-8A4E-290AAC3A29A3"))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (0)
                                    {
                                        Return (Buffer () { 0x03 })
                                    }

                                    Default
                                    {
                                        Return (Buffer () { 0x00 })
                                    }
                                }
                            }

                            Case (1)
                            {
                                \_SB.TZ18.TPSV = DerefOf (Arg3 [0x00])
                                \_SB.TZ18.TCRT = DerefOf (Arg3 [0x01])
                                \_SB.TZ18.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ18.TTC1 = 0x00

                                Notify (\_SB.TZ18, 0x81)

                                Return (\_SB.TZ18.TPSV)
                            }

                            Default
                            {
                                Return (0)
                            }
                        }
                    }

                    Default
                    {
                        Return (0)
                    }
                }
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ20)
        {
            Name (_HID, "QCOM1AD7")
            Name (_UID, 0)
            Name (_DEP, Package () { \_SB.PEP0 })
            Name (_TZD, Package ()
            {
                \_SB.PEP0, 
                \_SB.GPU0, 
                \_SB.CSW0
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ99)
        {
            Name (_HID, "QCOM1A5A")
            Name (_UID, 100)
            Name (_DEP, Package () { \_SB.PEP0 })
            Name (_TZD, Package ()
            {
                \_SB.SYSM.CLUS.CPU0, 
                \_SB.SYSM.CLUS.CPU1, 
                \_SB.SYSM.CLUS.CPU2, 
                \_SB.SYSM.CLUS.CPU3, 
                \_SB.SYSM.CLUS.CPU4, 
                \_SB.SYSM.CLUS.CPU5, 
                \_SB.SYSM.CLUS.CPU6, 
                \_SB.SYSM.CLUS.CPU7, 
                \_SB.PEP0, 
                \_SB.GPU0.MON0, 
                \_SB.GPU0, 
                \_SB.WLTM, 
                \_SB.PMBM, 
                \_SB.CSW0
            })

            Name (TPSV, 0xEC4)
            Name (TCRT, 0xF28)
            Name (TTC1, 0x004)
            Name (TTC2, 0x003)
            Name (TTSP, 0x00A)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ99.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ99.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ99.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ99.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ99.TTSP) }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ31)
        {
            Name (_HID, "QCOM1A5D")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.ADC1
            })

            Name (_TZD, Package () { \_SB.PEP0 })

            Name (TPSV, 0xE2E)
            Name (TCRT, 0xEF6)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x01E)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ31.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ31.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ31.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ31.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ31.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ32)
        {
            Name (_HID, "QCOM1A5E")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.ADC1
            })

            Name (_TZD, Package ()
            {
                \_SB.PEP0, 
                \_SB.GPU0
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x028)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ32.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ32.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ32.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ32.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ32.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ33)
        {
            Name (_HID, "QCOM1A5F")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.ADC1
            })

            Name (_TZD, Package ()
            {
                \_SB.PEP0, 
                \_SB.GPU0
            })

            Name (TPSV, 0xE2E)
            Name (TCRT, 0xEF6)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x032)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ33.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ33.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ33.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ33.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ33.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ34)
        {
            Name (_HID, "QCOM1A60")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.ADC1
            })

            Name (_TZD, Package ()
            {
                \_SB.PEP0, 
                \_SB.GPU0
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x01E)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ34.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ34.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ34.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ34.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ34.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ35)
        {
            Name (_HID, "QCOM05C6")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.MBS0
            })

            Name (_TZD, Package ()
            {
                \_SB.WLTM, 
                \_SB.MSKN
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x028)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ35.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ35.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ35.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ35.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ35.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ36)
        {
            Name (_HID, "QCOM05C7")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.MBS1
            })

            Name (_TZD, Package () { \_SB.MBS1 })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x032)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ36.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ36.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ36.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ36.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ36.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ37)
        {
            Name (_HID, "QCOM05C8")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.MBS2
            })

            Name (_TZD, Package () { \_SB.MBS2 })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x028)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ37.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ37.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ37.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ37.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ37.TTSP) }
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        ThermalZone (TZ38)
        {
            Name (_HID, "QCOM1A64")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.PEP0, 
                \_SB.ADC1
            })

            Name (_TZD, Package ()
            {
                \_SB.WLTM, 
                \_SB.MSKN
            })

            Name (TPSV, 0xE60)
            Name (TCRT, 0xF28)
            Name (_MTL, 0x014)
            Name (TTC1, 0x000)
            Name (TTC2, 0x014)
            Name (TTSP, 0x032)
            Name (_TZP, 0x000)

            Method (_PSV, 0, NotSerialized) { Return (\_SB.TZ38.TPSV) }
            Method (_CRT, 0, NotSerialized) { Return (\_SB.TZ38.TCRT) }
            Method (_TC1, 0, NotSerialized) { Return (\_SB.TZ38.TTC1) }
            Method (_TC2, 0, NotSerialized) { Return (\_SB.TZ38.TTC2) }
            Method (_TSP, 0, NotSerialized) { Return (\_SB.TZ38.TTSP) }
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

        Device (ADC1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A11")
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB.SPMI,
                \_SB.PMIC
            })

            Method (_CRS, 0, NotSerialized)
            {
                Name (INTB, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000, "\\_SB.PM01", ,) { 0x20 }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000, "\\_SB.PM01", ,) { 0x28 }
                })

                Name (NAM,  Buffer () { "\\_SB.SPMI" })
                Name (VUSR, Buffer ()
                {
                    0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,
                    0x31, 0x01, 0x00, 0x00
                })

                Name (VBTM, Buffer ()
                {
                    0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,
                    0x34, 0x01, 0x00, 0x00
                })

                Concatenate (VUSR, NAM, Local1)
                Concatenate (VBTM, NAM, Local2)
                Concatenate (Local1, Local2, Local3)
                Concatenate (Local3, INTB, Local0)

                Return (Local0)
            }

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }
    }
}
