/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ../../DSDT.aml, Sun Dec 21 10:01:24 2025
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00016276 (90742)
 *     Revision         0x02
 *     Checksum         0xB9
 *     OEM ID           "QCOMM "
 *     OEM Table ID     "SDM7280 "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x05000000 (83886080)
 */
DefinitionBlock ("", "DSDT", 2, "QCOMM ", "SDM7280 ", 0x00000003)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 0 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.DPP0, IntObj)
    External (_SB_.DPP1, IntObj)
    External (_SB_.ECMX, UnknownObj)
    External (_SB_.IC11._DSM, UnknownObj)
    External (_SB_.IC11.AVBL, IntObj)
    External (_SB_.IC11.DSMF, UnknownObj)
    External (_SB_.IC11.FF01, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.IC11.INTR, IntObj)
    External (_SB_.MBCL, UnknownObj)
    External (_SB_.MPP0, IntObj)
    External (_SB_.MPP1, IntObj)
    External (_SB_.SCSS._STA, IntObj)
    External (_SB_.SPSS._STA, IntObj)
    External (_SB_.TZ13._PSV, IntObj)
    External (_SB_.TZ13._TC1, IntObj)
    External (_SB_.TZ13._TC2, IntObj)
    External (_SB_.TZ13._TSP, IntObj)
    External (_SB_.TZ13.TPSV, UnknownObj)
    External (_SB_.TZ13.TTC1, UnknownObj)
    External (_SB_.TZ13.TTC2, UnknownObj)
    External (_SB_.TZ13.TTSP, UnknownObj)
    External (_SB_.TZ17._PSV, IntObj)
    External (_SB_.TZ17._TC1, IntObj)
    External (_SB_.TZ17._TC2, IntObj)
    External (_SB_.TZ17._TSP, IntObj)
    External (_SB_.TZ31._CRT, IntObj)
    External (_SB_.TZ31._PSV, IntObj)
    External (_SB_.TZ31.TCRT, UnknownObj)
    External (_SB_.TZ31.TPSV, UnknownObj)
    External (_SB_.TZ33._CRT, IntObj)
    External (_SB_.TZ33._PSV, IntObj)
    External (_SB_.TZ33.TCRT, UnknownObj)
    External (_SB_.TZ33.TPSV, UnknownObj)
    External (_SB_.TZ34, UnknownObj)
    External (_SB_.TZ34._CRT, IntObj)
    External (_SB_.TZ34._PSV, IntObj)
    External (_SB_.TZ34._TC1, IntObj)
    External (_SB_.TZ34._TC2, IntObj)
    External (_SB_.TZ34._TSP, IntObj)
    External (_SB_.TZ34.TCRT, UnknownObj)
    External (_SB_.TZ34.TPSV, UnknownObj)
    External (_SB_.TZ34.TTC1, UnknownObj)
    External (_SB_.TZ34.TTC2, UnknownObj)
    External (_SB_.TZ34.TTSP, UnknownObj)
    External (_SB_.TZ35, UnknownObj)
    External (_SB_.TZ35._CRT, IntObj)
    External (_SB_.TZ35._PSV, IntObj)
    External (_SB_.TZ35._TC1, IntObj)
    External (_SB_.TZ35._TC2, IntObj)
    External (_SB_.TZ35._TSP, IntObj)
    External (_SB_.TZ35.TCRT, UnknownObj)
    External (_SB_.TZ35.TPSV, UnknownObj)
    External (_SB_.TZ35.TTC1, UnknownObj)
    External (_SB_.TZ35.TTC2, UnknownObj)
    External (_SB_.TZ35.TTSP, UnknownObj)
    External (_SB_.TZ36, UnknownObj)
    External (_SB_.TZ36._CRT, IntObj)
    External (_SB_.TZ36._PSV, IntObj)
    External (_SB_.TZ36._TC1, IntObj)
    External (_SB_.TZ36._TC2, IntObj)
    External (_SB_.TZ36._TSP, IntObj)
    External (_SB_.TZ36.TCRT, UnknownObj)
    External (_SB_.TZ36.TPSV, UnknownObj)
    External (_SB_.TZ36.TTC1, UnknownObj)
    External (_SB_.TZ36.TTC2, UnknownObj)
    External (_SB_.TZ36.TTSP, UnknownObj)
    External (_SB_.TZ37, UnknownObj)
    External (_SB_.TZ37._CRT, IntObj)
    External (_SB_.TZ37._PSV, IntObj)
    External (_SB_.TZ37._TC1, IntObj)
    External (_SB_.TZ37._TC2, IntObj)
    External (_SB_.TZ37._TSP, IntObj)
    External (_SB_.TZ37.TCRT, UnknownObj)
    External (_SB_.TZ37.TPSV, UnknownObj)
    External (_SB_.TZ37.TTC1, UnknownObj)
    External (_SB_.TZ37.TTC2, UnknownObj)
    External (_SB_.TZ37.TTSP, UnknownObj)
    External (_SB_.TZ38, UnknownObj)
    External (_SB_.TZ38._CRT, IntObj)
    External (_SB_.TZ38._PSV, IntObj)
    External (_SB_.TZ38._TC1, IntObj)
    External (_SB_.TZ38._TC2, IntObj)
    External (_SB_.TZ38._TSP, IntObj)
    External (_SB_.TZ38.TCRT, UnknownObj)
    External (_SB_.TZ38.TPSV, UnknownObj)
    External (_SB_.TZ38.TTC1, UnknownObj)
    External (_SB_.TZ38.TTC2, UnknownObj)
    External (_SB_.TZ38.TTSP, UnknownObj)
    External (_SB_.TZ53._PSV, IntObj)
    External (_SB_.TZ53._TC1, IntObj)
    External (_SB_.TZ53._TC2, IntObj)
    External (_SB_.TZ53._TSP, IntObj)
    External (_SB_.TZ53.TPSV, UnknownObj)
    External (_SB_.TZ53.TTC1, UnknownObj)
    External (_SB_.TZ53.TTC2, UnknownObj)
    External (_SB_.TZ53.TTSP, UnknownObj)
    External (_SB_.TZ54._PSV, IntObj)
    External (_SB_.TZ54._TC1, IntObj)
    External (_SB_.TZ54._TC2, IntObj)
    External (_SB_.TZ54._TSP, IntObj)
    External (_SB_.TZ54.TPSV, UnknownObj)
    External (_SB_.TZ54.TTC1, UnknownObj)
    External (_SB_.TZ54.TTC2, UnknownObj)
    External (_SB_.TZ54.TTSP, UnknownObj)
    External (_SB_.TZ55._PSV, IntObj)
    External (_SB_.TZ55._TC1, IntObj)
    External (_SB_.TZ55._TC2, IntObj)
    External (_SB_.TZ55._TSP, IntObj)
    External (_SB_.TZ55.TPSV, UnknownObj)
    External (_SB_.TZ55.TTC1, UnknownObj)
    External (_SB_.TZ55.TTC2, UnknownObj)
    External (_SB_.TZ55.TTSP, UnknownObj)
    External (_SB_.TZ56._PSV, IntObj)
    External (_SB_.TZ56._TC1, IntObj)
    External (_SB_.TZ56._TC2, IntObj)
    External (_SB_.TZ56._TSP, IntObj)
    External (_SB_.TZ56.TPSV, UnknownObj)
    External (_SB_.TZ56.TTC1, UnknownObj)
    External (_SB_.TZ56.TTC2, UnknownObj)
    External (_SB_.TZ56.TTSP, UnknownObj)
    External (_SB_.TZ60, UnknownObj)
    External (_SB_.TZ60._PSV, IntObj)
    External (_SB_.TZ60._TC1, IntObj)
    External (_SB_.TZ60._TC2, IntObj)
    External (_SB_.TZ60._TSP, IntObj)
    External (_SB_.TZ60.TPSV, UnknownObj)
    External (_SB_.TZ60.TTC1, UnknownObj)
    External (_SB_.TZ60.TTC2, UnknownObj)
    External (_SB_.TZ60.TTSP, UnknownObj)
    External (_SB_.TZ61, UnknownObj)
    External (_SB_.TZ61._PSV, IntObj)
    External (_SB_.TZ61._TC1, IntObj)
    External (_SB_.TZ61._TC2, IntObj)
    External (_SB_.TZ61._TSP, IntObj)
    External (_SB_.TZ61.TPSV, UnknownObj)
    External (_SB_.TZ61.TTC1, UnknownObj)
    External (_SB_.TZ61.TTC2, UnknownObj)
    External (_SB_.TZ61.TTSP, UnknownObj)
    External (_SB_.TZ62, UnknownObj)
    External (_SB_.TZ62._PSV, IntObj)
    External (_SB_.TZ62._TC1, IntObj)
    External (_SB_.TZ62._TC2, IntObj)
    External (_SB_.TZ62._TSP, IntObj)
    External (_SB_.TZ62.TPSV, UnknownObj)
    External (_SB_.TZ62.TTC1, UnknownObj)
    External (_SB_.TZ62.TTC2, UnknownObj)
    External (_SB_.TZ62.TTSP, UnknownObj)
    External (_SB_.UCS0.ECC0, UnknownObj)
    External (_SB_.UCS0.ECC1, UnknownObj)
    External (_SB_.UCS0.EDI0, UnknownObj)
    External (_SB_.UCS0.EDI1, UnknownObj)
    External (_SB_.UCS0.EINF, UnknownObj)
    External (_SB_.UCS0.EUPD, UnknownObj)
    External (_SB_.UCS0.USBR, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.UCSI, UnknownObj)
    External (_SB_.UCSI.CCI_, UnknownObj)
    External (_SB_.UCSI.MSGI, UnknownObj)
    External (_SB_.UCSI.VERS, UnknownObj)

    Scope (\_SB)
    {
        Name (PSUB, "IDP07280")
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
        Name (SJTG, 0xFFFFFFFF)
        Name (SOSN, 0xAAAAAAAABBBBBBBB)
        Name (PLST, 0xFFFFFFFF)
        Name (EMUL, 0xFFFFFFFF)
        Name (RMTB, 0xAAAAAAAA)
        Name (RMTX, 0xBBBBBBBB)
        Name (RFMB, 0xCCCCCCCC)
        Name (RFMS, 0xDDDDDDDD)
        Name (RFAB, 0xEEEEEEEE)
        Name (RFAS, 0x77777777)
        Name (TCMA, 0xDEADBEEF)
        Name (TCML, 0xBEEFDEAD)
        Name (SOSI, 0xDEADBEEFFFFFFFFF)
        Name (PRP1, 0xFFFFFFFF)
        Name (SKUV, 0xFFFFFFFF)
        Name (SDDR, 0xFFFFFFFF)
        Name (UAON, 0xFFFFFFFF)
        Device (UFS0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((STOR == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM24A5")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.EMUL, EMUL)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01D84000,         // Address Base
                        0x0001C000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000129,
                    }
                })
                Return (RBUF) /* \_SB_.UFS0._CRS.RBUF */
            }

            Device (DEV0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (0x08)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SDC1)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((STOR == 0x02))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM24BF")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x007C4000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002AC,
                    }
                })
                Return (RBUF) /* \_SB_.SDC1._CRS.RBUF */
            }

            Device (EMMC)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (0x08)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }
        }

        Device (SDC2)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.GIO0
            })
            Name (_HID, "QCOM2466")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Alias (\_SB.PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x08804000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000EF,
                    }
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x1388,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00C0
                        }
                    GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x01
                        })
                        {   // Pin list
                            0x005B
                        }
                })
                Return (RBUF) /* \_SB_.SDC2._CRS.RBUF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (ABD)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM0427")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            OperationRegion (ROP1, GenericSerialBus, Zero, 0x0100)
            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x09))
                {
                    AVBL = Arg1
                }
            }
        }

        Name (ESNL, 0x14)
        Name (DBFL, 0x17)
        Device (PMIC)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SPMI
            })
            Name (_HID, "QCOM0A2B")  // _HID: Hardware ID
            Name (_CID, "PNP0CA3")  // _CID: Compatible ID
            Alias (\_SB.PSUB, _SUB)
            Method (PMCF, 0, NotSerialized)
            {
                Name (CFG0, Package (0x0B)
                {
                    0x0A, 
                    Package (0x02)
                    {
                        Zero, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        One, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x02, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x04, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x10, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x10, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x10, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x10, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        0x10, 
                        0x10
                    }
                })
                Return (CFG0) /* \_SB_.PMIC.PMCF.CFG0 */
            }
        }

        Device (PML0)
        {
            Name (_HID, "QCOM0AD3")  // _HID: Hardware ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.I2C2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((SKUV == One))
                {
                    Return ("SKU17280")
                }

                Return ("IDP07280")
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((SKUV == One))
                {
                    Name (RBFC, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0008, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0009, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullNone, 0x0000, 0x00C8, IoRestrictionNone,
                            "\\_SB.PM01", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0112
                            }
                        GpioIo (Exclusive, PullNone, 0x0000, 0x00C8, IoRestrictionNone,
                            "\\_SB.PM01", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0113
                            }
                    })
                    Return (RBFC) /* \_SB_.PML0._CRS.RBFC */
                }
                Else
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0008, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0009, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullNone, 0x0000, 0x00C8, IoRestrictionNone,
                            "\\_SB.PM01", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0113
                            }
                    })
                    Return (RBUF) /* \_SB_.PML0._CRS.RBUF */
                }
            }
        }

        Device (PM01)
        {
            Name (_HID, "QCOM0A2D")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000201,
                    }
                })
                Return (RBUF) /* \_SB_.PM01._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.PM01._DSM._T_0 */
                    If ((_T_0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Package (0x02)
                                {
                                    0x07, 
                                    0x06
                                })
                            }
                            Else
                            {
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Break
                }
            }
        }

        Device (PMAP)
        {
            Name (_HID, "QCOM0A2C")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PMIC, 
                \_SB.ABD, 
                \_SB.SCM0
            })
            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04){})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = 0x02
                Return (DATA) /* \_SB_.PMAP.GEPT.DATA */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.PMAP._CRS.RBUF */
            }
        }

        Device (PRTC)
        {
            Name (_HID, "ACPI000E" /* Time and Alarm Device */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                "\\_SB.PMAP"
            })
            Method (_GCP, 0, NotSerialized)  // _GCP: Get Capabilities
            {
                Return (0x04)
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0002, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x18)), 
                FLD0,   192
            }

            Method (_GRT, 0, NotSerialized)  // _GRT: Get Real Time
            {
                Name (BUFF, Buffer (0x1A){})
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                BUFF = FLD0 /* \_SB_.PRTC.FLD0 */
                Return (TME1) /* \_SB_.PRTC._GRT.TME1 */
            }

            Method (_SRT, 1, NotSerialized)  // _SRT: Set Real Time
            {
                Name (BUFF, Buffer (0x32){})
                CreateByteField (BUFF, Zero, STAT)
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                ACT1 = Zero
                TME1 = Arg0
                ACW1 = Zero
                BUFF = FLD0 = BUFF /* \_SB_.PRTC._SRT.BUFF */
                If ((STAT != Zero))
                {
                    Return (One)
                }

                Return (Zero)
            }
        }

        Device (PMBM)
        {
            Name (_HID, "QCOM0A2A")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PMGK
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.PMBM._CRS.RBUF */
            }
        }

        Device (BCL1)
        {
            Name (_HID, "QCOM0A77")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0108
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0109
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x010A
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x010B
                        }
                    GpioInt (Edge, ActiveLow, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0160
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0161
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0162
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0163
                        }
                })
                Return (RBUF) /* \_SB_.BCL1._CRS.RBUF */
            }

            Method (BCLQ, 0, NotSerialized)
            {
                Name (CFG0, Package (0x08)
                {
                    "PM3_BCLBIG_LVL0", 
                    "PM3_BCLBIG_LVL1", 
                    "PM3_BCLBIG_LVL2", 
                    "PM3_BCLBIG_BAN", 
                    "PM4_BCLBIG_LVL0", 
                    "PM4_BCLBIG_LVL1", 
                    "PM4_BCLBIG_LVL2", 
                    "PM4_BCLBIG_BAN"
                })
                Return (CFG0) /* \_SB_.BCL1.BCLQ.CFG0 */
            }
        }

        Device (PMGK)
        {
            Name (_HID, "QCOM0A8E")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.GLNK, 
                \_SB.ABD
            })
            Name (LKUP, Zero)
            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04){})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = 0x03
                Return (DATA) /* \_SB_.PMGK.GEPT.DATA */
            }

            Name (BUFF, Buffer (0x32){})
            CreateField (BUFF, Zero, 0x08, BSTA)
            CreateField (BUFF, 0x08, 0x08, BSIZ)
            CreateField (BUFF, 0x10, 0x10, BVER)
            CreateField (BUFF, 0x30, 0x20, BCCI)
            CreateField (BUFF, 0x50, 0x40, BCTL)
            CreateField (BUFF, 0x90, 0x80, BMGI)
            CreateField (BUFF, 0x0110, 0x80, BMGO)
            Method (USBN, 1, NotSerialized)
            {
                BUFF = UCSI /* \_SB_.PMGK.UCSI */
                \_SB.UCSI.VERS = BVER /* \_SB_.PMGK.BVER */
                \_SB.UCSI.MSGI = BMGI /* \_SB_.PMGK.BMGI */
                \_SB.UCSI.CCI = BCCI /* \_SB_.PMGK.BCCI */
                Notify (\_SB.UCSI, Arg0)
                Return (Zero)
            }

            Method (UPAN, 1, NotSerialized)
            {
                Name (VNTF, 0xFFFFFFFF)
                Name (VPRT, 0x04)
                Name (VMUX, Zero)
                Name (VCCS, 0x02)
                Name (VDPP, Zero)
                Name (VHPD, Zero)
                Name (VHSF, 0x02)
                Name (VHIQ, Zero)
                Name (BCCX, Zero)
                Name (BDIX, Zero)
                VNTF = Arg0
                VPRT = (VNTF & 0xFF)
                VNTF >>= 0x08
                VCCS = (VNTF & 0xFF)
                VNTF >>= 0x08
                VMUX = (VNTF & 0xFF)
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = VMUX /* \_SB_.PMGK.UPAN.VMUX */
                    If ((_T_0 == Zero))
                    {
                        VHSF = Zero
                        Break
                    }
                    ElseIf ((_T_0 == One))
                    {
                        VHSF = Zero
                        Break
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        VHSF = One
                        Break
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        VHSF = Zero
                        Break
                    }

                    Break
                }

                VNTF >>= 0x08
                VHIQ = (VNTF & 0x80)
                If ((VHIQ == Zero))
                {
                    VHIQ = Zero
                }
                Else
                {
                    VHIQ = One
                }

                VHPD = (VNTF & 0x40)
                If ((VHPD == Zero))
                {
                    VHPD = Zero
                }
                Else
                {
                    VHPD = One
                }

                VDPP = (VNTF & 0x3F)
                If ((VDPP == Zero))
                {
                    VDPP = Zero
                }
                ElseIf ((VCCS == One))
                {
                    VDPP += 0x06
                }

                BCCX = VCCS /* \_SB_.PMGK.UPAN.VCCS */
                VMUX <<= 0x02
                BCCX |= VMUX /* \_SB_.PMGK.UPAN.BCCX */
                VHSF <<= 0x04
                BCCX |= VHSF /* \_SB_.PMGK.UPAN.BCCX */
                BDIX = VDPP /* \_SB_.PMGK.UPAN.VDPP */
                VHPD <<= 0x04
                BDIX |= VHPD /* \_SB_.PMGK.UPAN.BDIX */
                VHIQ <<= 0x05
                BDIX |= VHIQ /* \_SB_.PMGK.UPAN.BDIX */
                \_SB.UCS0.EINF = 0x02
                While (One)
                {
                    Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_1 = VPRT /* \_SB_.PMGK.UPAN.VPRT */
                    If ((_T_1 == Zero))
                    {
                        \_SB.UCS0.EUPD |= One /* External reference */
                        \_SB.UCS0.ECC0 = BCCX /* \_SB_.PMGK.UPAN.BCCX */
                        \_SB.UCS0.EDI0 = BDIX /* \_SB_.PMGK.UPAN.BDIX */
                        \_SB.UCS0.USBR ()
                        Break
                    }
                    ElseIf ((_T_1 == One))
                    {
                        \_SB.UCS0.EUPD |= 0x02 /* External reference */
                        \_SB.UCS0.ECC1 = BCCX /* \_SB_.PMGK.UPAN.BCCX */
                        \_SB.UCS0.EDI1 = BDIX /* \_SB_.PMGK.UPAN.BDIX */
                        \_SB.UCS0.USBR ()
                        Break
                    }

                    Break
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.PMGK._CRS.RBUF */
            }

            Method (LKST, 1, NotSerialized)
            {
                LKUP = Arg0
                Notify (\_SB.UCSI, Zero) // Bus Check
                Return (Zero)
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0003, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x30)), 
                UCSI,   384
            }
        }

        Device (PEP0)
        {
            Name (_HID, "QCOM0A17")  // _HID: Hardware ID
            Name (_CID, "PNP0D80" /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Method (THTZ, 4, NotSerialized)
            {
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == One))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg3)
                            If ((_T_1 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TPSV = Arg1
                                    Notify (\_SB.TZ1, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ1._PSV ())
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TTSP = Arg1
                                    Notify (\_SB.TZ1, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ1._TSP ())
                            }
                            ElseIf ((_T_1 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TTC1 = Arg1
                                    Notify (\_SB.TZ1, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ1._TC1 ())
                            }
                            ElseIf ((_T_1 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ1.TTC2 = Arg1
                                    Notify (\_SB.TZ1, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ1._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        While (One)
                        {
                            Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_2 = ToInteger (Arg3)
                            If ((_T_2 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TPSV = Arg1
                                    Notify (\_SB.TZ3, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ3._PSV ())
                            }
                            ElseIf ((_T_2 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TTSP = Arg1
                                    Notify (\_SB.TZ3, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ3._TSP ())
                            }
                            ElseIf ((_T_2 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TTC1 = Arg1
                                    Notify (\_SB.TZ3, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ3._TC1 ())
                            }
                            ElseIf ((_T_2 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ3.TTC2 = Arg1
                                    Notify (\_SB.TZ3, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ3._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        While (One)
                        {
                            Name (_T_3, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_3 = ToInteger (Arg3)
                            If ((_T_3 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TPSV = Arg1
                                    Notify (\_SB.TZ5, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ5._PSV ())
                            }
                            ElseIf ((_T_3 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TTSP = Arg1
                                    Notify (\_SB.TZ5, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ5._TSP ())
                            }
                            ElseIf ((_T_3 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TTC1 = Arg1
                                    Notify (\_SB.TZ5, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ5._TC1 ())
                            }
                            ElseIf ((_T_3 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ5.TTC2 = Arg1
                                    Notify (\_SB.TZ5, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ5._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        While (One)
                        {
                            Name (_T_4, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_4 = ToInteger (Arg3)
                            If ((_T_4 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ6.TPSV = Arg1
                                    Notify (\_SB.TZ6, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ6._PSV ())
                            }
                            ElseIf ((_T_4 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ6.TTSP = Arg1
                                    Notify (\_SB.TZ6, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ6._TSP ())
                            }
                            ElseIf ((_T_4 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ6.TTC1 = Arg1
                                    Notify (\_SB.TZ6, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ6._TC1 ())
                            }
                            ElseIf ((_T_4 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ6.TTC2 = Arg1
                                    Notify (\_SB.TZ6, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ6._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        While (One)
                        {
                            Name (_T_5, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_5 = ToInteger (Arg3)
                            If ((_T_5 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ10.TPSV = Arg1
                                    Notify (\_SB.TZ10, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ10._PSV ())
                            }
                            ElseIf ((_T_5 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ10.TTSP = Arg1
                                    Notify (\_SB.TZ10, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ10._TSP ())
                            }
                            ElseIf ((_T_5 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ10.TTC1 = Arg1
                                    Notify (\_SB.TZ10, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ10._TC1 ())
                            }
                            ElseIf ((_T_5 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ10.TTC2 = Arg1
                                    Notify (\_SB.TZ10, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ10._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        While (One)
                        {
                            Name (_T_6, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_6 = ToInteger (Arg3)
                            If ((_T_6 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TPSV = Arg1
                                    Notify (\_SB.TZ11, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ11._PSV ())
                            }
                            ElseIf ((_T_6 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TTSP = Arg1
                                    Notify (\_SB.TZ11, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ11._TSP ())
                            }
                            ElseIf ((_T_6 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TTC1 = Arg1
                                    Notify (\_SB.TZ11, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ11._TC1 ())
                            }
                            ElseIf ((_T_6 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ11.TTC2 = Arg1
                                    Notify (\_SB.TZ11, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ11._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        While (One)
                        {
                            Name (_T_7, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_7 = ToInteger (Arg3)
                            If ((_T_7 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TPSV = Arg1
                                    Notify (\_SB.TZ13, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ13._PSV) /* External reference */
                            }
                            ElseIf ((_T_7 == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TTSP = Arg1
                                    Notify (\_SB.TZ13, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ13._TSP) /* External reference */
                            }
                            ElseIf ((_T_7 == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TTC1 = Arg1
                                    Notify (\_SB.TZ13, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ13._TC1) /* External reference */
                            }
                            ElseIf ((_T_7 == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ13.TTC2 = Arg1
                                    Notify (\_SB.TZ13, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ13._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x0F))
                    {
                        While (One)
                        {
                            Name (_T_8, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_8 = ToInteger (Arg3)
                            If ((_T_8 == Zero))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._PSV ())
                            }
                            ElseIf ((_T_8 == 0x02))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._TSP)
                            }
                            ElseIf ((_T_8 == 0x03))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._TC1 ())
                            }
                            ElseIf ((_T_8 == 0x04))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ15._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        While (One)
                        {
                            Name (_T_9, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_9 = ToInteger (Arg3)
                            If ((_T_9 == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ16.TPSV = Arg1
                                    Notify (\_SB.TZ16, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ16._PSV ())
                            }
                            ElseIf ((_T_9 == One))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._CRT ())
                            }
                            ElseIf ((_T_9 == 0x02))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._TSP)
                            }
                            ElseIf ((_T_9 == 0x03))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._TC1 ())
                            }
                            ElseIf ((_T_9 == 0x04))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ16._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x11))
                    {
                        While (One)
                        {
                            Name (_T_A, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_A = ToInteger (Arg3)
                            If ((_T_A == Zero))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._PSV) /* External reference */
                            }
                            ElseIf ((_T_A == 0x02))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._TSP) /* External reference */
                            }
                            ElseIf ((_T_A == 0x03))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._TC1) /* External reference */
                            }
                            ElseIf ((_T_A == 0x04))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ17._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x12))
                    {
                        While (One)
                        {
                            Name (_T_B, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_B = ToInteger (Arg3)
                            If ((_T_B == Zero))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._PSV ())
                            }
                            ElseIf ((_T_B == 0x02))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._TSP)
                            }
                            ElseIf ((_T_B == 0x03))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._TC1 ())
                            }
                            ElseIf ((_T_B == 0x04))
                            {
                                If (Arg2)
                                {
                                    Return (0xFFFF)
                                }

                                Return (\_SB.TZ18._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x1F))
                    {
                        While (One)
                        {
                            Name (_T_C, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_C = ToInteger (Arg3)
                            If ((_T_C == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TPSV = Arg1
                                    Notify (\_SB.TZ31, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ31._PSV) /* External reference */
                            }
                            ElseIf ((_T_C == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TCRT = Arg1
                                    Notify (\_SB.TZ31, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ31._CRT) /* External reference */
                            }
                            ElseIf ((_T_C == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TTSP = Arg1
                                    Notify (\_SB.TZ31, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ31._TSP ())
                            }
                            ElseIf ((_T_C == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TTC1 = Arg1
                                    Notify (\_SB.TZ31, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ31._TC1 ())
                            }
                            ElseIf ((_T_C == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ31.TTC2 = Arg1
                                    Notify (\_SB.TZ31, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ31._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x20))
                    {
                        While (One)
                        {
                            Name (_T_D, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_D = ToInteger (Arg3)
                            If ((_T_D == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TPSV = Arg1
                                    Notify (\_SB.TZ32, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ32._PSV ())
                            }
                            ElseIf ((_T_D == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TCRT = Arg1
                                    Notify (\_SB.TZ32, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ32._CRT ())
                            }
                            ElseIf ((_T_D == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TTSP = Arg1
                                    Notify (\_SB.TZ32, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ32._TSP ())
                            }
                            ElseIf ((_T_D == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TTC1 = Arg1
                                    Notify (\_SB.TZ32, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ32._TC1 ())
                            }
                            ElseIf ((_T_D == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ32.TTC2 = Arg1
                                    Notify (\_SB.TZ32, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ32._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x21))
                    {
                        While (One)
                        {
                            Name (_T_E, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_E = ToInteger (Arg3)
                            If ((_T_E == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TPSV = Arg1
                                    Notify (\_SB.TZ33, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ33._PSV) /* External reference */
                            }
                            ElseIf ((_T_E == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TCRT = Arg1
                                    Notify (\_SB.TZ33, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ33._CRT) /* External reference */
                            }
                            ElseIf ((_T_E == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TTSP = Arg1
                                    Notify (\_SB.TZ33, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ33._TSP ())
                            }
                            ElseIf ((_T_E == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TTC1 = Arg1
                                    Notify (\_SB.TZ33, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ33._TC1 ())
                            }
                            ElseIf ((_T_E == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ33.TTC2 = Arg1
                                    Notify (\_SB.TZ33, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ33._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x22))
                    {
                        While (One)
                        {
                            Name (_T_F, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_F = ToInteger (Arg3)
                            If ((_T_F == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TPSV = Arg1
                                    Notify (\_SB.TZ34, 0x81) // Information Change
                                }

                                Return (\_SB.TZ34._PSV) /* External reference */
                            }
                            ElseIf ((_T_F == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TCRT = Arg1
                                    Notify (\_SB.TZ34, 0x81) // Information Change
                                }

                                Return (\_SB.TZ34._CRT) /* External reference */
                            }
                            ElseIf ((_T_F == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TTSP = Arg1
                                    Notify (\_SB.TZ34, 0x81) // Information Change
                                }

                                Return (\_SB.TZ34._TSP) /* External reference */
                            }
                            ElseIf ((_T_F == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TTC1 = Arg1
                                    Notify (\_SB.TZ34, 0x81) // Information Change
                                }

                                Return (\_SB.TZ34._TC1) /* External reference */
                            }
                            ElseIf ((_T_F == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ34.TTC2 = Arg1
                                    Notify (\_SB.TZ34, 0x81) // Information Change
                                }

                                Return (\_SB.TZ34._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x23))
                    {
                        While (One)
                        {
                            Name (_T_G, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_G = ToInteger (Arg3)
                            If ((_T_G == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TPSV = Arg1
                                    Notify (\_SB.TZ35, 0x81) // Information Change
                                }

                                Return (\_SB.TZ35._PSV) /* External reference */
                            }
                            ElseIf ((_T_G == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TCRT = Arg1
                                    Notify (\_SB.TZ35, 0x81) // Information Change
                                }

                                Return (\_SB.TZ35._CRT) /* External reference */
                            }
                            ElseIf ((_T_G == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TTSP = Arg1
                                    Notify (\_SB.TZ35, 0x81) // Information Change
                                }

                                Return (\_SB.TZ35._TSP) /* External reference */
                            }
                            ElseIf ((_T_G == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TTC1 = Arg1
                                    Notify (\_SB.TZ35, 0x81) // Information Change
                                }

                                Return (\_SB.TZ35._TC1) /* External reference */
                            }
                            ElseIf ((_T_G == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ35.TTC2 = Arg1
                                    Notify (\_SB.TZ35, 0x81) // Information Change
                                }

                                Return (\_SB.TZ35._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x24))
                    {
                        While (One)
                        {
                            Name (_T_H, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_H = ToInteger (Arg3)
                            If ((_T_H == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TPSV = Arg1
                                    Notify (\_SB.TZ36, 0x81) // Information Change
                                }

                                Return (\_SB.TZ36._PSV) /* External reference */
                            }
                            ElseIf ((_T_H == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TCRT = Arg1
                                    Notify (\_SB.TZ36, 0x81) // Information Change
                                }

                                Return (\_SB.TZ36._CRT) /* External reference */
                            }
                            ElseIf ((_T_H == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TTSP = Arg1
                                    Notify (\_SB.TZ36, 0x81) // Information Change
                                }

                                Return (\_SB.TZ36._TSP) /* External reference */
                            }
                            ElseIf ((_T_H == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TTC1 = Arg1
                                    Notify (\_SB.TZ36, 0x81) // Information Change
                                }

                                Return (\_SB.TZ36._TC1) /* External reference */
                            }
                            ElseIf ((_T_H == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ36.TTC2 = Arg1
                                    Notify (\_SB.TZ36, 0x81) // Information Change
                                }

                                Return (\_SB.TZ36._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x25))
                    {
                        While (One)
                        {
                            Name (_T_I, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_I = ToInteger (Arg3)
                            If ((_T_I == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TPSV = Arg1
                                    Notify (\_SB.TZ37, 0x81) // Information Change
                                }

                                Return (\_SB.TZ37._PSV) /* External reference */
                            }
                            ElseIf ((_T_I == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TCRT = Arg1
                                    Notify (\_SB.TZ37, 0x81) // Information Change
                                }

                                Return (\_SB.TZ37._CRT) /* External reference */
                            }
                            ElseIf ((_T_I == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TTSP = Arg1
                                    Notify (\_SB.TZ37, 0x81) // Information Change
                                }

                                Return (\_SB.TZ37._TSP) /* External reference */
                            }
                            ElseIf ((_T_I == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TTC1 = Arg1
                                    Notify (\_SB.TZ37, 0x81) // Information Change
                                }

                                Return (\_SB.TZ37._TC1) /* External reference */
                            }
                            ElseIf ((_T_I == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ37.TTC2 = Arg1
                                    Notify (\_SB.TZ37, 0x81) // Information Change
                                }

                                Return (\_SB.TZ37._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x26))
                    {
                        While (One)
                        {
                            Name (_T_J, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_J = ToInteger (Arg3)
                            If ((_T_J == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TPSV = Arg1
                                    Notify (\_SB.TZ38, 0x81) // Information Change
                                }

                                Return (\_SB.TZ38._PSV) /* External reference */
                            }
                            ElseIf ((_T_J == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TCRT = Arg1
                                    Notify (\_SB.TZ38, 0x81) // Information Change
                                }

                                Return (\_SB.TZ38._CRT) /* External reference */
                            }
                            ElseIf ((_T_J == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TTSP = Arg1
                                    Notify (\_SB.TZ38, 0x81) // Information Change
                                }

                                Return (\_SB.TZ38._TSP) /* External reference */
                            }
                            ElseIf ((_T_J == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TTC1 = Arg1
                                    Notify (\_SB.TZ38, 0x81) // Information Change
                                }

                                Return (\_SB.TZ38._TC1) /* External reference */
                            }
                            ElseIf ((_T_J == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ38.TTC2 = Arg1
                                    Notify (\_SB.TZ38, 0x81) // Information Change
                                }

                                Return (\_SB.TZ38._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x63))
                    {
                        While (One)
                        {
                            Name (_T_K, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_K = ToInteger (Arg3)
                            If ((_T_K == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TPSV = Arg1
                                    Notify (\_SB.TZ99, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ99._PSV ())
                            }
                            ElseIf ((_T_K == One))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TCRT = Arg1
                                    Notify (\_SB.TZ99, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ99._CRT ())
                            }
                            ElseIf ((_T_K == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TTSP = Arg1
                                    Notify (\_SB.TZ99, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ99._TSP ())
                            }
                            ElseIf ((_T_K == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TTC1 = Arg1
                                    Notify (\_SB.TZ99, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ99._TC1 ())
                            }
                            ElseIf ((_T_K == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ99.TTC2 = Arg1
                                    Notify (\_SB.TZ99, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ99._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x33))
                    {
                        While (One)
                        {
                            Name (_T_L, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_L = ToInteger (Arg3)
                            If ((_T_L == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TPSV = Arg1
                                    Notify (\_SB.TZ51, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ51._PSV ())
                            }
                            ElseIf ((_T_L == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TTSP = Arg1
                                    Notify (\_SB.TZ51, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ51._TSP ())
                            }
                            ElseIf ((_T_L == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TTC1 = Arg1
                                    Notify (\_SB.TZ51, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ51._TC1 ())
                            }
                            ElseIf ((_T_L == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ51.TTC2 = Arg1
                                    Notify (\_SB.TZ51, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ51._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x34))
                    {
                        While (One)
                        {
                            Name (_T_M, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_M = ToInteger (Arg3)
                            If ((_T_M == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TPSV = Arg1
                                    Notify (\_SB.TZ52, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ52._PSV ())
                            }
                            ElseIf ((_T_M == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TTSP = Arg1
                                    Notify (\_SB.TZ52, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ52._TSP ())
                            }
                            ElseIf ((_T_M == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TTC1 = Arg1
                                    Notify (\_SB.TZ52, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ52._TC1 ())
                            }
                            ElseIf ((_T_M == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ52.TTC2 = Arg1
                                    Notify (\_SB.TZ52, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ52._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x35))
                    {
                        While (One)
                        {
                            Name (_T_N, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_N = ToInteger (Arg3)
                            If ((_T_N == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ53.TPSV = Arg1
                                    Notify (\_SB.TZ53, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ53._PSV) /* External reference */
                            }
                            ElseIf ((_T_N == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ53.TTSP = Arg1
                                    Notify (\_SB.TZ53, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ53._TSP) /* External reference */
                            }
                            ElseIf ((_T_N == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ53.TTC1 = Arg1
                                    Notify (\_SB.TZ53, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ53._TC1) /* External reference */
                            }
                            ElseIf ((_T_N == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ53.TTC2 = Arg1
                                    Notify (\_SB.TZ53, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ53._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x36))
                    {
                        While (One)
                        {
                            Name (_T_O, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_O = ToInteger (Arg3)
                            If ((_T_O == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ54.TPSV = Arg1
                                    Notify (\_SB.TZ54, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ54._PSV) /* External reference */
                            }
                            ElseIf ((_T_O == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ54.TTSP = Arg1
                                    Notify (\_SB.TZ54, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ54._TSP) /* External reference */
                            }
                            ElseIf ((_T_O == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ54.TTC1 = Arg1
                                    Notify (\_SB.TZ54, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ54._TC1) /* External reference */
                            }
                            ElseIf ((_T_O == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ54.TTC2 = Arg1
                                    Notify (\_SB.TZ54, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ54._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x37))
                    {
                        While (One)
                        {
                            Name (_T_P, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_P = ToInteger (Arg3)
                            If ((_T_P == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ55.TPSV = Arg1
                                    Notify (\_SB.TZ55, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ55._PSV) /* External reference */
                            }
                            ElseIf ((_T_P == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ55.TTSP = Arg1
                                    Notify (\_SB.TZ55, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ55._TSP) /* External reference */
                            }
                            ElseIf ((_T_P == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ55.TTC1 = Arg1
                                    Notify (\_SB.TZ55, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ55._TC1) /* External reference */
                            }
                            ElseIf ((_T_P == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ55.TTC2 = Arg1
                                    Notify (\_SB.TZ55, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ55._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x38))
                    {
                        While (One)
                        {
                            Name (_T_Q, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_Q = ToInteger (Arg3)
                            If ((_T_Q == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ56.TPSV = Arg1
                                    Notify (\_SB.TZ56, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ56._PSV) /* External reference */
                            }
                            ElseIf ((_T_Q == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ56.TTSP = Arg1
                                    Notify (\_SB.TZ56, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ56._TSP) /* External reference */
                            }
                            ElseIf ((_T_Q == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ56.TTC1 = Arg1
                                    Notify (\_SB.TZ56, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ56._TC1) /* External reference */
                            }
                            ElseIf ((_T_Q == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ56.TTC2 = Arg1
                                    Notify (\_SB.TZ56, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ56._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x39))
                    {
                        While (One)
                        {
                            Name (_T_R, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_R = ToInteger (Arg3)
                            If ((_T_R == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ57.TPSV = Arg1
                                    Notify (\_SB.TZ57, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ57._PSV ())
                            }
                            ElseIf ((_T_R == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ57.TTSP = Arg1
                                    Notify (\_SB.TZ57, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ57._TSP ())
                            }
                            ElseIf ((_T_R == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ57.TTC1 = Arg1
                                    Notify (\_SB.TZ57, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ57._TC1 ())
                            }
                            ElseIf ((_T_R == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ57.TTC2 = Arg1
                                    Notify (\_SB.TZ57, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ57._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x3A))
                    {
                        While (One)
                        {
                            Name (_T_S, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_S = ToInteger (Arg3)
                            If ((_T_S == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TPSV = Arg1
                                    Notify (\_SB.TZ58, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ58._PSV ())
                            }
                            ElseIf ((_T_S == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TTSP = Arg1
                                    Notify (\_SB.TZ58, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ58._TSP ())
                            }
                            ElseIf ((_T_S == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TTC1 = Arg1
                                    Notify (\_SB.TZ58, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ58._TC1 ())
                            }
                            ElseIf ((_T_S == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ58.TTC2 = Arg1
                                    Notify (\_SB.TZ58, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ58._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x3B))
                    {
                        While (One)
                        {
                            Name (_T_T, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_T = ToInteger (Arg3)
                            If ((_T_T == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TPSV = Arg1
                                    Notify (\_SB.TZ59, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ59._PSV ())
                            }
                            ElseIf ((_T_T == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TTSP = Arg1
                                    Notify (\_SB.TZ59, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ59._TSP ())
                            }
                            ElseIf ((_T_T == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TTC1 = Arg1
                                    Notify (\_SB.TZ59, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ59._TC1 ())
                            }
                            ElseIf ((_T_T == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ59.TTC2 = Arg1
                                    Notify (\_SB.TZ59, 0x81) // Thermal Trip Point Change
                                }

                                Return (\_SB.TZ59._TC2 ())
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x3C))
                    {
                        While (One)
                        {
                            Name (_T_U, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_U = ToInteger (Arg3)
                            If ((_T_U == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ60.TPSV = Arg1
                                    Notify (\_SB.TZ60, 0x81) // Information Change
                                }

                                Return (\_SB.TZ60._PSV) /* External reference */
                            }
                            ElseIf ((_T_U == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ60.TTSP = Arg1
                                    Notify (\_SB.TZ60, 0x81) // Information Change
                                }

                                Return (\_SB.TZ60._TSP) /* External reference */
                            }
                            ElseIf ((_T_U == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ60.TTC1 = Arg1
                                    Notify (\_SB.TZ60, 0x81) // Information Change
                                }

                                Return (\_SB.TZ60._TC1) /* External reference */
                            }
                            ElseIf ((_T_U == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ60.TTC2 = Arg1
                                    Notify (\_SB.TZ60, 0x81) // Information Change
                                }

                                Return (\_SB.TZ60._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x3D))
                    {
                        While (One)
                        {
                            Name (_T_V, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_V = ToInteger (Arg3)
                            If ((_T_V == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TPSV = Arg1
                                    Notify (\_SB.TZ61, 0x81) // Information Change
                                }

                                Return (\_SB.TZ61._PSV) /* External reference */
                            }
                            ElseIf ((_T_V == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TTSP = Arg1
                                    Notify (\_SB.TZ61, 0x81) // Information Change
                                }

                                Return (\_SB.TZ61._TSP) /* External reference */
                            }
                            ElseIf ((_T_V == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TTC1 = Arg1
                                    Notify (\_SB.TZ61, 0x81) // Information Change
                                }

                                Return (\_SB.TZ61._TC1) /* External reference */
                            }
                            ElseIf ((_T_V == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ61.TTC2 = Arg1
                                    Notify (\_SB.TZ61, 0x81) // Information Change
                                }

                                Return (\_SB.TZ61._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == 0x3E))
                    {
                        While (One)
                        {
                            Name (_T_W, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_W = ToInteger (Arg3)
                            If ((_T_W == Zero))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ62.TPSV = Arg1
                                    Notify (\_SB.TZ62, 0x81) // Information Change
                                }

                                Return (\_SB.TZ62._PSV) /* External reference */
                            }
                            ElseIf ((_T_W == 0x02))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ62.TTSP = Arg1
                                    Notify (\_SB.TZ62, 0x81) // Information Change
                                }

                                Return (\_SB.TZ62._TSP) /* External reference */
                            }
                            ElseIf ((_T_W == 0x03))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ62.TTC1 = Arg1
                                    Notify (\_SB.TZ62, 0x81) // Information Change
                                }

                                Return (\_SB.TZ62._TC1) /* External reference */
                            }
                            ElseIf ((_T_W == 0x04))
                            {
                                If (Arg2)
                                {
                                    \_SB.TZ62.TTC2 = Arg1
                                    Notify (\_SB.TZ62, 0x81) // Information Change
                                }

                                Return (\_SB.TZ62._TC2) /* External reference */
                            }
                            Else
                            {
                                Return (0xFFFF)
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (0xFFFF)
                    }

                    Break
                }
            }

            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPCC
            })
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((\_SB.PSUB == "IDP07280"))
                {
                    Return ("IDP07280")
                }
                ElseIf ((\_SB.PSUB == "CRD07280"))
                {
                    Return ("CRD07280")
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.PEP0._DSM._T_0 */
                    If ((_T_0 == ToUUID ("8d5ca34c-ae83-4a2a-9dd1-a74ffead548b") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = ToInteger (Arg1)
                                    If ((_T_2 == Zero))
                                    {
                                        Return (0x7E)
                                    }

                                    Break
                                }

                                Return (Zero)
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Name (SUBI, Package (0x06)
                                {
                                    Package (0x03)
                                    {
                                        "adsp", 
                                        One, 
                                        0x02
                                    }, 

                                    Package (0x03)
                                    {
                                        "slpi", 
                                        Zero, 
                                        0x03
                                    }, 

                                    Package (0x03)
                                    {
                                        "cdsp", 
                                        One, 
                                        0x04
                                    }, 

                                    Package (0x03)
                                    {
                                        "modem", 
                                        One, 
                                        0x05
                                    }, 

                                    Package (0x03)
                                    {
                                        "spss", 
                                        Zero, 
                                        0x06
                                    }, 

                                    Package (0x03)
                                    {
                                        "wpss", 
                                        One, 
                                        0x07
                                    }
                                })
                                Return (SUBI) /* \_SB_.PEP0._DSM.SUBI */
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                If (CondRefOf (\_SB.ADSP))
                                {
                                    If (CondRefOf (\_SB.ADSP._STA))
                                    {
                                        Return (\_SB.ADSP._STA ())
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf ((_T_1 == 0x03))
                            {
                                If (CondRefOf (\_SB.SCSS))
                                {
                                    If (CondRefOf (\_SB.SCSS._STA))
                                    {
                                        Return (\_SB.SCSS._STA) /* External reference */
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf ((_T_1 == 0x04))
                            {
                                If (CondRefOf (\_SB.NSP0))
                                {
                                    If (CondRefOf (\_SB.NSP0._STA))
                                    {
                                        Return (\_SB.NSP0._STA ())
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf ((_T_1 == 0x05))
                            {
                                If (CondRefOf (\_SB.AMSS))
                                {
                                    If (CondRefOf (\_SB.AMSS._STA))
                                    {
                                        Return (\_SB.AMSS._STA ())
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf ((_T_1 == 0x06))
                            {
                                If (CondRefOf (\_SB.SPSS))
                                {
                                    If (CondRefOf (\_SB.SPSS._STA))
                                    {
                                        Return (\_SB.SPSS._STA) /* External reference */
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf ((_T_1 == 0x07))
                            {
                                If (CondRefOf (\_SB.WPSS))
                                {
                                    If (CondRefOf (\_SB.WPSS._STA))
                                    {
                                        Return (\_SB.WPSS._STA ())
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021A,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021C,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021B,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021D,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000025,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000003E,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000003F,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000033,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000265,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000010D,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000113,
                    }
                })
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0001, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x15)), 
                FLD0,   168
            }

            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04){})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = One
                Return (DATA) /* \_SB_.PEP0.GEPT.DATA */
            }

            Name (ROST, Zero)
            Method (NPUR, 1, NotSerialized)
            {
                \_SB.AGR0._PUR [One] = Arg0
                Notify (\_SB.AGR0, 0x80) // Status Change
            }

            Method (INTR, 0, NotSerialized)
            {
                Name (RBUF, Package (0x18)
                {
                    0x02, 
                    One, 
                    0x03, 
                    One, 
                    0x06, 
                    0x17911008, 
                    One, 
                    Zero, 
                    0x86000000, 
                    0x00200000, 
                    Zero, 
                    Zero, 
                    0x0C300000, 
                    0x1000, 
                    Zero, 
                    Zero, 
                    0x01FD4000, 
                    0x08, 
                    Zero, 
                    Zero, 
                    0x17C0000C, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Return (RBUF) /* \_SB_.PEP0.INTR.RBUF */
            }

            Method (STND, 0, NotSerialized)
            {
                Return (STNX) /* \_SB_.PEP0.STNX */
            }

            Name (STNX, Package (0x0B)
            {
                "DMPO", 
                "MMVD", 
                "DMSB", 
                "DMPA", 
                "DMPB", 
                "DMDS", 
                "DMPL", 
                "DMWE", 
                "XMPL", 
                "XMPT", 
                "DMEP"
            })
            Name (DCVS, Zero)
            Method (PGDS, 0, NotSerialized)
            {
                Return (DCVS) /* \_SB_.PEP0.DCVS */
            }

            Name (PPPP, Package (0x37)
            {
                Package (0x01)
                {
                    "PPP_RESOURCE_ID_SMPS1_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_SMPS2_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_SMPS7_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_SMPS8_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_SMPS1_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_SMPS9_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO1_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO2_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO3_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO6_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO7_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO8_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO9_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO11_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO12_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO13_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO14_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO15_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO16_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO17_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO18_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO19_B"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO1_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO2_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO3_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO4_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO5_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO6_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO7_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO8_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO9_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO10_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO11_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO12_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO13_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO1_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO2_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO3_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO4_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO5_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO6_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO7_P"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO1_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO2_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO3_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO4_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO5_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO6_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_LDO7_Q"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_FIXED_VREG1"
                }, 

                Package (0x01)
                {
                    "PPP_RESOURCE_ID_FIXED_VREG2"
                }
            })
            Method (PPPM, 0, NotSerialized)
            {
                Return (PPPP) /* \_SB_.PEP0.PPPP */
            }

            Name (PRRP, Package (0x00){})
            Method (PPRR, 0, NotSerialized)
            {
                Return (PRRP) /* \_SB_.PEP0.PRRP */
            }

            Name (FPDP, Zero)
            Method (FPMD, 0, NotSerialized)
            {
                Return (FPDP) /* \_SB_.PEP0.FPDP */
            }

            Method (DPRF, 0, NotSerialized)
            {
                Return (\_SB.DPP0) /* External reference */
            }

            Method (DMRF, 0, NotSerialized)
            {
                Return (\_SB.DPP1) /* External reference */
            }

            Method (MPRF, 0, NotSerialized)
            {
                Return (\_SB.MPP0) /* External reference */
            }

            Method (MMRF, 0, NotSerialized)
            {
                Return (\_SB.MPP1) /* External reference */
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (PREL, 0, NotSerialized)
            {
                Name (PREX, Package (0x03)
                {
                    "DM0G", 
                    "DM4G", 
                    "DM5G"
                })
                Return (PREX) /* \_SB_.PEP0.PREL.PREX */
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (PEPH, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    "ACPI\\VEN_QCOM&DEV_0A17"
                })
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (APMD, 0, NotSerialized)
            {
                Return (APCC) /* \_SB_.PEP0.APCC */
            }

            Name (APCC, Package (0x01)
            {
                Package (0x06)
                {
                    "DEVICE", 
                    "\\_SB.ADSP.ADCM.AUCD.QCRT", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x03)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_xo", 
                                0x80
                            }
                        }
                    }, 

                    Package (0x03)
                    {
                        "DSTATE", 
                        One, 
                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_xo", 
                                Zero
                            }
                        }
                    }, 

                    Package (0x03)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_xo", 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (G0MD, 0, NotSerialized)
            {
                Name (GPCC, Package (0x01)
                {
                    Package (0x04)
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 
                        Package (0x0C)
                        {
                            "COMPONENT", 
                            Zero, 
                            Package (0x03)
                            {
                                "FSTATE", 
                                Zero, 
                                Package (0x1B)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_xo_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_xo_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "dsi_phy_refgen_en", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x03)
                                        {
                                            "disp_cc_mdss_core_gdsc", 
                                            One, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_pclk0_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_esc0_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_byte0_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_byte0_intf_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            0x03, 
                                            0x16A65700, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO6_B", 
                                            One, 
                                            0x00124F80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO10_C", 
                                            One, 
                                            0x000D6D80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO8_C", 
                                            One, 
                                            0x001B7740, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO12_C", 
                                            One, 
                                            0x001B7740, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "TLMMGPIO", 
                                        Package (0x06)
                                        {
                                            0x50, 
                                            One, 
                                            One, 
                                            Zero, 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "TLMMGPIO", 
                                        Package (0x06)
                                        {
                                            0x51, 
                                            One, 
                                            Zero, 
                                            One, 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICGPIO", 
                                        Package (0x08)
                                        {
                                            "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT", 
                                            0x02, 
                                            0x07, 
                                            Zero, 
                                            Zero, 
                                            0x02, 
                                            One, 
                                            0x04
                                        }
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                One, 
                                Package (0x0D)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_pclk0_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_esc0_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_byte0_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_byte0_intf_clk", 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x02, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            0x03, 
                                            0x16A65700, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x03, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            Zero, 
                                            0x77359400
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x04, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x05, 
                                Package (0x07)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_ahb_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_xo_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_ahb_clk", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_xo_clk", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return (GPCC) /* \_SB_.PEP0.G0MD.GPCC */
            }

            Method (G4MD, 0, NotSerialized)
            {
                Name (GPCC, Package (0x01)
                {
                    Package (0x04)
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 
                        Package (0x0B)
                        {
                            "COMPONENT", 
                            0x04, 
                            Package (0x03)
                            {
                                "FSTATE", 
                                Zero, 
                                Package (0x16)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_xo_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_xo_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x03)
                                        {
                                            "disp_cc_mdss_core_gdsc", 
                                            One, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_aux_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_pixel_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_link_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_link_intf_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            0x03, 
                                            0x16A65700, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x03)
                                    {
                                        "TLMMGPIO_V2", 
                                        One, 
                                        Package (0x06)
                                        {
                                            0x3C, 
                                            Zero, 
                                            One, 
                                            Zero, 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO10_C", 
                                            One, 
                                            0x000D6D80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO6_B", 
                                            One, 
                                            0x00124F80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                One, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            0x03, 
                                            0x16A65700, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x02, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            Zero, 
                                            0x77359400
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x03, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x04, 
                                Package (0x06)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_aux_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_pixel_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_link_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_edp_link_intf_clk", 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return (GPCC) /* \_SB_.PEP0.G4MD.GPCC */
            }

            Method (G5MD, 0, NotSerialized)
            {
                Name (GPCC, Package (0x01)
                {
                    Package (0x04)
                    {
                        "DEVICE", 
                        0x82, 
                        "\\_SB.GPU0", 
                        Package (0x0B)
                        {
                            "COMPONENT", 
                            0x05, 
                            Package (0x03)
                            {
                                "FSTATE", 
                                Zero, 
                                Package (0x1C)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_xo_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_xo_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x03)
                                        {
                                            "disp_cc_mdss_core_gdsc", 
                                            One, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_disp_hf_axi_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_usb3_prim_phy_pipe_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_usb30_prim_sleep_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_usb3_prim_phy_aux_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "gcc_usb3_prim_phy_com_aux_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_ahb_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_vsync_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_aux_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_pixel_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_link_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_link_intf_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            0x03, 
                                            0x16A65700, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO6_B", 
                                            One, 
                                            0x00124F80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO1_B", 
                                            One, 
                                            0x000D6D80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO1_C", 
                                            One, 
                                            0x001B7740, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO2_B", 
                                            One, 
                                            0x002EE000, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x08)
                                        {
                                            "PPP_RESOURCE_ID_LDO10_C", 
                                            One, 
                                            0x000D6D80, 
                                            One, 
                                            0x07, 
                                            Zero, 
                                            "HLOS_DRV", 
                                            "REQUIRED"
                                        }
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                One, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "disp_cc_mdss_mdp_clk", 
                                            0x03, 
                                            0x16A65700, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x047868C0, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x02, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            Zero, 
                                            0x77359400
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            0x77359400
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x03, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP0", 
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE_SET", 
                                0x04, 
                                Package (0x06)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_aux_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_pixel_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_link_clk", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x02)
                                        {
                                            "disp_cc_mdss_dp_link_intf_clk", 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return (GPCC) /* \_SB_.PEP0.G5MD.GPCC */
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (MPMD, 0, NotSerialized)
            {
                Return (MPCC) /* \_SB_.PEP0.MPCC */
            }

            Name (MPCC, Package (0x00){})
        }

        Scope (\_SB.PEP0)
        {
            Method (OPMD, 0, NotSerialized)
            {
                Return (OPCC) /* \_SB_.PEP0.OPCC */
            }

            Name (OPCC, Package (0x00){})
        }

        Scope (\_SB.PEP0)
        {
            Method (LPMD, 0, NotSerialized)
            {
                Return (LPCC) /* \_SB_.PEP0.LPCC */
            }

            Name (LPCC, Package (0x05)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.URS0", 
                    Package (0x05)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            One
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package (0x08)
                {
                    "DEVICE", 
                    "\\_SB.URS0.USB0", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                0x0100
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x28000000, 
                                0x28000000
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x0BEBC200, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        One, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x14)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }, 

                Package (0x08)
                {
                    "DEVICE", 
                    "\\_SB.USB0", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                0x0100
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x28000000, 
                                0x28000000
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x0BEBC200, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        One, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x14)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }, 

                Package (0x08)
                {
                    "DEVICE", 
                    "\\_SB.URS0.UFN0", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x08, 
                                0xC8, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                0x0100
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                0x28000000, 
                                0x28000000
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                0x0BEBC200, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x13)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                0x000DEA80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x14)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_sleep_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB3_0", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB3_0", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_prim_gdsc", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }, 

                Package (0x08)
                {
                    "DEVICE", 
                    "\\_SB.USB1", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x0E)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_sleep_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_aggre_usb3_sec_axi_clk", 
                                0x08, 
                                0x78, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk", 
                                0x08, 
                                0x78, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x08, 
                                0x78, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_sec_mock_utmi_clk", 
                                0x08, 
                                0x4B00, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB2", 
                                "ICBID_SLAVE_EBI1", 
                                0x03938700, 
                                0x03938700
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB2", 
                                0x0BEBC200, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                0x0100
                            }
                        }
                    }, 

                    Package (0x0E)
                    {
                        "DSTATE", 
                        One, 
                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x03, 
                                0x2580, 
                                0x05
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_sec_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB2", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB2", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x0E)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_sec_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB2", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB2", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                0x002EE000, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x0F)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_sleep_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_usb3_sec_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x03, 
                                0x00927C00, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_master_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_mock_utmi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_USB2", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB2", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_usb30_sec_gdsc", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_cx", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO2_B", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO1_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x04, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (BPMD, 0, NotSerialized)
            {
                If ((STOR == One))
                {
                    If ((PUS3 == One))
                    {
                        Return (CPCC) /* \_SB_.PEP0.CPCC */
                    }
                    Else
                    {
                        Return (BPCC) /* \_SB_.PEP0.BPCC */
                    }
                }
                ElseIf ((STOR == 0x02))
                {
                    Return (DPCC) /* \_SB_.PEP0.DPCC */
                }
                Else
                {
                    Return (FPCC) /* \_SB_.PEP0.FPCC */
                }
            }

            Method (SDMD, 0, NotSerialized)
            {
                Return (SDCC) /* \_SB_.PEP0.SDCC */
            }

            Name (BPCC, Package (0x01)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.UFS0", 
                    Package (0x07)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x05)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    0x02, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    0x02, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    One, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    One
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "FOOTSWITCH", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_gdsc", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "FOOTSWITCH", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_gdsc", 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x0D)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_ufs_phy_axi_clk", 
                                        0x08, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_ufs_phy_unipro_core_clk", 
                                        0x08, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x03)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        0x09, 
                                        0x12
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        0x03, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_aggre_ufs_phy_axi_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ahb_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_phy_aux_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_tx_symbol_0_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_0_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_1_clk", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x0B)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_aggre_ufs_phy_axi_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ahb_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_phy_aux_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_tx_symbol_0_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_0_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_1_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_unipro_core_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_axi_clk", 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_UFS_MEM", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x47868C00, 
                                        0x47868C00
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_APPSS_PROC", 
                                        "ICBID_SLAVE_UFS_MEM_CFG", 
                                        0x11D260C0, 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_APPSS_PROC", 
                                        "ICBID_SLAVE_UFS_MEM_CFG", 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_UFS_MEM", 
                                        "ICBID_SLAVE_EBI1", 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }
                        }
                    }, 

                    Package (0x0A)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO7_B", 
                                One, 
                                0x002C4FC0, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO9_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x23
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x09)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO9_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO7_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                One
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_EXCEPTION", 
                        Package (0x02)
                        {
                            "EXECUTE_FUNCTION", 
                            Package (0x01)
                            {
                                "ExecuteOcdEMMCExceptions"
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_DSTATE", 
                        Zero
                    }
                }
            })
            Name (CPCC, Package (0x01)
            {
                Package (0x06)
                {
                    "DEVICE", 
                    "\\_SB.UFS0", 
                    Package (0x07)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x05)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    0x02, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    0x02, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    One, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    One
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "FOOTSWITCH", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_gdsc", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "FOOTSWITCH", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_gdsc", 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x0D)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_ufs_phy_axi_clk", 
                                        0x08, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_ufs_phy_unipro_core_clk", 
                                        0x08, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x03)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        0x09, 
                                        0x12
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        0x03, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_aggre_ufs_phy_axi_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ahb_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_phy_aux_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_tx_symbol_0_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_0_clk", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_1_clk", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x0B)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_aggre_ufs_phy_axi_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ahb_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_phy_aux_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_tx_symbol_0_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_0_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_rx_symbol_1_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_ice_core_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_unipro_core_clk", 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_ufs_phy_axi_clk", 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_UFS_MEM", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x8F0D1800, 
                                        0x8F0D1800
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_APPSS_PROC", 
                                        "ICBID_SLAVE_UFS_MEM_CFG", 
                                        0x11D260C0, 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_APPSS_PROC", 
                                        "ICBID_SLAVE_UFS_MEM_CFG", 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_UFS_MEM", 
                                        "ICBID_SLAVE_EBI1", 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }
                        }
                    }, 

                    Package (0x0A)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO7_B", 
                                One, 
                                0x00263540, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO9_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x07, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x23
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x09)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO9_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO7_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                One
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_DSTATE", 
                        Zero
                    }
                }
            })
            Name (FPCC, Package (0x01)
            {
                Package (0x06)
                {
                    "DEVICE", 
                    "\\_SB.UFS0", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }, 

                    Package (0x02)
                    {
                        "PRELOAD_DSTATE", 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO9_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO7_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }
                }
            })
            Name (DPCC, Package (0x01)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.SDC1", 
                    Package (0x0A)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }, 

                        Package (0x1A)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x04, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x05, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x06, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x07, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x08, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x09, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0A, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0B, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0C, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0D, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0E, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0F, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x10, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x11, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x12, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x13, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x14, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x15, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x16, 
                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO7_B", 
                                        One, 
                                        0x002D2A80, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO19_B", 
                                        One, 
                                        0x001B7740, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x17, 
                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO7_B", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }
                            }
                        }, 

                        Package (0x0A)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x00061A80, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x01312D00, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x017D7840, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x04, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x02FAF080, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x05, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x05F5E100, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x06, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x0B71B000, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x07, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_apps_clk", 
                                        0x08, 
                                        0x16E36000, 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x07)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_1", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x2FAF0800, 
                                        0x17D78400
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_1", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x17D78400, 
                                        0x0BEBC200
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_1", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x0BEBC200, 
                                        0x05F5E100
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_1", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x02625A00, 
                                        0x01312D00
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x04, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_1", 
                                        "ICBID_SLAVE_EBI1", 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x03, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        One, 
                                        0x07
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        0x02, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        0x05, 
                                        0x03
                                    }
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        One, 
                                        0x05
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        0x02, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        0x05, 
                                        One
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x04, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc1_ahb_clk", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc1_ahb_clk", 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x06)
                        {
                            "PSTATE_SET", 
                            0x05, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc1_ice_core_clk", 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_ice_core_clk", 
                                        0x08, 
                                        0x05F5E100, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_ice_core_clk", 
                                        0x08, 
                                        0x08F0D180, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc1_ice_core_clk", 
                                        0x08, 
                                        0x11E1A300, 
                                        0x02
                                    }
                                }
                            }
                        }
                    }, 

                    Package (0x0A)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x001B3000, 
                                0x0001FFFF, 
                                0x1FE4
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x001B3004, 
                                0x0001FFFF, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x05, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x01)
                        {
                            "PSTATE_RESTORE"
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                0x16
                            }
                        }
                    }, 

                    Package (0x09)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x01)
                        {
                            "PSTATE_SAVE"
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x05, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x04, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x001B3000, 
                                0x0001FFFF, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x001B3004, 
                                0x0001FFFF, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_EXCEPTION", 
                        Package (0x02)
                        {
                            "EXECUTE_FUNCTION", 
                            Package (0x01)
                            {
                                "ExecuteOcdEMMCExceptions"
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_DSTATE", 
                        Zero
                    }
                }
            })
            Name (SDCC, Package (0x01)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.SDC2", 
                    Package (0x09)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }, 

                        Package (0x19)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x04, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x05, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x06, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x07, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x08, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x09, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0B, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0C, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0D, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0E, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0F, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x10, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x11, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x12, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x13, 
                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        One
                                    }
                                }
                            }, 

                            Package (0x08)
                            {
                                "PSTATE", 
                                0x14, 
                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        One, 
                                        0x002D2A80, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        One, 
                                        0x002D0370, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x15, 
                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        One, 
                                        0x001B7740, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x16, 
                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        One, 
                                        0x002D2A80, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        One, 
                                        0x002D0370, 
                                        One, 
                                        0x07, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x17, 
                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x06)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "DELAY", 
                                    Package (0x01)
                                    {
                                        0x23
                                    }
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc2_apps_clk", 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc2_apps_clk", 
                                        0x08, 
                                        0x05F5E100, 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_sdcc2_apps_clk", 
                                        0x08, 
                                        0x0C0A4680, 
                                        0x02
                                    }
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_2", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x17D78400, 
                                        0x0BEBC200
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_2", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x0BEBC200, 
                                        0x05F5E100
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_SDCC_2", 
                                        "ICBID_SLAVE_EBI1", 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x03, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        One, 
                                        0x02
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        0x02, 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        One, 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PSTATE_ADJUST", 
                                    Package (0x02)
                                    {
                                        0x02, 
                                        One
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x04, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc2_ahb_clk", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x02)
                                    {
                                        "gcc_sdcc2_ahb_clk", 
                                        0x02
                                    }
                                }
                            }
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                0x16
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x001B4000, 
                                0x7FFF, 
                                0x1FE4
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x04, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                0x02
                            }
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x04, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                0x02, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x001B4000, 
                                0x7FFF, 
                                0x0A00
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                0x17
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_EXCEPTION", 
                        Package (0x02)
                        {
                            "EXECUTE_FUNCTION", 
                            Package (0x01)
                            {
                                "ExecuteOcdSdCardExceptions"
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_DSTATE", 
                        Zero
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (EWMD, 0, NotSerialized)
            {
                Return (WBRC) /* \_SB_.PEP0.WBRC */
            }

            Name (WBRC, Package (0x01)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.WPSS.QWLN", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x06)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_xo", 
                                0x80
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS1_B", 
                                0x02, 
                                0x001C9080, 
                                One, 
                                0x06, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS7_B", 
                                0x02, 
                                0x000E86C0, 
                                One, 
                                0x06, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS8_B", 
                                0x02, 
                                0x00132A40, 
                                One, 
                                0x06, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x06)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_xo", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS1_B", 
                                0x02, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS7_B", 
                                0x02, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS8_B", 
                                0x02, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x06)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "NPARESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/arc/client/rail_xo", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS1_B", 
                                0x02, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS7_B", 
                                0x02, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_SMPS8_B", 
                                0x02, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "ABANDON_DSTATE", 
                        0x02
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (PEMD, 0, NotSerialized)
            {
                If ((SKUV == One))
                {
                    Return (PEMC) /* \_SB_.PEP0.PEMC */
                }
                Else
                {
                    Return (PEMX) /* \_SB_.PEP0.PEMX */
                }
            }

            Name (PEMC, Package (0x02)
            {
                Package (0x09)
                {
                    "DEVICE", 
                    "\\_SB.PCI1", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }, 

                    Package (0x18)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x07)
                            {
                                0x13, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x64
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_PCIE_1_CFG", 
                                0x047868C0, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_PCIE_1", 
                                "ICBID_SLAVE_EBI1", 
                                0xB2D05E00, 
                                0xB2D05E00
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x09)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                0x06, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_center_sf_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_aux_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_q2a_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_ddrss_pcie_sf_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_throttle_core_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_throttle_pcie_ahb_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_mstr_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_1_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_cfg_ahb_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_pcie_1_aux_clk", 
                                0x08, 
                                0x0124F800, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_pcie1_phy_rchng_clk", 
                                0x08, 
                                0x05F5E100, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x07)
                            {
                                0x4F, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x03, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x16)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_q2a_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_mstr_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_throttle_core_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_throttle_pcie_ahb_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_ddrss_pcie_sf_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_1_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_cfg_ahb_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie1_phy_rchng_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_center_sf_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x09)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                0x06, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_PCIE_1_CFG", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_PCIE_1", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_gdsc", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x07)
                            {
                                0x13, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x64
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_EXCEPTION", 
                        Package (0x02)
                        {
                            "EXECUTE_FUNCTION", 
                            Package (0x01)
                            {
                                "ExecuteOcdPCIeExceptions"
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_DSTATE", 
                        Zero
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.PCI1.RP1", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }
            })
            Name (PEMX, Package (0x02)
            {
                Package (0x09)
                {
                    "DEVICE", 
                    "\\_SB.PCI1", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }, 

                    Package (0x18)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x07)
                            {
                                0x33, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x64
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                0x00124F80, 
                                One, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                0x000D6D80, 
                                One, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_gdsc", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_PCIE_1_CFG", 
                                0x047868C0, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_PCIE_1", 
                                "ICBID_SLAVE_EBI1", 
                                0xB2D05E00, 
                                0xB2D05E00
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x09)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                0x06, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_center_sf_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_aux_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_q2a_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_ddrss_pcie_sf_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_throttle_core_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_throttle_pcie_ahb_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_mstr_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_1_axi_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_cfg_ahb_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_pcie_1_aux_clk", 
                                0x08, 
                                0x0124F800, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_pcie1_phy_rchng_clk", 
                                0x08, 
                                0x05F5E100, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x07)
                            {
                                0x4F, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x03, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x16)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_aux_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_slv_q2a_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_mstr_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_throttle_core_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_throttle_pcie_ahb_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_ddrss_pcie_sf_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_1_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_cfg_ahb_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie1_phy_rchng_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_aggre_noc_pcie_center_sf_axi_clk", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x09)
                            {
                                "gcc_pcie_1_pipe_clk", 
                                0x06, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_APPSS_PROC", 
                                "ICBID_SLAVE_PCIE_1_CFG", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_PCIE_1", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "gcc_pcie_1_gdsc", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO10_C", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO6_B", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x07)
                            {
                                0x33, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x64
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_EXCEPTION", 
                        Package (0x02)
                        {
                            "EXECUTE_FUNCTION", 
                            Package (0x01)
                            {
                                "ExecuteOcdPCIeExceptions"
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "CRASHDUMP_DSTATE", 
                        Zero
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.PCI1.RP1", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (LPMX, 0, NotSerialized)
            {
                Return (LPXC) /* \_SB_.PEP0.LPXC */
            }

            Name (LPXC, Package (0x01)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.TSC1", 
                    Package (0x07)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x08)
                            {
                                "PPP_RESOURCE_ID_LDO2_C", 
                                One, 
                                0x001B7740, 
                                One, 
                                0x07, 
                                Zero, 
                                "HLOS_DRV", 
                                "REQUIRED"
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x08)
                            {
                                "PPP_RESOURCE_ID_LDO7_C", 
                                One, 
                                0x00325AA0, 
                                One, 
                                0x07, 
                                Zero, 
                                "HLOS_DRV", 
                                "REQUIRED"
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x69, 
                                One, 
                                Zero, 
                                One, 
                                0x03, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x64
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x51, 
                                One, 
                                Zero, 
                                Zero, 
                                0x03, 
                                0x03
                            }
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x08)
                            {
                                "PPP_RESOURCE_ID_LDO2_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                "HLOS_DRV", 
                                "REQUIRED"
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x08)
                            {
                                "PPP_RESOURCE_ID_LDO7_C", 
                                One, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                "HLOS_DRV", 
                                "REQUIRED"
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x51, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x0A
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x69, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Device (BAM1)
        {
            Name (_HID, "QCOM0A0A")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01DC4000,         // Address Base
                        0x00024000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000130,
                    }
                })
                Return (RBUF) /* \_SB_.BAM1._CRS.RBUF */
            }
        }

        Device (BAM5)
        {
            Name (_HID, "QCOM0A0A")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x03A84000,         // Address Base
                        0x00032000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C4,
                    }
                })
                Return (RBUF) /* \_SB_.BAM5._CRS.RBUF */
            }
        }

        Device (BAME)
        {
            Name (_HID, "QCOM0A0A")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x0E)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x06064000,         // Address Base
                        0x00015000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C7,
                    }
                })
                Return (RBUF) /* \_SB_.BAME._CRS.RBUF */
            }
        }

        Device (BAMF)
        {
            Name (_HID, "QCOM0A0A")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x0F)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0A704000,         // Address Base
                        0x00017000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000A4,
                    }
                })
                Return (RBUF) /* \_SB_.BAMF._CRS.RBUF */
            }
        }

        Device (I2C2)
        {
            Name (_HID, "QCOM0A10")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.QGP0, 
                \_SB.MMU0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_0_SE_1,Shared"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00984000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000027A,
                    }
                })
                Return (RBUF) /* \_SB_.I2C2._CRS.RBUF */
            }
        }

        Device (I2C5)
        {
            Name (_HID, "QCOM0A10")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.QGP0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_0_SE_4"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00990000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000027D,
                    }
                })
                Return (RBUF) /* \_SB_.I2C5._CRS.RBUF */
            }
        }

        Device (UARD)
        {
            Name (_HID, "QCOM0A16")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_0_SE_5,DBG"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00994000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000027E,
                    }
                    GpioInt (Edge, ActiveLow, Exclusive, PullDown, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                })
                Return (RBUF) /* \_SB_.UARD._CRS.RBUF */
            }
        }

        Device (UAR8)
        {
            Name (_HID, "QCOM0A16")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x08)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_0_SE_7,4W,BT"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0099C000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000280,
                    }
                    GpioInt (Edge, ActiveLow, Exclusive, PullDown, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001F
                        }
                })
                Return (RBUF) /* \_SB_.UAR8._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (IC10)
        {
            Name (_HID, "QCOM0A10")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x0A)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_1_SE_1"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A84000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000182,
                    }
                })
                Return (RBUF) /* \_SB_.IC10._CRS.RBUF */
            }
        }

        Device (IC11)
        {
            Name (_HID, "QCOM0A10")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x0B)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_1_SE_2"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A88000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000183,
                    }
                })
                Return (RBUF) /* \_SB_.IC11._CRS.RBUF */
            }
        }

        Device (SP14)
        {
            Name (_HID, "QCOM0A0E")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, 0x0E)  // _UID: Unique ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.QGP1, 
                \_SB.MMU0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_STR, Unicode ("QUP_1_SE_5"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A94000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000186,
                    }
                })
                Return (RBUF) /* \_SB_.SP14._CRS.RBUF */
            }
        }

        Device (RPEN)
        {
            Name (_HID, "QCOM06E1")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (PILC)
        {
            Name (_HID, "QCOM06E0")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (CDI)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PILC, 
                \_SB.RPEN
            })
            Name (_HID, "QCOM0A2F")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (ADSP)
        {
            Name (_DEP, Package (0x09)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PILC, 
                \_SB.GLNK, 
                \_SB.IPC0, 
                \_SB.RPEN, 
                \_SB.SSDD, 
                \_SB.ARPC, 
                \_SB.TFTP, 
                \_SB.PDSR
            })
            Name (_HID, "QCOM0A1B")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000206,
                    }
                })
                Return (RBUF) /* \_SB_.ADSP._CRS.RBUF */
            }

            Device (SLM1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x03AC0000,         // Address Base
                            0x0002C000,         // Address Length
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x000000C3,
                        }
                    })
                    Return (RBUF) /* \_SB_.ADSP.SLM1._CRS.RBUF */
                }
            }

            Device (ADCM)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    \_SB.MMU0, 
                    \_SB.IMM0
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (CHLD, 0, NotSerialized)
                {
                    Return (Package (0x01)
                    {
                        "ADCM\\QCOM0AC1"
                    })
                }

                Device (AUCD)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((SKUV == 0x05))
                        {
                            Name (RBUF, ResourceTemplate ()
                            {
                                GpioIo (Exclusive, PullNone, 0x0000, 0x0640, IoRestrictionNone,
                                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                    )
                                    {   // Pin list
                                        0x0053
                                    }
                                GpioIo (Exclusive, PullNone, 0x0000, 0x0640, IoRestrictionNone,
                                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                    )
                                    {   // Pin list
                                        0x003E
                                    }
                                GpioIo (Exclusive, PullNone, 0x0000, 0x0640, IoRestrictionNone,
                                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                    )
                                    {   // Pin list
                                        0x003F
                                    }
                                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000,
                                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                    )
                                    {   // Pin list
                                        0x0100
                                    }
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x00000210,
                                }
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x000000BB,
                                }
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x000000CA,
                                }
                            })
                            Return (RBUF) /* \_SB_.ADSP.ADCM.AUCD._CRS.RBUF */
                        }
                        Else
                        {
                            Name (DBUF, ResourceTemplate ()
                            {
                                GpioIo (Exclusive, PullNone, 0x0000, 0x0640, IoRestrictionNone,
                                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                    )
                                    {   // Pin list
                                        0x0053
                                    }
                                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000,
                                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                    )
                                    {   // Pin list
                                        0x0100
                                    }
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x00000210,
                                }
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x000000BB,
                                }
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x000000CA,
                                }
                            })
                            Return (DBUF) /* \_SB_.ADSP.ADCM.AUCD._CRS.DBUF */
                        }
                    }

                    Method (CHLD, 0, NotSerialized)
                    {
                        Name (CH, Package (0x01)
                        {
                            "AUCD\\QCOM0A29"
                        })
                        Return (CH) /* \_SB_.ADSP.ADCM.AUCD.CHLD.CH__ */
                    }

                    Device (QCRT)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }
            }
        }

        Device (AMSS)
        {
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_DEP, Package (0x09)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.GLNK, 
                \_SB.PILC, 
                \_SB.RFS0, 
                \_SB.RPEN, 
                \_SB.SSDD, 
                \_SB.IPC0, 
                \_SB.TFTP, 
                \_SB.PDSR
            })
            Name (_HID, "QCOM0A1C")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000128,
                    }
                })
                Return (RBUF) /* \_SB_.AMSS._CRS.RBUF */
            }
        }

        Device (QSM)
        {
            Name (_HID, "QCOM0A1E")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                \_SB.GLNK, 
                \_SB.IPC0, 
                \_SB.PILC, 
                \_SB.RPEN
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (SSDD)
        {
            Name (_HID, "QCOM0A20")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.GLNK
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (PDSR)
        {
            Name (_HID, "QCOM06DF")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.GLNK, 
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (NSP0)
        {
            Name (_DEP, Package (0x08)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PILC, 
                \_SB.GLNK, 
                \_SB.IPC0, 
                \_SB.RPEN, 
                \_SB.SSDD, 
                \_SB.ARPC, 
                \_SB.PDSR
            })
            Name (_HID, "QCOM0AB0")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000262,
                    }
                })
                Return (RBUF) /* \_SB_.NSP0._CRS.RBUF */
            }
        }

        Device (WPSS)
        {
            Name (_DEP, Package (0x08)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PILC, 
                \_SB.GLNK, 
                \_SB.IPC0, 
                \_SB.RPEN, 
                \_SB.SSDD, 
                \_SB.TFTP, 
                \_SB.PDSR
            })
            Name (_HID, "QCOM0AE2")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000026B,
                    }
                })
                Return (RBUF) /* \_SB_.WPSS._CRS.RBUF */
            }

            Device (QWLN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    \_SB.PEP0, 
                    \_SB.MMU0, 
                    \_SB.IPC0
                })
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_S4W, 0x03)  // _S4W: S4 Device Wake State
                Name (_PRR, Package (One)  // _PRR: Power Resource for Reset
                {
                    \_SB.WPSS.QWLN.WRST
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x17A10040,         // Address Base
                            0x00000010,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x80C00000,         // Address Base
                            0x00C00000,         // Address Length
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000320,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000321,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000322,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000323,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000324,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000325,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000326,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000327,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000328,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000329,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000032A,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000032B,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000032C,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000032D,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000032E,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000032F,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000330,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000331,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000332,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000333,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000334,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000335,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000336,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000337,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000338,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000339,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000033A,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000033B,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x0000033C,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000033D,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000033E,
                        }
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x0000033F,
                        }
                    })
                    Return (RBUF) /* \_SB_.WPSS.QWLN._CRS.RBUF */
                }

                PowerResource (WRST, 0x05, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                    }

                    Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                    {
                    }
                }
            }

            Scope (\_SB)
            {
                Device (WLTM)
                {
                    Name (_HID, "QCOM0AD5")  // _HID: Hardware ID
                    Name (_CID, "QCOMFFE0")  // _CID: Compatible ID
                    Alias (\_SB.PSUB, _SUB)
                    Name (_DEP, Package (0x02)  // _DEP: Dependencies
                    {
                        \_SB.WPSS, 
                        \_SB.SBTD
                    })
                }
            }
        }

        Device (CSW0)
        {
            Name (_HID, "QCOM0AC3")  // _HID: Hardware ID
            Name (_CID, "QCOMFFE0")  // _CID: Compatible ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.NSP0, 
                \_SB.SBTD
            })
        }

        Device (SBTD)
        {
            Name (_HID, "QCOM06E5")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (TFTP)
        {
            Name (_HID, "QCOM06DC")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (QCSK)
        {
            Name (_HID, "QCOM0AAC")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Scope (\_SB.ADSP)
        {
        }

        Scope (\_SB.AMSS)
        {
        }

        Scope (\_SB.PILC)
        {
        }

        Scope (\_SB.CDI)
        {
        }

        Scope (\_SB.RPEN)
        {
        }

        Scope (\_SB.NSP0)
        {
            Name (_CID, "QCOMFFE8")  // _CID: Compatible ID
        }

        Scope (\_SB.AMSS)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SKUV == 0x04))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                Return (\_SB.PSUB)
            }
        }

        Scope (\_SB.PILC)
        {
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If (((SKUV == 0x04) && (\_SB.SJTG == 0x102150E1)))
                {
                    Return ("IWDB7280")
                }
                ElseIf ((SKUV == 0x04))
                {
                    Return ("IDPA7280")
                }
                Else
                {
                    Return (\_SB.PSUB)
                }
            }
        }

        Scope (\_SB.ADSP)
        {
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((SKUV == 0x05))
                {
                    Return ("IWSA7280")
                }
                Else
                {
                    Return (\_SB.PSUB)
                }
            }
        }

        Scope (\_SB.NSP0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SJTG == 0x102150E1))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.CSW0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SJTG == 0x102150E1))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (LLC)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM0A83")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.SVMJ, _HRV)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x09600000,         // Address Base
                        0x00050000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000012A,
                    }
                })
            }
        }

        Device (MMU0)
        {
            Name (_HID, "QCOM0A09")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.SVMJ, _HRV)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x15000000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000080,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000081,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000082,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000083,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000084,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000085,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000086,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000087,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000088,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000089,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008A,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008B,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008C,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008D,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008E,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008F,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000090,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000091,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000092,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000093,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000094,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000095,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000096,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000D5,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000D6,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000D7,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000D8,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000D9,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000DA,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000DB,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000DC,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000DD,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000DE,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000DF,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000E0,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000015B,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000015C,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000015D,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000015E,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000015F,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000160,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000161,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000162,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000163,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000164,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000165,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000166,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000167,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000168,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000169,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000016A,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000016B,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000016C,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000016D,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000016E,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000016F,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000170,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000171,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000172,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000173,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000174,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000175,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000176,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000177,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000178,
                    }
                })
            }
        }

        Device (MMU1)
        {
            Name (_HID, "QCOM0A09")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.SVMJ, _HRV)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x03DA0000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002C6,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002C7,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002C8,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002C9,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002CA,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002CB,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002CC,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002CD,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002CE,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002CF,
                    }
                })
            }
        }

        Device (IMM0)
        {
            Name (_HID, "QCOM068F")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (IMM1)
        {
            Name (_HID, "QCOM068F")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPU0)
        {
            Name (_HID, "QCOM0E36")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Device (MON0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (Zero)
                }
            }

            Name (_DEP, Package (0x0A)  // _DEP: Dependencies
            {
                \_SB.MMU0, 
                \_SB.MMU1, 
                \_SB.IMM0, 
                \_SB.IMM1, 
                \_SB.PEP0, 
                \_SB.PMIC, 
                \_SB.PILC, 
                \_SB.RPEN, 
                \_SB.TREE, 
                \_SB.SCM0
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (ABUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0AE00000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x088E0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000073,
                    }
                    Memory32Fixed (ReadWrite,
                        0x03D00000,         // Address Base
                        0x0003F010,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x03D60000,         // Address Base
                        0x0003F000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000014C,
                    }
                    Memory32Fixed (ReadWrite,
                        0x0B290000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0B490000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x03D90000,         // Address Base
                        0x00009000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x03DE0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0C200000,         // Address Base
                        0x0000FFFF,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AA00000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000CE,
                    }
                    GpioIo (Exclusive, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x002C
                        }
                })
                Return (ABUF) /* \_SB_.GPU0._CRS.ABUF */
            }

            Method (RESI, 0, NotSerialized)
            {
                Name (AINF, Package (0x10)
                {
                    0x03, 
                    Zero, 
                    Package (0x03)
                    {
                        "RESOURCE", 
                        "MDP_REGS", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "DP_PHY_REGS", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "VSYNC_INTERRUPT", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GFX_REGS", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GFX_REG_CONT", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GFX_INTERRUPT", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GPU_PDC_SEQ_MEM", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GPU_PDC_REGS", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GPU_CC", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GPU_RSCC", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GPU_RPMH_CPRF", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "VIDEO_REGS", 
                        "VIDEO"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "VIDC_INTERRUPT", 
                        "VIDEO"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "DSI_PANEL_RESET", 
                        "DISPLAY"
                    }
                })
                Return (AINF) /* \_SB_.GPU0.RESI.AINF */
            }

            Method (_ROM, 3, NotSerialized)  // _ROM: Read-Only Memory
            {
                Name (PCFG, Buffer (0x2CC6)
                {
                    /* 0000 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 0008 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0010 */  0x20, 0x3C, 0x3F, 0x78, 0x6D, 0x6C, 0x20, 0x76,  //  <?xml v
                    /* 0018 */  0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x3D, 0x27,  // ersion='
                    /* 0020 */  0x31, 0x2E, 0x30, 0x27, 0x20, 0x65, 0x6E, 0x63,  // 1.0' enc
                    /* 0028 */  0x6F, 0x64, 0x69, 0x6E, 0x67, 0x3D, 0x27, 0x75,  // oding='u
                    /* 0030 */  0x74, 0x66, 0x2D, 0x38, 0x27, 0x3F, 0x3E, 0x0A,  // tf-8'?>.
                    /* 0038 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0040 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0048 */  0x3C, 0x50, 0x61, 0x6E, 0x65, 0x6C, 0x44, 0x65,  // <PanelDe
                    /* 0050 */  0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6F,  // scriptio
                    /* 0058 */  0x6E, 0x3E, 0x6B, 0x39, 0x64, 0x20, 0x33, 0x36,  // n>k9d 36
                    /* 0060 */  0x20, 0x30, 0x32, 0x20, 0x30, 0x61, 0x20, 0x53,  //  02 0a S
                    /* 0068 */  0x69, 0x6E, 0x67, 0x6C, 0x65, 0x20, 0x44, 0x53,  // ingle DS
                    /* 0070 */  0x49, 0x20, 0x56, 0x69, 0x64, 0x65, 0x6F, 0x20,  // I Video 
                    /* 0078 */  0x4D, 0x6F, 0x64, 0x65, 0x20, 0x41, 0x4D, 0x4F,  // Mode AMO
                    /* 0080 */  0x4C, 0x45, 0x44, 0x20, 0x50, 0x61, 0x6E, 0x65,  // LED Pane
                    /* 0088 */  0x6C, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x44,  // l with D
                    /* 0090 */  0x53, 0x43, 0x20, 0x28, 0x31, 0x30, 0x38, 0x30,  // SC (1080
                    /* 0098 */  0x78, 0x32, 0x34, 0x30, 0x30, 0x20, 0x32, 0x34,  // x2400 24
                    /* 00A0 */  0x62, 0x70, 0x70, 0x29, 0x3C, 0x2F, 0x50, 0x61,  // bpp)</Pa
                    /* 00A8 */  0x6E, 0x65, 0x6C, 0x44, 0x65, 0x73, 0x63, 0x72,  // nelDescr
                    /* 00B0 */  0x69, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x3E, 0x0A,  // iption>.
                    /* 00B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 00C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 00C8 */  0x3C, 0x47, 0x72, 0x6F, 0x75, 0x70, 0x20, 0x69,  // <Group i
                    /* 00D0 */  0x64, 0x3D, 0x27, 0x45, 0x44, 0x49, 0x44, 0x20,  // d='EDID 
                    /* 00D8 */  0x43, 0x6F, 0x6E, 0x66, 0x69, 0x67, 0x75, 0x72,  // Configur
                    /* 00E0 */  0x61, 0x74, 0x69, 0x6F, 0x6E, 0x27, 0x3E, 0x0A,  // ation'>.
                    /* 00E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 00F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 00F8 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x4D, 0x61, 0x6E,  //     <Man
                    /* 0100 */  0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65,  // ufacture
                    /* 0108 */  0x49, 0x44, 0x3E, 0x30, 0x78, 0x31, 0x30, 0x34,  // ID>0x104
                    /* 0110 */  0x44, 0x3C, 0x2F, 0x4D, 0x61, 0x6E, 0x75, 0x66,  // D</Manuf
                    /* 0118 */  0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x49, 0x44,  // actureID
                    /* 0120 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0128 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0130 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x50,  //       <P
                    /* 0138 */  0x72, 0x6F, 0x64, 0x75, 0x63, 0x74, 0x43, 0x6F,  // roductCo
                    /* 0140 */  0x64, 0x65, 0x3E, 0x37, 0x32, 0x38, 0x30, 0x3C,  // de>7280<
                    /* 0148 */  0x2F, 0x50, 0x72, 0x6F, 0x64, 0x75, 0x63, 0x74,  // /Product
                    /* 0150 */  0x43, 0x6F, 0x64, 0x65, 0x3E, 0x0A, 0x20, 0x20,  // Code>.  
                    /* 0158 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0160 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0168 */  0x20, 0x20, 0x3C, 0x53, 0x65, 0x72, 0x69, 0x61,  //   <Seria
                    /* 0170 */  0x6C, 0x4E, 0x75, 0x6D, 0x62, 0x65, 0x72, 0x3E,  // lNumber>
                    /* 0178 */  0x30, 0x78, 0x30, 0x30, 0x30, 0x30, 0x30, 0x31,  // 0x000001
                    /* 0180 */  0x3C, 0x2F, 0x53, 0x65, 0x72, 0x69, 0x61, 0x6C,  // </Serial
                    /* 0188 */  0x4E, 0x75, 0x6D, 0x62, 0x65, 0x72, 0x3E, 0x0A,  // Number>.
                    /* 0190 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0198 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 01A0 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x57, 0x65, 0x65,  //     <Wee
                    /* 01A8 */  0x6B, 0x6F, 0x66, 0x4D, 0x61, 0x6E, 0x75, 0x66,  // kofManuf
                    /* 01B0 */  0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3E, 0x30,  // acture>0
                    /* 01B8 */  0x78, 0x30, 0x31, 0x3C, 0x2F, 0x57, 0x65, 0x65,  // x01</Wee
                    /* 01C0 */  0x6B, 0x6F, 0x66, 0x4D, 0x61, 0x6E, 0x75, 0x66,  // kofManuf
                    /* 01C8 */  0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3E, 0x0A,  // acture>.
                    /* 01D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 01D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 01E0 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x59, 0x65, 0x61,  //     <Yea
                    /* 01E8 */  0x72, 0x6F, 0x66, 0x4D, 0x61, 0x6E, 0x75, 0x66,  // rofManuf
                    /* 01F0 */  0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3E, 0x30,  // acture>0
                    /* 01F8 */  0x78, 0x31, 0x42, 0x3C, 0x2F, 0x59, 0x65, 0x61,  // x1B</Yea
                    /* 0200 */  0x72, 0x6F, 0x66, 0x4D, 0x61, 0x6E, 0x75, 0x66,  // rofManuf
                    /* 0208 */  0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3E, 0x0A,  // acture>.
                    /* 0210 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0218 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0220 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x45, 0x44, 0x49,  //     <EDI
                    /* 0228 */  0x44, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E,  // DVersion
                    /* 0230 */  0x3E, 0x31, 0x3C, 0x2F, 0x45, 0x44, 0x49, 0x44,  // >1</EDID
                    /* 0238 */  0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x3E,  // Version>
                    /* 0240 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 0248 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0250 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x45, 0x44,  //      <ED
                    /* 0258 */  0x49, 0x44, 0x52, 0x65, 0x76, 0x69, 0x73, 0x69,  // IDRevisi
                    /* 0260 */  0x6F, 0x6E, 0x3E, 0x33, 0x3C, 0x2F, 0x45, 0x44,  // on>3</ED
                    /* 0268 */  0x49, 0x44, 0x52, 0x65, 0x76, 0x69, 0x73, 0x69,  // IDRevisi
                    /* 0270 */  0x6F, 0x6E, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // on>.    
                    /* 0278 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0280 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0288 */  0x3C, 0x56, 0x69, 0x64, 0x65, 0x6F, 0x49, 0x6E,  // <VideoIn
                    /* 0290 */  0x70, 0x75, 0x74, 0x44, 0x65, 0x66, 0x69, 0x6E,  // putDefin
                    /* 0298 */  0x69, 0x74, 0x69, 0x6F, 0x6E, 0x3E, 0x30, 0x78,  // ition>0x
                    /* 02A0 */  0x38, 0x30, 0x3C, 0x2F, 0x56, 0x69, 0x64, 0x65,  // 80</Vide
                    /* 02A8 */  0x6F, 0x49, 0x6E, 0x70, 0x75, 0x74, 0x44, 0x65,  // oInputDe
                    /* 02B0 */  0x66, 0x69, 0x6E, 0x69, 0x74, 0x69, 0x6F, 0x6E,  // finition
                    /* 02B8 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 02C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 02C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x48,  //       <H
                    /* 02D0 */  0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74, 0x61,  // orizonta
                    /* 02D8 */  0x6C, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6E, 0x53,  // lScreenS
                    /* 02E0 */  0x69, 0x7A, 0x65, 0x3E, 0x30, 0x78, 0x30, 0x37,  // ize>0x07
                    /* 02E8 */  0x3C, 0x2F, 0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F,  // </Horizo
                    /* 02F0 */  0x6E, 0x74, 0x61, 0x6C, 0x53, 0x63, 0x72, 0x65,  // ntalScre
                    /* 02F8 */  0x65, 0x6E, 0x53, 0x69, 0x7A, 0x65, 0x3E, 0x0A,  // enSize>.
                    /* 0300 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0308 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0310 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x56, 0x65, 0x72,  //     <Ver
                    /* 0318 */  0x74, 0x69, 0x63, 0x61, 0x6C, 0x53, 0x63, 0x72,  // ticalScr
                    /* 0320 */  0x65, 0x65, 0x6E, 0x53, 0x69, 0x7A, 0x65, 0x3E,  // eenSize>
                    /* 0328 */  0x30, 0x78, 0x46, 0x3C, 0x2F, 0x56, 0x65, 0x72,  // 0xF</Ver
                    /* 0330 */  0x74, 0x69, 0x63, 0x61, 0x6C, 0x53, 0x63, 0x72,  // ticalScr
                    /* 0338 */  0x65, 0x65, 0x6E, 0x53, 0x69, 0x7A, 0x65, 0x3E,  // eenSize>
                    /* 0340 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 0348 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0350 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x69,  //      <Di
                    /* 0358 */  0x73, 0x70, 0x6C, 0x61, 0x79, 0x54, 0x72, 0x61,  // splayTra
                    /* 0360 */  0x6E, 0x73, 0x66, 0x65, 0x72, 0x43, 0x68, 0x61,  // nsferCha
                    /* 0368 */  0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x69, 0x73,  // racteris
                    /* 0370 */  0x74, 0x69, 0x63, 0x73, 0x3E, 0x30, 0x78, 0x37,  // tics>0x7
                    /* 0378 */  0x38, 0x3C, 0x2F, 0x44, 0x69, 0x73, 0x70, 0x6C,  // 8</Displ
                    /* 0380 */  0x61, 0x79, 0x54, 0x72, 0x61, 0x6E, 0x73, 0x66,  // ayTransf
                    /* 0388 */  0x65, 0x72, 0x43, 0x68, 0x61, 0x72, 0x61, 0x63,  // erCharac
                    /* 0390 */  0x74, 0x65, 0x72, 0x69, 0x73, 0x74, 0x69, 0x63,  // teristic
                    /* 0398 */  0x73, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // s>.     
                    /* 03A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 03A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 03B0 */  0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x53,  // FeatureS
                    /* 03B8 */  0x75, 0x70, 0x70, 0x6F, 0x72, 0x74, 0x3E, 0x30,  // upport>0
                    /* 03C0 */  0x78, 0x32, 0x3C, 0x2F, 0x46, 0x65, 0x61, 0x74,  // x2</Feat
                    /* 03C8 */  0x75, 0x72, 0x65, 0x53, 0x75, 0x70, 0x70, 0x6F,  // ureSuppo
                    /* 03D0 */  0x72, 0x74, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // rt>.    
                    /* 03D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 03E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 03E8 */  0x3C, 0x52, 0x65, 0x64, 0x2E, 0x47, 0x72, 0x65,  // <Red.Gre
                    /* 03F0 */  0x65, 0x6E, 0x42, 0x69, 0x74, 0x73, 0x3E, 0x30,  // enBits>0
                    /* 03F8 */  0x78, 0x41, 0x35, 0x3C, 0x2F, 0x52, 0x65, 0x64,  // xA5</Red
                    /* 0400 */  0x2E, 0x47, 0x72, 0x65, 0x65, 0x6E, 0x42, 0x69,  // .GreenBi
                    /* 0408 */  0x74, 0x73, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // ts>.    
                    /* 0410 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0418 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0420 */  0x3C, 0x42, 0x6C, 0x75, 0x65, 0x2E, 0x57, 0x68,  // <Blue.Wh
                    /* 0428 */  0x69, 0x74, 0x65, 0x42, 0x69, 0x74, 0x73, 0x3E,  // iteBits>
                    /* 0430 */  0x30, 0x78, 0x35, 0x38, 0x3C, 0x2F, 0x42, 0x6C,  // 0x58</Bl
                    /* 0438 */  0x75, 0x65, 0x2E, 0x57, 0x68, 0x69, 0x74, 0x65,  // ue.White
                    /* 0440 */  0x42, 0x69, 0x74, 0x73, 0x3E, 0x0A, 0x20, 0x20,  // Bits>.  
                    /* 0448 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0450 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0458 */  0x20, 0x20, 0x3C, 0x52, 0x65, 0x64, 0x58, 0x3E,  //   <RedX>
                    /* 0460 */  0x30, 0x78, 0x41, 0x36, 0x3C, 0x2F, 0x52, 0x65,  // 0xA6</Re
                    /* 0468 */  0x64, 0x58, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // dX>.    
                    /* 0470 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0478 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0480 */  0x3C, 0x52, 0x65, 0x64, 0x59, 0x3E, 0x30, 0x78,  // <RedY>0x
                    /* 0488 */  0x35, 0x34, 0x3C, 0x2F, 0x52, 0x65, 0x64, 0x59,  // 54</RedY
                    /* 0490 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0498 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 04A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x47,  //       <G
                    /* 04A8 */  0x72, 0x65, 0x65, 0x6E, 0x58, 0x3E, 0x30, 0x78,  // reenX>0x
                    /* 04B0 */  0x33, 0x33, 0x3C, 0x2F, 0x47, 0x72, 0x65, 0x65,  // 33</Gree
                    /* 04B8 */  0x6E, 0x58, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // nX>.    
                    /* 04C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 04C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 04D0 */  0x3C, 0x47, 0x72, 0x65, 0x65, 0x6E, 0x59, 0x3E,  // <GreenY>
                    /* 04D8 */  0x30, 0x78, 0x42, 0x33, 0x3C, 0x2F, 0x47, 0x72,  // 0xB3</Gr
                    /* 04E0 */  0x65, 0x65, 0x6E, 0x59, 0x3E, 0x0A, 0x20, 0x20,  // eenY>.  
                    /* 04E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 04F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 04F8 */  0x20, 0x20, 0x3C, 0x42, 0x6C, 0x75, 0x65, 0x58,  //   <BlueX
                    /* 0500 */  0x3E, 0x30, 0x78, 0x32, 0x36, 0x3C, 0x2F, 0x42,  // >0x26</B
                    /* 0508 */  0x6C, 0x75, 0x65, 0x58, 0x3E, 0x0A, 0x20, 0x20,  // lueX>.  
                    /* 0510 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0518 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0520 */  0x20, 0x20, 0x3C, 0x42, 0x6C, 0x75, 0x65, 0x59,  //   <BlueY
                    /* 0528 */  0x3E, 0x30, 0x78, 0x31, 0x32, 0x3C, 0x2F, 0x42,  // >0x12</B
                    /* 0530 */  0x6C, 0x75, 0x65, 0x59, 0x3E, 0x0A, 0x20, 0x20,  // lueY>.  
                    /* 0538 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0540 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0548 */  0x20, 0x20, 0x3C, 0x57, 0x68, 0x69, 0x74, 0x65,  //   <White
                    /* 0550 */  0x58, 0x3E, 0x30, 0x78, 0x34, 0x46, 0x3C, 0x2F,  // X>0x4F</
                    /* 0558 */  0x57, 0x68, 0x69, 0x74, 0x65, 0x58, 0x3E, 0x0A,  // WhiteX>.
                    /* 0560 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0568 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0570 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x57, 0x68, 0x69,  //     <Whi
                    /* 0578 */  0x74, 0x65, 0x59, 0x3E, 0x30, 0x78, 0x35, 0x34,  // teY>0x54
                    /* 0580 */  0x3C, 0x2F, 0x57, 0x68, 0x69, 0x74, 0x65, 0x59,  // </WhiteY
                    /* 0588 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0590 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0598 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x45,  //       <E
                    /* 05A0 */  0x73, 0x74, 0x61, 0x62, 0x6C, 0x69, 0x73, 0x68,  // stablish
                    /* 05A8 */  0x65, 0x64, 0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67,  // edTiming
                    /* 05B0 */  0x73, 0x49, 0x3E, 0x30, 0x78, 0x30, 0x3C, 0x2F,  // sI>0x0</
                    /* 05B8 */  0x45, 0x73, 0x74, 0x61, 0x62, 0x6C, 0x69, 0x73,  // Establis
                    /* 05C0 */  0x68, 0x65, 0x64, 0x54, 0x69, 0x6D, 0x69, 0x6E,  // hedTimin
                    /* 05C8 */  0x67, 0x73, 0x49, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // gsI>.   
                    /* 05D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 05D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 05E0 */  0x20, 0x3C, 0x45, 0x73, 0x74, 0x61, 0x62, 0x6C,  //  <Establ
                    /* 05E8 */  0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6D,  // ishedTim
                    /* 05F0 */  0x69, 0x6E, 0x67, 0x73, 0x49, 0x49, 0x3E, 0x30,  // ingsII>0
                    /* 05F8 */  0x78, 0x30, 0x3C, 0x2F, 0x45, 0x73, 0x74, 0x61,  // x0</Esta
                    /* 0600 */  0x62, 0x6C, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54,  // blishedT
                    /* 0608 */  0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x49, 0x49,  // imingsII
                    /* 0610 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0618 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0620 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x4D,  //       <M
                    /* 0628 */  0x61, 0x6E, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75,  // anufactu
                    /* 0630 */  0x72, 0x65, 0x73, 0x54, 0x69, 0x6D, 0x69, 0x6E,  // resTimin
                    /* 0638 */  0x67, 0x3E, 0x30, 0x78, 0x30, 0x3C, 0x2F, 0x4D,  // g>0x0</M
                    /* 0640 */  0x61, 0x6E, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75,  // anufactu
                    /* 0648 */  0x72, 0x65, 0x73, 0x54, 0x69, 0x6D, 0x69, 0x6E,  // resTimin
                    /* 0650 */  0x67, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // g>.     
                    /* 0658 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0660 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0668 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 0670 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x31,  // Timings1
                    /* 0678 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 0680 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0688 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0690 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 0698 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x32,  // Timings2
                    /* 06A0 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 06A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 06B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 06B8 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 06C0 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x33,  // Timings3
                    /* 06C8 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 06D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 06D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 06E0 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 06E8 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x34,  // Timings4
                    /* 06F0 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 06F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0700 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0708 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 0710 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x35,  // Timings5
                    /* 0718 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 0720 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0728 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0730 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 0738 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x36,  // Timings6
                    /* 0740 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 0748 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0750 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0758 */  0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,  // Standard
                    /* 0760 */  0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67, 0x73, 0x37,  // Timings7
                    /* 0768 */  0x2F, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // />.     
                    /* 0770 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0778 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0780 */  0x53, 0x69, 0x67, 0x6E, 0x61, 0x6C, 0x54, 0x69,  // SignalTi
                    /* 0788 */  0x6D, 0x69, 0x6E, 0x67, 0x49, 0x6E, 0x74, 0x65,  // mingInte
                    /* 0790 */  0x72, 0x66, 0x61, 0x63, 0x65, 0x2F, 0x3E, 0x0A,  // rface/>.
                    /* 0798 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 07A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 07A8 */  0x3C, 0x2F, 0x47, 0x72, 0x6F, 0x75, 0x70, 0x3E,  // </Group>
                    /* 07B0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 07B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 07C0 */  0x20, 0x3C, 0x47, 0x72, 0x6F, 0x75, 0x70, 0x20,  //  <Group 
                    /* 07C8 */  0x69, 0x64, 0x3D, 0x27, 0x41, 0x63, 0x74, 0x69,  // id='Acti
                    /* 07D0 */  0x76, 0x65, 0x20, 0x54, 0x69, 0x6D, 0x69, 0x6E,  // ve Timin
                    /* 07D8 */  0x67, 0x27, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // g'>.    
                    /* 07E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 07E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 07F0 */  0x3C, 0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E,  // <Horizon
                    /* 07F8 */  0x74, 0x61, 0x6C, 0x41, 0x63, 0x74, 0x69, 0x76,  // talActiv
                    /* 0800 */  0x65, 0x3E, 0x31, 0x30, 0x38, 0x30, 0x3C, 0x2F,  // e>1080</
                    /* 0808 */  0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74,  // Horizont
                    /* 0810 */  0x61, 0x6C, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65,  // alActive
                    /* 0818 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0820 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0828 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x48,  //       <H
                    /* 0830 */  0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74, 0x61,  // orizonta
                    /* 0838 */  0x6C, 0x46, 0x72, 0x6F, 0x6E, 0x74, 0x50, 0x6F,  // lFrontPo
                    /* 0840 */  0x72, 0x63, 0x68, 0x3E, 0x31, 0x36, 0x3C, 0x2F,  // rch>16</
                    /* 0848 */  0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74,  // Horizont
                    /* 0850 */  0x61, 0x6C, 0x46, 0x72, 0x6F, 0x6E, 0x74, 0x50,  // alFrontP
                    /* 0858 */  0x6F, 0x72, 0x63, 0x68, 0x3E, 0x0A, 0x20, 0x20,  // orch>.  
                    /* 0860 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0868 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0870 */  0x20, 0x20, 0x3C, 0x48, 0x6F, 0x72, 0x69, 0x7A,  //   <Horiz
                    /* 0878 */  0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x42, 0x61, 0x63,  // ontalBac
                    /* 0880 */  0x6B, 0x50, 0x6F, 0x72, 0x63, 0x68, 0x3E, 0x38,  // kPorch>8
                    /* 0888 */  0x3C, 0x2F, 0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F,  // </Horizo
                    /* 0890 */  0x6E, 0x74, 0x61, 0x6C, 0x42, 0x61, 0x63, 0x6B,  // ntalBack
                    /* 0898 */  0x50, 0x6F, 0x72, 0x63, 0x68, 0x3E, 0x0A, 0x20,  // Porch>. 
                    /* 08A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 08A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 08B0 */  0x20, 0x20, 0x20, 0x3C, 0x48, 0x6F, 0x72, 0x69,  //    <Hori
                    /* 08B8 */  0x7A, 0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x53, 0x79,  // zontalSy
                    /* 08C0 */  0x6E, 0x63, 0x50, 0x75, 0x6C, 0x73, 0x65, 0x3E,  // ncPulse>
                    /* 08C8 */  0x38, 0x3C, 0x2F, 0x48, 0x6F, 0x72, 0x69, 0x7A,  // 8</Horiz
                    /* 08D0 */  0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x53, 0x79, 0x6E,  // ontalSyn
                    /* 08D8 */  0x63, 0x50, 0x75, 0x6C, 0x73, 0x65, 0x3E, 0x0A,  // cPulse>.
                    /* 08E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 08E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 08F0 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x48, 0x6F, 0x72,  //     <Hor
                    /* 08F8 */  0x69, 0x7A, 0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x53,  // izontalS
                    /* 0900 */  0x79, 0x6E, 0x63, 0x53, 0x6B, 0x65, 0x77, 0x3E,  // yncSkew>
                    /* 0908 */  0x30, 0x3C, 0x2F, 0x48, 0x6F, 0x72, 0x69, 0x7A,  // 0</Horiz
                    /* 0910 */  0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x53, 0x79, 0x6E,  // ontalSyn
                    /* 0918 */  0x63, 0x53, 0x6B, 0x65, 0x77, 0x3E, 0x0A, 0x20,  // cSkew>. 
                    /* 0920 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0928 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0930 */  0x20, 0x20, 0x20, 0x3C, 0x48, 0x6F, 0x72, 0x69,  //    <Hori
                    /* 0938 */  0x7A, 0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x4C, 0x65,  // zontalLe
                    /* 0940 */  0x66, 0x74, 0x42, 0x6F, 0x72, 0x64, 0x65, 0x72,  // ftBorder
                    /* 0948 */  0x3E, 0x30, 0x3C, 0x2F, 0x48, 0x6F, 0x72, 0x69,  // >0</Hori
                    /* 0950 */  0x7A, 0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x4C, 0x65,  // zontalLe
                    /* 0958 */  0x66, 0x74, 0x42, 0x6F, 0x72, 0x64, 0x65, 0x72,  // ftBorder
                    /* 0960 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0968 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0970 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x48,  //       <H
                    /* 0978 */  0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74, 0x61,  // orizonta
                    /* 0980 */  0x6C, 0x52, 0x69, 0x67, 0x68, 0x74, 0x42, 0x6F,  // lRightBo
                    /* 0988 */  0x72, 0x64, 0x65, 0x72, 0x3E, 0x30, 0x3C, 0x2F,  // rder>0</
                    /* 0990 */  0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74,  // Horizont
                    /* 0998 */  0x61, 0x6C, 0x52, 0x69, 0x67, 0x68, 0x74, 0x42,  // alRightB
                    /* 09A0 */  0x6F, 0x72, 0x64, 0x65, 0x72, 0x3E, 0x0A, 0x20,  // order>. 
                    /* 09A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 09B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 09B8 */  0x20, 0x20, 0x20, 0x3C, 0x56, 0x65, 0x72, 0x74,  //    <Vert
                    /* 09C0 */  0x69, 0x63, 0x61, 0x6C, 0x41, 0x63, 0x74, 0x69,  // icalActi
                    /* 09C8 */  0x76, 0x65, 0x3E, 0x32, 0x34, 0x30, 0x30, 0x3C,  // ve>2400<
                    /* 09D0 */  0x2F, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61,  // /Vertica
                    /* 09D8 */  0x6C, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3E,  // lActive>
                    /* 09E0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 09E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 09F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x56, 0x65,  //      <Ve
                    /* 09F8 */  0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x46, 0x72,  // rticalFr
                    /* 0A00 */  0x6F, 0x6E, 0x74, 0x50, 0x6F, 0x72, 0x63, 0x68,  // ontPorch
                    /* 0A08 */  0x3E, 0x34, 0x3C, 0x2F, 0x56, 0x65, 0x72, 0x74,  // >4</Vert
                    /* 0A10 */  0x69, 0x63, 0x61, 0x6C, 0x46, 0x72, 0x6F, 0x6E,  // icalFron
                    /* 0A18 */  0x74, 0x50, 0x6F, 0x72, 0x63, 0x68, 0x3E, 0x0A,  // tPorch>.
                    /* 0A20 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0A28 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0A30 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x56, 0x65, 0x72,  //     <Ver
                    /* 0A38 */  0x74, 0x69, 0x63, 0x61, 0x6C, 0x42, 0x61, 0x63,  // ticalBac
                    /* 0A40 */  0x6B, 0x50, 0x6F, 0x72, 0x63, 0x68, 0x3E, 0x38,  // kPorch>8
                    /* 0A48 */  0x3C, 0x2F, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63,  // </Vertic
                    /* 0A50 */  0x61, 0x6C, 0x42, 0x61, 0x63, 0x6B, 0x50, 0x6F,  // alBackPo
                    /* 0A58 */  0x72, 0x63, 0x68, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // rch>.   
                    /* 0A60 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0A68 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0A70 */  0x20, 0x3C, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63,  //  <Vertic
                    /* 0A78 */  0x61, 0x6C, 0x53, 0x79, 0x6E, 0x63, 0x50, 0x75,  // alSyncPu
                    /* 0A80 */  0x6C, 0x73, 0x65, 0x3E, 0x34, 0x3C, 0x2F, 0x56,  // lse>4</V
                    /* 0A88 */  0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x53,  // erticalS
                    /* 0A90 */  0x79, 0x6E, 0x63, 0x50, 0x75, 0x6C, 0x73, 0x65,  // yncPulse
                    /* 0A98 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0AA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0AA8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x56,  //       <V
                    /* 0AB0 */  0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x53,  // erticalS
                    /* 0AB8 */  0x79, 0x6E, 0x63, 0x53, 0x6B, 0x65, 0x77, 0x3E,  // yncSkew>
                    /* 0AC0 */  0x30, 0x3C, 0x2F, 0x56, 0x65, 0x72, 0x74, 0x69,  // 0</Verti
                    /* 0AC8 */  0x63, 0x61, 0x6C, 0x53, 0x79, 0x6E, 0x63, 0x53,  // calSyncS
                    /* 0AD0 */  0x6B, 0x65, 0x77, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // kew>.   
                    /* 0AD8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0AE0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0AE8 */  0x20, 0x3C, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63,  //  <Vertic
                    /* 0AF0 */  0x61, 0x6C, 0x54, 0x6F, 0x70, 0x42, 0x6F, 0x72,  // alTopBor
                    /* 0AF8 */  0x64, 0x65, 0x72, 0x3E, 0x30, 0x3C, 0x2F, 0x56,  // der>0</V
                    /* 0B00 */  0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x54,  // erticalT
                    /* 0B08 */  0x6F, 0x70, 0x42, 0x6F, 0x72, 0x64, 0x65, 0x72,  // opBorder
                    /* 0B10 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0B18 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0B20 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x56,  //       <V
                    /* 0B28 */  0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x42,  // erticalB
                    /* 0B30 */  0x6F, 0x74, 0x74, 0x6F, 0x6D, 0x42, 0x6F, 0x72,  // ottomBor
                    /* 0B38 */  0x64, 0x65, 0x72, 0x3E, 0x30, 0x3C, 0x2F, 0x56,  // der>0</V
                    /* 0B40 */  0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x42,  // erticalB
                    /* 0B48 */  0x6F, 0x74, 0x74, 0x6F, 0x6D, 0x42, 0x6F, 0x72,  // ottomBor
                    /* 0B50 */  0x64, 0x65, 0x72, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // der>.   
                    /* 0B58 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0B60 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0B68 */  0x20, 0x3C, 0x49, 0x6E, 0x76, 0x65, 0x72, 0x74,  //  <Invert
                    /* 0B70 */  0x44, 0x61, 0x74, 0x61, 0x50, 0x6F, 0x6C, 0x61,  // DataPola
                    /* 0B78 */  0x72, 0x69, 0x74, 0x79, 0x3E, 0x46, 0x61, 0x6C,  // rity>Fal
                    /* 0B80 */  0x73, 0x65, 0x3C, 0x2F, 0x49, 0x6E, 0x76, 0x65,  // se</Inve
                    /* 0B88 */  0x72, 0x74, 0x44, 0x61, 0x74, 0x61, 0x50, 0x6F,  // rtDataPo
                    /* 0B90 */  0x6C, 0x61, 0x72, 0x69, 0x74, 0x79, 0x3E, 0x0A,  // larity>.
                    /* 0B98 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0BA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0BA8 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x49, 0x6E, 0x76,  //     <Inv
                    /* 0BB0 */  0x65, 0x72, 0x74, 0x56, 0x73, 0x79, 0x6E, 0x63,  // ertVsync
                    /* 0BB8 */  0x50, 0x6F, 0x6C, 0x61, 0x69, 0x72, 0x74, 0x79,  // Polairty
                    /* 0BC0 */  0x3E, 0x46, 0x61, 0x6C, 0x73, 0x65, 0x3C, 0x2F,  // >False</
                    /* 0BC8 */  0x49, 0x6E, 0x76, 0x65, 0x72, 0x74, 0x56, 0x73,  // InvertVs
                    /* 0BD0 */  0x79, 0x6E, 0x63, 0x50, 0x6F, 0x6C, 0x61, 0x69,  // yncPolai
                    /* 0BD8 */  0x72, 0x74, 0x79, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // rty>.   
                    /* 0BE0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0BE8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0BF0 */  0x20, 0x3C, 0x49, 0x6E, 0x76, 0x65, 0x72, 0x74,  //  <Invert
                    /* 0BF8 */  0x48, 0x73, 0x79, 0x6E, 0x63, 0x50, 0x6F, 0x6C,  // HsyncPol
                    /* 0C00 */  0x61, 0x72, 0x69, 0x74, 0x79, 0x3E, 0x46, 0x61,  // arity>Fa
                    /* 0C08 */  0x6C, 0x73, 0x65, 0x3C, 0x2F, 0x49, 0x6E, 0x76,  // lse</Inv
                    /* 0C10 */  0x65, 0x72, 0x74, 0x48, 0x73, 0x79, 0x6E, 0x63,  // ertHsync
                    /* 0C18 */  0x50, 0x6F, 0x6C, 0x61, 0x72, 0x69, 0x74, 0x79,  // Polarity
                    /* 0C20 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0C28 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0C30 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x42,  //       <B
                    /* 0C38 */  0x6F, 0x72, 0x64, 0x65, 0x72, 0x43, 0x6F, 0x6C,  // orderCol
                    /* 0C40 */  0x6F, 0x72, 0x3E, 0x30, 0x78, 0x30, 0x3C, 0x2F,  // or>0x0</
                    /* 0C48 */  0x42, 0x6F, 0x72, 0x64, 0x65, 0x72, 0x43, 0x6F,  // BorderCo
                    /* 0C50 */  0x6C, 0x6F, 0x72, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // lor>.   
                    /* 0C58 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0C60 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x2F, 0x47,  //      </G
                    /* 0C68 */  0x72, 0x6F, 0x75, 0x70, 0x3E, 0x0A, 0x20, 0x20,  // roup>.  
                    /* 0C70 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0C78 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x47,  //       <G
                    /* 0C80 */  0x72, 0x6F, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3D,  // roup id=
                    /* 0C88 */  0x27, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x65,  // 'Detaile
                    /* 0C90 */  0x64, 0x20, 0x54, 0x69, 0x6D, 0x69, 0x6E, 0x67,  // d Timing
                    /* 0C98 */  0x27, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // '>.     
                    /* 0CA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0CA8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0CB0 */  0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74,  // Horizont
                    /* 0CB8 */  0x61, 0x6C, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6E,  // alScreen
                    /* 0CC0 */  0x53, 0x69, 0x7A, 0x65, 0x4D, 0x4D, 0x3E, 0x30,  // SizeMM>0
                    /* 0CC8 */  0x78, 0x34, 0x34, 0x3C, 0x2F, 0x48, 0x6F, 0x72,  // x44</Hor
                    /* 0CD0 */  0x69, 0x7A, 0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x53,  // izontalS
                    /* 0CD8 */  0x63, 0x72, 0x65, 0x65, 0x6E, 0x53, 0x69, 0x7A,  // creenSiz
                    /* 0CE0 */  0x65, 0x4D, 0x4D, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // eMM>.   
                    /* 0CE8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0CF0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0CF8 */  0x20, 0x3C, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63,  //  <Vertic
                    /* 0D00 */  0x61, 0x6C, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6E,  // alScreen
                    /* 0D08 */  0x53, 0x69, 0x7A, 0x65, 0x4D, 0x4D, 0x3E, 0x30,  // SizeMM>0
                    /* 0D10 */  0x78, 0x39, 0x38, 0x3C, 0x2F, 0x56, 0x65, 0x72,  // x98</Ver
                    /* 0D18 */  0x74, 0x69, 0x63, 0x61, 0x6C, 0x53, 0x63, 0x72,  // ticalScr
                    /* 0D20 */  0x65, 0x65, 0x6E, 0x53, 0x69, 0x7A, 0x65, 0x4D,  // eenSizeM
                    /* 0D28 */  0x4D, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // M>.     
                    /* 0D30 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0D38 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 0D40 */  0x48, 0x6F, 0x72, 0x69, 0x7A, 0x6F, 0x6E, 0x74,  // Horizont
                    /* 0D48 */  0x61, 0x6C, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63,  // alVertic
                    /* 0D50 */  0x61, 0x6C, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6E,  // alScreen
                    /* 0D58 */  0x53, 0x69, 0x7A, 0x65, 0x4D, 0x4D, 0x3E, 0x30,  // SizeMM>0
                    /* 0D60 */  0x78, 0x30, 0x30, 0x3C, 0x2F, 0x48, 0x6F, 0x72,  // x00</Hor
                    /* 0D68 */  0x69, 0x7A, 0x6F, 0x6E, 0x74, 0x61, 0x6C, 0x56,  // izontalV
                    /* 0D70 */  0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6C, 0x53,  // erticalS
                    /* 0D78 */  0x63, 0x72, 0x65, 0x65, 0x6E, 0x53, 0x69, 0x7A,  // creenSiz
                    /* 0D80 */  0x65, 0x4D, 0x4D, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // eMM>.   
                    /* 0D88 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0D90 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x2F, 0x47,  //      </G
                    /* 0D98 */  0x72, 0x6F, 0x75, 0x70, 0x3E, 0x0A, 0x20, 0x20,  // roup>.  
                    /* 0DA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0DA8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x47,  //       <G
                    /* 0DB0 */  0x72, 0x6F, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3D,  // roup id=
                    /* 0DB8 */  0x27, 0x44, 0x69, 0x73, 0x70, 0x6C, 0x61, 0x79,  // 'Display
                    /* 0DC0 */  0x20, 0x49, 0x6E, 0x74, 0x65, 0x72, 0x66, 0x61,  //  Interfa
                    /* 0DC8 */  0x63, 0x65, 0x27, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // ce'>.   
                    /* 0DD0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0DD8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0DE0 */  0x20, 0x3C, 0x49, 0x6E, 0x74, 0x65, 0x72, 0x66,  //  <Interf
                    /* 0DE8 */  0x61, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65, 0x3E,  // aceType>
                    /* 0DF0 */  0x38, 0x3C, 0x2F, 0x49, 0x6E, 0x74, 0x65, 0x72,  // 8</Inter
                    /* 0DF8 */  0x66, 0x61, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65,  // faceType
                    /* 0E00 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 0E08 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0E10 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x49,  //       <I
                    /* 0E18 */  0x6E, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,  // nterface
                    /* 0E20 */  0x43, 0x6F, 0x6C, 0x6F, 0x72, 0x46, 0x6F, 0x72,  // ColorFor
                    /* 0E28 */  0x6D, 0x61, 0x74, 0x3E, 0x33, 0x3C, 0x2F, 0x49,  // mat>3</I
                    /* 0E30 */  0x6E, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,  // nterface
                    /* 0E38 */  0x43, 0x6F, 0x6C, 0x6F, 0x72, 0x46, 0x6F, 0x72,  // ColorFor
                    /* 0E40 */  0x6D, 0x61, 0x74, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // mat>.   
                    /* 0E48 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0E50 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x2F, 0x47,  //      </G
                    /* 0E58 */  0x72, 0x6F, 0x75, 0x70, 0x3E, 0x0A, 0x20, 0x20,  // roup>.  
                    /* 0E60 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0E68 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x47,  //       <G
                    /* 0E70 */  0x72, 0x6F, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3D,  // roup id=
                    /* 0E78 */  0x27, 0x44, 0x53, 0x49, 0x20, 0x49, 0x6E, 0x74,  // 'DSI Int
                    /* 0E80 */  0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x27, 0x3E,  // erface'>
                    /* 0E88 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 0E90 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0E98 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53,  //      <DS
                    /* 0EA0 */  0x49, 0x43, 0x68, 0x61, 0x6E, 0x6E, 0x65, 0x6C,  // IChannel
                    /* 0EA8 */  0x49, 0x64, 0x3E, 0x31, 0x3C, 0x2F, 0x44, 0x53,  // Id>1</DS
                    /* 0EB0 */  0x49, 0x43, 0x68, 0x61, 0x6E, 0x6E, 0x65, 0x6C,  // IChannel
                    /* 0EB8 */  0x49, 0x64, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // Id>.    
                    /* 0EC0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0EC8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0ED0 */  0x3C, 0x44, 0x53, 0x49, 0x56, 0x69, 0x72, 0x74,  // <DSIVirt
                    /* 0ED8 */  0x75, 0x61, 0x6C, 0x49, 0x64, 0x3E, 0x30, 0x3C,  // ualId>0<
                    /* 0EE0 */  0x2F, 0x44, 0x53, 0x49, 0x56, 0x69, 0x72, 0x74,  // /DSIVirt
                    /* 0EE8 */  0x75, 0x61, 0x6C, 0x49, 0x64, 0x3E, 0x0A, 0x20,  // ualId>. 
                    /* 0EF0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0EF8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0F00 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x43,  //    <DSIC
                    /* 0F08 */  0x6F, 0x6C, 0x6F, 0x72, 0x46, 0x6F, 0x72, 0x6D,  // olorForm
                    /* 0F10 */  0x61, 0x74, 0x3E, 0x33, 0x36, 0x3C, 0x2F, 0x44,  // at>36</D
                    /* 0F18 */  0x53, 0x49, 0x43, 0x6F, 0x6C, 0x6F, 0x72, 0x46,  // SIColorF
                    /* 0F20 */  0x6F, 0x72, 0x6D, 0x61, 0x74, 0x3E, 0x0A, 0x20,  // ormat>. 
                    /* 0F28 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0F30 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0F38 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x54,  //    <DSIT
                    /* 0F40 */  0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x4D, 0x6F,  // rafficMo
                    /* 0F48 */  0x64, 0x65, 0x3E, 0x32, 0x3C, 0x2F, 0x44, 0x53,  // de>2</DS
                    /* 0F50 */  0x49, 0x54, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63,  // ITraffic
                    /* 0F58 */  0x4D, 0x6F, 0x64, 0x65, 0x3E, 0x0A, 0x20, 0x20,  // Mode>.  
                    /* 0F60 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0F68 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0F70 */  0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x4C, 0x61,  //   <DSILa
                    /* 0F78 */  0x6E, 0x65, 0x73, 0x3E, 0x34, 0x3C, 0x2F, 0x44,  // nes>4</D
                    /* 0F80 */  0x53, 0x49, 0x4C, 0x61, 0x6E, 0x65, 0x73, 0x3E,  // SILanes>
                    /* 0F88 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 0F90 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0F98 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53,  //      <DS
                    /* 0FA0 */  0x49, 0x44, 0x53, 0x43, 0x45, 0x6E, 0x61, 0x62,  // IDSCEnab
                    /* 0FA8 */  0x6C, 0x65, 0x3E, 0x54, 0x72, 0x75, 0x65, 0x3C,  // le>True<
                    /* 0FB0 */  0x2F, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x45,  // /DSIDSCE
                    /* 0FB8 */  0x6E, 0x61, 0x62, 0x6C, 0x65, 0x3E, 0x0A, 0x20,  // nable>. 
                    /* 0FC0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0FC8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 0FD0 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x44,  //    <DSID
                    /* 0FD8 */  0x53, 0x43, 0x4D, 0x61, 0x6A, 0x6F, 0x72, 0x56,  // SCMajorV
                    /* 0FE0 */  0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x3E, 0x31,  // ersion>1
                    /* 0FE8 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,  // </DSIDSC
                    /* 0FF0 */  0x4D, 0x61, 0x6A, 0x6F, 0x72, 0x56, 0x65, 0x72,  // MajorVer
                    /* 0FF8 */  0x73, 0x69, 0x6F, 0x6E, 0x3E, 0x0A, 0x20, 0x20,  // sion>.  
                    /* 1000 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1008 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1010 */  0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x44, 0x53,  //   <DSIDS
                    /* 1018 */  0x43, 0x4D, 0x69, 0x6E, 0x6F, 0x72, 0x56, 0x65,  // CMinorVe
                    /* 1020 */  0x72, 0x73, 0x69, 0x6F, 0x6E, 0x3E, 0x31, 0x3C,  // rsion>1<
                    /* 1028 */  0x2F, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4D,  // /DSIDSCM
                    /* 1030 */  0x69, 0x6E, 0x6F, 0x72, 0x56, 0x65, 0x72, 0x73,  // inorVers
                    /* 1038 */  0x69, 0x6F, 0x6E, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // ion>.   
                    /* 1040 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1048 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1050 */  0x20, 0x3C, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,  //  <DSIDSC
                    /* 1058 */  0x53, 0x63, 0x72, 0x56, 0x65, 0x72, 0x73, 0x69,  // ScrVersi
                    /* 1060 */  0x6F, 0x6E, 0x3E, 0x30, 0x3C, 0x2F, 0x44, 0x53,  // on>0</DS
                    /* 1068 */  0x49, 0x44, 0x53, 0x43, 0x53, 0x63, 0x72, 0x56,  // IDSCScrV
                    /* 1070 */  0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x3E, 0x0A,  // ersion>.
                    /* 1078 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1080 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1088 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49,  //     <DSI
                    /* 1090 */  0x44, 0x53, 0x43, 0x50, 0x72, 0x6F, 0x66, 0x69,  // DSCProfi
                    /* 1098 */  0x6C, 0x65, 0x49, 0x44, 0x3E, 0x34, 0x3C, 0x2F,  // leID>4</
                    /* 10A0 */  0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x50, 0x72,  // DSIDSCPr
                    /* 10A8 */  0x6F, 0x66, 0x69, 0x6C, 0x65, 0x49, 0x44, 0x3E,  // ofileID>
                    /* 10B0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 10B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 10C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53,  //      <DS
                    /* 10C8 */  0x49, 0x44, 0x53, 0x43, 0x53, 0x6C, 0x69, 0x63,  // IDSCSlic
                    /* 10D0 */  0x65, 0x57, 0x69, 0x64, 0x74, 0x68, 0x3E, 0x31,  // eWidth>1
                    /* 10D8 */  0x30, 0x38, 0x30, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // 080</DSI
                    /* 10E0 */  0x44, 0x53, 0x43, 0x53, 0x6C, 0x69, 0x63, 0x65,  // DSCSlice
                    /* 10E8 */  0x57, 0x69, 0x64, 0x74, 0x68, 0x3E, 0x0A, 0x20,  // Width>. 
                    /* 10F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 10F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1100 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x44,  //    <DSID
                    /* 1108 */  0x53, 0x43, 0x53, 0x6C, 0x69, 0x63, 0x65, 0x48,  // SCSliceH
                    /* 1110 */  0x65, 0x69, 0x67, 0x68, 0x74, 0x3E, 0x31, 0x32,  // eight>12
                    /* 1118 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,  // </DSIDSC
                    /* 1120 */  0x53, 0x6C, 0x69, 0x63, 0x65, 0x48, 0x65, 0x69,  // SliceHei
                    /* 1128 */  0x67, 0x68, 0x74, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // ght>.   
                    /* 1130 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1138 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1140 */  0x20, 0x3C, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,  //  <DSIDSC
                    /* 1148 */  0x53, 0x6C, 0x69, 0x63, 0x65, 0x50, 0x65, 0x72,  // SlicePer
                    /* 1150 */  0x50, 0x61, 0x63, 0x6B, 0x65, 0x74, 0x3E, 0x32,  // Packet>2
                    /* 1158 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,  // </DSIDSC
                    /* 1160 */  0x53, 0x6C, 0x69, 0x63, 0x65, 0x50, 0x65, 0x72,  // SlicePer
                    /* 1168 */  0x50, 0x61, 0x63, 0x6B, 0x65, 0x74, 0x3E, 0x0A,  // Packet>.
                    /* 1170 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1178 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1180 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49,  //     <DSI
                    /* 1188 */  0x44, 0x4D, 0x41, 0x53, 0x63, 0x68, 0x65, 0x64,  // DMASched
                    /* 1190 */  0x75, 0x6C, 0x65, 0x4C, 0x69, 0x6E, 0x65, 0x3E,  // uleLine>
                    /* 1198 */  0x31, 0x3C, 0x2F, 0x44, 0x53, 0x49, 0x44, 0x4D,  // 1</DSIDM
                    /* 11A0 */  0x41, 0x53, 0x63, 0x68, 0x65, 0x64, 0x75, 0x6C,  // ASchedul
                    /* 11A8 */  0x65, 0x4C, 0x69, 0x6E, 0x65, 0x3E, 0x0A, 0x20,  // eLine>. 
                    /* 11B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 11B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 11C0 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x43,  //    <DSIC
                    /* 11C8 */  0x6C, 0x6F, 0x63, 0x6B, 0x53, 0x74, 0x72, 0x65,  // lockStre
                    /* 11D0 */  0x6E, 0x67, 0x74, 0x68, 0x48, 0x53, 0x3E, 0x30,  // ngthHS>0
                    /* 11D8 */  0x78, 0x46, 0x46, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // xFF</DSI
                    /* 11E0 */  0x43, 0x6C, 0x6F, 0x63, 0x6B, 0x53, 0x74, 0x72,  // ClockStr
                    /* 11E8 */  0x65, 0x6E, 0x67, 0x74, 0x68, 0x48, 0x53, 0x3E,  // engthHS>
                    /* 11F0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 11F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1200 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53,  //      <DS
                    /* 1208 */  0x49, 0x42, 0x69, 0x74, 0x43, 0x6C, 0x6F, 0x63,  // IBitCloc
                    /* 1210 */  0x6B, 0x46, 0x72, 0x65, 0x71, 0x75, 0x65, 0x6E,  // kFrequen
                    /* 1218 */  0x63, 0x79, 0x3E, 0x36, 0x38, 0x32, 0x30, 0x30,  // cy>68200
                    /* 1220 */  0x30, 0x30, 0x30, 0x30, 0x3C, 0x2F, 0x44, 0x53,  // 0000</DS
                    /* 1228 */  0x49, 0x42, 0x69, 0x74, 0x43, 0x6C, 0x6F, 0x63,  // IBitCloc
                    /* 1230 */  0x6B, 0x46, 0x72, 0x65, 0x71, 0x75, 0x65, 0x6E,  // kFrequen
                    /* 1238 */  0x63, 0x79, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // cy>.    
                    /* 1240 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1248 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1250 */  0x3C, 0x44, 0x53, 0x49, 0x44, 0x69, 0x73, 0x61,  // <DSIDisa
                    /* 1258 */  0x62, 0x6C, 0x65, 0x45, 0x6F, 0x54, 0x41, 0x66,  // bleEoTAf
                    /* 1260 */  0x74, 0x65, 0x72, 0x48, 0x53, 0x58, 0x66, 0x65,  // terHSXfe
                    /* 1268 */  0x72, 0x3E, 0x30, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // r>0</DSI
                    /* 1270 */  0x44, 0x69, 0x73, 0x61, 0x62, 0x6C, 0x65, 0x45,  // DisableE
                    /* 1278 */  0x6F, 0x54, 0x41, 0x66, 0x74, 0x65, 0x72, 0x48,  // oTAfterH
                    /* 1280 */  0x53, 0x58, 0x66, 0x65, 0x72, 0x3E, 0x0A, 0x20,  // SXfer>. 
                    /* 1288 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1290 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1298 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x4C,  //    <DSIL
                    /* 12A0 */  0x50, 0x31, 0x31, 0x41, 0x74, 0x49, 0x6E, 0x69,  // P11AtIni
                    /* 12A8 */  0x74, 0x3E, 0x54, 0x72, 0x75, 0x65, 0x3C, 0x2F,  // t>True</
                    /* 12B0 */  0x44, 0x53, 0x49, 0x4C, 0x50, 0x31, 0x31, 0x41,  // DSILP11A
                    /* 12B8 */  0x74, 0x49, 0x6E, 0x69, 0x74, 0x3E, 0x0A, 0x20,  // tInit>. 
                    /* 12C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 12C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 12D0 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x4C,  //    <DSIL
                    /* 12D8 */  0x6F, 0x77, 0x50, 0x6F, 0x77, 0x65, 0x72, 0x4D,  // owPowerM
                    /* 12E0 */  0x6F, 0x64, 0x65, 0x49, 0x6E, 0x42, 0x4C, 0x4C,  // odeInBLL
                    /* 12E8 */  0x50, 0x45, 0x4F, 0x46, 0x3E, 0x54, 0x72, 0x75,  // PEOF>Tru
                    /* 12F0 */  0x65, 0x3C, 0x2F, 0x44, 0x53, 0x49, 0x4C, 0x6F,  // e</DSILo
                    /* 12F8 */  0x77, 0x50, 0x6F, 0x77, 0x65, 0x72, 0x4D, 0x6F,  // wPowerMo
                    /* 1300 */  0x64, 0x65, 0x49, 0x6E, 0x42, 0x4C, 0x4C, 0x50,  // deInBLLP
                    /* 1308 */  0x45, 0x4F, 0x46, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // EOF>.   
                    /* 1310 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1318 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1320 */  0x20, 0x3C, 0x44, 0x53, 0x49, 0x4C, 0x6F, 0x77,  //  <DSILow
                    /* 1328 */  0x50, 0x6F, 0x77, 0x65, 0x72, 0x4D, 0x6F, 0x64,  // PowerMod
                    /* 1330 */  0x65, 0x49, 0x6E, 0x42, 0x4C, 0x4C, 0x50, 0x3E,  // eInBLLP>
                    /* 1338 */  0x54, 0x72, 0x75, 0x65, 0x3C, 0x2F, 0x44, 0x53,  // True</DS
                    /* 1340 */  0x49, 0x4C, 0x6F, 0x77, 0x50, 0x6F, 0x77, 0x65,  // ILowPowe
                    /* 1348 */  0x72, 0x4D, 0x6F, 0x64, 0x65, 0x49, 0x6E, 0x42,  // rModeInB
                    /* 1350 */  0x4C, 0x4C, 0x50, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // LLP>.   
                    /* 1358 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1360 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1368 */  0x20, 0x3C, 0x44, 0x53, 0x49, 0x43, 0x6D, 0x64,  //  <DSICmd
                    /* 1370 */  0x53, 0x77, 0x61, 0x70, 0x49, 0x6E, 0x74, 0x65,  // SwapInte
                    /* 1378 */  0x72, 0x66, 0x61, 0x63, 0x65, 0x3E, 0x46, 0x61,  // rface>Fa
                    /* 1380 */  0x6C, 0x73, 0x65, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // lse</DSI
                    /* 1388 */  0x43, 0x6D, 0x64, 0x53, 0x77, 0x61, 0x70, 0x49,  // CmdSwapI
                    /* 1390 */  0x6E, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,  // nterface
                    /* 1398 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 13A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 13A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44,  //       <D
                    /* 13B0 */  0x53, 0x49, 0x43, 0x6D, 0x64, 0x55, 0x73, 0x69,  // SICmdUsi
                    /* 13B8 */  0x6E, 0x67, 0x54, 0x72, 0x69, 0x67, 0x67, 0x65,  // ngTrigge
                    /* 13C0 */  0x72, 0x3E, 0x46, 0x61, 0x6C, 0x73, 0x65, 0x3C,  // r>False<
                    /* 13C8 */  0x2F, 0x44, 0x53, 0x49, 0x43, 0x6D, 0x64, 0x55,  // /DSICmdU
                    /* 13D0 */  0x73, 0x69, 0x6E, 0x67, 0x54, 0x72, 0x69, 0x67,  // singTrig
                    /* 13D8 */  0x67, 0x65, 0x72, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // ger>.   
                    /* 13E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 13E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 13F0 */  0x20, 0x3C, 0x44, 0x53, 0x49, 0x45, 0x6E, 0x61,  //  <DSIEna
                    /* 13F8 */  0x62, 0x6C, 0x65, 0x41, 0x75, 0x74, 0x6F, 0x52,  // bleAutoR
                    /* 1400 */  0x65, 0x66, 0x72, 0x65, 0x73, 0x68, 0x3E, 0x54,  // efresh>T
                    /* 1408 */  0x72, 0x75, 0x65, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // rue</DSI
                    /* 1410 */  0x45, 0x6E, 0x61, 0x62, 0x6C, 0x65, 0x41, 0x75,  // EnableAu
                    /* 1418 */  0x74, 0x6F, 0x52, 0x65, 0x66, 0x72, 0x65, 0x73,  // toRefres
                    /* 1420 */  0x68, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // h>.     
                    /* 1428 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1430 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 1438 */  0x44, 0x53, 0x49, 0x41, 0x75, 0x74, 0x6F, 0x52,  // DSIAutoR
                    /* 1440 */  0x65, 0x66, 0x72, 0x65, 0x73, 0x68, 0x46, 0x72,  // efreshFr
                    /* 1448 */  0x61, 0x6D, 0x65, 0x4E, 0x75, 0x6D, 0x44, 0x69,  // ameNumDi
                    /* 1450 */  0x76, 0x3E, 0x31, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // v>1</DSI
                    /* 1458 */  0x41, 0x75, 0x74, 0x6F, 0x52, 0x65, 0x66, 0x72,  // AutoRefr
                    /* 1460 */  0x65, 0x73, 0x68, 0x46, 0x72, 0x61, 0x6D, 0x65,  // eshFrame
                    /* 1468 */  0x4E, 0x75, 0x6D, 0x44, 0x69, 0x76, 0x3E, 0x0A,  // NumDiv>.
                    /* 1470 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1478 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1480 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49,  //     <DSI
                    /* 1488 */  0x54, 0x45, 0x43, 0x68, 0x65, 0x63, 0x6B, 0x45,  // TECheckE
                    /* 1490 */  0x6E, 0x61, 0x62, 0x6C, 0x65, 0x3E, 0x54, 0x72,  // nable>Tr
                    /* 1498 */  0x75, 0x65, 0x3C, 0x2F, 0x44, 0x53, 0x49, 0x54,  // ue</DSIT
                    /* 14A0 */  0x45, 0x43, 0x68, 0x65, 0x63, 0x6B, 0x45, 0x6E,  // ECheckEn
                    /* 14A8 */  0x61, 0x62, 0x6C, 0x65, 0x3E, 0x0A, 0x20, 0x20,  // able>.  
                    /* 14B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 14B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 14C0 */  0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x54, 0x45,  //   <DSITE
                    /* 14C8 */  0x55, 0x73, 0x69, 0x6E, 0x67, 0x44, 0x65, 0x64,  // UsingDed
                    /* 14D0 */  0x69, 0x63, 0x61, 0x74, 0x65, 0x64, 0x54, 0x45,  // icatedTE
                    /* 14D8 */  0x50, 0x69, 0x6E, 0x3E, 0x54, 0x72, 0x75, 0x65,  // Pin>True
                    /* 14E0 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x54, 0x45, 0x55,  // </DSITEU
                    /* 14E8 */  0x73, 0x69, 0x6E, 0x67, 0x44, 0x65, 0x64, 0x69,  // singDedi
                    /* 14F0 */  0x63, 0x61, 0x74, 0x65, 0x64, 0x54, 0x45, 0x50,  // catedTEP
                    /* 14F8 */  0x69, 0x6E, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // in>.    
                    /* 1500 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1508 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1510 */  0x3C, 0x44, 0x53, 0x49, 0x54, 0x45, 0x76, 0x53,  // <DSITEvS
                    /* 1518 */  0x79, 0x6E, 0x63, 0x53, 0x74, 0x61, 0x72, 0x74,  // yncStart
                    /* 1520 */  0x50, 0x6F, 0x73, 0x3E, 0x32, 0x34, 0x30, 0x30,  // Pos>2400
                    /* 1528 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x54, 0x45, 0x76,  // </DSITEv
                    /* 1530 */  0x53, 0x79, 0x6E, 0x63, 0x53, 0x74, 0x61, 0x72,  // SyncStar
                    /* 1538 */  0x74, 0x50, 0x6F, 0x73, 0x3E, 0x0A, 0x20, 0x20,  // tPos>.  
                    /* 1540 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1548 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1550 */  0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x54, 0x45,  //   <DSITE
                    /* 1558 */  0x76, 0x53, 0x79, 0x6E, 0x63, 0x49, 0x6E, 0x69,  // vSyncIni
                    /* 1560 */  0x74, 0x56, 0x61, 0x6C, 0x3E, 0x32, 0x34, 0x30,  // tVal>240
                    /* 1568 */  0x30, 0x3C, 0x2F, 0x44, 0x53, 0x49, 0x54, 0x45,  // 0</DSITE
                    /* 1570 */  0x76, 0x53, 0x79, 0x6E, 0x63, 0x49, 0x6E, 0x69,  // vSyncIni
                    /* 1578 */  0x74, 0x56, 0x61, 0x6C, 0x3E, 0x0A, 0x20, 0x20,  // tVal>.  
                    /* 1580 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1588 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1590 */  0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x48, 0x73,  //   <DSIHs
                    /* 1598 */  0x61, 0x48, 0x73, 0x65, 0x41, 0x66, 0x74, 0x65,  // aHseAfte
                    /* 15A0 */  0x72, 0x56, 0x73, 0x56, 0x65, 0x3E, 0x46, 0x61,  // rVsVe>Fa
                    /* 15A8 */  0x6C, 0x73, 0x65, 0x3C, 0x2F, 0x44, 0x53, 0x49,  // lse</DSI
                    /* 15B0 */  0x48, 0x73, 0x61, 0x48, 0x73, 0x65, 0x41, 0x66,  // HsaHseAf
                    /* 15B8 */  0x74, 0x65, 0x72, 0x56, 0x73, 0x56, 0x65, 0x3E,  // terVsVe>
                    /* 15C0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 15C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 15D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53,  //      <DS
                    /* 15D8 */  0x49, 0x4C, 0x6F, 0x77, 0x50, 0x6F, 0x77, 0x65,  // ILowPowe
                    /* 15E0 */  0x72, 0x4D, 0x6F, 0x64, 0x65, 0x49, 0x6E, 0x48,  // rModeInH
                    /* 15E8 */  0x46, 0x50, 0x3E, 0x46, 0x61, 0x6C, 0x73, 0x65,  // FP>False
                    /* 15F0 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x4C, 0x6F, 0x77,  // </DSILow
                    /* 15F8 */  0x50, 0x6F, 0x77, 0x65, 0x72, 0x4D, 0x6F, 0x64,  // PowerMod
                    /* 1600 */  0x65, 0x49, 0x6E, 0x48, 0x46, 0x50, 0x3E, 0x0A,  // eInHFP>.
                    /* 1608 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1610 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1618 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49,  //     <DSI
                    /* 1620 */  0x4C, 0x6F, 0x77, 0x50, 0x6F, 0x77, 0x65, 0x72,  // LowPower
                    /* 1628 */  0x4D, 0x6F, 0x64, 0x65, 0x49, 0x6E, 0x48, 0x42,  // ModeInHB
                    /* 1630 */  0x50, 0x3E, 0x46, 0x61, 0x6C, 0x73, 0x65, 0x3C,  // P>False<
                    /* 1638 */  0x2F, 0x44, 0x53, 0x49, 0x4C, 0x6F, 0x77, 0x50,  // /DSILowP
                    /* 1640 */  0x6F, 0x77, 0x65, 0x72, 0x4D, 0x6F, 0x64, 0x65,  // owerMode
                    /* 1648 */  0x49, 0x6E, 0x48, 0x42, 0x50, 0x3E, 0x0A, 0x20,  // InHBP>. 
                    /* 1650 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1658 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1660 */  0x20, 0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x4C,  //    <DSIL
                    /* 1668 */  0x6F, 0x77, 0x50, 0x6F, 0x77, 0x65, 0x72, 0x4D,  // owPowerM
                    /* 1670 */  0x6F, 0x64, 0x65, 0x49, 0x6E, 0x48, 0x53, 0x41,  // odeInHSA
                    /* 1678 */  0x3E, 0x46, 0x61, 0x6C, 0x73, 0x65, 0x3C, 0x2F,  // >False</
                    /* 1680 */  0x44, 0x53, 0x49, 0x4C, 0x6F, 0x77, 0x50, 0x6F,  // DSILowPo
                    /* 1688 */  0x77, 0x65, 0x72, 0x4D, 0x6F, 0x64, 0x65, 0x49,  // werModeI
                    /* 1690 */  0x6E, 0x48, 0x53, 0x41, 0x3E, 0x0A, 0x20, 0x20,  // nHSA>.  
                    /* 1698 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 16A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 16A8 */  0x20, 0x20, 0x3C, 0x44, 0x53, 0x49, 0x43, 0x6F,  //   <DSICo
                    /* 16B0 */  0x6E, 0x74, 0x72, 0x6F, 0x6C, 0x6C, 0x65, 0x72,  // ntroller
                    /* 16B8 */  0x4D, 0x61, 0x70, 0x70, 0x69, 0x6E, 0x67, 0x3E,  // Mapping>
                    /* 16C0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 16C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 16D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 16D8 */  0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  00.    
                    /* 16E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 16E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 16F0 */  0x3C, 0x2F, 0x44, 0x53, 0x49, 0x43, 0x6F, 0x6E,  // </DSICon
                    /* 16F8 */  0x74, 0x72, 0x6F, 0x6C, 0x6C, 0x65, 0x72, 0x4D,  // trollerM
                    /* 1700 */  0x61, 0x70, 0x70, 0x69, 0x6E, 0x67, 0x3E, 0x0A,  // apping>.
                    /* 1708 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1710 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1718 */  0x3C, 0x2F, 0x47, 0x72, 0x6F, 0x75, 0x70, 0x3E,  // </Group>
                    /* 1720 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 1728 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1730 */  0x20, 0x3C, 0x44, 0x53, 0x49, 0x49, 0x6E, 0x69,  //  <DSIIni
                    /* 1738 */  0x74, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6E, 0x63,  // tSequenc
                    /* 1740 */  0x65, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // e>.     
                    /* 1748 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1750 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 1758 */  0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x35, 0x20,  // 9 F0 55 
                    /* 1760 */  0x41, 0x41, 0x20, 0x35, 0x32, 0x20, 0x30, 0x38,  // AA 52 08
                    /* 1768 */  0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  00.    
                    /* 1770 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1778 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1780 */  0x33, 0x39, 0x20, 0x42, 0x41, 0x20, 0x30, 0x31,  // 39 BA 01
                    /* 1788 */  0x20, 0x45, 0x36, 0x20, 0x30, 0x30, 0x20, 0x31,  //  E6 00 1
                    /* 1790 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x33, 0x30, 0x20,  // 0 00 30 
                    /* 1798 */  0x30, 0x30, 0x20, 0x30, 0x31, 0x0A, 0x20, 0x20,  // 00 01.  
                    /* 17A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 17A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 17B0 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x42, 0x32, 0x20,  //   15 B2 
                    /* 17B8 */  0x35, 0x38, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 58.     
                    /* 17C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 17C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x31,  //        1
                    /* 17D0 */  0x35, 0x20, 0x36, 0x46, 0x20, 0x30, 0x32, 0x0A,  // 5 6F 02.
                    /* 17D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 17E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 17E8 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42,  //     39 B
                    /* 17F0 */  0x32, 0x20, 0x31, 0x32, 0x20, 0x31, 0x32, 0x0A,  // 2 12 12.
                    /* 17F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1800 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1808 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42,  //     39 B
                    /* 1810 */  0x45, 0x20, 0x30, 0x45, 0x20, 0x30, 0x42, 0x20,  // E 0E 0B 
                    /* 1818 */  0x31, 0x34, 0x20, 0x31, 0x33, 0x0A, 0x20, 0x20,  // 14 13.  
                    /* 1820 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1828 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1830 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x36, 0x46, 0x20,  //   15 6F 
                    /* 1838 */  0x30, 0x35, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 05.     
                    /* 1840 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1848 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x31,  //        1
                    /* 1850 */  0x35, 0x20, 0x42, 0x45, 0x20, 0x38, 0x41, 0x0A,  // 5 BE 8A.
                    /* 1858 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1860 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1868 */  0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x43,  //     15 C
                    /* 1870 */  0x30, 0x20, 0x36, 0x36, 0x0A, 0x20, 0x20, 0x20,  // 0 66.   
                    /* 1878 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1880 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1888 */  0x20, 0x31, 0x35, 0x20, 0x36, 0x46, 0x20, 0x30,  //  15 6F 0
                    /* 1890 */  0x38, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // 8.      
                    /* 1898 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 18A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35,  //       15
                    /* 18A8 */  0x20, 0x42, 0x35, 0x20, 0x33, 0x32, 0x0A, 0x20,  //  B5 32. 
                    /* 18B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 18B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 18C0 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30,  //    39 F0
                    /* 18C8 */  0x20, 0x35, 0x35, 0x20, 0x41, 0x41, 0x20, 0x35,  //  55 AA 5
                    /* 18D0 */  0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x37, 0x0A,  // 2 08 07.
                    /* 18D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 18E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 18E8 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x43,  //     39 C
                    /* 18F0 */  0x30, 0x20, 0x30, 0x31, 0x0A, 0x20, 0x20, 0x20,  // 0 01.   
                    /* 18F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1900 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1908 */  0x20, 0x33, 0x39, 0x20, 0x43, 0x31, 0x20, 0x33,  //  39 C1 3
                    /* 1910 */  0x30, 0x20, 0x30, 0x46, 0x20, 0x30, 0x34, 0x20,  // 0 0F 04 
                    /* 1918 */  0x43, 0x39, 0x20, 0x30, 0x46, 0x20, 0x38, 0x31,  // C9 0F 81
                    /* 1920 */  0x20, 0x45, 0x45, 0x20, 0x43, 0x36, 0x20, 0x33,  //  EE C6 3
                    /* 1928 */  0x46, 0x20, 0x46, 0x42, 0x20, 0x42, 0x33, 0x20,  // F FB B3 
                    /* 1930 */  0x36, 0x41, 0x20, 0x33, 0x46, 0x20, 0x46, 0x36,  // 6A 3F F6
                    /* 1938 */  0x20, 0x44, 0x31, 0x20, 0x34, 0x32, 0x20, 0x38,  //  D1 42 8
                    /* 1940 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x46, 0x37, 0x20,  // 0 00 F7 
                    /* 1948 */  0x33, 0x33, 0x20, 0x42, 0x31, 0x20, 0x30, 0x30,  // 33 B1 00
                    /* 1950 */  0x20, 0x31, 0x38, 0x20, 0x30, 0x30, 0x20, 0x30,  //  18 00 0
                    /* 1958 */  0x30, 0x20, 0x38, 0x42, 0x20, 0x32, 0x33, 0x20,  // 0 8B 23 
                    /* 1960 */  0x33, 0x33, 0x20, 0x43, 0x30, 0x20, 0x30, 0x46,  // 33 C0 0F
                    /* 1968 */  0x20, 0x42, 0x39, 0x20, 0x30, 0x46, 0x20, 0x44,  //  B9 0F D
                    /* 1970 */  0x44, 0x20, 0x38, 0x44, 0x20, 0x30, 0x30, 0x20,  // D 8D 00 
                    /* 1978 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x44,  // 00 00 0D
                    /* 1980 */  0x20, 0x30, 0x38, 0x20, 0x30, 0x30, 0x20, 0x31,  //  08 00 1
                    /* 1988 */  0x37, 0x20, 0x32, 0x33, 0x20, 0x30, 0x30, 0x0A,  // 7 23 00.
                    /* 1990 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1998 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 19A0 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x43,  //     39 C
                    /* 19A8 */  0x32, 0x20, 0x33, 0x38, 0x20, 0x30, 0x46, 0x20,  // 2 38 0F 
                    /* 19B0 */  0x30, 0x42, 0x20, 0x36, 0x34, 0x20, 0x30, 0x32,  // 0B 64 02
                    /* 19B8 */  0x20, 0x31, 0x31, 0x20, 0x46, 0x36, 0x20, 0x34,  //  11 F6 4
                    /* 19C0 */  0x43, 0x20, 0x33, 0x46, 0x20, 0x46, 0x41, 0x20,  // C 3F FA 
                    /* 19C8 */  0x45, 0x32, 0x20, 0x31, 0x34, 0x20, 0x46, 0x46,  // E2 14 FF
                    /* 19D0 */  0x20, 0x46, 0x45, 0x20, 0x34, 0x31, 0x20, 0x41,  //  FE 41 A
                    /* 19D8 */  0x38, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 8 00 00 
                    /* 19E0 */  0x35, 0x45, 0x20, 0x32, 0x36, 0x20, 0x39, 0x30,  // 5E 26 90
                    /* 19E8 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x32,  //  00 00 2
                    /* 19F0 */  0x34, 0x20, 0x30, 0x30, 0x20, 0x31, 0x37, 0x20,  // 4 00 17 
                    /* 19F8 */  0x39, 0x30, 0x20, 0x33, 0x33, 0x20, 0x43, 0x30,  // 90 33 C0
                    /* 1A00 */  0x20, 0x30, 0x39, 0x20, 0x42, 0x34, 0x20, 0x30,  //  09 B4 0
                    /* 1A08 */  0x46, 0x20, 0x39, 0x34, 0x20, 0x45, 0x39, 0x20,  // F 94 E9 
                    /* 1A10 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x39, 0x30,  // 00 00 90
                    /* 1A18 */  0x20, 0x30, 0x44, 0x20, 0x33, 0x43, 0x20, 0x39,  //  0D 3C 9
                    /* 1A20 */  0x30, 0x20, 0x31, 0x37, 0x20, 0x35, 0x37, 0x20,  // 0 17 57 
                    /* 1A28 */  0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 00.     
                    /* 1A30 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1A38 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 1A40 */  0x39, 0x20, 0x43, 0x33, 0x20, 0x33, 0x43, 0x20,  // 9 C3 3C 
                    /* 1A48 */  0x30, 0x30, 0x20, 0x30, 0x34, 0x20, 0x43, 0x39,  // 00 04 C9
                    /* 1A50 */  0x20, 0x30, 0x46, 0x20, 0x38, 0x31, 0x20, 0x31,  //  0F 81 1
                    /* 1A58 */  0x31, 0x20, 0x33, 0x41, 0x20, 0x33, 0x46, 0x20,  // 1 3A 3F 
                    /* 1A60 */  0x46, 0x39, 0x20, 0x35, 0x38, 0x20, 0x37, 0x43,  // F9 58 7C
                    /* 1A68 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x34, 0x20, 0x46,  //  00 04 F
                    /* 1A70 */  0x31, 0x20, 0x37, 0x38, 0x20, 0x30, 0x30, 0x20,  // 1 78 00 
                    /* 1A78 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1A80 */  0x20, 0x30, 0x30, 0x20, 0x39, 0x30, 0x20, 0x31,  //  00 90 1
                    /* 1A88 */  0x38, 0x20, 0x33, 0x43, 0x20, 0x39, 0x30, 0x20,  // 8 3C 90 
                    /* 1A90 */  0x38, 0x42, 0x20, 0x35, 0x46, 0x20, 0x33, 0x33,  // 8B 5F 33
                    /* 1A98 */  0x20, 0x36, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  60 00 0
                    /* 1AA0 */  0x30, 0x20, 0x30, 0x43, 0x20, 0x44, 0x44, 0x20,  // 0 0C DD 
                    /* 1AA8 */  0x37, 0x33, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 73 00 00
                    /* 1AB0 */  0x20, 0x30, 0x34, 0x20, 0x32, 0x30, 0x20, 0x30,  //  04 20 0
                    /* 1AB8 */  0x38, 0x20, 0x30, 0x34, 0x20, 0x32, 0x41, 0x20,  // 8 04 2A 
                    /* 1AC0 */  0x32, 0x33, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20,  // 23 00.  
                    /* 1AC8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1AD0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1AD8 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x43, 0x34, 0x20,  //   39 C4 
                    /* 1AE0 */  0x33, 0x43, 0x20, 0x30, 0x30, 0x20, 0x30, 0x42,  // 3C 00 0B
                    /* 1AE8 */  0x20, 0x36, 0x34, 0x20, 0x30, 0x32, 0x20, 0x31,  //  64 02 1
                    /* 1AF0 */  0x31, 0x20, 0x30, 0x39, 0x20, 0x42, 0x34, 0x20,  // 1 09 B4 
                    /* 1AF8 */  0x33, 0x46, 0x20, 0x46, 0x36, 0x20, 0x43, 0x41,  // 3F F6 CA
                    /* 1B00 */  0x20, 0x32, 0x34, 0x20, 0x43, 0x30, 0x20, 0x30,  //  24 C0 0
                    /* 1B08 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1B10 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1B18 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x38,  //  00 00 8
                    /* 1B20 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x43, 0x46, 0x20,  // 0 00 CF 
                    /* 1B28 */  0x39, 0x30, 0x20, 0x31, 0x37, 0x20, 0x33, 0x42,  // 90 17 3B
                    /* 1B30 */  0x20, 0x33, 0x33, 0x20, 0x43, 0x30, 0x20, 0x30,  //  33 C0 0
                    /* 1B38 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x43, 0x20,  // 0 00 0C 
                    /* 1B40 */  0x39, 0x34, 0x20, 0x31, 0x37, 0x20, 0x30, 0x30,  // 94 17 00
                    /* 1B48 */  0x20, 0x30, 0x30, 0x20, 0x39, 0x34, 0x20, 0x32,  //  00 94 2
                    /* 1B50 */  0x30, 0x20, 0x33, 0x43, 0x20, 0x39, 0x34, 0x20,  // 0 3C 94 
                    /* 1B58 */  0x32, 0x41, 0x20, 0x35, 0x37, 0x20, 0x30, 0x30,  // 2A 57 00
                    /* 1B60 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 1B68 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1B70 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,  //      39 
                    /* 1B78 */  0x43, 0x35, 0x20, 0x32, 0x36, 0x20, 0x30, 0x30,  // C5 26 00
                    /* 1B80 */  0x20, 0x30, 0x34, 0x20, 0x43, 0x39, 0x20, 0x30,  //  04 C9 0
                    /* 1B88 */  0x46, 0x20, 0x38, 0x31, 0x20, 0x31, 0x31, 0x20,  // F 81 11 
                    /* 1B90 */  0x33, 0x41, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 3A 00 00
                    /* 1B98 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x33,  //  00 00 3
                    /* 1BA0 */  0x46, 0x20, 0x45, 0x46, 0x20, 0x31, 0x34, 0x20,  // F EF 14 
                    /* 1BA8 */  0x33, 0x34, 0x20, 0x38, 0x30, 0x20, 0x30, 0x30,  // 34 80 00
                    /* 1BB0 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1BB8 */  0x30, 0x20, 0x30, 0x33, 0x20, 0x41, 0x43, 0x20,  // 0 03 AC 
                    /* 1BC0 */  0x30, 0x30, 0x20, 0x30, 0x34, 0x20, 0x31, 0x46,  // 00 04 1F
                    /* 1BC8 */  0x20, 0x32, 0x33, 0x20, 0x33, 0x33, 0x20, 0x43,  //  23 33 C
                    /* 1BD0 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1BD8 */  0x30, 0x33, 0x20, 0x32, 0x33, 0x20, 0x38, 0x44,  // 03 23 8D
                    /* 1BE0 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1BE8 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1BF0 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1BF8 */  0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  00.    
                    /* 1C00 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1C08 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1C10 */  0x33, 0x39, 0x20, 0x43, 0x36, 0x20, 0x32, 0x45,  // 39 C6 2E
                    /* 1C18 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x42, 0x20, 0x36,  //  00 0B 6
                    /* 1C20 */  0x34, 0x20, 0x30, 0x32, 0x20, 0x31, 0x31, 0x20,  // 4 02 11 
                    /* 1C28 */  0x30, 0x39, 0x20, 0x42, 0x34, 0x20, 0x30, 0x30,  // 09 B4 00
                    /* 1C30 */  0x20, 0x30, 0x33, 0x20, 0x31, 0x31, 0x20, 0x46,  //  03 11 F
                    /* 1C38 */  0x34, 0x20, 0x46, 0x46, 0x20, 0x46, 0x44, 0x20,  // 4 FF FD 
                    /* 1C40 */  0x36, 0x32, 0x20, 0x37, 0x43, 0x20, 0x30, 0x30,  // 62 7C 00
                    /* 1C48 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1C50 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x34, 0x20,  // 0 00 04 
                    /* 1C58 */  0x32, 0x30, 0x20, 0x32, 0x34, 0x20, 0x30, 0x34,  // 20 24 04
                    /* 1C60 */  0x20, 0x33, 0x37, 0x20, 0x39, 0x30, 0x20, 0x33,  //  37 90 3
                    /* 1C68 */  0x33, 0x20, 0x43, 0x30, 0x20, 0x30, 0x30, 0x20,  // 3 C0 00 
                    /* 1C70 */  0x30, 0x30, 0x20, 0x30, 0x33, 0x20, 0x36, 0x43,  // 00 03 6C
                    /* 1C78 */  0x20, 0x45, 0x39, 0x20, 0x30, 0x30, 0x20, 0x30,  //  E9 00 0
                    /* 1C80 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1C88 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1C90 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x0A, 0x20,  //  00 00. 
                    /* 1C98 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1CA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1CA8 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x43, 0x37,  //    39 C7
                    /* 1CB0 */  0x20, 0x32, 0x41, 0x20, 0x30, 0x46, 0x20, 0x30,  //  2A 0F 0
                    /* 1CB8 */  0x34, 0x20, 0x43, 0x39, 0x20, 0x30, 0x46, 0x20,  // 4 C9 0F 
                    /* 1CC0 */  0x38, 0x31, 0x20, 0x45, 0x45, 0x20, 0x43, 0x36,  // 81 EE C6
                    /* 1CC8 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x32, 0x20, 0x35,  //  00 02 5
                    /* 1CD0 */  0x41, 0x20, 0x45, 0x45, 0x20, 0x30, 0x30, 0x20,  // A EE 00 
                    /* 1CD8 */  0x30, 0x43, 0x20, 0x41, 0x45, 0x20, 0x38, 0x36,  // 0C AE 86
                    /* 1CE0 */  0x20, 0x37, 0x46, 0x20, 0x46, 0x44, 0x20, 0x46,  //  7F FD F
                    /* 1CE8 */  0x39, 0x20, 0x46, 0x33, 0x20, 0x36, 0x35, 0x20,  // 9 F3 65 
                    /* 1CF0 */  0x39, 0x33, 0x20, 0x41, 0x43, 0x20, 0x33, 0x43,  // 93 AC 3C
                    /* 1CF8 */  0x20, 0x39, 0x34, 0x20, 0x31, 0x46, 0x20, 0x35,  //  94 1F 5
                    /* 1D00 */  0x46, 0x20, 0x33, 0x33, 0x20, 0x36, 0x46, 0x20,  // F 33 6F 
                    /* 1D08 */  0x46, 0x30, 0x20, 0x34, 0x37, 0x20, 0x30, 0x30,  // F0 47 00
                    /* 1D10 */  0x20, 0x32, 0x33, 0x20, 0x37, 0x33, 0x20, 0x30,  //  23 73 0
                    /* 1D18 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1D20 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1D28 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1D30 */  0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // 0.      
                    /* 1D38 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1D40 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,  //       39
                    /* 1D48 */  0x20, 0x43, 0x38, 0x20, 0x32, 0x41, 0x20, 0x30,  //  C8 2A 0
                    /* 1D50 */  0x46, 0x20, 0x30, 0x42, 0x20, 0x36, 0x34, 0x20,  // F 0B 64 
                    /* 1D58 */  0x30, 0x32, 0x20, 0x31, 0x31, 0x20, 0x46, 0x36,  // 02 11 F6
                    /* 1D60 */  0x20, 0x34, 0x43, 0x20, 0x30, 0x30, 0x20, 0x30,  //  4C 00 0
                    /* 1D68 */  0x37, 0x20, 0x32, 0x39, 0x20, 0x45, 0x34, 0x20,  // 7 29 E4 
                    /* 1D70 */  0x43, 0x30, 0x20, 0x30, 0x30, 0x20, 0x44, 0x46,  // C0 00 DF
                    /* 1D78 */  0x20, 0x32, 0x43, 0x20, 0x37, 0x46, 0x20, 0x46,  //  2C 7F F
                    /* 1D80 */  0x46, 0x20, 0x34, 0x33, 0x20, 0x42, 0x32, 0x20,  // F 43 B2 
                    /* 1D88 */  0x45, 0x30, 0x20, 0x38, 0x34, 0x20, 0x32, 0x30,  // E0 84 20
                    /* 1D90 */  0x20, 0x43, 0x46, 0x20, 0x39, 0x34, 0x20, 0x33,  //  CF 94 3
                    /* 1D98 */  0x37, 0x20, 0x33, 0x42, 0x20, 0x33, 0x33, 0x20,  // 7 3B 33 
                    /* 1DA0 */  0x43, 0x46, 0x20, 0x46, 0x36, 0x20, 0x34, 0x43,  // CF F6 4C
                    /* 1DA8 */  0x20, 0x30, 0x30, 0x20, 0x36, 0x43, 0x20, 0x31,  //  00 6C 1
                    /* 1DB0 */  0x37, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 7 00 00 
                    /* 1DB8 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1DC0 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1DC8 */  0x30, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20,  // 0 00.   
                    /* 1DD0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1DD8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1DE0 */  0x20, 0x33, 0x39, 0x20, 0x43, 0x39, 0x20, 0x32,  //  39 C9 2
                    /* 1DE8 */  0x37, 0x20, 0x30, 0x30, 0x20, 0x30, 0x33, 0x20,  // 7 00 03 
                    /* 1DF0 */  0x43, 0x31, 0x20, 0x30, 0x34, 0x20, 0x34, 0x31,  // C1 04 41
                    /* 1DF8 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1E00 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1E08 */  0x30, 0x30, 0x20, 0x33, 0x46, 0x20, 0x46, 0x45,  // 00 3F FE
                    /* 1E10 */  0x20, 0x46, 0x38, 0x20, 0x34, 0x32, 0x20, 0x30,  //  F8 42 0
                    /* 1E18 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1E20 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1E28 */  0x20, 0x36, 0x33, 0x20, 0x32, 0x34, 0x20, 0x30,  //  63 24 0
                    /* 1E30 */  0x30, 0x20, 0x38, 0x34, 0x20, 0x34, 0x33, 0x20,  // 0 84 43 
                    /* 1E38 */  0x33, 0x33, 0x20, 0x39, 0x30, 0x20, 0x30, 0x30,  // 33 90 00
                    /* 1E40 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x33, 0x20, 0x31,  //  00 03 1
                    /* 1E48 */  0x46, 0x20, 0x44, 0x46, 0x20, 0x30, 0x30, 0x20,  // F DF 00 
                    /* 1E50 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1E58 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1E60 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x0A,  // 0 00 00.
                    /* 1E68 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1E70 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1E78 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x43,  //     39 C
                    /* 1E80 */  0x41, 0x20, 0x32, 0x31, 0x20, 0x30, 0x30, 0x20,  // A 21 00 
                    /* 1E88 */  0x30, 0x33, 0x20, 0x43, 0x31, 0x20, 0x30, 0x34,  // 03 C1 04
                    /* 1E90 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1E98 */  0x30, 0x20, 0x33, 0x46, 0x20, 0x46, 0x46, 0x20,  // 0 3F FF 
                    /* 1EA0 */  0x30, 0x46, 0x20, 0x43, 0x30, 0x20, 0x33, 0x46,  // 0F C0 3F
                    /* 1EA8 */  0x20, 0x46, 0x46, 0x20, 0x30, 0x38, 0x20, 0x30,  //  FF 08 0
                    /* 1EB0 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1EB8 */  0x30, 0x46, 0x20, 0x30, 0x34, 0x20, 0x30, 0x30,  // 0F 04 00
                    /* 1EC0 */  0x20, 0x30, 0x30, 0x20, 0x34, 0x32, 0x20, 0x32,  //  00 42 2
                    /* 1EC8 */  0x34, 0x20, 0x30, 0x30, 0x20, 0x36, 0x32, 0x20,  // 4 00 62 
                    /* 1ED0 */  0x34, 0x33, 0x20, 0x33, 0x33, 0x20, 0x39, 0x30,  // 43 33 90
                    /* 1ED8 */  0x20, 0x30, 0x33, 0x20, 0x45, 0x30, 0x20, 0x30,  //  03 E0 0
                    /* 1EE0 */  0x46, 0x20, 0x45, 0x31, 0x20, 0x45, 0x30, 0x20,  // F E1 E0 
                    /* 1EE8 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1EF0 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1EF8 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1F00 */  0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 00.     
                    /* 1F08 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1F10 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 1F18 */  0x39, 0x20, 0x43, 0x42, 0x20, 0x32, 0x44, 0x20,  // 9 CB 2D 
                    /* 1F20 */  0x30, 0x30, 0x20, 0x30, 0x34, 0x20, 0x30, 0x30,  // 00 04 00
                    /* 1F28 */  0x20, 0x30, 0x34, 0x20, 0x30, 0x30, 0x20, 0x30,  //  04 00 0
                    /* 1F30 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x33, 0x46, 0x20,  // 0 00 3F 
                    /* 1F38 */  0x46, 0x46, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // FF 00 00
                    /* 1F40 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1F48 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x38, 0x30, 0x20,  // 0 00 80 
                    /* 1F50 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1F58 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x34,  //  00 00 4
                    /* 1F60 */  0x32, 0x20, 0x34, 0x34, 0x20, 0x30, 0x30, 0x20,  // 2 44 00 
                    /* 1F68 */  0x36, 0x32, 0x20, 0x36, 0x34, 0x20, 0x33, 0x33,  // 62 64 33
                    /* 1F70 */  0x20, 0x36, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  60 00 0
                    /* 1F78 */  0x30, 0x20, 0x30, 0x43, 0x20, 0x45, 0x30, 0x20,  // 0 0C E0 
                    /* 1F80 */  0x32, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 20 00 00
                    /* 1F88 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1F90 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1F98 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20,  // 00 00.  
                    /* 1FA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1FA8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 1FB0 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x43, 0x43, 0x20,  //   39 CC 
                    /* 1FB8 */  0x32, 0x42, 0x20, 0x30, 0x30, 0x20, 0x30, 0x34,  // 2B 00 04
                    /* 1FC0 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x34, 0x20, 0x34,  //  00 04 4
                    /* 1FC8 */  0x31, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 1 00 00 
                    /* 1FD0 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 1FD8 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 1FE0 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 1FE8 */  0x46, 0x46, 0x20, 0x46, 0x46, 0x20, 0x45, 0x45,  // FF FF EE
                    /* 1FF0 */  0x20, 0x46, 0x43, 0x20, 0x30, 0x30, 0x20, 0x30,  //  FC 00 0
                    /* 1FF8 */  0x30, 0x20, 0x36, 0x33, 0x20, 0x34, 0x34, 0x20,  // 0 63 44 
                    /* 2000 */  0x30, 0x30, 0x20, 0x38, 0x34, 0x20, 0x36, 0x34,  // 00 84 64
                    /* 2008 */  0x20, 0x33, 0x33, 0x20, 0x36, 0x46, 0x20, 0x46,  //  33 6F F
                    /* 2010 */  0x42, 0x20, 0x45, 0x30, 0x20, 0x30, 0x30, 0x20,  // B E0 00 
                    /* 2018 */  0x32, 0x30, 0x20, 0x32, 0x31, 0x20, 0x30, 0x30,  // 20 21 00
                    /* 2020 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 2028 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 2030 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 2038 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2040 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2048 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20,  //      15 
                    /* 2050 */  0x42, 0x34, 0x20, 0x43, 0x30, 0x0A, 0x20, 0x20,  // B4 C0.  
                    /* 2058 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2060 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2068 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x36, 0x46, 0x20,  //   15 6F 
                    /* 2070 */  0x30, 0x31, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 01.     
                    /* 2078 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2080 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2088 */  0x39, 0x20, 0x42, 0x34, 0x20, 0x30, 0x30, 0x20,  // 9 B4 00 
                    /* 2090 */  0x38, 0x30, 0x20, 0x38, 0x30, 0x0A, 0x20, 0x20,  // 80 80.  
                    /* 2098 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 20A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 20A8 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20,  //   39 F0 
                    /* 20B0 */  0x35, 0x35, 0x20, 0x41, 0x41, 0x20, 0x35, 0x32,  // 55 AA 52
                    /* 20B8 */  0x20, 0x30, 0x38, 0x20, 0x30, 0x31, 0x0A, 0x20,  //  08 01. 
                    /* 20C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 20C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 20D0 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x36, 0x46,  //    39 6F
                    /* 20D8 */  0x20, 0x30, 0x31, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  01.    
                    /* 20E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 20E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 20F0 */  0x33, 0x39, 0x20, 0x44, 0x32, 0x20, 0x30, 0x30,  // 39 D2 00
                    /* 20F8 */  0x20, 0x30, 0x30, 0x20, 0x31, 0x31, 0x0A, 0x20,  //  00 11. 
                    /* 2100 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2108 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2110 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x36, 0x46,  //    39 6F
                    /* 2118 */  0x20, 0x30, 0x36, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  06.    
                    /* 2120 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2128 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2130 */  0x33, 0x39, 0x20, 0x44, 0x32, 0x20, 0x30, 0x35,  // 39 D2 05
                    /* 2138 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2140 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2148 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,  //      39 
                    /* 2150 */  0x36, 0x46, 0x20, 0x30, 0x46, 0x0A, 0x20, 0x20,  // 6F 0F.  
                    /* 2158 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2160 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2168 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x44, 0x32, 0x20,  //   39 D2 
                    /* 2170 */  0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 00.     
                    /* 2178 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2180 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2188 */  0x39, 0x20, 0x36, 0x46, 0x20, 0x30, 0x39, 0x0A,  // 9 6F 09.
                    /* 2190 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2198 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 21A0 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x44,  //     39 D
                    /* 21A8 */  0x32, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x0A,  // 2 00 00.
                    /* 21B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 21B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 21C0 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x43,  //     39 C
                    /* 21C8 */  0x45, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20,  // E 00.   
                    /* 21D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 21D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 21E0 */  0x20, 0x33, 0x39, 0x20, 0x46, 0x46, 0x20, 0x41,  //  39 FF A
                    /* 21E8 */  0x41, 0x20, 0x35, 0x35, 0x20, 0x41, 0x35, 0x20,  // A 55 A5 
                    /* 21F0 */  0x38, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 80.     
                    /* 21F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2200 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2208 */  0x39, 0x20, 0x36, 0x46, 0x20, 0x36, 0x31, 0x0A,  // 9 6F 61.
                    /* 2210 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2218 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2220 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46,  //     39 F
                    /* 2228 */  0x33, 0x20, 0x38, 0x30, 0x0A, 0x20, 0x20, 0x20,  // 3 80.   
                    /* 2230 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2238 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2240 */  0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35,  //  39 F0 5
                    /* 2248 */  0x35, 0x20, 0x41, 0x41, 0x20, 0x35, 0x32, 0x20,  // 5 AA 52 
                    /* 2250 */  0x30, 0x38, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20,  // 08 00.  
                    /* 2258 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2260 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2268 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x43, 0x30, 0x20,  //   39 C0 
                    /* 2270 */  0x34, 0x36, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 46.     
                    /* 2278 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2280 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2288 */  0x39, 0x20, 0x42, 0x45, 0x20, 0x30, 0x45, 0x20,  // 9 BE 0E 
                    /* 2290 */  0x30, 0x42, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 0B.     
                    /* 2298 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 22A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 22A8 */  0x39, 0x20, 0x36, 0x46, 0x20, 0x30, 0x35, 0x0A,  // 9 6F 05.
                    /* 22B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 22B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 22C0 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42,  //     39 B
                    /* 22C8 */  0x45, 0x20, 0x38, 0x38, 0x0A, 0x20, 0x20, 0x20,  // E 88.   
                    /* 22D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 22D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 22E0 */  0x20, 0x33, 0x39, 0x20, 0x36, 0x46, 0x20, 0x30,  //  39 6F 0
                    /* 22E8 */  0x38, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // 8.      
                    /* 22F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 22F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,  //       39
                    /* 2300 */  0x20, 0x42, 0x35, 0x20, 0x33, 0x32, 0x0A, 0x20,  //  B5 32. 
                    /* 2308 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2310 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2318 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x36, 0x46,  //    39 6F
                    /* 2320 */  0x20, 0x30, 0x42, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  0B.    
                    /* 2328 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2330 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2338 */  0x33, 0x39, 0x20, 0x42, 0x35, 0x20, 0x33, 0x33,  // 39 B5 33
                    /* 2340 */  0x20, 0x32, 0x33, 0x20, 0x32, 0x42, 0x0A, 0x20,  //  23 2B. 
                    /* 2348 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2350 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2358 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30,  //    39 F0
                    /* 2360 */  0x20, 0x35, 0x35, 0x20, 0x41, 0x41, 0x20, 0x35,  //  55 AA 5
                    /* 2368 */  0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x31, 0x0A,  // 2 08 01.
                    /* 2370 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2378 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2380 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x44,  //     39 D
                    /* 2388 */  0x31, 0x20, 0x30, 0x37, 0x20, 0x30, 0x30, 0x20,  // 1 07 00 
                    /* 2390 */  0x30, 0x34, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 04.     
                    /* 2398 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 23A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 23A8 */  0x39, 0x20, 0x33, 0x42, 0x20, 0x30, 0x30, 0x20,  // 9 3B 00 
                    /* 23B0 */  0x31, 0x30, 0x20, 0x30, 0x30, 0x20, 0x33, 0x30,  // 10 00 30
                    /* 23B8 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 23C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 23C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,  //      39 
                    /* 23D0 */  0x44, 0x39, 0x20, 0x43, 0x38, 0x0A, 0x20, 0x20,  // D9 C8.  
                    /* 23D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 23E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 23E8 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x39, 0x30, 0x20,  //   15 90 
                    /* 23F0 */  0x30, 0x31, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 01.     
                    /* 23F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2400 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2408 */  0x39, 0x20, 0x39, 0x31, 0x20, 0x41, 0x42, 0x20,  // 9 91 AB 
                    /* 2410 */  0x32, 0x38, 0x20, 0x30, 0x30, 0x20, 0x30, 0x43,  // 28 00 0C
                    /* 2418 */  0x20, 0x43, 0x32, 0x20, 0x30, 0x30, 0x20, 0x30,  //  C2 00 0
                    /* 2420 */  0x33, 0x20, 0x31, 0x43, 0x20, 0x30, 0x31, 0x20,  // 3 1C 01 
                    /* 2428 */  0x37, 0x45, 0x20, 0x30, 0x30, 0x20, 0x30, 0x46,  // 7E 00 0F
                    /* 2430 */  0x20, 0x30, 0x38, 0x20, 0x42, 0x42, 0x20, 0x30,  //  08 BB 0
                    /* 2438 */  0x34, 0x20, 0x33, 0x44, 0x20, 0x31, 0x30, 0x20,  // 4 3D 10 
                    /* 2440 */  0x46, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // F0.     
                    /* 2448 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2450 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x31,  //        1
                    /* 2458 */  0x35, 0x20, 0x30, 0x33, 0x20, 0x30, 0x31, 0x0A,  // 5 03 01.
                    /* 2460 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2468 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2470 */  0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x35,  //     15 5
                    /* 2478 */  0x33, 0x20, 0x32, 0x30, 0x0A, 0x20, 0x20, 0x20,  // 3 20.   
                    /* 2480 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2488 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2490 */  0x20, 0x31, 0x35, 0x20, 0x33, 0x35, 0x20, 0x30,  //  15 35 0
                    /* 2498 */  0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // 0.      
                    /* 24A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 24A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,  //       39
                    /* 24B0 */  0x20, 0x32, 0x41, 0x20, 0x30, 0x30, 0x20, 0x30,  //  2A 00 0
                    /* 24B8 */  0x30, 0x20, 0x30, 0x34, 0x20, 0x33, 0x37, 0x0A,  // 0 04 37.
                    /* 24C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 24C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 24D0 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x32,  //     39 2
                    /* 24D8 */  0x42, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // B 00 00 
                    /* 24E0 */  0x30, 0x39, 0x20, 0x35, 0x46, 0x0A, 0x20, 0x20,  // 09 5F.  
                    /* 24E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 24F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 24F8 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x32, 0x46, 0x20,  //   15 2F 
                    /* 2500 */  0x30, 0x31, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 01.     
                    /* 2508 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2510 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2518 */  0x39, 0x20, 0x46, 0x46, 0x20, 0x41, 0x41, 0x20,  // 9 FF AA 
                    /* 2520 */  0x35, 0x35, 0x20, 0x41, 0x35, 0x20, 0x38, 0x31,  // 55 A5 81
                    /* 2528 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2530 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2538 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20,  //      15 
                    /* 2540 */  0x36, 0x46, 0x20, 0x30, 0x46, 0x0A, 0x20, 0x20,  // 6F 0F.  
                    /* 2548 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2550 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2558 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x44, 0x20,  //   39 FD 
                    /* 2560 */  0x30, 0x31, 0x20, 0x35, 0x41, 0x0A, 0x20, 0x20,  // 01 5A.  
                    /* 2568 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2570 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2578 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x36, 0x46, 0x20,  //   15 6F 
                    /* 2580 */  0x30, 0x34, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 04.     
                    /* 2588 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2590 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x31,  //        1
                    /* 2598 */  0x35, 0x20, 0x46, 0x44, 0x20, 0x35, 0x46, 0x0A,  // 5 FD 5F.
                    /* 25A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 25A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 25B0 */  0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x36,  //     15 6
                    /* 25B8 */  0x46, 0x20, 0x31, 0x41, 0x0A, 0x20, 0x20, 0x20,  // F 1A.   
                    /* 25C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 25C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 25D0 */  0x20, 0x31, 0x35, 0x20, 0x46, 0x44, 0x20, 0x35,  //  15 FD 5
                    /* 25D8 */  0x46, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // F.      
                    /* 25E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 25E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35,  //       05
                    /* 25F0 */  0x20, 0x32, 0x43, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  2C.    
                    /* 25F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2600 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2608 */  0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x35,  // 39 F0 55
                    /* 2610 */  0x20, 0x41, 0x41, 0x20, 0x35, 0x32, 0x20, 0x30,  //  AA 52 0
                    /* 2618 */  0x38, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20,  // 8 00.   
                    /* 2620 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2628 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2630 */  0x20, 0x33, 0x39, 0x20, 0x43, 0x41, 0x20, 0x31,  //  39 CA 1
                    /* 2638 */  0x32, 0x20, 0x30, 0x30, 0x20, 0x39, 0x32, 0x20,  // 2 00 92 
                    /* 2640 */  0x30, 0x32, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 02.     
                    /* 2648 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2650 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x31,  //        1
                    /* 2658 */  0x35, 0x20, 0x36, 0x46, 0x20, 0x30, 0x32, 0x0A,  // 5 6F 02.
                    /* 2660 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2668 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2670 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x45,  //     39 E
                    /* 2678 */  0x43, 0x20, 0x38, 0x30, 0x20, 0x31, 0x30, 0x0A,  // C 80 10.
                    /* 2680 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2688 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2690 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46,  //     39 F
                    /* 2698 */  0x30, 0x20, 0x35, 0x35, 0x20, 0x41, 0x41, 0x20,  // 0 55 AA 
                    /* 26A0 */  0x35, 0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x31,  // 52 08 01
                    /* 26A8 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 26B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 26B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,  //      39 
                    /* 26C0 */  0x43, 0x44, 0x20, 0x30, 0x35, 0x20, 0x33, 0x31,  // CD 05 31
                    /* 26C8 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 26D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 26D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20,  //      15 
                    /* 26E0 */  0x36, 0x46, 0x20, 0x31, 0x30, 0x0A, 0x20, 0x20,  // 6F 10.  
                    /* 26E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 26F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 26F8 */  0x20, 0x20, 0x31, 0x35, 0x20, 0x44, 0x38, 0x20,  //   15 D8 
                    /* 2700 */  0x30, 0x43, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 0C.     
                    /* 2708 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2710 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 2718 */  0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x35, 0x20,  // 9 F0 55 
                    /* 2720 */  0x41, 0x41, 0x20, 0x35, 0x32, 0x20, 0x30, 0x38,  // AA 52 08
                    /* 2728 */  0x20, 0x30, 0x35, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  05.    
                    /* 2730 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2738 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2740 */  0x33, 0x39, 0x20, 0x42, 0x33, 0x20, 0x38, 0x36,  // 39 B3 86
                    /* 2748 */  0x20, 0x38, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  80.    
                    /* 2750 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2758 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2760 */  0x33, 0x39, 0x20, 0x42, 0x35, 0x20, 0x38, 0x35,  // 39 B5 85
                    /* 2768 */  0x20, 0x38, 0x31, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  81.    
                    /* 2770 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2778 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2780 */  0x33, 0x39, 0x20, 0x42, 0x37, 0x20, 0x38, 0x35,  // 39 B7 85
                    /* 2788 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x38,  //  00 00 8
                    /* 2790 */  0x31, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // 1.      
                    /* 2798 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 27A0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,  //       39
                    /* 27A8 */  0x20, 0x42, 0x38, 0x20, 0x30, 0x35, 0x20, 0x30,  //  B8 05 0
                    /* 27B0 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x38, 0x31, 0x0A,  // 0 00 81.
                    /* 27B8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 27C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 27C8 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x45,  //     39 E
                    /* 27D0 */  0x43, 0x20, 0x30, 0x44, 0x20, 0x31, 0x31, 0x0A,  // C 0D 11.
                    /* 27D8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 27E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 27E8 */  0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x36,  //     15 6
                    /* 27F0 */  0x46, 0x20, 0x30, 0x32, 0x0A, 0x20, 0x20, 0x20,  // F 02.   
                    /* 27F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2800 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2808 */  0x20, 0x33, 0x39, 0x20, 0x45, 0x43, 0x20, 0x30,  //  39 EC 0
                    /* 2810 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 2818 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 2820 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 2828 */  0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,  // 0 00 00 
                    /* 2830 */  0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30,  // 00 00 00
                    /* 2838 */  0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,  //  00 00 0
                    /* 2840 */  0x30, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20, 0x20,  // 0 00.   
                    /* 2848 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2850 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2858 */  0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35,  //  39 F0 5
                    /* 2860 */  0x35, 0x20, 0x41, 0x41, 0x20, 0x35, 0x32, 0x20,  // 5 AA 52 
                    /* 2868 */  0x30, 0x38, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20,  // 08 00.  
                    /* 2870 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2878 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2880 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x36, 0x46, 0x20,  //   39 6F 
                    /* 2888 */  0x30, 0x38, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 08.     
                    /* 2890 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2898 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x33,  //        3
                    /* 28A0 */  0x39, 0x20, 0x42, 0x35, 0x20, 0x33, 0x32, 0x0A,  // 9 B5 32.
                    /* 28A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 28B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 28B8 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x36,  //     39 6
                    /* 28C0 */  0x46, 0x20, 0x30, 0x42, 0x0A, 0x20, 0x20, 0x20,  // F 0B.   
                    /* 28C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 28D0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 28D8 */  0x20, 0x33, 0x39, 0x20, 0x42, 0x35, 0x20, 0x33,  //  39 B5 3
                    /* 28E0 */  0x33, 0x20, 0x32, 0x33, 0x20, 0x32, 0x42, 0x0A,  // 3 23 2B.
                    /* 28E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 28F0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 28F8 */  0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46,  //     39 F
                    /* 2900 */  0x30, 0x20, 0x35, 0x35, 0x20, 0x41, 0x41, 0x20,  // 0 55 AA 
                    /* 2908 */  0x35, 0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x31,  // 52 08 01
                    /* 2910 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2918 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2920 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,  //      39 
                    /* 2928 */  0x43, 0x45, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20,  // CE 00.  
                    /* 2930 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2938 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2940 */  0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20,  //   39 F0 
                    /* 2948 */  0x35, 0x35, 0x20, 0x41, 0x41, 0x20, 0x35, 0x32,  // 55 AA 52
                    /* 2950 */  0x20, 0x30, 0x38, 0x20, 0x30, 0x31, 0x0A, 0x20,  //  08 01. 
                    /* 2958 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2960 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2968 */  0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x43, 0x33,  //    39 C3
                    /* 2970 */  0x20, 0x39, 0x34, 0x20, 0x30, 0x31, 0x20, 0x39,  //  94 01 9
                    /* 2978 */  0x37, 0x20, 0x44, 0x30, 0x20, 0x32, 0x32, 0x20,  // 7 D0 22 
                    /* 2980 */  0x30, 0x32, 0x20, 0x30, 0x30, 0x0A, 0x20, 0x20,  // 02 00.  
                    /* 2988 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2990 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2998 */  0x20, 0x20, 0x30, 0x35, 0x20, 0x31, 0x31, 0x20,  //   05 11 
                    /* 29A0 */  0x30, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 00.     
                    /* 29A8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 29B0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x46,  //        F
                    /* 29B8 */  0x46, 0x20, 0x33, 0x32, 0x0A, 0x20, 0x20, 0x20,  // F 32.   
                    /* 29C0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 29C8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 29D0 */  0x20, 0x30, 0x35, 0x20, 0x32, 0x39, 0x20, 0x30,  //  05 29 0
                    /* 29D8 */  0x30, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // 0.      
                    /* 29E0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 29E8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x46, 0x46,  //       FF
                    /* 29F0 */  0x20, 0x31, 0x30, 0x0A, 0x20, 0x20, 0x20, 0x20,  //  10.    
                    /* 29F8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A00 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x2F, 0x44, 0x53,  //     </DS
                    /* 2A08 */  0x49, 0x49, 0x6E, 0x69, 0x74, 0x53, 0x65, 0x71,  // IInitSeq
                    /* 2A10 */  0x75, 0x65, 0x6E, 0x63, 0x65, 0x3E, 0x0A, 0x20,  // uence>. 
                    /* 2A18 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A20 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C,  //        <
                    /* 2A28 */  0x44, 0x53, 0x49, 0x54, 0x65, 0x72, 0x6D, 0x53,  // DSITermS
                    /* 2A30 */  0x65, 0x71, 0x75, 0x65, 0x6E, 0x63, 0x65, 0x3E,  // equence>
                    /* 2A38 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2A40 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A48 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35, 0x20,  //      05 
                    /* 2A50 */  0x32, 0x38, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // 28.     
                    /* 2A58 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A60 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x46,  //        F
                    /* 2A68 */  0x46, 0x20, 0x31, 0x34, 0x0A, 0x20, 0x20, 0x20,  // F 14.   
                    /* 2A70 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A78 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A80 */  0x20, 0x30, 0x35, 0x20, 0x31, 0x30, 0x0A, 0x20,  //  05 10. 
                    /* 2A88 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A90 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2A98 */  0x20, 0x20, 0x20, 0x46, 0x46, 0x20, 0x35, 0x30,  //    FF 50
                    /* 2AA0 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2AA8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2AB0 */  0x20, 0x3C, 0x2F, 0x44, 0x53, 0x49, 0x54, 0x65,  //  </DSITe
                    /* 2AB8 */  0x72, 0x6D, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6E,  // rmSequen
                    /* 2AC0 */  0x63, 0x65, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // ce>.    
                    /* 2AC8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2AD0 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x47, 0x72, 0x6F,  //     <Gro
                    /* 2AD8 */  0x75, 0x70, 0x20, 0x69, 0x64, 0x3D, 0x27, 0x42,  // up id='B
                    /* 2AE0 */  0x61, 0x63, 0x6B, 0x6C, 0x69, 0x67, 0x68, 0x74,  // acklight
                    /* 2AE8 */  0x20, 0x43, 0x6F, 0x6E, 0x66, 0x69, 0x67, 0x75,  //  Configu
                    /* 2AF0 */  0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x27, 0x3E,  // ration'>
                    /* 2AF8 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2B00 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2B08 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x42, 0x61,  //      <Ba
                    /* 2B10 */  0x63, 0x6B, 0x6C, 0x69, 0x67, 0x68, 0x74, 0x54,  // cklightT
                    /* 2B18 */  0x79, 0x70, 0x65, 0x3E, 0x33, 0x3C, 0x2F, 0x42,  // ype>3</B
                    /* 2B20 */  0x61, 0x63, 0x6B, 0x6C, 0x69, 0x67, 0x68, 0x74,  // acklight
                    /* 2B28 */  0x54, 0x79, 0x70, 0x65, 0x3E, 0x0A, 0x20, 0x20,  // Type>.  
                    /* 2B30 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2B38 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2B40 */  0x20, 0x20, 0x3C, 0x42, 0x61, 0x63, 0x6B, 0x6C,  //   <Backl
                    /* 2B48 */  0x69, 0x67, 0x68, 0x74, 0x44, 0x43, 0x53, 0x45,  // ightDCSE
                    /* 2B50 */  0x6E, 0x64, 0x69, 0x61, 0x6E, 0x3E, 0x54, 0x72,  // ndian>Tr
                    /* 2B58 */  0x75, 0x65, 0x3C, 0x2F, 0x42, 0x61, 0x63, 0x6B,  // ue</Back
                    /* 2B60 */  0x6C, 0x69, 0x67, 0x68, 0x74, 0x44, 0x43, 0x53,  // lightDCS
                    /* 2B68 */  0x45, 0x6E, 0x64, 0x69, 0x61, 0x6E, 0x3E, 0x0A,  // Endian>.
                    /* 2B70 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2B78 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2B80 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x42, 0x61, 0x63,  //     <Bac
                    /* 2B88 */  0x6B, 0x6C, 0x69, 0x67, 0x68, 0x74, 0x53, 0x74,  // klightSt
                    /* 2B90 */  0x65, 0x70, 0x73, 0x3E, 0x31, 0x30, 0x30, 0x3C,  // eps>100<
                    /* 2B98 */  0x2F, 0x42, 0x61, 0x63, 0x6B, 0x6C, 0x69, 0x67,  // /Backlig
                    /* 2BA0 */  0x68, 0x74, 0x53, 0x74, 0x65, 0x70, 0x73, 0x3E,  // htSteps>
                    /* 2BA8 */  0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // .       
                    /* 2BB0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2BB8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x42, 0x72,  //      <Br
                    /* 2BC0 */  0x69, 0x67, 0x68, 0x74, 0x6E, 0x65, 0x73, 0x73,  // ightness
                    /* 2BC8 */  0x4D, 0x69, 0x6E, 0x4C, 0x75, 0x6D, 0x69, 0x6E,  // MinLumin
                    /* 2BD0 */  0x61, 0x6E, 0x63, 0x65, 0x3E, 0x31, 0x30, 0x30,  // ance>100
                    /* 2BD8 */  0x30, 0x30, 0x30, 0x3C, 0x2F, 0x42, 0x72, 0x69,  // 000</Bri
                    /* 2BE0 */  0x67, 0x68, 0x74, 0x6E, 0x65, 0x73, 0x73, 0x4D,  // ghtnessM
                    /* 2BE8 */  0x69, 0x6E, 0x4C, 0x75, 0x6D, 0x69, 0x6E, 0x61,  // inLumina
                    /* 2BF0 */  0x6E, 0x63, 0x65, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // nce>.   
                    /* 2BF8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2C00 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2C08 */  0x20, 0x3C, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74,  //  <Bright
                    /* 2C10 */  0x6E, 0x65, 0x73, 0x73, 0x4D, 0x61, 0x78, 0x4C,  // nessMaxL
                    /* 2C18 */  0x75, 0x6D, 0x69, 0x6E, 0x61, 0x6E, 0x63, 0x65,  // uminance
                    /* 2C20 */  0x3E, 0x34, 0x32, 0x30, 0x30, 0x30, 0x30, 0x30,  // >4200000
                    /* 2C28 */  0x3C, 0x2F, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74,  // </Bright
                    /* 2C30 */  0x6E, 0x65, 0x73, 0x73, 0x4D, 0x61, 0x78, 0x4C,  // nessMaxL
                    /* 2C38 */  0x75, 0x6D, 0x69, 0x6E, 0x61, 0x6E, 0x63, 0x65,  // uminance
                    /* 2C40 */  0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // >.      
                    /* 2C48 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2C50 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3C, 0x42,  //       <B
                    /* 2C58 */  0x72, 0x69, 0x67, 0x68, 0x74, 0x6E, 0x65, 0x73,  // rightnes
                    /* 2C60 */  0x73, 0x52, 0x61, 0x6E, 0x67, 0x65, 0x4C, 0x65,  // sRangeLe
                    /* 2C68 */  0x76, 0x65, 0x6C, 0x30, 0x3E, 0x31, 0x30, 0x30,  // vel0>100
                    /* 2C70 */  0x30, 0x30, 0x30, 0x20, 0x34, 0x32, 0x30, 0x30,  // 000 4200
                    /* 2C78 */  0x30, 0x30, 0x30, 0x20, 0x34, 0x31, 0x30, 0x30,  // 000 4100
                    /* 2C80 */  0x30, 0x20, 0x32, 0x3C, 0x2F, 0x42, 0x72, 0x69,  // 0 2</Bri
                    /* 2C88 */  0x67, 0x68, 0x74, 0x6E, 0x65, 0x73, 0x73, 0x52,  // ghtnessR
                    /* 2C90 */  0x61, 0x6E, 0x67, 0x65, 0x4C, 0x65, 0x76, 0x65,  // angeLeve
                    /* 2C98 */  0x6C, 0x30, 0x3E, 0x0A, 0x20, 0x20, 0x20, 0x20,  // l0>.    
                    /* 2CA0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2CA8 */  0x20, 0x20, 0x20, 0x20, 0x3C, 0x2F, 0x47, 0x72,  //     </Gr
                    /* 2CB0 */  0x6F, 0x75, 0x70, 0x3E, 0x0A, 0x20, 0x20, 0x20,  // oup>.   
                    /* 2CB8 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  //         
                    /* 2CC0 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x00               //      .
                })
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == 0x6F00))
                    {
                        Local2 = PCFG /* \_SB_.GPU0._ROM.PCFG */
                    }
                    Else
                    {
                        Local2 = PCFG /* \_SB_.GPU0._ROM.PCFG */
                    }

                    Break
                }

                If ((Arg0 >= SizeOf (Local2)))
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
                Else
                {
                    Local0 = Arg0
                }

                If ((Arg1 > 0x1000))
                {
                    Local1 = 0x1000
                }
                Else
                {
                    Local1 = Arg1
                }

                If (((Local0 + Local1) > SizeOf (Local2)))
                {
                    Local1 = (SizeOf (Local2) - Local0)
                }

                CreateField (Local2, (0x08 * Local0), (0x08 * Local1), RBUF)
                Return (RBUF) /* \_SB_.GPU0._ROM.RBUF */
            }

            Method (PGRT, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.PGRT.RBUF */
            }

            Method (BLCP, 2, NotSerialized)
            {
                Name (RBUF, Buffer (0x0100){})
                Local0 = Zero
                CreateField (RBUF, (Local0 * 0x08), 0x20, PKHR)
                Local0 += 0x04
                If ((Arg0 < 0x0100))
                {
                    Local1 = 0x04
                }
                Else
                {
                    Local1 = (Arg0 / 0x10)
                    Local1 &= 0xFF
                }

                Local2 = (Arg0 / 0x10)
                Local2 >>= 0x08
                CreateField (RBUF, (Local0 * 0x08), 0x08, PKCM)
                Local0 += One
                CreateField (RBUF, (Local0 * 0x08), 0x08, PKDS)
                Local0 += One
                CreateField (RBUF, (Local0 * 0x08), 0x08, PKUB)
                Local0 += One
                CreateField (RBUF, (Local0 * 0x08), 0x08, PKLB)
                Local0 += One
                PKHR = 0x04
                PKCM = 0x39
                PKDS = 0x51
                PKUB = Local2
                PKLB = Local1
                CreateDWordField (RBUF, (Local0 * 0x08), EOP)
                EOP = Zero
                Return (RBUF) /* \_SB_.GPU0.BLCP.RBUF */
            }

            Name (_DOD, Package (0x01)  // _DOD: Display Output Devices
            {
                0x00024321
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Name (RESU, Zero)
                Name (TIER, Zero)
                Name (DREV, Zero)
                Name (FAMI, Zero)
                Name (PROD, Zero)
                Name (DDRT, Zero)
                TIER = (\_SB.SIDT & 0x0F)
                DREV = ((\_SB.SJTG >> 0x1C) & 0x0F)
                DREV <<= 0x04
                PROD = ((\_SB.SJTG >> 0x0C) & 0xFFFF)
                If (((PROD == 0x0193) | (PROD == 0x01EB)))
                {
                    FAMI = (One << 0x08)
                }

                If ((PROD == 0x0194))
                {
                    FAMI = (0x02 << 0x08)
                }

                If (((PROD == 0x01E3) | (PROD == 0x020A)))
                {
                    FAMI = (0x03 << 0x08)
                }

                If ((PROD == 0x0215))
                {
                    FAMI = (0x04 << 0x08)
                }

                If ((\_SB.SDDR == 0x05))
                {
                    DDRT = (One << 0x0B)
                }

                RESU |= TIER /* \_SB_.GPU0._HRV.RESU */
                RESU |= DREV /* \_SB_.GPU0._HRV.RESU */
                RESU |= FAMI /* \_SB_.GPU0._HRV.RESU */
                RESU |= DDRT /* \_SB_.GPU0._HRV.RESU */
                Return (RESU) /* \_SB_.GPU0._HRV.RESU */
            }

            Device (AVS0)
            {
                Name (_ADR, 0x00024321)  // _ADR: Address
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, Buffer (0x02)
                    {
                         0x79, 0x00                                       // y.
                    })
                    Return (RBUF) /* \_SB_.GPU0.AVS0._CRS.RBUF */
                }

                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    \_SB.MMU0, 
                    \_SB.IMM0, 
                    \_SB.VFE0
                })
            }

            Method (CHDV, 0, NotSerialized)
            {
                Name (CHIF, Package (0x02)
                {
                    One, 
                    Package (0x07)
                    {
                        "CHILDDEV", 
                        Zero, 
                        0x00024321, 
                        "QCOM_AVStream_7280", 
                        Zero, 
                        "Qualcomm Camera AVStream Mini Driver", 
                        Package (0x04)
                        {
                            "COMPATIBLEIDS", 
                            0x02, 
                            "VEN_QCOM&DEV__AVSTREAM", 
                            "QCOM_AVSTREAM"
                        }
                    }
                })
                Return (CHIF) /* \_SB_.GPU0.CHDV.CHIF */
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (One)
            }
        }

        Device (SCM0)
        {
            Name (_HID, "QCOM04DD")  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (TLOG)
        {
            Name (_HID, "QCOM0AE3")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (TREE)
        {
            Name (_HID, "QCOM04DE")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0068
                        }
                    Memory32Fixed (ReadWrite,
                        0xDEADBEEF,         // Address Base
                        0xBEEFDEAD,         // Address Length
                        _Y00)
                })
                CreateDWordField (RBUF, \_SB.TREE._CRS._Y00._BAS, TGCA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.TREE._CRS._Y00._LEN, TGCL)  // _LEN: Length
                TGCA = \_SB.TCMA
                TGCL = \_SB.TCML
                Return (RBUF) /* \_SB_.TREE._CRS.RBUF */
            }
        }

        Device (SPMI)
        {
            Name (_HID, "QCOM0A0B")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "PNP0CA2")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0C400000,         // Address Base
                        0x02800000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPMI._CRS.RBUF */
            }

            Method (CONF, 0, NotSerialized)
            {
                Name (XBUF, Buffer (0x1A)
                {
                    /* 0000 */  0x00, 0x01, 0x01, 0x01, 0xFF, 0x00, 0x02, 0x00,  // ........
                    /* 0008 */  0x0A, 0x07, 0x04, 0x07, 0x01, 0xFF, 0x10, 0x01,  // ........
                    /* 0010 */  0x00, 0x01, 0x0C, 0x40, 0x00, 0x00, 0x02, 0x80,  // ...@....
                    /* 0018 */  0x00, 0x00                                       // ..
                })
                Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
            }
        }

        Device (GIO0)
        {
            Name (_HID, "QCOM0A0C")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0F100000,         // Address Base
                        0x00300000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x0000022E,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000228,
                    }
                })
                Return (RBUF) /* \_SB_.GIO0._CRS.RBUF */
            }

            Method (OFNI, 0, NotSerialized)
            {
                Name (RBUF, Buffer (0x02)
                {
                     0xAF, 0x00                                       // ..
                })
                Return (RBUF) /* \_SB_.GIO0.OFNI.RBUF */
            }

            Name (GABL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    GABL = Arg1
                }
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                If ((\_SB.SKUV == Zero))
                {
                    Name (RBF0, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x01F4,
                            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    Return (RBF0) /* \_SB_.GIO0._AEI.RBF0 */
                }
                Else
                {
                    Name (RBF1, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0180
                            }
                    })
                    Return (RBF1) /* \_SB_.GIO0._AEI.RBF1 */
                }
            }

            Method (_EBD, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Notify (\_SB.GPU0, 0x92) // Device-Specific
            }

            Method (_EVT, 1, NotSerialized)  // _EVT: Event
            {
                Debug = "RCVD EC INT"
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Arg0
                    If ((_T_0 == 0x0180))
                    {
                        Acquire (\_SB.ECMX, 0xFFFF)
                        Local0 = Zero
                        If (CondRefOf (\_SB.IC11, Local1))
                        {
                            If (\_SB.IC11.AVBL)
                            {
                                Local0 = \_SB.IC11.INTR /* External reference */
                                If ((0xFF == Local0))
                                {
                                    Debug = "INTR Read Failed"
                                }

                                If ((Zero == Local0))
                                {
                                    Debug = "Invalid INTR"
                                }
                            }
                        }

                        Release (\_SB.ECMX)
                    }

                    Break
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
                {
                    While (One)
                    {
                        Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_0 = Arg2
                        If ((_T_0 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        ElseIf ((_T_0 == One))
                        {
                            Return (Package (0x01)
                            {
                                0x0100
                            })
                        }
                        Else
                        {
                            BreakPoint
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Device (IPCC)
        {
            Name (_HID, "QCOM06C2")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000105,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000106,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000107,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002EA,
                    }
                })
                Return (RBUF) /* \_SB_.IPCC._CRS.RBUF */
            }
        }

        Device (PCI1)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.QPPX
            })
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_SEG, One)  // _SEG: PCI Segment
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_PRT, Package (0x04)  // _PRT: PCI Routing Table
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x01D2
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x01D3
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x01D6
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x01D7
                }
            })
            Method (_CCA, 0, NotSerialized)  // _CCA: Cache Coherency Attribute
            {
                Return (One)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PRP1 == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x40300000,         // Address Base
                        0x01D00000,         // Address Length
                        )
                    WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                        0x0000,             // Granularity
                        0x0000,             // Range Minimum
                        0x0001,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0002,             // Length
                        ,, )
                })
                Return (RBUF) /* \_SB_.PCI1._CRS.RBUF */
            }

            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    CreateDWordField (Arg3, Zero, CDW1)
                    CreateDWordField (Arg3, 0x04, CDW2)
                    CreateDWordField (Arg3, 0x08, CDW3)
                    SUPP = CDW2 /* \_SB_.PCI1._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI1._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x15
                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI1.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    While (One)
                    {
                        Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_0 = ToInteger (Arg2)
                        If ((_T_0 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0xFF, 0x03                                       // ..
                            })
                        }
                        ElseIf ((_T_0 == One))
                        {
                            Return (Package (0x02)
                            {
                                Package (One)
                                {
                                    One
                                }, 

                                Package (0x03)
                                {
                                    Zero, 
                                    One, 
                                    One
                                }
                            })
                        }
                        ElseIf ((_T_0 == 0x02))
                        {
                            Return (Package (One)
                            {
                                Package (0x04)
                                {
                                    One, 
                                    0x03, 
                                    Zero, 
                                    0x07
                                }
                            })
                        }
                        ElseIf ((_T_0 == 0x03))
                        {
                            Return (Package (One)
                            {
                                Zero
                            })
                        }
                        ElseIf ((_T_0 == 0x04))
                        {
                            Return (Package (0x02)
                            {
                                Package (One)
                                {
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    One, 
                                    0x03, 
                                    Zero, 
                                    0x07
                                }
                            })
                        }
                        ElseIf ((_T_0 == 0x05))
                        {
                            Return (Package (One)
                            {
                                One
                            })
                        }
                        ElseIf ((_T_0 == 0x06))
                        {
                            Return (Package (0x04)
                            {
                                Package (One)
                                {
                                    Zero
                                }, 

                                Package (One)
                                {
                                    Zero
                                }, 

                                Package (One)
                                {
                                    Zero
                                }, 

                                Package (One)
                                {
                                    Zero
                                }
                            })
                        }
                        ElseIf ((_T_0 == 0x07))
                        {
                            Return (Package (One)
                            {
                                One
                            })
                        }
                        ElseIf ((_T_0 == 0x08))
                        {
                            Return (Package (One)
                            {
                                One
                            })
                        }
                        ElseIf ((_T_0 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                Zero, 
                                0xFFFFFFFF
                            })
                        }
                        Else
                        {
                        }

                        Break
                    }
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.P1RR
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                \_SB.P1RR
            })
            Device (RP1)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    Return (Zero)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.R1RR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    \_SB.R1RR
                })
                Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
                {
                    \_SB.R1RR
                })
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "HotPlugSupportInD3", 
                            One
                        }
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI1.RP1_._CRS.RBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_0 = ToInteger (Arg2)
                            If ((_T_0 == Zero))
                            {
                                Return (Buffer (0x02)
                                {
                                     0x01, 0x03                                       // ..
                                })
                            }
                            ElseIf ((_T_0 == 0x08))
                            {
                                Return (Package (One)
                                {
                                    One
                                })
                            }
                            ElseIf ((_T_0 == 0x09))
                            {
                                Return (Package (0x05)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    Zero, 
                                    0xFFFFFFFF
                                })
                            }
                            Else
                            {
                            }

                            Break
                        }
                    }
                }
            }
        }

        PowerResource (P1RR, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
            }
        }

        PowerResource (R1RR, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
            }
        }

        Device (QPPX)
        {
            Name (_HID, "QCOM0A96")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x01
                        })
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.QPPX._CRS.RBUF */
            }

            Method (_QPG, 0, Serialized)
            {
                Return (Package (0x01)
                {
                    One
                })
            }
        }

        Device (IPC0)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.GLNK
            })
            Name (_HID, "QCOM0A0D")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (GLNK)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.IPCC, 
                \_SB.RPEN
            })
            Name (_HID, "QCOM0A84")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (ARPC)
        {
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                \_SB.MMU0, 
                \_SB.GLNK, 
                \_SB.SCM0, 
                \_SB.IMM0
            })
            Name (_HID, "QCOM0A5C")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (ARPD)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.ADSP, 
                \_SB.ARPC
            })
            Name (_HID, "QCOM0A82")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (AGOD)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.ADSP, 
                \_SB.ARPC
            })
            Name (_HID, "QCOM0AE5")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (RFS0)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Name (_HID, "QCOM0A15")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x88888888,         // Address Base
                        0x99999999,         // Address Length
                        _Y01)
                    Memory32Fixed (ReadWrite,
                        0x11111111,         // Address Base
                        0x22222222,         // Address Length
                        _Y02)
                    Memory32Fixed (ReadWrite,
                        0x33333333,         // Address Base
                        0x44444444,         // Address Length
                        _Y03)
                })
                CreateDWordField (RBUF, \_SB.RFS0._CRS._Y01._BAS, RMTA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.RFS0._CRS._Y01._LEN, RMTL)  // _LEN: Length
                CreateDWordField (RBUF, \_SB.RFS0._CRS._Y02._BAS, RFMA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.RFS0._CRS._Y02._LEN, RFML)  // _LEN: Length
                CreateDWordField (RBUF, \_SB.RFS0._CRS._Y03._BAS, RFAA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.RFS0._CRS._Y03._LEN, RFAL)  // _LEN: Length
                RMTA = \_SB.RMTB
                RMTL = \_SB.RMTX
                RFMA = \_SB.RFMB
                RFML = \_SB.RFMS
                RFAA = \_SB.RFAB
                RFAL = \_SB.RFAS
                Return (RBUF) /* \_SB_.RFS0._CRS.RBUF */
            }
        }

        Scope (\_SB.RFS0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (IPA)
        {
            Name (_DEP, Package (0x07)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.RPEN, 
                \_SB.TREE, 
                \_SB.MMU0, 
                \_SB.GLNK, 
                \_SB.IPC0, 
                \_SB.IMM0
            })
            Name (HHID, "QCOM0A6A")
            Name (PHID, "QCOM0AE6")
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((\_SB.UAON == Zero))
                {
                    Return (\_SB.IPA.HHID)
                }
                Else
                {
                    Return (\_SB.IPA.PHID)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01E40000,         // Address Base
                        0x00060000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002AE,
                    }
                    Memory32Fixed (ReadWrite,
                        0x01E00000,         // Address Base
                        0x00030000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001D0,
                    }
                })
            }

            Device (NTAD)
            {
                Name (_ADR, One)  // _ADR: Address
                Alias (\_SB.PSUB, _SUB)
                Name (_UID, One)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    While (One)
                    {
                        Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        {
                             0x00                                             // .
                        })
                        CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.IPA_.NTAD._DSM._T_0 */
                        If ((_T_0 == ToUUID ("62f5db91-6a9c-43e6-901d-968332b749f6") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == Zero))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                ElseIf ((_T_1 == One))
                                {
                                    Debug = "Sending UAON keep-alive"
                                    If ((\_SB.IC11._DSM == \_SB.IC11.DSMF))
                                    {
                                        Zero
                                        \_SB.IC11.FF01 (0xA5, Zero)
                                        Debug = "Successfully sent UAON keep-alive"
                                    }

                                    Return (Zero)
                                }
                                Else
                                {
                                }

                                Break
                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }

                        Break
                    }
                }
            }
        }

        Scope (\_SB.IPA)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (QDIG)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.GLNK, 
                \_SB.IPC0
            })
            Name (_HID, "QCOM0A13")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (SSM)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.GLNK, 
                \_SB.TREE
            })
            Name (_HID, "QCOM0A14")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (SYSM)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x00100000)  // _UID: Unique ID
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                0x01000000, 
                One, 
                Package (0x0A)
                {
                    0x251C, 
                    0x1770, 
                    One, 
                    0x20, 
                    Zero, 
                    Zero, 
                    0xB300, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "platform.DRIPS"
                }
            })
            Device (CLUS)
            {
                Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                Name (_UID, 0x10)  // _UID: Unique ID
                Name (_LPI, Package (0x05)  // _LPI: Low Power Idle States
                {
                    Zero, 
                    0x01000000, 
                    0x02, 
                    Package (0x0A)
                    {
                        0x170C, 
                        0x0BB8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x20, 
                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        "L3Cluster.D2"
                    }, 

                    Package (0x0A)
                    {
                        0x1770, 
                        0x0CE4, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        0x40, 
                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        "L3Cluster.D4"
                    }
                })
                Device (CPU0)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x06EE, 
                            0x0385, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0FA1, 
                            0x0393, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C4"
                        }
                    })
                }

                Device (CPU1)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x06EE, 
                            0x0385, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0FA1, 
                            0x0393, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C4"
                        }
                    })
                }

                Device (CPU2)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x06EE, 
                            0x0385, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0FA1, 
                            0x0393, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C4"
                        }
                    })
                }

                Device (CPU3)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x06EE, 
                            0x0385, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0FA1, 
                            0x0393, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C4"
                        }
                    })
                }

                Device (CPU4)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C4"
                        }
                    })
                }

                Device (CPU5)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C4"
                        }
                    })
                }

                Device (CPU6)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\_SB.SJTG == 0x102150E1))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C4"
                        }
                    })
                }

                Device (CPU7)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\_SB.SJTG == 0x102150E1))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F96, 
                            0x03E8, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x118A, 
                            0x05DC, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C4"
                        }
                    })
                }
            }
        }

        Device (QDCI)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.GLNK, 
                \_SB.IPC0
            })
            Name (_HID, "QCOM0A12")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (GPS)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.GLNK
            })
            Name (_HID, "QCOM0A6C")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Scope (\_SB.GPS)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SKUV == 0x04))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (QGP0)
        {
            Name (_HID, "QCOM0A88")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00904000,         // Address Base
                        0x00050000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000114,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000115,
                    }
                })
                Return (RBUF) /* \_SB_.QGP0._CRS.RBUF */
            }
        }

        Device (QGP1)
        {
            Name (_HID, "QCOM0A88")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A04000,         // Address Base
                        0x00050000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000137,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000138,
                    }
                })
                Return (RBUF) /* \_SB_.QGP1._CRS.RBUF */
            }
        }

        Device (SOCP)
        {
            Name (_HID, "QCOM06DD")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.STOR, STOR)
        }

        Device (QDSS)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.MMU0
            })
            Name (_HID, "QCOM0A56")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000012E,
                    }
                    Memory32Fixed (ReadWrite,
                        0x06000000,         // Address Base
                        0x0004A000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x16000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x07000000,         // Address Base
                        0x00A00000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000043,
                    }
                })
            }
        }

        Device (QCDB)
        {
            Name (_HID, "QCOM06DE")  // _HID: Hardware ID
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                Return ("AGN00000")
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (RMNT)
        {
            Name (_HID, "QCOM0A95")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (MBRG)
        {
            Name (_HID, "QCOM0A07")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (RMAT)
        {
            Name (_HID, "QCOM0A08")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (DPLB)
        {
            Name (_HID, "QCOM0A70")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (CCID)
        {
            Name (_HID, "QCOM0AA2")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (DSBY)
        {
            Name (_HID, "QCOM06CD")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Scope (\_SB.RMNT)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.MBRG)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.RMAT)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.DPLB)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.CCID)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.DSBY)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (SSVC)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.IPC0, 
                \_SB.QDIG
            })
            Name (_HID, "QCOM06DB")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "ACPIQCOM06DB")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Name (HWNL, One)
        Device (HWN0)
        {
            Name (_HID, "QCOM0A68")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.HWNL == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (HWNL, 0, NotSerialized)
            {
                Name (CFG0, Package (0x10)
                {
                    0x02, 
                    0x03, 
                    0x019B, 
                    0x14, 
                    Zero, 
                    Zero, 
                    One, 
                    One, 
                    0x02, 
                    0x02, 
                    One, 
                    One, 
                    One, 
                    0x03, 
                    0x06, 
                    One
                })
                Return (CFG0) /* \_SB_.HWN0.HWNL.CFG0 */
            }
        }

        Device (CAMP)
        {
            Name (_DEP, Package (0x05)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PMIC, 
                \_SB.PML0, 
                \_SB.ARPC, 
                \_SB.NSP0
            })
            Name (_HID, "QCOM0A32")  // _HID: Hardware ID
            Name (_UID, 0x1B)  // _UID: Unique ID
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((\_SB.SKUV == One))
                {
                    Return ("IDP07280")
                }
                Else
                {
                    Return ("IDP17280")
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0AC40000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC9F000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC4A000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC4B000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001EC,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000012F,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001EB,
                    }
                })
                Return (RBUF) /* \_SB_.CAMP._CRS.RBUF */
            }
        }

        Device (CAMS)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.MPCS
            })
            Name (_HID, "QCOM0A26")  // _HID: Hardware ID
            Name (_UID, 0x15)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SKUV == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (CAMF)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.MPCS
            })
            Name (_HID, "QCOM0A06")  // _HID: Hardware ID
            Name (_UID, 0x1A)  // _UID: Unique ID
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((\_SB.SKUV == One))
                {
                    Return ("IDP07280")
                }
                Else
                {
                    Return ("IDP17280")
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (CAMI)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.MPCS
            })
            Name (_HID, "QCOM0A99")  // _HID: Hardware ID
            Name (_UID, 0x1C)  // _UID: Unique ID
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((\_SB.SKUV == One))
                {
                    Return ("IDP07280")
                }
                Else
                {
                    Return ("IDP17280")
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SKUV == One))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (CAMT)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.MPCS
            })
            Name (_HID, "QCOM0ACE")  // _HID: Hardware ID
            Name (_UID, 0x1D)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SKUV == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (CAMU)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.MPCS
            })
            Name (_HID, "QCOM0ACF")  // _HID: Hardware ID
            Name (_UID, 0x1E)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SKUV == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FLSH)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.CAMP
            })
            Name (_HID, "QCOM0A27")  // _HID: Hardware ID
            Name (_UID, 0x19)  // _UID: Unique ID
            Method (_SUB, 0, NotSerialized)  // _SUB: Subsystem ID
            {
                If ((\_SB.SKUV == One))
                {
                    Return ("IDP07280")
                }
                Else
                {
                    Return ("IDP17280")
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.FLSH._CRS.RBUF */
            }
        }

        Device (MPCS)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.CAMP
            })
            Name (_HID, "QCOM0A98")  // _HID: Hardware ID
            Name (_UID, 0x18)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0ACE0000,         // Address Base
                        0x00002000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0ACE2000,         // Address Base
                        0x00002000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0ACE4000,         // Address Base
                        0x00002000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0ACE6000,         // Address Base
                        0x00002000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0ACE8000,         // Address Base
                        0x00002000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001FD,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001FE,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001FF,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001E0,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000009A,
                    }
                })
                Return (RBUF) /* \_SB_.MPCS._CRS.RBUF */
            }
        }

        Device (JPGE)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.CAMP, 
                \_SB.MMU0
            })
            Name (_HID, "QCOM0A33")  // _HID: Hardware ID
            Name (_UID, 0x17)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0AC4E000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC52000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001FA,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001FB,
                    }
                })
                Return (RBUF) /* \_SB_.JPGE._CRS.RBUF */
            }
        }

        Device (VFE0)
        {
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.MMU0, 
                \_SB.PEP0, 
                \_SB.CAMP
            })
            Name (_HID, "QCOM0A25")  // _HID: Hardware ID
            Name (_UID, 0x16)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0AC00000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC48000,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC48200,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC48400,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC48600,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0AC6B000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0x0AC6F000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0x0AC87000,         // Address Base
                        0x0000A000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0ACC4000,         // Address Base
                        0x00005000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0ACCB000,         // Address Base
                        0x00005000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x84300000,         // Address Base
                        0x00500000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001ED,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001EE,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001E3,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000199,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001EF,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001F1,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001F3,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002A1,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001F5,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000188,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001FC,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001F0,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001F2,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000002A0,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001F4,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000187,
                    }
                })
                Return (RBUF) /* \_SB_.VFE0._CRS.RBUF */
            }
        }

        Device (SEN2)
        {
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.IPC0, 
                \_SB.ADSP, 
                \_SB.ARPC
            })
            Name (_HID, "QCOM0693")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "QCOM0667")  // _CID: Compatible ID
        }

        Name (HPDB, Zero)
        Name (HPDS, Buffer (One)
        {
             0x00                                             // .
        })
        Name (DPPN, 0x0D)
        Name (CCST, Buffer (One)
        {
             0x02                                             // .
        })
        Name (PORT, Buffer (One)
        {
             0x02                                             // .
        })
        Name (HIRQ, Buffer (One)
        {
             0x00                                             // .
        })
        Name (USBC, Buffer (One)
        {
             0x0B                                             // .
        })
        Name (MUXC, Buffer (One)
        {
             0x00                                             // .
        })
        Device (URS0)
        {
            Name (_HID, "QCOM0A8B")  // _HID: Hardware ID
            Name (_CID, "PNP0CA1")  // _CID: Compatible ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.UCS0
            })
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x0A600000,         // Address Base
                    0x000FFFFF,         // Address Length
                    )
            })
            Device (USB0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000A5,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000A2,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x00000211,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x0000020F,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x0000020E,
                    }
                })
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            One, 
                            0x09, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "BACK",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0xFFFF,
                                PLD_HorizontalOffset   = 0xFFFF)

                        })
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    While (One)
                    {
                        Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        {
                             0x00                                             // .
                        })
                        CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.URS0.USB0._DSM._T_0 */
                        If ((_T_0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            While (One)
                            {
                                Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_2 = ToInteger (Arg1)
                                        If ((_T_2 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x1D                                             // .
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                ElseIf ((_T_1 == 0x02))
                                {
                                    Return (Zero)
                                    Break
                                }
                                ElseIf ((_T_1 == 0x03))
                                {
                                    Return (Zero)
                                    Break
                                }
                                ElseIf ((_T_1 == 0x04))
                                {
                                    Return (0x02)
                                    Break
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                                Break
                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                            Break
                        }

                        Break
                    }
                }

                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x00){})
                    Return (CFG0) /* \_SB_.URS0.USB0.PHYC.CFG0 */
                }
            }

            Device (UFN0)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            One, 
                            0x09, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "BACK",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0xFFFF,
                                PLD_HorizontalOffset   = 0xFFFF)

                        })
                    }
                }

                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000A5,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000A2,
                    }
                    GpioIo (Exclusive, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0052
                        }
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    While (One)
                    {
                        Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        {
                             0x00                                             // .
                        })
                        CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.URS0.UFN0._DSM._T_0 */
                        If ((_T_0 == ToUUID ("fe56cfeb-49d5-4378-a8a2-2978dbe54ad2") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_2 = ToInteger (Arg1)
                                        If ((_T_2 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                ElseIf ((_T_1 == One))
                                {
                                    Return (0x20)
                                    Break
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                                Break
                            }
                        }
                        ElseIf ((_T_0 == ToUUID ("18de299f-9476-4fc9-b43b-8aeb713ed751") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_3, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_3 = ToInteger (Arg2)
                                If ((_T_3 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_4, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_4 = ToInteger (Arg1)
                                        If ((_T_4 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                ElseIf ((_T_3 == One))
                                {
                                    Return (0x39)
                                    Break
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                                Break
                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                            Break
                        }

                        Break
                    }
                }

                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x00){})
                    Return (CFG0) /* \_SB_.URS0.UFN0.PHYC.CFG0 */
                }
            }
        }

        Device (USB1)
        {
            Name (_HID, "QCOM0AA1")  // _HID: Hardware ID
            Name (_CID, "ACPI\\PNP0D15")  // _CID: Compatible ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (_ADR, Zero)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x08C00000,         // Address Base
                    0x000FFFFF,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000112,
                }
                Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                {
                    0x00000111,
                }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                {
                    0x0000020D,
                }
                Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                {
                    0x0000020C,
                }
            })
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        One, 
                        0x06, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision           = 0x2,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x1,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "BACK",
                            PLD_VerticalPosition   = "CENTER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "VERTICALRECTANGLE",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x1,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0,
                            PLD_VerticalOffset     = 0xFFFF,
                            PLD_HorizontalOffset   = 0xFFFF)

                    })
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.USB1._DSM._T_0 */
                    If ((_T_0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = ToInteger (Arg1)
                                    If ((_T_2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x1D                                             // .
                                        })
                                        Break
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x01                                             // .
                                        })
                                        Break
                                    }

                                    Break
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                Break
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return (Zero)
                                Break
                            }
                            ElseIf ((_T_1 == 0x03))
                            {
                                Return (Zero)
                                Break
                            }
                            ElseIf ((_T_1 == 0x04))
                            {
                                Return (0x02)
                                Break
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                Break
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                        Break
                    }

                    Break
                }
            }

            Method (PHYC, 0, NotSerialized)
            {
                Name (CFG0, Package (0x00){})
                Return (CFG0) /* \_SB_.USB1.PHYC.CFG0 */
            }
        }

        Device (UCS0)
        {
            Name (_HID, "QCOM0AA4")  // _HID: Hardware ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0023
                        }
                })
                Return (RBUF) /* \_SB_.UCS0._CRS.RBUF */
            }

            Method (MUXV, 0, NotSerialized)
            {
                Return (\_SB.MUXC)
            }

            Method (CCVL, 0, NotSerialized)
            {
                Return (\_SB.CCST)
            }

            Method (DPVL, 0, NotSerialized)
            {
                Return (\_SB.DPPN)
            }

            Method (HPDM, 0, NotSerialized)
            {
                Return (\_SB.HPDS)
            }

            Method (HPDI, 0, NotSerialized)
            {
                Return (\_SB.HIRQ)
            }
        }

        Device (AGR0)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_PUR, Package (0x02)  // _PUR: Processor Utilization Request
            {
                One, 
                Zero
            })
            Method (_OST, 3, NotSerialized)  // _OST: OSPM Status Indication
            {
                \_SB.PEP0.ROST = Arg2
            }
        }

        ThermalZone (TZ0)
        {
            Name (_HID, "QCOM0A58")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }

            Name (TTSP, One)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ0.TTSP)
            }
        }

        ThermalZone (TZ1)
        {
            Name (_HID, "QCOM0A58")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PEP0
            })
            Name (TPSV, 0x0EC4)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ1.TPSV)
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ1.TTC1)
            }

            Name (TTC2, One)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ1.TTC2)
            }

            Name (TTSP, One)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ1.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ2)
        {
            Name (_HID, "QCOM0A59")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }

            Name (TTSP, One)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ2.TTSP)
            }
        }

        ThermalZone (TZ3)
        {
            Name (_HID, "QCOM0A59")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PEP0
            })
            Name (TPSV, 0x0EC4)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ3.TPSV)
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ3.TTC1)
            }

            Name (TTC2, One)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ3.TTC2)
            }

            Name (TTSP, One)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ3.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ4)
        {
            Name (_HID, "QCOM0AD4")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }

            Name (TTSP, One)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ4.TTSP)
            }
        }

        ThermalZone (TZ5)
        {
            Name (_HID, "QCOM0AD4")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PEP0
            })
            Name (TPSV, 0x0EC4)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ5.TPSV)
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ5.TTC1)
            }

            Name (TTC2, One)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ5.TTC2)
            }

            Name (TTSP, One)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ5.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ6)
        {
            Name (_HID, "QCOM0A91")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.GPU0
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ6.TPSV)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ6.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ6.TTC2)
            }

            Name (TTSP, 0x02)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ6.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ7)
        {
            Name (_HID, "QCOM0A51")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }

            Name (TTSP, 0x32)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ7.TTSP)
            }
        }

        ThermalZone (TZ9)
        {
            Name (_HID, "QCOM0A4C")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }

            Name (TTSP, 0x32)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ9.TTSP)
            }
        }

        ThermalZone (TZ10)
        {
            Name (_HID, "QCOM0A92")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MJCT
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ10.TPSV)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ10.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ10.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ10.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SKUV == 0x04) || (SKUV == 0x06)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ11)
        {
            Name (_HID, "QCOM0ABF")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.CSW0
            })
            Name (TPSV, 0x0EC4)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ11.TPSV)
            }

            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ11.TTC1)
            }

            Name (TTC2, One)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ11.TTC2)
            }

            Name (TTSP, 0x32)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ11.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.SJTG == 0x102150E1))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ12)
        {
            Name (_HID, "QCOM0A4B")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }

            Name (TTSP, 0x32)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ12.TTSP)
            }
        }

        ThermalZone (TZ13)
        {
            Name (_HID, "QCOM0A57")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x04)  // _TZD: Thermal Zone Devices
            {
                \_SB.WLTM, 
                \_SB.CSW0, 
                \_SB.GPU0, 
                _SB.MBCL
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.BCL1
                })
            }
        }

        ThermalZone (TZ15)
        {
            Name (_HID, "QCOM0AC8")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, Exclusive, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00C0
                        }
                })
                Return (RBUF) /* \_SB_.TZ15._CRS.RBUF */
            }

            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PEP0
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ15.TPSV)
            }

            Name (TCRT, 0x0F28)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ15.TCRT)
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ15.TTC1)
            }

            Name (TTC2, 0x14)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ15.TTC2)
            }

            Name (_TSP, One)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ15._DSM._T_0 */
                    If ((_T_0 == ToUUID ("c2d42c4b-e25e-471c-8a4e-290aac3a29a3") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = Arg2
                            If ((_T_1 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = Arg1
                                    If ((_T_2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Break
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                \_SB.TZ15.TPSV = DerefOf (Arg3 [Zero])
                                \_SB.TZ15.TCRT = DerefOf (Arg3 [One])
                                \_SB.TZ15.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ15.TTC1 = Zero
                                Notify (\_SB.TZ15, 0x81) // Thermal Trip Point Change
                                Return (\_SB.TZ15.TPSV)
                            }
                            Else
                            {
                                Return (Zero)
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.PMIC
                })
            }
        }

        ThermalZone (TZ16)
        {
            Name (_HID, "QCOM0AC9")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0100
                        }
                })
                Return (RBUF) /* \_SB_.TZ16._CRS.RBUF */
            }

            Name (_TZD, Package (0x02)  // _TZD: Thermal Zone Devices
            {
                \_SB.WLTM, 
                \_SB.MJCT
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ16.TPSV)
            }

            Name (TCRT, 0x0F28)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ16.TCRT)
            }

            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ16.TTC1)
            }

            Name (TTC2, 0x14)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ16.TTC2)
            }

            Name (_TSP, One)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ16._DSM._T_0 */
                    If ((_T_0 == ToUUID ("c2d42c4b-e25e-471c-8a4e-290aac3a29a3") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = Arg2
                            If ((_T_1 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = Arg1
                                    If ((_T_2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Break
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                \_SB.TZ16.TPSV = DerefOf (Arg3 [Zero])
                                \_SB.TZ16.TCRT = DerefOf (Arg3 [One])
                                \_SB.TZ16.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ16.TTC1 = Zero
                                Notify (\_SB.TZ16, 0x81) // Thermal Trip Point Change
                                Return (\_SB.TZ16.TPSV)
                            }
                            Else
                            {
                                Return (Zero)
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.PMIC
                })
            }
        }

        ThermalZone (TZ18)
        {
            Name (_HID, "QCOM0ACB")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0180
                        }
                })
                Return (RBUF) /* \_SB_.TZ18._CRS.RBUF */
            }

            Name (_TZD, Package (0x03)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBS0, 
                \_SB.MBS1, 
                \_SB.MBS2
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ18.TPSV)
            }

            Name (TCRT, 0x0F28)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ18.TCRT)
            }

            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ18.TTC1)
            }

            Name (TTC2, 0x14)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ18.TTC2)
            }

            Name (_TSP, One)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ18._DSM._T_0 */
                    If ((_T_0 == ToUUID ("c2d42c4b-e25e-471c-8a4e-290aac3a29a3") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = Arg2
                            If ((_T_1 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = Arg1
                                    If ((_T_2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Break
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                \_SB.TZ18.TPSV = DerefOf (Arg3 [Zero])
                                \_SB.TZ18.TCRT = DerefOf (Arg3 [One])
                                \_SB.TZ18.TTC2 = DerefOf (Arg3 [0x02])
                                \_SB.TZ18.TTC1 = Zero
                                Notify (\_SB.TZ18, 0x81) // Thermal Trip Point Change
                                Return (\_SB.TZ18.TPSV)
                            }
                            Else
                            {
                                Return (Zero)
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SJTG == 0x001EB0E1) || (SKUV == 0x04)) || (SKUV == 0x06)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.PMIC
                })
            }
        }

        ThermalZone (TZ99)
        {
            Name (_HID, "QCOM0A5A")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x0D)  // _TZD: Thermal Zone Devices
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
                \_SB.WLTM, 
                \_SB.CSW0, 
                \_SB.GPU0, 
                \_SB.MJCT
            })
            Name (TPSV, 0x0EC4)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ99.TPSV)
            }

            Name (TCRT, 0x0F28)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ99.TCRT)
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, 0x04)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ99.TTC1)
            }

            Name (TTC2, 0x03)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ99.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ99.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        Device (MPA)
        {
            Name (_HID, "QCOM04B4")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MPA1)
        {
            Name (_HID, "QCOM04B5")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBJ0)
        {
            Name (_HID, "QCOM04B6")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBJ1)
        {
            Name (_HID, "QCOM04B7")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBJ2)
        {
            Name (_HID, "QCOM04B8")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBJ3)
        {
            Name (_HID, "QCOM04B9")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBS0)
        {
            Name (_HID, "QCOM04BA")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBS1)
        {
            Name (_HID, "QCOM04BB")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBS2)
        {
            Name (_HID, "QCOM04BC")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MSKN)
        {
            Name (_HID, "QCOM04BE")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MJCT)
        {
            Name (_HID, "QCOM04BF")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MBCL)
        {
            Name (_HID, "QCOM06D4")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        ThermalZone (TZ51)
        {
            Name (_HID, "QCOM04C0")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MPA
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ51.TPSV)
            }

            Name (TCRT, 0x0F5A)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ51.TCRT)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ51.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ51.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ51.TTSP)
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MPA
                })
            }
        }

        ThermalZone (TZ52)
        {
            Name (_HID, "QCOM04C1")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MPA1
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ52.TPSV)
            }

            Name (TCRT, 0x0F5A)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ52.TCRT)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ52.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ52.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ52.TTSP)
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MPA1
                })
            }
        }

        ThermalZone (TZ53)
        {
            Name (_HID, "QCOM04C2")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBJ0
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBJ0
                })
            }
        }

        ThermalZone (TZ54)
        {
            Name (_HID, "QCOM04C3")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBJ1
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBJ1
                })
            }
        }

        ThermalZone (TZ55)
        {
            Name (_HID, "QCOM04C4")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBJ2
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBJ2
                })
            }
        }

        ThermalZone (TZ56)
        {
            Name (_HID, "QCOM04C5")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBJ3
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBJ3
                })
            }
        }

        ThermalZone (TZ57)
        {
            Name (_HID, "QCOM04C6")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBS0
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ57.TPSV)
            }

            Name (TCRT, 0x0F5A)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ57.TCRT)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ57.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ57.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ57.TTSP)
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBS0
                })
            }
        }

        ThermalZone (TZ58)
        {
            Name (_HID, "QCOM04C7")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBS1
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ58.TPSV)
            }

            Name (TCRT, 0x0F5A)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ58.TCRT)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ58.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ58.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ58.TTSP)
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBS1
                })
            }
        }

        ThermalZone (TZ59)
        {
            Name (_HID, "QCOM04C8")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.MBS2
            })
            Name (TPSV, 0x0E60)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ59.TPSV)
            }

            Name (TCRT, 0x0F5A)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ59.TCRT)
            }

            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ59.TTC1)
            }

            Name (TTC2, 0x02)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ59.TTC2)
            }

            Name (TTSP, 0x0A)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ59.TTSP)
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.MBS2
                })
            }
        }

        ThermalZone (TZ31)
        {
            Name (_HID, "QCOM0A5F")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (TTC1, One)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ31.TTC1)
            }

            Name (TTC2, 0x05)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ31.TTC2)
            }

            Name (TTSP, 0x1E)
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ31.TTSP)
            }

            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.ADC1
                })
            }
        }

        ThermalZone (TZ32)
        {
            Name (_HID, "QCOM0A61")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.ADC1
                })
            }

            Name (_TZD, Package (0x05)  // _TZD: Thermal Zone Devices
            {
                \_SB.SYSM.CLUS.CPU4, 
                \_SB.SYSM.CLUS.CPU5, 
                \_SB.SYSM.CLUS.CPU6, 
                \_SB.SYSM.CLUS.CPU7, 
                \_SB.GPU0
            })
            Name (TPSV, 0x0E2E)
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.TZ32.TPSV)
            }

            Name (TCRT, 0x0EF6)
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.TZ32.TCRT)
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ32.TTC1)
            }

            Name (TTC2, 0x14)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ32.TTC2)
            }

            Name (TTSP, 0x28)
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ32.TTSP)
            }
        }

        ThermalZone (TZ33)
        {
            Name (_HID, "QCOM0A63")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    \_SB.PEP0, 
                    \_SB.ADC1
                })
            }

            Name (_MTL, 0x14)  // _MTL: Minimum Throttle Limit
            Name (TTC1, Zero)
            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\_SB.TZ33.TTC1)
            }

            Name (TTC2, 0x14)
            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\_SB.TZ33.TTC2)
            }

            Name (TTSP, 0x1E)
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\_SB.TZ33.TTSP)
            }
        }

        Name (HWNH, One)
        Device (HWN1)
        {
            Name (_HID, "AWNC8624")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.HWNH == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.GIO0, 
                \_SB.I2C5
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x005A, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C5",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                })
                Return (RBUF) /* \_SB_.HWN1._CRS.RBUF */
            }
        }

        Device (TSC1)
        {
            Name (_HID, "GDGT9897")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.GIO0, 
                \_SB.SP14
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    SpiSerialBusV2 (0x0000, PolarityLow, FourWireMode, 0x08,
                        ControllerInitiated, 0x005B8D80, ClockPolarityLow,
                        ClockPhaseFirst, "\\_SB.SP14",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0051
                        }
                })
                Return (RBUF) /* \_SB_.TSC1._CRS.RBUF */
            }

            Name (PGID, Buffer (0x0A)
            {
                "\\_SB.TSC1"
            })
            Name (DBUF, Buffer (DBFL){})
            CreateByteField (DBUF, Zero, STAT)
            CreateByteField (DBUF, 0x02, DVAL)
            CreateField (DBUF, 0x18, 0xA0, DEID)
            Method (_S1D, 0, NotSerialized)  // _S1D: S1 Device State
            {
                Return (0x03)
            }

            Method (_S2D, 0, NotSerialized)  // _S2D: S2 Device State
            {
                Return (0x03)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                DEID = Buffer (ESNL){}
                DVAL = Zero
                DEID = PGID /* \_SB_.TSC1.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PEP0.FLD0 = DBUF /* \_SB_.TSC1.DBUF */
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                DEID = Buffer (ESNL){}
                DVAL = 0x03
                DEID = PGID /* \_SB_.TSC1.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PEP0.FLD0 = DBUF /* \_SB_.TSC1.DBUF */
                }
            }
        }

        Device (BTNS)
        {
            Name (_HID, "ACPI0011" /* Generic Buttons Device */)  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00C6
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                })
                Return (RBUF) /* \_SB_.BTNS._CRS.RBUF */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("fa6bd625-9ce8-470d-a2c7-b3ca36c4282e") /* Generic Buttons Device */, 
                Package (0x04)
                {
                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Zero, 
                        One, 
                        0x0D
                    }, 

                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        One, 
                        One, 
                        0x81
                    }, 

                    Package (0x05)
                    {
                        One, 
                        One, 
                        One, 
                        0x0C, 
                        0xE9
                    }, 

                    Package (0x05)
                    {
                        One, 
                        0x02, 
                        One, 
                        0x0C, 
                        0xEA
                    }
                }
            })
        }

        Device (NRCX)
        {
            Name (_HID, "QCOM0AD6")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Device (PSAU)
        {
            Name (_HID, "QCOM0AE1")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        Scope (\_SB.NRCX)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.PSAU)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((\_SB.SKUV == 0x04) || (\_SB.SKUV == 0x06)) || (\_SB.SKUV == 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (BTH0)
        {
            Name (_HID, "QCOM0A6B")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PMIC, 
                \_SB.UAR8
            })
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                Zero, 
                Zero
            })
            Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
            Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (PBUF, ResourceTemplate ()
                {
                    UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                        0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                        0x0020, 0x0020, "\\_SB.UAR8",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0055
                        }
                })
                Return (PBUF) /* \_SB_.BTH0._CRS.PBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (ADC1)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.SPMI, 
                \_SB.PMIC
            })
            Name (_HID, "QCOM0A11")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (\_SB.PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (INTB, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x02
                        })
                        {   // Pin list
                            0x0020
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x02
                        })
                        {   // Pin list
                            0x0028
                        }
                })
                Name (NAM, Buffer (0x0A)
                {
                    "\\_SB.SPMI"
                })
                Name (VUSR, Buffer (0x0C)
                {
                    /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,  // ........
                    /* 0008 */  0x31, 0x01, 0x00, 0x00                           // 1...
                })
                Name (VBTM, Buffer (0x0C)
                {
                    /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,  // ........
                    /* 0008 */  0x34, 0x01, 0x00, 0x00                           // 4...
                })
                Concatenate (VUSR, NAM, Local1)
                Concatenate (VBTM, NAM, Local2)
                Concatenate (Local1, Local2, Local3)
                Concatenate (Local3, INTB, Local0)
                Return (Local0)
            }
        }
    }
}

