DefinitionBlock("DSDT.aml", "DSDT", 0x02, "QCOMM ", "SDM8350 ", 0x00000003)
{
    Scope(\_SB_)
    {
        Name(PSUB, "MTP08350")
        Name(SOID, 0xffffffff)
        Name(STOR, 0xabcabcab)
        Name(SIDS, "899800000000000")
        Name(SIDV, 0xffffffff)
        Name(SVMJ, 0xffff)
        Name(SVMI, 0xffff)
        Name(SDFE, 0xffff)
        Name(SFES, "899800000000000")
        Name(SIDM, 0xfffffffff)
        Name(SUFS, 0xffffffff)
        Name(PUS3, 0xffffffff)
        Name(SUS3, 0xffffffff)
        Name(SIDT, 0xffffffff)
        Name(SOSN, 0xaaaaaaaabbbbbbbb)
        Name(PLST, 0xffffffff)
        Name(EMUL, 0xffffffff)
        Name(SJTG, 0xffffffff)
        Name(RMTB, 0xaaaaaaaa)
        Name(RMTX, 0xbbbbbbbb)
        Name(RFMB, 0xcccccccc)
        Name(RFMS, 0xdddddddd)
        Name(RFAB, 0xeeeeeeee)
        Name(RFAS, 0x77777777)
        Name(TCMA, 0xdeadbeef)
        Name(TCML, 0xbeefdead)
        Name(SOSI, 0xdeadbeefffffffff)
        Name(PRP0, 0xffffffff)
        Name(PRP1, 0xffffffff)
        Name(PRP2, 0xffffffff)
        Name(PRP3, 0xffffffff)
        Name(PRP4, 0xffffffff)
        Name(PRP5, 0xffffffff)
        Name(PRP6, 0xffffffff)
        Device(UFS0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(STOR, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Name(_HID, "QCOM24A5")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.EMUL, EMUL)
            Name(_UID, Zero)
            Name(_CCA, One)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xd8, 0x01, 0x00, 0xc0, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x29, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Device(DEV0)
            {
                Method(_ADR, 0x0, NotSerialized)
                {
                    Return(0x8)
                }
                Method(_RMV, 0x0, NotSerialized)
                {
                    Return(Zero)
                }
            }
        }
        Device(SDC2)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.GIO0
            })
            Name(_HID, "QCOM2466")
            Name(_UID, One)
            Name(_CCA, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x5d)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x80, 0x08, 0x00, 0x10, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xef, 0x00, 0x00, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x01, 0x00, 0x00, 0x88, 0x13, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x5c, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x01, 0x01, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x5c, 0x00, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_DIS, 0x0, NotSerialized)
            {
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(ABD_)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Name(_HID, "QCOM0527")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            OperationRegion(ROP1, GenericSerialBus, Zero, 0x100)
            Name(AVBL, Zero)
            Method(_REG, 0x2, NotSerialized)
            {
                If(LEqual(Arg0, 0x9))
                {
                    Store(Arg1, AVBL)
                }
            }
        }
        Name(ESNL, 0x14)
        Name(DBFL, 0x17)
        Device(PMIC)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.SPMI
            })
            Name(_HID, "QCOM1A2B")
            Name(_CID, "PNP0CA3")
            Alias(\_SB_.PSUB, _SUB)
            Method(PMCF, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0xb)
                {
                    0xa,
                    Package(0x2)
                    {
                        Zero,
                        0x10
                    },
                    Package(0x2)
                    {
                        One,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x2,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x3,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x4,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x5,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x10,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x10,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x10,
                        0x10
                    },
                    Package(0x2)
                    {
                        0x10,
                        0x10
                    }
                })
                Return(CFG0)
            }
        }
        Device(PML0)
        {
            Name(_HID, "QCOM1AD3")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.IC14
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb8)
                {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0xa0, 0x86, 0x01, 0x00, 0x08, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x31, 0x34, 0x00, 0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00,
	0x00, 0x01, 0x06, 0x00, 0xa0, 0x86, 0x01, 0x00, 0x09, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x49, 0x43, 0x31, 0x34, 0x00, 0x8e, 0x19, 0x00, 0x01,
	0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00, 0xa0, 0x86, 0x01, 0x00,
	0x0c, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49, 0x43, 0x31, 0x34, 0x00,
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0xa0, 0x86, 0x01, 0x00, 0x0d, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x31, 0x34, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
	0x00, 0x03, 0xc8, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x21, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00,
	0x03, 0xc8, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,
	0x00, 0x00, 0x23, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f,
	0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(PM01)
        {
            Name(_HID, "QCOM1A2D")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_DEP, Package(One)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0x01, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x40, 0x8f, 0x24, 0x4f, 0xe2, 0xd5, 0x9f, 0x49, 0x83, 0x4c, 0x27, 0x75,
	0x8e, 0xa1, 0xcd, 0x3f
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg2, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                Return(Buffer(One)
                                {
	0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Return(Package(0x2)
                                    {
                                        0x7,
                                        0x6
                                    })
                                }
                                Else
                                {
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Buffer(One)
                        {
	0x00
                        })
                    }
                    Break
                }
            }
        }
        Device(PMAP)
        {
            Name(_HID, "QCOM1A2C")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PMIC,
                \_SB_.ABD_,
                \_SB_.SCM0
            })
            Method(GEPT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x4)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateWordField(BUFF, 0x2, DATA)
                Store(0x2, DATA)
                Return(DATA)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(PRTC)
        {
            Name(_HID, "ACPI000E")
            Name(_DEP, Package(0x1)
            {
                "\\_SB.PMAP"
            })
            Method(_GCP, 0x0, NotSerialized)
            {
                Return(0x4)
            }
            Field(\_SB_.ABD_.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection(
                    I2CSerialBus(0x2, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )
                ),
                AccessAs(BufferAcc, AttribRawBytes(24)),
                FLD0, 192
            }
            Method(_GRT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x1a)
                {
                })
                CreateField(BUFF, 0x10, 0x80, TME1)
                CreateField(BUFF, 0x90, 0x20, ACT1)
                CreateField(BUFF, 0xb0, 0x20, ACW1)
                Store(FLD0, BUFF)
                Return(TME1)
            }
            Method(_SRT, 0x1, NotSerialized)
            {
                Name(BUFF, Buffer(0x32)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateField(BUFF, 0x10, 0x80, TME1)
                CreateField(BUFF, 0x90, 0x20, ACT1)
                CreateField(BUFF, 0xb0, 0x20, ACW1)
                Store(Zero, ACT1)
                Store(Arg0, TME1)
                Store(Zero, ACW1)
                Store(Store(BUFF, FLD0), BUFF)
                If(LNot(LEqual(STAT, Zero)))
                {
                    Return(One)
                }
                Return(Zero)
            }
        }
        Device(PMBM)
        {
            Name(_HID, "QCOM1A2A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.PMGK
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BCL1)
        {
            Name(_HID, "QCOM1A77")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x11a)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x08,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x09, 0x01,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0b, 0x01, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x00, 0x01, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x10, 0x02, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00,
	0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00,
	0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x11, 0x02, 0x5c, 0x5f, 0x53, 0x42,
	0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01,
	0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19,
	0x00, 0x23, 0x00, 0x00, 0x00, 0x12, 0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e,
	0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00,
	0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00,
	0x23, 0x00, 0x00, 0x00, 0x13, 0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50,
	0x4d, 0x30, 0x31, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(BCLQ, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x8)
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
                Return(CFG0)
            }
        }
        Device(PMGK)
        {
            Name(_HID, "QCOM1A8E")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x2)
            {
                \_SB_.GLNK,
                \_SB_.ABD_
            })
            Name(LKUP, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
            Method(GEPT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x4)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateWordField(BUFF, 0x2, DATA)
                Store(0x3, DATA)
                Return(DATA)
            }
            Name(UBUF, Buffer(0x32)
            {
            })
            CreateField(UBUF, Zero, 0x8, BSTA)
            CreateField(UBUF, 0x8, 0x8, BSIZ)
            CreateField(UBUF, 0x10, 0x10, BVER)
            CreateField(UBUF, 0x30, 0x20, BCCI)
            CreateField(UBUF, 0x50, 0x40, BCTL)
            CreateField(UBUF, 0x90, 0x80, BMGI)
            CreateField(UBUF, 0x110, 0x80, BMGO)
            Method(USBN, 0x1, NotSerialized)
            {
                Store(UCSI, UBUF)
                Store(BVER, \_SB_.UCSI.VERS)
                Store(BMGI, \_SB_.UCSI.MSGI)
                Store(BCCI, \_SB_.UCSI.CCI_)
                Notify(\_SB_.UCSI, Arg0)
                Return(Zero)
            }
            Name(PBUF, Buffer(0x10)
            {
            })
            CreateField(PBUF, Zero, 0x8, BPID)
            CreateField(PBUF, 0x8, 0x8, BORI)
            CreateField(PBUF, 0x10, 0x8, BMUX)
            CreateField(PBUF, 0x20, 0x10, BVID)
            CreateField(PBUF, 0x30, 0x10, BSID)
            CreateField(PBUF, 0x40, 0x8, BSSD)
            Method(UPAN, 0x1, NotSerialized)
            {
                Store(Arg0, PBUF)
                Store(0x2, \_SB_.UCS0.EINF)
                While(One)
                {
                    Name(_T_0, 0x0)
                    Store(BPID, _T_0)
                    If(LEqual(_T_0, Zero))
                    {
                        Or(One, \_SB_.UCS0.EUPD, \_SB_.UCS0.EUPD)
                        Store(BORI, \_SB_.UCS0.ECC0)
                        Store(BMUX, \_SB_.UCS0.EMX0)
                        Store(BVID, \_SB_.UCS0.EVI0)
                        Store(BSID, \_SB_.UCS0.ESI0)
                        Store(BSSD, \_SB_.UCS0.ESV0)
                        \_SB_.UCS0.USBR()
                        Break
                    }
                    Else
                    {
                        If(LEqual(_T_0, One))
                        {
                            Or(0x2, \_SB_.UCS0.EUPD, \_SB_.UCS0.EUPD)
                            Store(BORI, \_SB_.UCS0.ECC1)
                            Store(BMUX, \_SB_.UCS0.EMX1)
                            Store(BVID, \_SB_.UCS0.EVI1)
                            Store(BSID, \_SB_.UCS0.ESI1)
                            Store(BSSD, \_SB_.UCS0.ESV1)
                            \_SB_.UCS0.USBR()
                            Break
                        }
                    }
                    Break
                }
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(LKST, 0x1, NotSerialized)
            {
                Store(Arg0, LKUP)
                Notify(\_SB_.UCSI, Zero)
                Return(Zero)
            }
            Field(\_SB_.ABD_.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection(
                    I2CSerialBus(0x3, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )
                ),
                AccessAs(BufferAcc, AttribRawBytes(48)),
                UCSI, 384
            }
        }
        Device(PEP0)
        {
            Name(_HID, "QCOM1A17")
            Name(_CID, "PNP0D80")
            Method(THTZ, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, 0x0)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, One))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg3, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                If(Arg2)
                                {
                                    Store(Arg1, \_SB_.TZ1_.TPSV)
                                    Notify(\_SB_.TZ1_, 0x81)
                                }
                                Return(\_SB_.TZ1_._PSV())
                            }
                            Else
                            {
                                If(LEqual(_T_1, 0x2))
                                {
                                    If(Arg2)
                                    {
                                        Store(Arg1, \_SB_.TZ1_.TTSP)
                                        Notify(\_SB_.TZ1_, 0x81)
                                    }
                                    Return(\_SB_.TZ1_._TSP())
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x3))
                                    {
                                        If(Arg2)
                                        {
                                            Store(Arg1, \_SB_.TZ1_.TTC1)
                                            Notify(\_SB_.TZ1_, 0x81)
                                        }
                                        Return(\_SB_.TZ1_._TC1())
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x4))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ1_.TTC2)
                                                Notify(\_SB_.TZ1_, 0x81)
                                            }
                                            Return(\_SB_.TZ1_._TC2())
                                        }
                                        Else
                                        {
                                            Return(0xffff)
                                        }
                                    }
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        If(LEqual(_T_0, 0x3))
                        {
                            While(One)
                            {
                                Name(_T_2, 0x0)
                                Store(ToInteger(Arg3, ), _T_2)
                                If(LEqual(_T_2, Zero))
                                {
                                    If(Arg2)
                                    {
                                        Store(Arg1, \_SB_.TZ3_.TPSV)
                                        Notify(\_SB_.TZ3_, 0x81)
                                    }
                                    Return(\_SB_.TZ3_._PSV())
                                }
                                Else
                                {
                                    If(LEqual(_T_2, 0x2))
                                    {
                                        If(Arg2)
                                        {
                                            Store(Arg1, \_SB_.TZ3_.TTSP)
                                            Notify(\_SB_.TZ3_, 0x81)
                                        }
                                        Return(\_SB_.TZ3_._TSP())
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_2, 0x3))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ3_.TTC1)
                                                Notify(\_SB_.TZ3_, 0x81)
                                            }
                                            Return(\_SB_.TZ3_._TC1())
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_2, 0x4))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ3_.TTC2)
                                                    Notify(\_SB_.TZ3_, 0x81)
                                                }
                                                Return(\_SB_.TZ3_._TC2())
                                            }
                                            Else
                                            {
                                                Return(0xffff)
                                            }
                                        }
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            If(LEqual(_T_0, 0x5))
                            {
                                While(One)
                                {
                                    Name(_T_3, 0x0)
                                    Store(ToInteger(Arg3, ), _T_3)
                                    If(LEqual(_T_3, Zero))
                                    {
                                        If(Arg2)
                                        {
                                            Store(Arg1, \_SB_.TZ5_.TPSV)
                                            Notify(\_SB_.TZ5_, 0x81)
                                        }
                                        Return(\_SB_.TZ5_._PSV())
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_3, 0x2))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ5_.TTSP)
                                                Notify(\_SB_.TZ5_, 0x81)
                                            }
                                            Return(\_SB_.TZ5_._TSP())
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_3, 0x3))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ5_.TTC1)
                                                    Notify(\_SB_.TZ5_, 0x81)
                                                }
                                                Return(\_SB_.TZ5_._TC1())
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_3, 0x4))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ5_.TTC2)
                                                        Notify(\_SB_.TZ5_, 0x81)
                                                    }
                                                    Return(\_SB_.TZ5_._TC2())
                                                }
                                                Else
                                                {
                                                    Return(0xffff)
                                                }
                                            }
                                        }
                                    }
                                    Break
                                }
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0xb))
                                {
                                    While(One)
                                    {
                                        Name(_T_4, 0x0)
                                        Store(ToInteger(Arg3, ), _T_4)
                                        If(LEqual(_T_4, Zero))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ11.TPSV)
                                                Notify(\_SB_.TZ11, 0x81)
                                            }
                                            Return(\_SB_.TZ11._PSV())
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_4, 0x2))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ11.TTSP)
                                                    Notify(\_SB_.TZ11, 0x81)
                                                }
                                                Return(\_SB_.TZ11._TSP())
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_4, 0x3))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ11.TTC1)
                                                        Notify(\_SB_.TZ11, 0x81)
                                                    }
                                                    Return(\_SB_.TZ11._TC1())
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_4, 0x4))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ11.TTC2)
                                                            Notify(\_SB_.TZ11, 0x81)
                                                        }
                                                        Return(\_SB_.TZ11._TC2())
                                                    }
                                                    Else
                                                    {
                                                        Return(0xffff)
                                                    }
                                                }
                                            }
                                        }
                                        Break
                                    }
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0xd))
                                    {
                                        While(One)
                                        {
                                            Name(_T_5, 0x0)
                                            Store(ToInteger(Arg3, ), _T_5)
                                            If(LEqual(_T_5, Zero))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ13.TPSV)
                                                    Notify(\_SB_.TZ13, 0x81)
                                                }
                                                Return(\_SB_.TZ13._PSV())
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_5, 0x2))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ13.TTSP)
                                                        Notify(\_SB_.TZ13, 0x81)
                                                    }
                                                    Return(\_SB_.TZ13._TSP)
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_5, 0x3))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ13.TTC1)
                                                            Notify(\_SB_.TZ13, 0x81)
                                                        }
                                                        Return(\_SB_.TZ13._TC1)
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_5, 0x4))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Store(Arg1, \_SB_.TZ13.TTC2)
                                                                Notify(\_SB_.TZ13, 0x81)
                                                            }
                                                            Return(\_SB_.TZ13._TC2)
                                                        }
                                                        Else
                                                        {
                                                            Return(0xffff)
                                                        }
                                                    }
                                                }
                                            }
                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0xe))
                                        {
                                            While(One)
                                            {
                                                Name(_T_6, 0x0)
                                                Store(ToInteger(Arg3, ), _T_6)
                                                If(LEqual(_T_6, Zero))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ14.TPSV)
                                                        Notify(\_SB_.TZ14, 0x81)
                                                    }
                                                    Return(\_SB_.TZ14._PSV())
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_6, 0x2))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ14.TTSP)
                                                            Notify(\_SB_.TZ14, 0x81)
                                                        }
                                                        Return(\_SB_.TZ14._TFP())
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_6, 0x3))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Store(Arg1, \_SB_.TZ14.TTC1)
                                                                Notify(\_SB_.TZ14, 0x81)
                                                            }
                                                            Return(\_SB_.TZ14._TC1())
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_6, 0x4))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Store(Arg1, \_SB_.TZ14.TTC2)
                                                                    Notify(\_SB_.TZ14, 0x81)
                                                                }
                                                                Return(\_SB_.TZ14._TC2())
                                                            }
                                                            Else
                                                            {
                                                                Return(0xffff)
                                                            }
                                                        }
                                                    }
                                                }
                                                Break
                                            }
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0xf))
                                            {
                                                While(One)
                                                {
                                                    Name(_T_7, 0x0)
                                                    Store(ToInteger(Arg3, ), _T_7)
                                                    If(LEqual(_T_7, Zero))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Return(0xffff)
                                                        }
                                                        Return(\_SB_.TZ15._PSV())
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_7, 0x2))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Return(0xffff)
                                                            }
                                                            Return(\_SB_.TZ15._TSP)
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_7, 0x3))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Return(0xffff)
                                                                }
                                                                Return(\_SB_.TZ15._TC1())
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_7, 0x4))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ15._TC2())
                                                                }
                                                                Else
                                                                {
                                                                    Return(0xffff)
                                                                }
                                                            }
                                                        }
                                                    }
                                                    Break
                                                }
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x10))
                                                {
                                                    While(One)
                                                    {
                                                        Name(_T_8, 0x0)
                                                        Store(ToInteger(Arg3, ), _T_8)
                                                        If(LEqual(_T_8, Zero))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Return(0xffff)
                                                            }
                                                            Return(\_SB_.TZ16._PSV())
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_8, One))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Return(0xffff)
                                                                }
                                                                Return(\_SB_.TZ16._CRT())
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_8, 0x2))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ16._TSP)
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_8, 0x3))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ16._TC1())
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_8, 0x4))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                            Return(\_SB_.TZ16._TC2())
                                                                        }
                                                                        Else
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        Break
                                                    }
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x11))
                                                    {
                                                        While(One)
                                                        {
                                                            Name(_T_9, 0x0)
                                                            Store(ToInteger(Arg3, ), _T_9)
                                                            If(LEqual(_T_9, Zero))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Return(0xffff)
                                                                }
                                                                Return(\_SB_.TZ17._PSV())
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_9, 0x2))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ17._TSP)
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_9, 0x3))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ17._TC1())
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_9, 0x4))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                            Return(\_SB_.TZ17._TC2())
                                                                        }
                                                                        Else
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            Break
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x12))
                                                        {
                                                            While(One)
                                                            {
                                                                Name(_T_A, 0x0)
                                                                Store(ToInteger(Arg3, ), _T_A)
                                                                If(LEqual(_T_A, Zero))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ18._PSV())
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_A, 0x2))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ18._TSP)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_A, 0x3))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                            Return(\_SB_.TZ18._TC1())
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_A, 0x4))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Return(0xffff)
                                                                                }
                                                                                Return(\_SB_.TZ18._TC2())
                                                                            }
                                                                            Else
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                Break
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x1f))
                                                            {
                                                                While(One)
                                                                {
                                                                    Name(_T_B, 0x0)
                                                                    Store(ToInteger(Arg3, ), _T_B)
                                                                    If(LEqual(_T_B, Zero))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Store(Arg1, \_SB_.TZ31.TPSV)
                                                                            Notify(\_SB_.TZ31, 0x81)
                                                                        }
                                                                        Return(\_SB_.TZ31._PSV())
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_B, 0x2))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Store(Arg1, \_SB_.TZ31.TTSP)
                                                                                Notify(\_SB_.TZ31, 0x81)
                                                                            }
                                                                            Return(\_SB_.TZ31._TSP())
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_B, 0x3))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Store(Arg1, \_SB_.TZ31.TTC1)
                                                                                    Notify(\_SB_.TZ31, 0x81)
                                                                                }
                                                                                Return(\_SB_.TZ31._TC1())
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_B, 0x4))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ31.TTC2)
                                                                                        Notify(\_SB_.TZ31, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ31._TC2())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    Return(0xffff)
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    Break
                                                                }
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_0, 0x20))
                                                                {
                                                                    While(One)
                                                                    {
                                                                        Name(_T_C, 0x0)
                                                                        Store(ToInteger(Arg3, ), _T_C)
                                                                        If(LEqual(_T_C, Zero))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Store(Arg1, \_SB_.TZ32.TPSV)
                                                                                Notify(\_SB_.TZ32, 0x81)
                                                                            }
                                                                            Return(\_SB_.TZ32._PSV())
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_C, 0x2))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Store(Arg1, \_SB_.TZ32.TTSP)
                                                                                    Notify(\_SB_.TZ32, 0x81)
                                                                                }
                                                                                Return(\_SB_.TZ32._TSP())
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_C, 0x3))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ32.TTC1)
                                                                                        Notify(\_SB_.TZ32, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ32._TC1())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_C, 0x4))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ32.TTC2)
                                                                                            Notify(\_SB_.TZ32, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ32._TC2())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        Return(0xffff)
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        Break
                                                                    }
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_0, 0x21))
                                                                    {
                                                                        While(One)
                                                                        {
                                                                            Name(_T_D, 0x0)
                                                                            Store(ToInteger(Arg3, ), _T_D)
                                                                            If(LEqual(_T_D, Zero))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Store(Arg1, \_SB_.TZ33.TPSV)
                                                                                    Notify(\_SB_.TZ33, 0x81)
                                                                                }
                                                                                Return(\_SB_.TZ33._PSV())
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_D, 0x2))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ33.TTSP)
                                                                                        Notify(\_SB_.TZ33, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ33._TSP())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_D, 0x3))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ33.TTC1)
                                                                                            Notify(\_SB_.TZ33, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ33._TC1())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_D, 0x4))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ33.TTC2)
                                                                                                Notify(\_SB_.TZ33, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ33._TC2())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            Return(0xffff)
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            Break
                                                                        }
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_0, 0x22))
                                                                        {
                                                                            While(One)
                                                                            {
                                                                                Name(_T_E, 0x0)
                                                                                Store(ToInteger(Arg3, ), _T_E)
                                                                                If(LEqual(_T_E, Zero))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ34.TPSV)
                                                                                        Notify(\_SB_.TZ34, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ34._PSV())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_E, 0x2))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ34.TTSP)
                                                                                            Notify(\_SB_.TZ34, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ34._TSP())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_E, 0x3))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ34.TTC1)
                                                                                                Notify(\_SB_.TZ34, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ34._TC1())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_E, 0x4))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ34.TTC2)
                                                                                                    Notify(\_SB_.TZ34, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ34._TC2())
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                Return(0xffff)
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                Break
                                                                            }
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_0, 0x23))
                                                                            {
                                                                                While(One)
                                                                                {
                                                                                    Name(_T_F, 0x0)
                                                                                    Store(ToInteger(Arg3, ), _T_F)
                                                                                    If(LEqual(_T_F, Zero))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ35.TPSV)
                                                                                            Notify(\_SB_.TZ35, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ35._PSV())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_F, 0x2))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ35.TTSP)
                                                                                                Notify(\_SB_.TZ35, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ35._TSP())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_F, 0x3))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ35.TTC1)
                                                                                                    Notify(\_SB_.TZ35, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ35._TC1())
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_F, 0x4))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ35.TTC2)
                                                                                                        Notify(\_SB_.TZ35, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ35._TC2())
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    Return(0xffff)
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    Break
                                                                                }
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_0, 0x24))
                                                                                {
                                                                                    While(One)
                                                                                    {
                                                                                        Name(_T_G, 0x0)
                                                                                        Store(ToInteger(Arg3, ), _T_G)
                                                                                        If(LEqual(_T_G, Zero))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ36.TPSV)
                                                                                                Notify(\_SB_.TZ36, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ36._PSV())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_G, 0x2))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ36.TTSP)
                                                                                                    Notify(\_SB_.TZ36, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ36._TSP())
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_G, 0x3))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ36.TTC1)
                                                                                                        Notify(\_SB_.TZ36, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ36._TC1())
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_G, 0x4))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ36.TTC2)
                                                                                                            Notify(\_SB_.TZ36, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ36._TC2())
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        Return(0xffff)
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        Break
                                                                                    }
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_0, 0x25))
                                                                                    {
                                                                                        While(One)
                                                                                        {
                                                                                            Name(_T_H, 0x0)
                                                                                            Store(ToInteger(Arg3, ), _T_H)
                                                                                            If(LEqual(_T_H, Zero))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ37.TPSV)
                                                                                                    Notify(\_SB_.TZ37, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ37._PSV())
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_H, 0x2))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ37.TTSP)
                                                                                                        Notify(\_SB_.TZ37, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ37._TSP())
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_H, 0x3))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ37.TTC1)
                                                                                                            Notify(\_SB_.TZ37, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ37._TC1())
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_H, 0x4))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ37.TTC2)
                                                                                                                Notify(\_SB_.TZ37, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ37._TC2())
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            Return(0xffff)
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            Break
                                                                                        }
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_0, 0x26))
                                                                                        {
                                                                                            While(One)
                                                                                            {
                                                                                                Name(_T_I, 0x0)
                                                                                                Store(ToInteger(Arg3, ), _T_I)
                                                                                                If(LEqual(_T_I, Zero))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ38.TPSV)
                                                                                                        Notify(\_SB_.TZ38, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ38._PSV())
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_I, 0x2))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ38.TTSP)
                                                                                                            Notify(\_SB_.TZ38, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ38._TSP())
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_I, 0x3))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ38.TTC1)
                                                                                                                Notify(\_SB_.TZ38, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ38._TC1())
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_I, 0x4))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ38.TTC2)
                                                                                                                    Notify(\_SB_.TZ38, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ38._TC2())
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                Return(0xffff)
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                Break
                                                                                            }
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_0, 0x33))
                                                                                            {
                                                                                                While(One)
                                                                                                {
                                                                                                    Name(_T_J, 0x0)
                                                                                                    Store(ToInteger(Arg3, ), _T_J)
                                                                                                    If(LEqual(_T_J, Zero))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ51.TPSV)
                                                                                                            Notify(\_SB_.TZ51, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ51._PSV())
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_J, 0x2))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ51.TTSP)
                                                                                                                Notify(\_SB_.TZ51, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ51._TSP())
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_J, 0x3))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ51.TTC1)
                                                                                                                    Notify(\_SB_.TZ51, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ51._TC1())
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_J, 0x4))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ51.TTC2)
                                                                                                                        Notify(\_SB_.TZ51, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ51._TC2())
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    Return(0xffff)
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    Break
                                                                                                }
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_0, 0x34))
                                                                                                {
                                                                                                    While(One)
                                                                                                    {
                                                                                                        Name(_T_K, 0x0)
                                                                                                        Store(ToInteger(Arg3, ), _T_K)
                                                                                                        If(LEqual(_T_K, Zero))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ52.TPSV)
                                                                                                                Notify(\_SB_.TZ52, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ52._PSV)
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_K, 0x2))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ52.TTSP)
                                                                                                                    Notify(\_SB_.TZ52, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ52._TSP)
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_K, 0x3))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ52.TTC1)
                                                                                                                        Notify(\_SB_.TZ52, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ52._TC1)
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_K, 0x4))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ52.TTC2)
                                                                                                                            Notify(\_SB_.TZ52, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ52._TC2)
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        Return(0xffff)
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        Break
                                                                                                    }
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_0, 0x3a))
                                                                                                    {
                                                                                                        While(One)
                                                                                                        {
                                                                                                            Name(_T_L, 0x0)
                                                                                                            Store(ToInteger(Arg3, ), _T_L)
                                                                                                            If(LEqual(_T_L, Zero))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ58.TPSV)
                                                                                                                    Notify(\_SB_.TZ58, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ58._PSV())
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_L, 0x2))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ58.TTSP)
                                                                                                                        Notify(\_SB_.TZ58, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ58._TSP())
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_L, 0x3))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ58.TTC1)
                                                                                                                            Notify(\_SB_.TZ58, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ58._TC1())
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_L, 0x4))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ58.TTC2)
                                                                                                                                Notify(\_SB_.TZ58, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ58._TC2())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            Return(0xffff)
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            Break
                                                                                                        }
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_0, 0x3b))
                                                                                                        {
                                                                                                            While(One)
                                                                                                            {
                                                                                                                Name(_T_M, 0x0)
                                                                                                                Store(ToInteger(Arg3, ), _T_M)
                                                                                                                If(LEqual(_T_M, Zero))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ59.TPSV)
                                                                                                                        Notify(\_SB_.TZ59, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ59._PSV())
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_M, 0x2))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ59.TTSP)
                                                                                                                            Notify(\_SB_.TZ59, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ59._TSP())
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_M, 0x3))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ59.TTC1)
                                                                                                                                Notify(\_SB_.TZ59, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ59._TC1())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_M, 0x4))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ59.TTC2)
                                                                                                                                    Notify(\_SB_.TZ59, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ59._TC2())
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                Return(0xffff)
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                                Break
                                                                                                            }
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_0, 0x3d))
                                                                                                            {
                                                                                                                While(One)
                                                                                                                {
                                                                                                                    Name(_T_N, 0x0)
                                                                                                                    Store(ToInteger(Arg3, ), _T_N)
                                                                                                                    If(LEqual(_T_N, Zero))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ61.TPSV)
                                                                                                                            Notify(\_SB_.TZ61, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ61._PSV())
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_N, 0x2))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ61.TTSP)
                                                                                                                                Notify(\_SB_.TZ61, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ61._TSP())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_N, 0x3))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ61.TTC1)
                                                                                                                                    Notify(\_SB_.TZ61, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ61._TC1())
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If(LEqual(_T_N, 0x4))
                                                                                                                                {
                                                                                                                                    If(Arg2)
                                                                                                                                    {
                                                                                                                                        Store(Arg1, \_SB_.TZ61.TTC2)
                                                                                                                                        Notify(\_SB_.TZ61, 0x81)
                                                                                                                                    }
                                                                                                                                    Return(\_SB_.TZ61._TC2())
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    Return(0xffff)
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    Break
                                                                                                                }
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_0, 0x63))
                                                                                                                {
                                                                                                                    While(One)
                                                                                                                    {
                                                                                                                        Name(_T_O, 0x0)
                                                                                                                        Store(ToInteger(Arg3, ), _T_O)
                                                                                                                        If(LEqual(_T_O, Zero))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ99.TPSV)
                                                                                                                                Notify(\_SB_.TZ99, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ99._PSV())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_O, One))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ99.TCRT)
                                                                                                                                    Notify(\_SB_.TZ99, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ99._CRT())
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If(LEqual(_T_O, 0x2))
                                                                                                                                {
                                                                                                                                    If(Arg2)
                                                                                                                                    {
                                                                                                                                        Store(Arg1, \_SB_.TZ99.TTSP)
                                                                                                                                        Notify(\_SB_.TZ99, 0x81)
                                                                                                                                    }
                                                                                                                                    Return(\_SB_.TZ99._TSP())
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    If(LEqual(_T_O, 0x3))
                                                                                                                                    {
                                                                                                                                        If(Arg2)
                                                                                                                                        {
                                                                                                                                            Store(Arg1, \_SB_.TZ99.TTC1)
                                                                                                                                            Notify(\_SB_.TZ99, 0x81)
                                                                                                                                        }
                                                                                                                                        Return(\_SB_.TZ99._TC1())
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        If(LEqual(_T_O, 0x4))
                                                                                                                                        {
                                                                                                                                            If(Arg2)
                                                                                                                                            {
                                                                                                                                                Store(Arg1, \_SB_.TZ99.TTC2)
                                                                                                                                                Notify(\_SB_.TZ99, 0x81)
                                                                                                                                            }
                                                                                                                                            Return(\_SB_.TZ99._TC2())
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            Return(0xffff)
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        Break
                                                                                                                    }
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    Return(0xffff)
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Break
                }
            }
            Name(_DEP, Package(One)
            {
                \_SB_.IPCC
            })
            Method(_SUB, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.PSUB, "MTP08350"))
                {
                    Return("MTP08350")
                }
                Else
                {
                    If(LEqual(\_SB_.PSUB, "QRD08350"))
                    {
                        Return("QRD08350")
                    }
                    Else
                    {
                        If(LEqual(\_SB_.PSUB, "CDP08350"))
                        {
                            Return("CDP08350")
                        }
                        Else
                        {
                            If(LEqual(\_SB_.PSUB, "ATP08350"))
                            {
                                Return("ATP08350")
                            }
                            Else
                            {
                                If(LEqual(\_SB_.PSUB, "HDK08350"))
                                {
                                    Return("HDK08350")
                                }
                                Else
                                {
                                    If(LEqual(\_SB_.PSUB, "HHG08350"))
                                    {
                                        Return("HHG08350")
                                    }
                                    Else
                                    {
                                        If(LEqual(\_SB_.PSUB, "QSP08350"))
                                        {
                                            Return("QSP08350")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x4c, 0xa3, 0x5c, 0x8d, 0x83, 0xae, 0x2a, 0x4a, 0x9d, 0xd1, 0xa7, 0x4f,
	0xfe, 0xad, 0x54, 0x8b
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg2, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(ToInteger(Arg1, ), _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(0x7e)
                                    }
                                    Break
                                }
                                Return(Zero)
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Name(SUBI, Package(0x5)
                                    {
                                        Package(0x3)
                                        {
                                            "adsp",
                                            One,
                                            0x2
                                        },
                                        Package(0x3)
                                        {
                                            "slpi",
                                            Zero,
                                            0x3
                                        },
                                        Package(0x3)
                                        {
                                            "cdsp",
                                            One,
                                            0x4
                                        },
                                        Package(0x3)
                                        {
                                            "modem",
                                            One,
                                            0x5
                                        },
                                        Package(0x3)
                                        {
                                            "spss",
                                            Zero,
                                            0x6
                                        }
                                    })
                                    Return(SUBI)
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x2))
                                    {
                                        If(CondRefOf(\_SB_.ADSP, ))
                                        {
                                            If(CondRefOf(\_SB_.ADSP._STA, ))
                                            {
                                                Return(\_SB_.ADSP._STA())
                                            }
                                            Else
                                            {
                                                Return(0xf)
                                            }
                                        }
                                        Else
                                        {
                                            Return(Zero)
                                        }
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x3))
                                        {
                                            If(CondRefOf(\_SB_.SCSS, ))
                                            {
                                                If(CondRefOf(\_SB_.SCSS._STA, ))
                                                {
                                                    Return(\_SB_.SCSS._STA())
                                                }
                                                Else
                                                {
                                                    Return(0xf)
                                                }
                                            }
                                            Else
                                            {
                                                Return(Zero)
                                            }
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_1, 0x4))
                                            {
                                                If(CondRefOf(\_SB_.NSP0, ))
                                                {
                                                    If(CondRefOf(\_SB_.NSP0._STA, ))
                                                    {
                                                        Return(\_SB_.NSP0._STA())
                                                    }
                                                    Else
                                                    {
                                                        Return(0xf)
                                                    }
                                                }
                                                Else
                                                {
                                                    Return(Zero)
                                                }
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_1, 0x5))
                                                {
                                                    If(CondRefOf(\_SB_.AMSS, ))
                                                    {
                                                        If(CondRefOf(\_SB_.AMSS._STA, ))
                                                        {
                                                            Return(\_SB_.AMSS._STA())
                                                        }
                                                        Else
                                                        {
                                                            Return(0xf)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        Return(Zero)
                                                    }
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_1, 0x6))
                                                    {
                                                        If(CondRefOf(\_SB_.SPSS, ))
                                                        {
                                                            If(CondRefOf(\_SB_.SPSS._STA, ))
                                                            {
                                                                Return(\_SB_.SPSS._STA())
                                                            }
                                                            Else
                                                            {
                                                                Return(0xf)
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            Return(Zero)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        Return(Zero)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Zero)
                    }
                    Break
                }
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x65)
                {
	0x89, 0x06, 0x00, 0x11, 0x01, 0x1a, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x11, 0x01, 0x1c, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x11, 0x01, 0x1b,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x11, 0x01, 0x1d, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x25, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x3e, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x3f,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x33, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x65, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x0d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x13,
	0x01, 0x00, 0x00, 0x79, 0x00
                })
            }
            Field(\_SB_.ABD_.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection(
                    I2CSerialBus(0x1, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )
                ),
                AccessAs(BufferAcc, AttribRawBytes(21)),
                FLD0, 168
            }
            Method(GEPT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x4)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateWordField(BUFF, 0x2, DATA)
                Store(One, DATA)
                Return(DATA)
            }
            Name(ROST, Zero)
            Method(NPUR, 0x1, NotSerialized)
            {
                Store(Arg0, Index(\_SB_.AGR0._PUR, One, ))
                Notify(\_SB_.AGR0, 0x80)
            }
            Method(INTR, 0x0, NotSerialized)
            {
                Name(RBUF, Package(0x18)
                {
                    0x2,
                    One,
                    0x3,
                    One,
                    0x6,
                    0x17911008,
                    One,
                    Zero,
                    0x86000000,
                    0x200000,
                    Zero,
                    Zero,
                    0xc300000,
                    0x1000,
                    Zero,
                    Zero,
                    0x1fd4000,
                    0x8,
                    Zero,
                    Zero,
                    0x17c0000c,
                    Zero,
                    Zero,
                    Zero
                })
                Return(RBUF)
            }
            Method(STND, 0x0, NotSerialized)
            {
                Return(STNX)
            }
            Name(STNX, Package(0xa)
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
            Method(CTPM, 0x0, NotSerialized)
            {
                Name(CTPN, Package(0x2)
                {
                    "CORE_TOPOLOGY",
                    0x8
                })
                Return(CTPN)
            }
            Name(DCVS, Zero)
            Method(PGDS, 0x0, NotSerialized)
            {
                Return(DCVS)
            }
            Name(PPPP, Package(0x42)
            {
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS5_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS6_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS9_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS10_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS11_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS12_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS2_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS3_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS4_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS6_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS8_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS10_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS1_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS2_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS3_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO8_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO9_B"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO8_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO9_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO10_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO11_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO12_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO13_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_D"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_E"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_P"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_Q"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_FIXED_VREG1"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_FIXED_VREG2"
                }
            })
            Method(PPPM, 0x0, NotSerialized)
            {
                Return(PPPP)
            }
            Name(PRRP, Package(0x46)
            {
                "PPP_RESOURCE_ID_LDO1_P",
                "PPP_RESOURCE_ID_SMPS12_B",
                0x12ad40,
                0x14c080,
                0x1d4c0,
                "PPP_RESOURCE_ID_LDO2_P",
                "PPP_RESOURCE_ID_SMPS12_B",
                0x12ad40,
                0x14c080,
                0x157c0,
                "PPP_RESOURCE_ID_LDO3_P",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x23280,
                "PPP_RESOURCE_ID_LDO4_P",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x1f400,
                "PPP_RESOURCE_ID_LDO5_P",
                "PPP_RESOURCE_ID_SMPS1_C",
                0x1b7740,
                0x1dc900,
                0x21340,
                "PPP_RESOURCE_ID_LDO6_P",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x1f400,
                "PPP_RESOURCE_ID_LDO7_P",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x4c2c0,
                "PPP_RESOURCE_ID_LDO1_Q",
                "PPP_RESOURCE_ID_SMPS12_B",
                0x12ad40,
                0x14c080,
                0x1d4c0,
                "PPP_RESOURCE_ID_LDO2_Q",
                "PPP_RESOURCE_ID_SMPS12_B",
                0x12ad40,
                0x14c080,
                0x157c0,
                "PPP_RESOURCE_ID_LDO3_Q",
                "PPP_RESOURCE_ID_SMPS1_C",
                0x1b7740,
                0x1dc900,
                0x21340,
                "PPP_RESOURCE_ID_LDO4_Q",
                "PPP_RESOURCE_ID_SMPS1_C",
                0x1b7740,
                0x1dc900,
                0x21340,
                "PPP_RESOURCE_ID_LDO5_Q",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x17700,
                "PPP_RESOURCE_ID_LDO6_Q",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x13880,
                "PPP_RESOURCE_ID_LDO7_Q",
                "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                0x2de600,
                0x3c6cc0,
                0x13880
            })
            Method(PPRR, 0x0, NotSerialized)
            {
                Return(PRRP)
            }
            Name(FPDP, Zero)
            Method(FPMD, 0x0, NotSerialized)
            {
                Return(FPDP)
            }
            Method(DPRF, 0x0, NotSerialized)
            {
                Return(\_SB_.DPP0)
            }
            Method(DMRF, 0x0, NotSerialized)
            {
                Return(\_SB_.DPP1)
            }
            Method(MPRF, 0x0, NotSerialized)
            {
                Return(\_SB_.MPP0)
            }
            Method(MMRF, 0x0, NotSerialized)
            {
                Return(\_SB_.MPP1)
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(PREL, 0x0, NotSerialized)
            {
                Name(PREX, Package(0x7)
                {
                    "DM0G",
                    "DM7G",
                    "DM8G",
                    "DM9G",
                    "DMKG",
                    "DMLG",
                    "DMMG"
                })
                Return(PREX)
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(PEPH, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    "ACPI\\VEN_QCOM&DEV_1A17"
                })
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(APMD, 0x0, NotSerialized)
            {
                Return(APCC)
            }
            Name(APCC, Package(0x1)
            {
                Package(0x6)
                {
                    "DEVICE",
                    "\\_SB.ADSP.ADCM.AUCD.QCRT",
                    Package(0x3)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_xo",
                                0x80
                            }
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        One,
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_xo",
                                Zero
                            }
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
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
        Scope(\_SB_.PEP0)
        {
            Method(G0MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xc)
                        {
                            "COMPONENT",
                            Zero,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0xe)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x8)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x5,
                                Package(0x7)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            0x2
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(G7MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xb)
                        {
                            "COMPONENT",
                            0x7,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x11)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_edp2_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_pixel0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_pixel0_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(G8MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xb)
                        {
                            "COMPONENT",
                            0x8,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x10)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_edp2_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx2_aux_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(G9MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xc)
                        {
                            "COMPONENT",
                            0x9,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x17)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_edp0_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_top_edp0_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_prim_phy_pipe_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb4_eud_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb30_prim_sleep_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x6)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x5,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_usb_router_link_intf_clk",
                                            0x2
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(GKMD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xc)
                        {
                            "COMPONENT",
                            0xa,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x17)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_prim_phy_pipe_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb4_eud_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb30_prim_sleep_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_edp0_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_top_edp0_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel1_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x6)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_pixel1_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_link_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x5,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx0_usb_router_link_intf_clk",
                                            0x2
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(GLMD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xc)
                        {
                            "COMPONENT",
                            0xb,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x17)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_edp1_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_top_edp1_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_sec_phy_pipe_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb4_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb30_sec_sleep_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x6)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x5,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_usb_router_link_intf_clk",
                                            0x2
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(GMMD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xc)
                        {
                            "COMPONENT",
                            0xc,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x17)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "NPARESOURCE",
                                        Package(0x3)
                                        {
                                            One,
                                            "/arc/client/rail_mmcx",
                                            0x40
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_edp1_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_top_edp1_phy_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "mdss_0_disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_ROTATOR",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_sf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_sec_phy_pipe_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb4_clkref_en",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb30_sec_sleep_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel1_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x23c3460,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            0x77359400
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            Zero,
                                            0x77359400
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_MNOC_HF_MEM_NOC",
                                            Zero,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MNOC_HF_MEM_NOC",
                                            "ICBID_SLAVE_EBI1",
                                            0x35a4e900,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x6)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_pixel1_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_link_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x5,
                                Package(0x3)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "mdss_0_disp_cc_mdss_dptx1_usb_router_link_intf_clk",
                                            0x2
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(MPMD, 0x0, NotSerialized)
            {
                Return(MPCC)
            }
            Name(MPCC, Package(0x0)
            {
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(LPMD, 0x0, NotSerialized)
            {
                Return(LPCC)
            }
            Name(LPCC, Package(0x6)
            {
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.URS0",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS0.USB0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        One,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0xf)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS0.UFN0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0xf)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_eud_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.URS1",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS1.USB1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        One,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0xf)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS1.UFN1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0xe)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0xf)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb4_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(BPMD, 0x0, NotSerialized)
            {
                If(LEqual(STOR, One))
                {
                    Return(CPCC)
                }
                Else
                {
                    Return(FPCC)
                }
            }
            Method(SDMD, 0x0, NotSerialized)
            {
                Return(SDCC)
            }
            Name(CPCC, Package(0x1)
            {
                Package(0x6)
                {
                    "DEVICE",
                    "\\_SB.UFS0",
                    Package(0x7)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x5)
                        {
                            "FSTATE",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    Zero,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    One,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    0x2,
                                    Zero
                                }
                            }
                        },
                        Package(0x5)
                        {
                            "FSTATE",
                            One,
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    0x2,
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    One,
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    Zero,
                                    One
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            One,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            0x2,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x6)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "DELAY",
                            Package(0x1)
                            {
                                0x23
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                Zero
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                One
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    }
                }
            })
            Name(FPCC, Package(0x1)
            {
                Package(0x6)
                {
                    "DEVICE",
                    "\\_SB.UFS0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "PRELOAD_DSTATE",
                        0x3
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                }
            })
            Name(SDCC, Package(0x1)
            {
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.SDC2",
                    Package(0x9)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x19)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x2,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x3,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x4,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x5,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x6,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x7,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x8,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x9,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xb,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xc,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xd,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xe,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xf,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x10,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x11,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x12,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x13,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x8)
                            {
                                "PSTATE",
                                0x14,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        0x2d2a80,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        0x2d0370,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE",
                                0x15,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        0x1b7740,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                0x16,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        0x2d2a80,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        0x2d0370,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                0x17,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            }
                        },
                        Package(0x5)
                        {
                            "PSTATE_SET",
                            One,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                0x2
                            }
                        },
                        Package(0x5)
                        {
                            "PSTATE_SET",
                            0x2,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "BUSARB",
                                    Package(0x5)
                                    {
                                        0x3,
                                        "ICBID_MASTER_SDCC_2",
                                        "ICBID_SLAVE_EBI1",
                                        0x17d78400,
                                        0xbebc200
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "BUSARB",
                                    Package(0x5)
                                    {
                                        0x3,
                                        "ICBID_MASTER_SDCC_2",
                                        "ICBID_SLAVE_EBI1",
                                        0xbebc200,
                                        0x5f5e100
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x2,
                                Package(0x2)
                                {
                                    "BUSARB",
                                    Package(0x5)
                                    {
                                        0x3,
                                        "ICBID_MASTER_SDCC_2",
                                        "ICBID_SLAVE_EBI1",
                                        Zero,
                                        Zero
                                    }
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            0x3,
                            Package(0x4)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        One,
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        0x2,
                                        Zero
                                    }
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        One,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        0x2,
                                        One
                                    }
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            0x4,
                            Package(0x4)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_sdcc2_ahb_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_sdcc2_at_clk",
                                        One
                                    }
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_sdcc2_ahb_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_sdcc2_at_clk",
                                        0x2
                                    }
                                }
                            }
                        }
                    },
                    Package(0x7)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                0x16
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMPORT",
                            Package(0x3)
                            {
                                0x1cf000,
                                0x7fff,
                                0x1fe4
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                0x2
                            }
                        }
                    },
                    Package(0x7)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x4,
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMPORT",
                            Package(0x3)
                            {
                                0x1cf000,
                                0x7fff,
                                0xa00
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                0x17
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_EXCEPTION",
                        Package(0x2)
                        {
                            "EXECUTE_FUNCTION",
                            Package(0x1)
                            {
                                "ExecuteOcdSdCardExceptions"
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(EWMD, 0x0, NotSerialized)
            {
                Return(WBRC)
            }
            Name(WBRC, Package(0x1)
            {
                Package(0x5)
                {
                    "DEVICE",
                    "\\_SB.FMRT",
                    Package(0x3)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        }
                    },
                    Package(0x4)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO7_E",
                                One,
                                0x2ab980,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS10_B",
                                0x2,
                                0x1b7740,
                                One,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x4)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS10_B",
                                0x2,
                                0x1b7740,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO7_E",
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
        }
        Scope(\_SB_.PEP0)
        {
            Method(PEMD, 0x0, NotSerialized)
            {
                Return(PEMC)
            }
            Name(PEMC, Package(0xe)
            {
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI0.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI1.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI2",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI2.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI3",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI3.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI4",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI4.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI5",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI5.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI6",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PCI6.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                }
            })
        }
        Device(WLDS)
        {
            Name(_HID, "QCOM1AD0")
            Alias(\_SB_.PSUB, _SUB)
        }
        Scope(\_SB_.PEP0)
        {
            Method(LPMX, 0x0, NotSerialized)
            {
                Return(LPXC)
            }
            Name(LPXC, Package(0x1)
            {
                Package(0x4)
                {
                    "DEVICE",
                    "\\_SB.TSC5",
                    Package(0x7)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x8)
                            {
                                "PPP_RESOURCE_ID_LDO3_C",
                                One,
                                0x325aa0,
                                One,
                                0x7,
                                Zero,
                                "HLOS_DRV",
                                "REQUIRED"
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x8)
                            {
                                "PPP_RESOURCE_ID_LDO8_C",
                                One,
                                0x1b7740,
                                One,
                                0x7,
                                Zero,
                                "HLOS_DRV",
                                "REQUIRED"
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x17,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x16,
                                One,
                                Zero,
                                One,
                                0x3,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "DELAY",
                            Package(0x1)
                            {
                                0xc8
                            }
                        }
                    },
                    Package(0x6)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x17,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x16,
                                One,
                                Zero,
                                One,
                                0x3,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x8)
                            {
                                "PPP_RESOURCE_ID_LDO8_C",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                "HLOS_DRV",
                                "REQUIRED"
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x8)
                            {
                                "PPP_RESOURCE_ID_LDO3_C",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                "HLOS_DRV",
                                "REQUIRED"
                            }
                        }
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
        }
        Scope(\_SB_.PEP0)
        {
        }
        Device(BAM1)
        {
            Name(_HID, "QCOM1A0A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xdc, 0x01, 0x00, 0x40, 0x02, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x30, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAM5)
        {
            Name(_HID, "QCOM1A0A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x5)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xa8, 0x03, 0x00, 0x20, 0x03, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xc4, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAMD)
        {
            Name(_HID, "QCOM1A0A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xd)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x90, 0x0a, 0x00, 0x70, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x4c, 0x03, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAME)
        {
            Name(_HID, "QCOM1A0A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xe)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x06, 0x06, 0x00, 0x50, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xc7, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAMF)
        {
            Name(_HID, "QCOM1A0A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xf)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x70, 0x0a, 0x00, 0x70, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x47, 0x03, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(I2C5)
        {
            Name(_HID, "QCOM1A10")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x5)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x30, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x34, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x99, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x7d, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(IC14)
        {
            Name(_HID, "QCOM1A10")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xe)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x31, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x35, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xa9, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x86, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(IC16)
        {
            Name(_HID, "QCOM1A10")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x10)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x31, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x37, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x88, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x67, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(UR19)
        {
            Name(_HID, "QCOM1A16")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x13)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x22)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x32, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x32, 0x00, 0x2c, 0x00, 0x34, 0x00,
	0x57, 0x00, 0x2c, 0x00, 0x42, 0x00, 0x54, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x3a)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x89, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x6a, 0x02, 0x00, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x47, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
        }
        Device(RPEN)
        {
            Name(_HID, "QCOM1AE1")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(PILC)
        {
            Name(_HID, "QCOM1AE0")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(CDI_)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PILC,
                \_SB_.RPEN
            })
            Name(_HID, "QCOM1A2F")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SCSS)
        {
            Name(_DEP, Package(0x7)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM1A1F")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0xc6, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(ADSP)
        {
            Name(_DEP, Package(0x9)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.ARPC,
                \_SB_.TFTP,
                \_SB_.PDSR
            })
            Name(_HID, "QCOM1A1B")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x06, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Device(SLM1)
            {
                Name(_ADR, Zero)
                Name(_CCA, Zero)
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x17)
                    {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xac, 0x03, 0x00, 0xc0, 0x02, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xc3, 0x00, 0x00, 0x00, 0x79, 0x00
                    })
                    Return(RBUF)
                }
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
            }
            Device(ADCM)
            {
                Alias(\_SB_.PSUB, _SUB)
                Name(_ADR, One)
                Name(_DEP, Package(0x2)
                {
                    \_SB_.MMU0,
                    \_SB_.IMM0
                })
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Method(CHLD, 0x0, NotSerialized)
                {
                    Return(Package(0x1)
                    {
                        "ADCM\\QCOM1AC1"
                    })
                }
                Device(AUCD)
                {
                    Name(_ADR, Zero)
                    Alias(\_SB_.PSUB, _SUB)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Method(_CRS, 0x0, NotSerialized)
                    {
                        Name(RBUF, Buffer(0xf8)
                        {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x40, 0x06,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x6a,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x40, 0x06, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xb2, 0x00,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x40, 0x06, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xb3, 0x00, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x40, 0x06, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x61, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x40, 0x06, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x62, 0x00, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00,
	0x01, 0x00, 0x15, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00,
	0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x40, 0x01, 0x5c, 0x5f, 0x53, 0x42,
	0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xdf,
	0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xbb, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xca, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xcb, 0x00, 0x00, 0x00, 0x79, 0x00
                        })
                        Return(RBUF)
                    }
                    Method(CHLD, 0x0, NotSerialized)
                    {
                        Name(CH__, Package(0x1)
                        {
                            "AUCD\\QCOM1A29"
                        })
                        Return(CH__)
                    }
                    Device(QCRT)
                    {
                        Method(_STA, 0x0, NotSerialized)
                        {
                            Return(0xf)
                        }
                        Name(_ADR, Zero)
                    }
                }
            }
        }
        Device(AMSS)
        {
            Name(_CCA, Zero)
            Name(_DEP, Package(0x9)
            {
                \_SB_.PEP0,
                \_SB_.GLNK,
                \_SB_.PILC,
                \_SB_.RFS0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.IPC0,
                \_SB_.TFTP,
                \_SB_.PDSR
            })
            Name(_HID, "QCOM1A1C")
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x28, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(QSM_)
        {
            Name(_HID, "QCOM1A1E")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x4)
            {
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.PILC,
                \_SB_.RPEN
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SSDD)
        {
            Name(_HID, "QCOM1A20")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(PDSR)
        {
            Name(_HID, "QCOM1ADF")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.GLNK,
                \_SB_.IPC0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(NSP0)
        {
            Name(_DEP, Package(0x8)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.ARPC,
                \_SB_.PDSR
            })
            Name(_HID, "QCOM1AB0")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x62, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(CSW0)
        {
            Name(_HID, "QCOM1AC3")
            Name(_CID, "QCOMFFE0")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x2)
            {
                \_SB_.NSP0,
                \_SB_.SBTD
            })
        }
        Device(SBTD)
        {
            Name(_HID, "QCOM1AE5")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(SPSS)
        {
            Name(_DEP, Package(0x4)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.RPEN,
                \_SB_.GLNK
            })
            Name(_HID, "QCOM1A8D")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x47)
                {
	0x89, 0x06, 0x00, 0x01, 0x01, 0x80, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x28, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x24, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x1c, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x3c, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x0c, 0x20, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(TFTP)
        {
            Name(_HID, "QCOM1ADC")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.IPC0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QCSK)
        {
            Name(_HID, "QCOM1AAC")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
        }
        Scope(\_SB_.ADSP)
        {
        }
        Scope(\_SB_.AMSS)
        {
        }
        Scope(\_SB_.SCSS)
        {
        }
        Scope(\_SB_.PILC)
        {
        }
        Scope(\_SB_.CDI_)
        {
        }
        Scope(\_SB_.RPEN)
        {
        }
        Scope(\_SB_.NSP0)
        {
            Name(_CID, "QCOMFFE7")
        }
        Scope(\_SB_.AMSS)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_SUB, 0x0, NotSerialized)
            {
                Return(\_SB_.PSUB)
            }
        }
        Device(LLC_)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Name(_HID, "QCOM1A83")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.SVMJ, _HRV)
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x23)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00, 0x05, 0x00,
	0x86, 0x09, 0x00, 0x00, 0x88, 0x80, 0xfc, 0x01, 0x04, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x66, 0x02, 0x00, 0x00, 0x79, 0x00
                })
            }
        }
        Device(MMU0)
        {
            Name(_HID, "QCOM1A09")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.SVMJ, _HRV)
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x28d)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x10, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x81, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x82, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x83,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x84, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x85, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x86, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x87,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x88, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x89, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x8a, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x8b,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x8c, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x8d, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x8e, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x8f,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x90, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x91, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x92, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x93,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x94, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x95, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x96, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xd5,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xd6, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xd7, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xd8, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xd9,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xda, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xdb, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xdc, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xdd,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xde, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xdf, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xe0, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x5b,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x5c, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x5d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x5e, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x5f,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x60, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x61, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x62, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x63,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x64, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x65, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x66, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x67,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x68, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x69, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x6a, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x6b,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x6c, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x6d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x6e, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x6f,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x70, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x71, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x72, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x73,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x74, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x75, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x76, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x77,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x78, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x79, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xab, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xac,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xad, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xae, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xaf, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xb0,
	0x01, 0x00, 0x00, 0x79, 0x00
                })
            }
        }
        Device(MMU1)
        {
            Name(_HID, "QCOM1A09")
            Name(_UID, One)
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.SVMJ, _HRV)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x68)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xda, 0x03, 0x00, 0x00, 0x02, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xc8, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xc9, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xca,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xcb, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xcc, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xcd, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xce,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xcf, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xd0, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xdf, 0x02, 0x00, 0x00, 0x79, 0x00
                })
            }
        }
        Device(IMM0)
        {
            Name(_HID, "QCOM1A8F")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(IMM1)
        {
            Name(_HID, "QCOM1A8F")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(GPU0)
        {
            Name(_HID, "QCOM1A36")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Name(_CLS, 0x3000000000000)
            Device(MON0)
            {
                Method(_ADR, 0x0, NotSerialized)
                {
                    Return(Zero)
                }
            }
            Name(_DEP, Package(0xa)
            {
                \_SB_.MMU0,
                \_SB_.MMU1,
                \_SB_.IMM0,
                \_SB_.IMM1,
                \_SB_.PEP0,
                \_SB_.PMIC,
                \_SB_.PILC,
                \_SB_.RPEN,
                \_SB_.TREE,
                \_SB_.SCM0
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(ABUF, Buffer(0xd3)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xe0, 0x0a, 0x00, 0x00, 0x20, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x8e, 0x08, 0x00, 0x40, 0x03, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x73, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x75, 0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x6e,
	0x03, 0x00, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xd0, 0x03, 0x10,
	0xf0, 0x03, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xd6, 0x03, 0x00,
	0xf0, 0x03, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x4c, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x4d, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x29, 0x0b, 0x00, 0x00, 0x01, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x49, 0x0b, 0x00, 0x00, 0x01, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xd9, 0x03, 0x00, 0x90, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xde, 0x03, 0x00, 0x00, 0x01, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x20, 0x0c, 0xff, 0xff, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xa0, 0x0a, 0x00, 0x00, 0x10, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0xce, 0x00, 0x00, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x01, 0x01,
	0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19,
	0x00, 0x23, 0x00, 0x00, 0x00, 0x26, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e,
	0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(ABUF)
            }
            Method(RESI, 0x0, NotSerialized)
            {
                Name(AINF, Package(0x13)
                {
                    0x3,
                    Zero,
                    Package(0x3)
                    {
                        "RESOURCE",
                        "MDP_REGS",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "DP_PHY_REGS",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "VSYNC_INTERRUPT",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "USB4_DP_AP_0_INTERRUPT",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "USB4_DP_AP_1_INTERRUPT",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_REGS",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_REG_CONT",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_INTERRUPT",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_LPAC_INTERRUPT",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_PDC_SEQ_MEM",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_PDC_REGS",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_CC",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_RSCC",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_RPMH_CPRF",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "VIDEO_REGS",
                        "VIDEO"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "VIDC_INTERRUPT",
                        "VIDEO"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "DSI_PANEL_RESET",
                        "DISPLAY"
                    }
                })
                Return(AINF)
            }
            Method(_ROM, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x1469)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x4e, 0x61, 0x6d,
	0x65, 0x3e, 0x4c, 0x53, 0x30, 0x36, 0x30, 0x52, 0x31, 0x53, 0x58, 0x30,
	0x33, 0x3c, 0x2f, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x4e, 0x61, 0x6d, 0x65,
	0x3e, 0x0a, 0x3c, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x44, 0x65, 0x73, 0x63,
	0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x53, 0x68, 0x61, 0x72,
	0x70, 0x20, 0x44, 0x75, 0x61, 0x6c, 0x20, 0x44, 0x53, 0x49, 0x20, 0x56,
	0x69, 0x64, 0x65, 0x6f, 0x20, 0x4d, 0x6f, 0x64, 0x65, 0x20, 0x50, 0x61,
	0x6e, 0x65, 0x6c, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x44, 0x53, 0x43,
	0x20, 0x28, 0x32, 0x31, 0x36, 0x30, 0x78, 0x33, 0x38, 0x34, 0x30, 0x20,
	0x32, 0x34, 0x62, 0x70, 0x70, 0x29, 0x3c, 0x2f, 0x50, 0x61, 0x6e, 0x65,
	0x6c, 0x44, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e,
	0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d,
	0x27, 0x45, 0x44, 0x49, 0x44, 0x20, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67,
	0x75, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x27, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75,
	0x72, 0x65, 0x49, 0x44, 0x3e, 0x30, 0x78, 0x31, 0x30, 0x34, 0x44, 0x3c,
	0x2f, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65,
	0x49, 0x44, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x50, 0x72, 0x6f,
	0x64, 0x75, 0x63, 0x74, 0x43, 0x6f, 0x64, 0x65, 0x3e, 0x38, 0x35, 0x30,
	0x3c, 0x2f, 0x50, 0x72, 0x6f, 0x64, 0x75, 0x63, 0x74, 0x43, 0x6f, 0x64,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x65, 0x72, 0x69,
	0x61, 0x6c, 0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x3e, 0x30, 0x78, 0x30,
	0x30, 0x30, 0x30, 0x30, 0x31, 0x3c, 0x2f, 0x53, 0x65, 0x72, 0x69, 0x61,
	0x6c, 0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x57, 0x65, 0x65, 0x6b, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75,
	0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x30, 0x78, 0x30, 0x31,
	0x3c, 0x2f, 0x57, 0x65, 0x65, 0x6b, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75,
	0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x59, 0x65, 0x61, 0x72, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75,
	0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x30, 0x78, 0x31, 0x42,
	0x3c, 0x2f, 0x59, 0x65, 0x61, 0x72, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75,
	0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x45, 0x44, 0x49, 0x44, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3e, 0x31, 0x3c, 0x2f, 0x45, 0x44, 0x49, 0x44, 0x56, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45,
	0x44, 0x49, 0x44, 0x52, 0x65, 0x76, 0x69, 0x73, 0x69, 0x6f, 0x6e, 0x3e,
	0x33, 0x3c, 0x2f, 0x45, 0x44, 0x49, 0x44, 0x52, 0x65, 0x76, 0x69, 0x73,
	0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x69,
	0x64, 0x65, 0x6f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x44, 0x65, 0x66, 0x69,
	0x6e, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x30, 0x78, 0x38, 0x30, 0x3c,
	0x2f, 0x56, 0x69, 0x64, 0x65, 0x6f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x44,
	0x65, 0x66, 0x69, 0x6e, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65,
	0x3e, 0x30, 0x78, 0x30, 0x37, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a,
	0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53,
	0x69, 0x7a, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65,
	0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e,
	0x53, 0x69, 0x7a, 0x65, 0x3e, 0x30, 0x78, 0x30, 0x43, 0x3c, 0x2f, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65,
	0x6e, 0x53, 0x69, 0x7a, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x54, 0x72, 0x61, 0x6e, 0x73,
	0x66, 0x65, 0x72, 0x43, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72,
	0x69, 0x73, 0x74, 0x69, 0x63, 0x73, 0x3e, 0x30, 0x78, 0x37, 0x38, 0x3c,
	0x2f, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x54, 0x72, 0x61, 0x6e,
	0x73, 0x66, 0x65, 0x72, 0x43, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65,
	0x72, 0x69, 0x73, 0x74, 0x69, 0x63, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x53, 0x75, 0x70,
	0x70, 0x6f, 0x72, 0x74, 0x3e, 0x30, 0x78, 0x32, 0x3c, 0x2f, 0x46, 0x65,
	0x61, 0x74, 0x75, 0x72, 0x65, 0x53, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x52, 0x65, 0x64, 0x2e, 0x47,
	0x72, 0x65, 0x65, 0x6e, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x30, 0x78, 0x41,
	0x35, 0x3c, 0x2f, 0x52, 0x65, 0x64, 0x2e, 0x47, 0x72, 0x65, 0x65, 0x6e,
	0x42, 0x69, 0x74, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42,
	0x6c, 0x75, 0x65, 0x2e, 0x57, 0x68, 0x69, 0x74, 0x65, 0x42, 0x69, 0x74,
	0x73, 0x3e, 0x30, 0x78, 0x35, 0x38, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65,
	0x2e, 0x57, 0x68, 0x69, 0x74, 0x65, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x52, 0x65, 0x64, 0x58, 0x3e, 0x30, 0x78,
	0x41, 0x36, 0x3c, 0x2f, 0x52, 0x65, 0x64, 0x58, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x52, 0x65, 0x64, 0x59, 0x3e, 0x30, 0x78, 0x35, 0x34,
	0x3c, 0x2f, 0x52, 0x65, 0x64, 0x59, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x58, 0x3e, 0x30, 0x78, 0x33, 0x33,
	0x3c, 0x2f, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x58, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x59, 0x3e, 0x30, 0x78,
	0x42, 0x33, 0x3c, 0x2f, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x59, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65, 0x58, 0x3e, 0x30,
	0x78, 0x32, 0x36, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x58, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65, 0x59, 0x3e, 0x30,
	0x78, 0x31, 0x32, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x59, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x57, 0x68, 0x69, 0x74, 0x65, 0x58, 0x3e,
	0x30, 0x78, 0x34, 0x46, 0x3c, 0x2f, 0x57, 0x68, 0x69, 0x74, 0x65, 0x58,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x57, 0x68, 0x69, 0x74, 0x65,
	0x59, 0x3e, 0x30, 0x78, 0x35, 0x34, 0x3c, 0x2f, 0x57, 0x68, 0x69, 0x74,
	0x65, 0x59, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x73, 0x74,
	0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d, 0x69,
	0x6e, 0x67, 0x73, 0x49, 0x3e, 0x30, 0x78, 0x30, 0x3c, 0x2f, 0x45, 0x73,
	0x74, 0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d,
	0x69, 0x6e, 0x67, 0x73, 0x49, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x45, 0x73, 0x74, 0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x49, 0x49, 0x3e, 0x30, 0x78, 0x30,
	0x3c, 0x2f, 0x45, 0x73, 0x74, 0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65,
	0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x49, 0x49, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63,
	0x74, 0x75, 0x72, 0x65, 0x73, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x3e,
	0x30, 0x78, 0x30, 0x3c, 0x2f, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63,
	0x74, 0x75, 0x72, 0x65, 0x73, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x31, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x32, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x33, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x34, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x35, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x36, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61,
	0x72, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x37, 0x2f, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x69, 0x67, 0x6e, 0x61, 0x6c,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66,
	0x61, 0x63, 0x65, 0x2f, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75,
	0x70, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64,
	0x3d, 0x27, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53,
	0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e,
	0x30, 0x78, 0x34, 0x34, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f,
	0x6e, 0x74, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69,
	0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65,
	0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78, 0x37, 0x38,
	0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63,
	0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e,
	0x74, 0x61, 0x6c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53,
	0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e,
	0x30, 0x78, 0x30, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f,
	0x6e, 0x74, 0x61, 0x6c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c,
	0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d,
	0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a, 0x3c,
	0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x41, 0x63,
	0x74, 0x69, 0x76, 0x65, 0x20, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x27,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a,
	0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e,
	0x32, 0x31, 0x36, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f,
	0x6e, 0x74, 0x61, 0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e,
	0x74, 0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63,
	0x68, 0x3e, 0x33, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f,
	0x6e, 0x74, 0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72,
	0x63, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72,
	0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50,
	0x6f, 0x72, 0x63, 0x68, 0x3e, 0x31, 0x30, 0x30, 0x3c, 0x2f, 0x48, 0x6f,
	0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b,
	0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79,
	0x6e, 0x63, 0x50, 0x75, 0x6c, 0x73, 0x65, 0x3e, 0x34, 0x3c, 0x2f, 0x48,
	0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e,
	0x63, 0x50, 0x75, 0x6c, 0x73, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53,
	0x79, 0x6e, 0x63, 0x53, 0x6b, 0x65, 0x77, 0x3e, 0x30, 0x3c, 0x2f, 0x48,
	0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e,
	0x63, 0x53, 0x6b, 0x65, 0x77, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x4c, 0x65,
	0x66, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f,
	0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x4c, 0x65,
	0x66, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x52, 0x69, 0x67, 0x68, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72,
	0x3e, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x52, 0x69, 0x67, 0x68, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65,
	0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x33,
	0x38, 0x34, 0x30, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61,
	0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x46, 0x72,
	0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e, 0x38, 0x3c, 0x2f,
	0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e,
	0x74, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x42, 0x61, 0x63,
	0x6b, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e, 0x37, 0x3c, 0x2f, 0x56, 0x65,
	0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f,
	0x72, 0x63, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65,
	0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75,
	0x6c, 0x73, 0x65, 0x3e, 0x31, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75, 0x6c, 0x73, 0x65,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x53, 0x6b, 0x65, 0x77, 0x3e,
	0x30, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53,
	0x79, 0x6e, 0x63, 0x53, 0x6b, 0x65, 0x77, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x54, 0x6f,
	0x70, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x54, 0x6f, 0x70, 0x42, 0x6f,
	0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x42, 0x6f, 0x74, 0x74, 0x6f,
	0x6d, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x42, 0x6f, 0x74, 0x74, 0x6f,
	0x6d, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x44, 0x61, 0x74, 0x61,
	0x50, 0x6f, 0x6c, 0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x46, 0x61, 0x6c,
	0x73, 0x65, 0x3c, 0x2f, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x44, 0x61,
	0x74, 0x61, 0x50, 0x6f, 0x6c, 0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x56,
	0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61, 0x69, 0x72, 0x74, 0x79,
	0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x49, 0x6e, 0x76, 0x65,
	0x72, 0x74, 0x56, 0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61, 0x69,
	0x72, 0x74, 0x79, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e,
	0x76, 0x65, 0x72, 0x74, 0x48, 0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c,
	0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c,
	0x2f, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x48, 0x73, 0x79, 0x6e, 0x63,
	0x50, 0x6f, 0x6c, 0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x43, 0x6f, 0x6c,
	0x6f, 0x72, 0x3e, 0x30, 0x78, 0x30, 0x3c, 0x2f, 0x42, 0x6f, 0x72, 0x64,
	0x65, 0x72, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x3e, 0x0a, 0x3c, 0x2f, 0x47,
	0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x20, 0x69, 0x64, 0x3d, 0x27, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79,
	0x20, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x27, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66,
	0x61, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x38, 0x3c, 0x2f, 0x49,
	0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e, 0x74, 0x65, 0x72,
	0x66, 0x61, 0x63, 0x65, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72,
	0x6d, 0x61, 0x74, 0x3e, 0x33, 0x3c, 0x2f, 0x49, 0x6e, 0x74, 0x65, 0x72,
	0x66, 0x61, 0x63, 0x65, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72,
	0x6d, 0x61, 0x74, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d,
	0x27, 0x44, 0x53, 0x49, 0x20, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61,
	0x63, 0x65, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x43, 0x68, 0x61, 0x6e, 0x6e, 0x65, 0x6c, 0x49, 0x64, 0x3e, 0x31,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x68, 0x61, 0x6e, 0x6e, 0x65, 0x6c,
	0x49, 0x64, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49,
	0x56, 0x69, 0x72, 0x74, 0x75, 0x61, 0x6c, 0x49, 0x64, 0x3e, 0x30, 0x3c,
	0x2f, 0x44, 0x53, 0x49, 0x56, 0x69, 0x72, 0x74, 0x75, 0x61, 0x6c, 0x49,
	0x64, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x43,
	0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e, 0x33,
	0x36, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46,
	0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x54, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x4d, 0x6f,
	0x64, 0x65, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x72, 0x61,
	0x66, 0x66, 0x69, 0x63, 0x4d, 0x6f, 0x64, 0x65, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x3e, 0x54, 0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53,
	0x49, 0x44, 0x53, 0x43, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d,
	0x61, 0x6a, 0x6f, 0x72, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x3e,
	0x31, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d, 0x61, 0x6a,
	0x6f, 0x72, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d, 0x69,
	0x6e, 0x6f, 0x72, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x31,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d, 0x69, 0x6e, 0x6f,
	0x72, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x63, 0x72,
	0x3e, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x63,
	0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44,
	0x53, 0x43, 0x50, 0x72, 0x6f, 0x66, 0x69, 0x6c, 0x65, 0x49, 0x44, 0x3e,
	0x34, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x50, 0x72, 0x6f,
	0x66, 0x69, 0x6c, 0x65, 0x49, 0x44, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65,
	0x57, 0x69, 0x64, 0x74, 0x68, 0x3e, 0x31, 0x30, 0x38, 0x30, 0x3c, 0x2f,
	0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x57,
	0x69, 0x64, 0x74, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44,
	0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x48, 0x65,
	0x69, 0x67, 0x68, 0x74, 0x3e, 0x33, 0x32, 0x3c, 0x2f, 0x44, 0x53, 0x49,
	0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x48, 0x65, 0x69, 0x67,
	0x68, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49,
	0x4c, 0x61, 0x6e, 0x65, 0x73, 0x3e, 0x34, 0x3c, 0x2f, 0x44, 0x53, 0x49,
	0x4c, 0x61, 0x6e, 0x65, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x48, 0x73, 0x61, 0x48, 0x73, 0x65, 0x41, 0x66, 0x74,
	0x65, 0x72, 0x56, 0x73, 0x56, 0x65, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x48, 0x73, 0x61, 0x48, 0x73, 0x65, 0x41,
	0x66, 0x74, 0x65, 0x72, 0x56, 0x73, 0x56, 0x65, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77,
	0x65, 0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e, 0x48, 0x46, 0x50, 0x3e,
	0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x4c, 0x6f,
	0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e,
	0x48, 0x46, 0x50, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x4d, 0x6f, 0x64,
	0x65, 0x49, 0x6e, 0x48, 0x42, 0x50, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65,
	0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e, 0x48, 0x42, 0x50, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x4c, 0x6f, 0x77, 0x50,
	0x6f, 0x77, 0x65, 0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e, 0x48, 0x53,
	0x41, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49,
	0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x4d, 0x6f, 0x64, 0x65,
	0x49, 0x6e, 0x48, 0x53, 0x41, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x4d,
	0x6f, 0x64, 0x65, 0x49, 0x6e, 0x42, 0x4c, 0x4c, 0x50, 0x45, 0x4f, 0x46,
	0x3e, 0x54, 0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x4c, 0x6f,
	0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e,
	0x42, 0x4c, 0x4c, 0x50, 0x45, 0x4f, 0x46, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x44, 0x53, 0x49, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65,
	0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e, 0x42, 0x4c, 0x4c, 0x50, 0x3e,
	0x54, 0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x4c, 0x6f, 0x77,
	0x50, 0x6f, 0x77, 0x65, 0x72, 0x4d, 0x6f, 0x64, 0x65, 0x49, 0x6e, 0x42,
	0x4c, 0x4c, 0x50, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x52, 0x65, 0x66, 0x72, 0x65, 0x73, 0x68, 0x52, 0x61, 0x74, 0x65,
	0x3e, 0x30, 0x78, 0x33, 0x43, 0x30, 0x30, 0x30, 0x30, 0x3c, 0x2f, 0x44,
	0x53, 0x49, 0x52, 0x65, 0x66, 0x72, 0x65, 0x73, 0x68, 0x52, 0x61, 0x74,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x50,
	0x68, 0x79, 0x44, 0x43, 0x44, 0x43, 0x4d, 0x6f, 0x64, 0x65, 0x3e, 0x54,
	0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x50, 0x68, 0x79, 0x44,
	0x43, 0x44, 0x43, 0x4d, 0x6f, 0x64, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x4d, 0x61, 0x73,
	0x74, 0x65, 0x72, 0x54, 0x69, 0x6d, 0x65, 0x3e, 0x31, 0x32, 0x38, 0x3c,
	0x2f, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x4d, 0x61, 0x73, 0x74,
	0x65, 0x72, 0x54, 0x69, 0x6d, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x6c,
	0x65, 0x72, 0x4d, 0x61, 0x70, 0x70, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x30, 0x30, 0x20, 0x30, 0x31,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6f,
	0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x6c, 0x65, 0x72, 0x4d, 0x61, 0x70, 0x70,
	0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x3e, 0x0a, 0x3c, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x53, 0x65,
	0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x39, 0x31, 0x20, 0x30, 0x39, 0x20, 0x32, 0x30, 0x20,
	0x30, 0x30, 0x20, 0x32, 0x30, 0x20, 0x30, 0x32, 0x20, 0x30, 0x30, 0x20,
	0x30, 0x33, 0x20, 0x31, 0x63, 0x20, 0x30, 0x34, 0x20, 0x32, 0x31, 0x20,
	0x30, 0x30, 0x20, 0x30, 0x66, 0x20, 0x30, 0x33, 0x20, 0x31, 0x39, 0x20,
	0x30, 0x31, 0x20, 0x39, 0x37, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x39, 0x32, 0x20, 0x31, 0x30, 0x20, 0x66, 0x30, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x31, 0x35, 0x20, 0x39, 0x30, 0x20, 0x30, 0x33, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x30, 0x33, 0x20, 0x30, 0x31, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x66, 0x30, 0x20, 0x35, 0x35,
	0x20, 0x61, 0x61, 0x20, 0x35, 0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x34,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x63, 0x30, 0x20, 0x30,
	0x33, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x66, 0x30, 0x20,
	0x35, 0x35, 0x20, 0x61, 0x61, 0x20, 0x35, 0x32, 0x20, 0x30, 0x38, 0x20,
	0x30, 0x37, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x65, 0x66,
	0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x66,
	0x30, 0x20, 0x35, 0x35, 0x20, 0x61, 0x61, 0x20, 0x35, 0x32, 0x20, 0x30,
	0x38, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20,
	0x62, 0x34, 0x20, 0x31, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35,
	0x20, 0x33, 0x35, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x66, 0x30, 0x20, 0x35, 0x35, 0x20, 0x61, 0x61, 0x20, 0x35,
	0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x66, 0x66, 0x20, 0x61, 0x61, 0x20, 0x35, 0x35, 0x20,
	0x61, 0x35, 0x20, 0x38, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35,
	0x20, 0x36, 0x66, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31,
	0x35, 0x20, 0x66, 0x33, 0x20, 0x31, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x66, 0x66, 0x20, 0x61, 0x61, 0x20, 0x35, 0x35, 0x20,
	0x61, 0x35, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35,
	0x20, 0x31, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x66, 0x20, 0x37,
	0x38, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35, 0x20, 0x32, 0x39, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x66, 0x66, 0x20, 0x37, 0x38, 0x0a, 0x3c, 0x2f,
	0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x53, 0x65, 0x71, 0x75, 0x65,
	0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x3c, 0x44, 0x53, 0x49, 0x54, 0x65, 0x72,
	0x6d, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x30, 0x35, 0x20, 0x32, 0x38, 0x20, 0x30, 0x30, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x46, 0x46, 0x20, 0x32, 0x30, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x30, 0x35, 0x20, 0x31, 0x30, 0x20, 0x30, 0x30, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x46, 0x46, 0x20, 0x38, 0x30, 0x0a, 0x3c, 0x2f, 0x44,
	0x53, 0x49, 0x54, 0x65, 0x72, 0x6d, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6e,
	0x63, 0x65, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69,
	0x64, 0x3d, 0x27, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f,
	0x6e, 0x20, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x75, 0x72, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44,
	0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x31, 0x52, 0x65, 0x73, 0x65, 0x74,
	0x31, 0x49, 0x6e, 0x66, 0x6f, 0x3e, 0x44, 0x53, 0x49, 0x5f, 0x50, 0x41,
	0x4e, 0x45, 0x4c, 0x5f, 0x52, 0x45, 0x53, 0x45, 0x54, 0x2c, 0x20, 0x30,
	0x2c, 0x20, 0x33, 0x30, 0x3c, 0x2f, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61,
	0x79, 0x31, 0x52, 0x65, 0x73, 0x65, 0x74, 0x31, 0x49, 0x6e, 0x66, 0x6f,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x69, 0x73, 0x70, 0x6c,
	0x61, 0x79, 0x31, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x31, 0x49, 0x6e, 0x66,
	0x6f, 0x3e, 0x44, 0x53, 0x49, 0x5f, 0x50, 0x41, 0x4e, 0x45, 0x4c, 0x5f,
	0x4d, 0x4f, 0x44, 0x45, 0x5f, 0x53, 0x45, 0x4c, 0x45, 0x43, 0x54, 0x2c,
	0x20, 0x30, 0x2c, 0x20, 0x30, 0x2c, 0x20, 0x30, 0x2c, 0x20, 0x30, 0x2c,
	0x20, 0x54, 0x52, 0x55, 0x45, 0x3c, 0x2f, 0x44, 0x69, 0x73, 0x70, 0x6c,
	0x61, 0x79, 0x31, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x31, 0x49, 0x6e, 0x66,
	0x6f, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a,
	0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x42,
	0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x20, 0x43, 0x6f, 0x6e,
	0x66, 0x69, 0x67, 0x75, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x27, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69,
	0x67, 0x68, 0x74, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x31, 0x3c, 0x2f, 0x42,
	0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x54, 0x79, 0x70, 0x65,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c,
	0x69, 0x67, 0x68, 0x74, 0x50, 0x6d, 0x69, 0x63, 0x50, 0x57, 0x4d, 0x53,
	0x69, 0x7a, 0x65, 0x69, 0x6e, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x39, 0x3c,
	0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x6d,
	0x69, 0x63, 0x50, 0x57, 0x4d, 0x53, 0x69, 0x7a, 0x65, 0x69, 0x6e, 0x42,
	0x69, 0x74, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61,
	0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x6d, 0x69, 0x63, 0x43,
	0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x33,
	0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50,
	0x6d, 0x69, 0x63, 0x43, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x54, 0x79,
	0x70, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63,
	0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x4d, 0x49, 0x43, 0x42, 0x61,
	0x6e, 0x6b, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x3e, 0x33, 0x3c, 0x2f,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x4d, 0x49,
	0x43, 0x42, 0x61, 0x6e, 0x6b, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69,
	0x67, 0x68, 0x74, 0x50, 0x4d, 0x49, 0x43, 0x50, 0x57, 0x4d, 0x46, 0x72,
	0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x79, 0x3e, 0x38, 0x30, 0x30, 0x30,
	0x30, 0x30, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68,
	0x74, 0x50, 0x4d, 0x49, 0x43, 0x50, 0x57, 0x4d, 0x46, 0x72, 0x65, 0x71,
	0x75, 0x65, 0x6e, 0x63, 0x79, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x53, 0x74, 0x65,
	0x70, 0x73, 0x3e, 0x31, 0x30, 0x30, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b,
	0x6c, 0x69, 0x67, 0x68, 0x74, 0x53, 0x74, 0x65, 0x70, 0x73, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67,
	0x68, 0x74, 0x44, 0x65, 0x66, 0x61, 0x75, 0x6c, 0x74, 0x3e, 0x38, 0x30,
	0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x44,
	0x65, 0x66, 0x61, 0x75, 0x6c, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x4c, 0x6f,
	0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x3e, 0x34, 0x30, 0x3c, 0x2f, 0x42,
	0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x4c, 0x6f, 0x77, 0x50,
	0x6f, 0x77, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x50,
	0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x50, 0x6d, 0x69, 0x63, 0x4e,
	0x75, 0x6d, 0x3e, 0x32, 0x3c, 0x2f, 0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77,
	0x65, 0x72, 0x50, 0x6d, 0x69, 0x63, 0x4e, 0x75, 0x6d, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65, 0x72,
	0x50, 0x6d, 0x69, 0x63, 0x4d, 0x6f, 0x64, 0x65, 0x6c, 0x3e, 0x30, 0x78,
	0x32, 0x46, 0x3c, 0x2f, 0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65, 0x72,
	0x50, 0x6d, 0x69, 0x63, 0x4d, 0x6f, 0x64, 0x65, 0x6c, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65, 0x72,
	0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x3e, 0x31, 0x3c, 0x2f, 0x50, 0x4d,
	0x49, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x41, 0x64, 0x61, 0x70, 0x74,
	0x69, 0x76, 0x65, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73,
	0x73, 0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x31, 0x3c, 0x2f,
	0x41, 0x64, 0x61, 0x70, 0x74, 0x69, 0x76, 0x65, 0x42, 0x72, 0x69, 0x67,
	0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x46, 0x65, 0x61, 0x74, 0x75, 0x72,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x43, 0x41, 0x42, 0x4c,
	0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e, 0x54, 0x72, 0x75, 0x65, 0x3c,
	0x2f, 0x43, 0x41, 0x42, 0x4c, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74,
	0x6e, 0x65, 0x73, 0x73, 0x4d, 0x69, 0x6e, 0x4c, 0x75, 0x6d, 0x69, 0x6e,
	0x61, 0x6e, 0x63, 0x65, 0x3e, 0x30, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67,
	0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d, 0x69, 0x6e, 0x4c, 0x75, 0x6d,
	0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d,
	0x61, 0x78, 0x4c, 0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e,
	0x30, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73,
	0x73, 0x4d, 0x61, 0x78, 0x4c, 0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63,
	0x65, 0x3e, 0x0a, 0x09, 0x3c, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e,
	0x65, 0x73, 0x73, 0x52, 0x61, 0x6e, 0x67, 0x65, 0x4c, 0x65, 0x76, 0x65,
	0x6c, 0x30, 0x3e, 0x35, 0x30, 0x30, 0x20, 0x33, 0x31, 0x39, 0x35, 0x30,
	0x30, 0x20, 0x35, 0x30, 0x30, 0x20, 0x32, 0x3c, 0x2f, 0x42, 0x72, 0x69,
	0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x52, 0x61, 0x6e, 0x67, 0x65,
	0x4c, 0x65, 0x76, 0x65, 0x6c, 0x30, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72,
	0x6f, 0x75, 0x70, 0x3e, 0x00
                })
                Name(PCF1, Buffer(0x14b7)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64,
	0x3d, 0x27, 0x4d, 0x61, 0x69, 0x6e, 0x20, 0x50, 0x61, 0x6e, 0x65, 0x6c,
	0x27, 0x3e, 0x0a, 0x3c, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x4e, 0x61, 0x6d,
	0x65, 0x3e, 0x4c, 0x53, 0x30, 0x36, 0x30, 0x52, 0x31, 0x53, 0x58, 0x30,
	0x33, 0x3c, 0x2f, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x4e, 0x61, 0x6d, 0x65,
	0x3e, 0x0a, 0x3c, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x44, 0x65, 0x73, 0x63,
	0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x53, 0x68, 0x61, 0x72,
	0x70, 0x20, 0x44, 0x75, 0x61, 0x6c, 0x20, 0x44, 0x53, 0x49, 0x20, 0x43,
	0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x20, 0x4d, 0x6f, 0x64, 0x65, 0x20,
	0x44, 0x53, 0x43, 0x20, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x20, 0x28, 0x32,
	0x31, 0x36, 0x30, 0x78, 0x33, 0x38, 0x34, 0x30, 0x20, 0x32, 0x34, 0x62,
	0x70, 0x70, 0x29, 0x3c, 0x2f, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x44, 0x65,
	0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x3c,
	0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x45, 0x44,
	0x49, 0x44, 0x20, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x75, 0x72, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x49,
	0x44, 0x3e, 0x30, 0x78, 0x31, 0x30, 0x34, 0x44, 0x3c, 0x2f, 0x4d, 0x61,
	0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x49, 0x44, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x50, 0x72, 0x6f, 0x64, 0x75, 0x63,
	0x74, 0x43, 0x6f, 0x64, 0x65, 0x3e, 0x38, 0x35, 0x30, 0x3c, 0x2f, 0x50,
	0x72, 0x6f, 0x64, 0x75, 0x63, 0x74, 0x43, 0x6f, 0x64, 0x65, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x65, 0x72, 0x69, 0x61, 0x6c, 0x4e,
	0x75, 0x6d, 0x62, 0x65, 0x72, 0x3e, 0x30, 0x78, 0x30, 0x30, 0x30, 0x30,
	0x30, 0x31, 0x3c, 0x2f, 0x53, 0x65, 0x72, 0x69, 0x61, 0x6c, 0x4e, 0x75,
	0x6d, 0x62, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x57,
	0x65, 0x65, 0x6b, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63,
	0x74, 0x75, 0x72, 0x65, 0x3e, 0x30, 0x78, 0x30, 0x31, 0x3c, 0x2f, 0x57,
	0x65, 0x65, 0x6b, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63,
	0x74, 0x75, 0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x59,
	0x65, 0x61, 0x72, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63,
	0x74, 0x75, 0x72, 0x65, 0x3e, 0x30, 0x78, 0x31, 0x42, 0x3c, 0x2f, 0x59,
	0x65, 0x61, 0x72, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63,
	0x74, 0x75, 0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45,
	0x44, 0x49, 0x44, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x31,
	0x3c, 0x2f, 0x45, 0x44, 0x49, 0x44, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x44, 0x49, 0x44,
	0x52, 0x65, 0x76, 0x69, 0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x33, 0x3c, 0x2f,
	0x45, 0x44, 0x49, 0x44, 0x52, 0x65, 0x76, 0x69, 0x73, 0x69, 0x6f, 0x6e,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x69, 0x64, 0x65, 0x6f,
	0x49, 0x6e, 0x70, 0x75, 0x74, 0x44, 0x65, 0x66, 0x69, 0x6e, 0x69, 0x74,
	0x69, 0x6f, 0x6e, 0x3e, 0x30, 0x78, 0x38, 0x30, 0x3c, 0x2f, 0x56, 0x69,
	0x64, 0x65, 0x6f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x44, 0x65, 0x66, 0x69,
	0x6e, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53,
	0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x3e, 0x30, 0x78,
	0x30, 0x37, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a,
	0x65, 0x3e, 0x30, 0x78, 0x30, 0x43, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69,
	0x7a, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x69, 0x73,
	0x70, 0x6c, 0x61, 0x79, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66, 0x65, 0x72,
	0x43, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x69, 0x73, 0x74,
	0x69, 0x63, 0x73, 0x3e, 0x30, 0x78, 0x37, 0x38, 0x3c, 0x2f, 0x44, 0x69,
	0x73, 0x70, 0x6c, 0x61, 0x79, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66, 0x65,
	0x72, 0x43, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x69, 0x73,
	0x74, 0x69, 0x63, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x46,
	0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x53, 0x75, 0x70, 0x70, 0x6f, 0x72,
	0x74, 0x3e, 0x30, 0x78, 0x32, 0x3c, 0x2f, 0x46, 0x65, 0x61, 0x74, 0x75,
	0x72, 0x65, 0x53, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x52, 0x65, 0x64, 0x2e, 0x47, 0x72, 0x65, 0x65,
	0x6e, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x30, 0x78, 0x41, 0x35, 0x3c, 0x2f,
	0x52, 0x65, 0x64, 0x2e, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x42, 0x69, 0x74,
	0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65,
	0x2e, 0x57, 0x68, 0x69, 0x74, 0x65, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x30,
	0x78, 0x35, 0x38, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x2e, 0x57, 0x68,
	0x69, 0x74, 0x65, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x52, 0x65, 0x64, 0x58, 0x3e, 0x30, 0x78, 0x41, 0x36, 0x3c,
	0x2f, 0x52, 0x65, 0x64, 0x58, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x52, 0x65, 0x64, 0x59, 0x3e, 0x30, 0x78, 0x35, 0x34, 0x3c, 0x2f, 0x52,
	0x65, 0x64, 0x59, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x47, 0x72,
	0x65, 0x65, 0x6e, 0x58, 0x3e, 0x30, 0x78, 0x33, 0x33, 0x3c, 0x2f, 0x47,
	0x72, 0x65, 0x65, 0x6e, 0x58, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x47, 0x72, 0x65, 0x65, 0x6e, 0x59, 0x3e, 0x30, 0x78, 0x42, 0x33, 0x3c,
	0x2f, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x59, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65, 0x58, 0x3e, 0x30, 0x78, 0x32, 0x36,
	0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x58, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65, 0x59, 0x3e, 0x30, 0x78, 0x31, 0x32,
	0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x59, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x57, 0x68, 0x69, 0x74, 0x65, 0x58, 0x3e, 0x30, 0x78, 0x34,
	0x46, 0x3c, 0x2f, 0x57, 0x68, 0x69, 0x74, 0x65, 0x58, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x57, 0x68, 0x69, 0x74, 0x65, 0x59, 0x3e, 0x30,
	0x78, 0x35, 0x34, 0x3c, 0x2f, 0x57, 0x68, 0x69, 0x74, 0x65, 0x59, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x73, 0x74, 0x61, 0x62, 0x6c,
	0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73,
	0x49, 0x3e, 0x30, 0x78, 0x30, 0x3c, 0x2f, 0x45, 0x73, 0x74, 0x61, 0x62,
	0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67,
	0x73, 0x49, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x73, 0x74,
	0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d, 0x69,
	0x6e, 0x67, 0x73, 0x49, 0x49, 0x3e, 0x30, 0x78, 0x30, 0x3c, 0x2f, 0x45,
	0x73, 0x74, 0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69,
	0x6d, 0x69, 0x6e, 0x67, 0x73, 0x49, 0x49, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72,
	0x65, 0x73, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x3e, 0x30, 0x78, 0x30,
	0x3c, 0x2f, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72,
	0x65, 0x73, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x31, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x32, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x33, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x34, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x35, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x36, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x37, 0x2f, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x53, 0x69, 0x67, 0x6e, 0x61, 0x6c, 0x54, 0x69, 0x6d,
	0x69, 0x6e, 0x67, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,
	0x2f, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a,
	0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x44,
	0x65, 0x74, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x54, 0x69, 0x6d, 0x69,
	0x6e, 0x67, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f,
	0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65,
	0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78, 0x34,
	0x34, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d,
	0x4d, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69,
	0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78, 0x37, 0x38, 0x3c, 0x2f, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65,
	0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c,
	0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65,
	0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78, 0x30,
	0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72,
	0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x0a, 0x3c,
	0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f,
	0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x41, 0x63, 0x74, 0x69, 0x76,
	0x65, 0x20, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x27, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x32, 0x31, 0x36,
	0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c,
	0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e, 0x33,
	0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f,
	0x6e, 0x74, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f, 0x72, 0x63,
	0x68, 0x3e, 0x31, 0x30, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a,
	0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f, 0x72,
	0x63, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72,
	0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50,
	0x75, 0x6c, 0x73, 0x65, 0x3e, 0x34, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69,
	0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75,
	0x6c, 0x73, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f,
	0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63,
	0x53, 0x6b, 0x65, 0x77, 0x3e, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69,
	0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x53, 0x6b,
	0x65, 0x77, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72,
	0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x4c, 0x65, 0x66, 0x74, 0x42,
	0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72,
	0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x4c, 0x65, 0x66, 0x74, 0x42,
	0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x52, 0x69,
	0x67, 0x68, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c,
	0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x52,
	0x69, 0x67, 0x68, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61,
	0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x33, 0x38, 0x34, 0x30,
	0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x41, 0x63,
	0x74, 0x69, 0x76, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74,
	0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e, 0x38, 0x3c, 0x2f, 0x56, 0x65, 0x72,
	0x74, 0x69, 0x63, 0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f,
	0x72, 0x63, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65,
	0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f,
	0x72, 0x63, 0x68, 0x3e, 0x37, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f, 0x72, 0x63, 0x68,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75, 0x6c, 0x73, 0x65,
	0x3e, 0x31, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c,
	0x53, 0x79, 0x6e, 0x63, 0x50, 0x75, 0x6c, 0x73, 0x65, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c,
	0x53, 0x79, 0x6e, 0x63, 0x53, 0x6b, 0x65, 0x77, 0x3e, 0x30, 0x3c, 0x2f,
	0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63,
	0x53, 0x6b, 0x65, 0x77, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x54, 0x6f, 0x70, 0x42, 0x6f,
	0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x54, 0x6f, 0x70, 0x42, 0x6f, 0x72, 0x64, 0x65,
	0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x42, 0x6f, 0x74, 0x74, 0x6f, 0x6d, 0x42, 0x6f,
	0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x42, 0x6f, 0x74, 0x74, 0x6f, 0x6d, 0x42, 0x6f,
	0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49,
	0x6e, 0x76, 0x65, 0x72, 0x74, 0x44, 0x61, 0x74, 0x61, 0x50, 0x6f, 0x6c,
	0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c,
	0x2f, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x44, 0x61, 0x74, 0x61, 0x50,
	0x6f, 0x6c, 0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x56, 0x73, 0x79, 0x6e,
	0x63, 0x50, 0x6f, 0x6c, 0x61, 0x69, 0x72, 0x74, 0x79, 0x3e, 0x46, 0x61,
	0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x56,
	0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61, 0x69, 0x72, 0x74, 0x79,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e, 0x76, 0x65, 0x72,
	0x74, 0x48, 0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61, 0x72, 0x69,
	0x74, 0x79, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x49, 0x6e,
	0x76, 0x65, 0x72, 0x74, 0x48, 0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c,
	0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x3e,
	0x30, 0x78, 0x30, 0x3c, 0x2f, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x43,
	0x6f, 0x6c, 0x6f, 0x72, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75,
	0x70, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64,
	0x3d, 0x27, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x20, 0x49, 0x6e,
	0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x27, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,
	0x54, 0x79, 0x70, 0x65, 0x3e, 0x39, 0x3c, 0x2f, 0x49, 0x6e, 0x74, 0x65,
	0x72, 0x66, 0x61, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63,
	0x65, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74,
	0x3e, 0x33, 0x3c, 0x2f, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63,
	0x65, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x69, 0x73, 0x70, 0x6c,
	0x61, 0x79, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x53, 0x61, 0x76, 0x69, 0x6e,
	0x67, 0x4f, 0x76, 0x65, 0x72, 0x72, 0x69, 0x64, 0x65, 0x3e, 0x38, 0x3c,
	0x2f, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x50, 0x6f, 0x77, 0x65,
	0x72, 0x53, 0x61, 0x76, 0x69, 0x6e, 0x67, 0x4f, 0x76, 0x65, 0x72, 0x72,
	0x69, 0x64, 0x65, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d,
	0x27, 0x44, 0x53, 0x49, 0x20, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61,
	0x63, 0x65, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x43, 0x68, 0x61, 0x6e, 0x6e, 0x65, 0x6c, 0x49, 0x64, 0x3e, 0x32,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x68, 0x61, 0x6e, 0x6e, 0x65, 0x6c,
	0x49, 0x64, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49,
	0x56, 0x69, 0x72, 0x74, 0x75, 0x61, 0x6c, 0x49, 0x64, 0x3e, 0x30, 0x3c,
	0x2f, 0x44, 0x53, 0x49, 0x56, 0x69, 0x72, 0x74, 0x75, 0x61, 0x6c, 0x49,
	0x64, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x43,
	0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e, 0x33,
	0x36, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46,
	0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x54, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x4d, 0x6f,
	0x64, 0x65, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x72, 0x61,
	0x66, 0x66, 0x69, 0x63, 0x4d, 0x6f, 0x64, 0x65, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x4c, 0x61, 0x6e, 0x65, 0x73, 0x3e,
	0x34, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x4c, 0x61, 0x6e, 0x65, 0x73, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x52, 0x65, 0x66,
	0x72, 0x65, 0x73, 0x68, 0x52, 0x61, 0x74, 0x65, 0x3e, 0x30, 0x78, 0x33,
	0x43, 0x30, 0x30, 0x30, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x52, 0x65,
	0x66, 0x72, 0x65, 0x73, 0x68, 0x52, 0x61, 0x74, 0x65, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x43, 0x6d, 0x64, 0x53, 0x77,
	0x61, 0x70, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x3e,
	0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6d,
	0x64, 0x53, 0x77, 0x61, 0x70, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61,
	0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49,
	0x43, 0x6d, 0x64, 0x55, 0x73, 0x69, 0x6e, 0x67, 0x54, 0x72, 0x69, 0x67,
	0x67, 0x65, 0x72, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x44,
	0x53, 0x49, 0x43, 0x6d, 0x64, 0x55, 0x73, 0x69, 0x6e, 0x67, 0x54, 0x72,
	0x69, 0x67, 0x67, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x54, 0x45, 0x43, 0x68, 0x65, 0x63, 0x6b, 0x45, 0x6e,
	0x61, 0x62, 0x6c, 0x65, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f,
	0x44, 0x53, 0x49, 0x54, 0x45, 0x43, 0x68, 0x65, 0x63, 0x6b, 0x45, 0x6e,
	0x61, 0x62, 0x6c, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44,
	0x53, 0x49, 0x54, 0x45, 0x55, 0x73, 0x69, 0x6e, 0x67, 0x44, 0x65, 0x64,
	0x69, 0x63, 0x61, 0x74, 0x65, 0x64, 0x54, 0x45, 0x50, 0x69, 0x6e, 0x3e,
	0x54, 0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x45, 0x55,
	0x73, 0x69, 0x6e, 0x67, 0x44, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65,
	0x64, 0x54, 0x45, 0x50, 0x69, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x54, 0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x49,
	0x6e, 0x69, 0x74, 0x56, 0x61, 0x6c, 0x3e, 0x30, 0x3c, 0x2f, 0x44, 0x53,
	0x49, 0x54, 0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x49, 0x6e, 0x69, 0x74,
	0x56, 0x61, 0x6c, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x54, 0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x52, 0x64, 0x50, 0x74,
	0x72, 0x49, 0x72, 0x71, 0x4c, 0x69, 0x6e, 0x65, 0x3e, 0x33, 0x36, 0x30,
	0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x45, 0x76, 0x53, 0x79, 0x6e,
	0x63, 0x52, 0x64, 0x50, 0x74, 0x72, 0x49, 0x72, 0x71, 0x4c, 0x69, 0x6e,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44,
	0x53, 0x43, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e, 0x54, 0x72, 0x75,
	0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x44, 0x53, 0x43, 0x4d, 0x61, 0x6a, 0x6f, 0x72, 0x56, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44,
	0x53, 0x43, 0x4d, 0x61, 0x6a, 0x6f, 0x72, 0x56, 0x65, 0x72, 0x73, 0x69,
	0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49,
	0x44, 0x53, 0x43, 0x4d, 0x69, 0x6e, 0x6f, 0x72, 0x56, 0x65, 0x72, 0x73,
	0x69, 0x6f, 0x6e, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53,
	0x43, 0x4d, 0x69, 0x6e, 0x6f, 0x72, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44,
	0x53, 0x43, 0x53, 0x63, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49,
	0x44, 0x53, 0x43, 0x53, 0x63, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x50, 0x72, 0x6f, 0x66, 0x69,
	0x6c, 0x65, 0x49, 0x44, 0x3e, 0x34, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44,
	0x53, 0x43, 0x50, 0x72, 0x6f, 0x66, 0x69, 0x6c, 0x65, 0x49, 0x44, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,
	0x53, 0x6c, 0x69, 0x63, 0x65, 0x57, 0x69, 0x64, 0x74, 0x68, 0x3e, 0x31,
	0x30, 0x38, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53,
	0x6c, 0x69, 0x63, 0x65, 0x57, 0x69, 0x64, 0x74, 0x68, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c,
	0x69, 0x63, 0x65, 0x48, 0x65, 0x69, 0x67, 0x68, 0x74, 0x3e, 0x33, 0x32,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63,
	0x65, 0x48, 0x65, 0x69, 0x67, 0x68, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x4d, 0x61, 0x73,
	0x74, 0x65, 0x72, 0x54, 0x69, 0x6d, 0x65, 0x3e, 0x31, 0x32, 0x38, 0x3c,
	0x2f, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x4d, 0x61, 0x73, 0x74,
	0x65, 0x72, 0x54, 0x69, 0x6d, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x6c,
	0x65, 0x72, 0x4d, 0x61, 0x70, 0x70, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x30, 0x30, 0x20, 0x30, 0x31,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6f,
	0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x6c, 0x65, 0x72, 0x4d, 0x61, 0x70, 0x70,
	0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x3e, 0x0a, 0x3c, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x53, 0x65,
	0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x39, 0x31, 0x20, 0x30, 0x39, 0x20, 0x32, 0x30, 0x20,
	0x30, 0x30, 0x20, 0x32, 0x30, 0x20, 0x30, 0x32, 0x20, 0x30, 0x30, 0x20,
	0x30, 0x33, 0x20, 0x31, 0x63, 0x20, 0x30, 0x34, 0x20, 0x32, 0x31, 0x20,
	0x30, 0x30, 0x20, 0x30, 0x66, 0x20, 0x30, 0x33, 0x20, 0x31, 0x39, 0x20,
	0x30, 0x31, 0x20, 0x39, 0x37, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x39, 0x32, 0x20, 0x31, 0x30, 0x20, 0x66, 0x30, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x31, 0x35, 0x20, 0x39, 0x30, 0x20, 0x30, 0x33, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x30, 0x33, 0x20, 0x30, 0x31, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x66, 0x30, 0x20, 0x35, 0x35,
	0x20, 0x61, 0x61, 0x20, 0x35, 0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x34,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x63, 0x30, 0x20, 0x30,
	0x33, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x66, 0x30, 0x20,
	0x35, 0x35, 0x20, 0x61, 0x61, 0x20, 0x35, 0x32, 0x20, 0x30, 0x38, 0x20,
	0x30, 0x37, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20, 0x65, 0x66,
	0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x66,
	0x30, 0x20, 0x35, 0x35, 0x20, 0x61, 0x61, 0x20, 0x35, 0x32, 0x20, 0x30,
	0x38, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35, 0x20,
	0x62, 0x34, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35,
	0x20, 0x33, 0x35, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x66, 0x30, 0x20, 0x35, 0x35, 0x20, 0x61, 0x61, 0x20, 0x35,
	0x32, 0x20, 0x30, 0x38, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x66, 0x66, 0x20, 0x61, 0x61, 0x20, 0x35, 0x35, 0x20,
	0x61, 0x35, 0x20, 0x38, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31, 0x35,
	0x20, 0x36, 0x66, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x31,
	0x35, 0x20, 0x66, 0x33, 0x20, 0x31, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x66, 0x66, 0x20, 0x61, 0x61, 0x20, 0x35, 0x35, 0x20,
	0x61, 0x35, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35,
	0x20, 0x31, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x66, 0x20, 0x37,
	0x38, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35, 0x20, 0x32, 0x39, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x66, 0x66, 0x20, 0x37, 0x38, 0x0a, 0x3c, 0x2f,
	0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x53, 0x65, 0x71, 0x75, 0x65,
	0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x3c, 0x44, 0x53, 0x49, 0x53, 0x74, 0x61,
	0x74, 0x75, 0x73, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x36, 0x20, 0x30, 0x61, 0x20, 0x39,
	0x63, 0x0a, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x53, 0x74, 0x61, 0x74, 0x75,
	0x73, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x3c,
	0x44, 0x53, 0x49, 0x54, 0x65, 0x72, 0x6d, 0x53, 0x65, 0x71, 0x75, 0x65,
	0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35, 0x20,
	0x32, 0x38, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x46, 0x46,
	0x20, 0x32, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35, 0x20, 0x31,
	0x30, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x46, 0x46, 0x20,
	0x38, 0x30, 0x0a, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x65, 0x72, 0x6d,
	0x53, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x3c, 0x47,
	0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x43, 0x6f, 0x6e,
	0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x43, 0x6f, 0x6e, 0x66,
	0x69, 0x67, 0x75, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x27, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79,
	0x31, 0x52, 0x65, 0x73, 0x65, 0x74, 0x31, 0x49, 0x6e, 0x66, 0x6f, 0x3e,
	0x44, 0x53, 0x49, 0x5f, 0x50, 0x41, 0x4e, 0x45, 0x4c, 0x5f, 0x52, 0x45,
	0x53, 0x45, 0x54, 0x2c, 0x20, 0x30, 0x2c, 0x20, 0x33, 0x30, 0x3c, 0x2f,
	0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x31, 0x52, 0x65, 0x73, 0x65,
	0x74, 0x31, 0x49, 0x6e, 0x66, 0x6f, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x31, 0x50, 0x6f, 0x77,
	0x65, 0x72, 0x31, 0x49, 0x6e, 0x66, 0x6f, 0x3e, 0x44, 0x53, 0x49, 0x5f,
	0x50, 0x41, 0x4e, 0x45, 0x4c, 0x5f, 0x4d, 0x4f, 0x44, 0x45, 0x5f, 0x53,
	0x45, 0x4c, 0x45, 0x43, 0x54, 0x2c, 0x20, 0x30, 0x2c, 0x20, 0x30, 0x2c,
	0x20, 0x30, 0x2c, 0x20, 0x30, 0x2c, 0x20, 0x54, 0x52, 0x55, 0x45, 0x3c,
	0x2f, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x31, 0x50, 0x6f, 0x77,
	0x65, 0x72, 0x31, 0x49, 0x6e, 0x66, 0x6f, 0x3e, 0x0a, 0x3c, 0x2f, 0x47,
	0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x20, 0x69, 0x64, 0x3d, 0x27, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67,
	0x68, 0x74, 0x20, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x75, 0x72, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x54, 0x79, 0x70,
	0x65, 0x3e, 0x31, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67,
	0x68, 0x74, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x6d,
	0x69, 0x63, 0x43, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x54, 0x79, 0x70,
	0x65, 0x3e, 0x33, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67,
	0x68, 0x74, 0x50, 0x6d, 0x69, 0x63, 0x43, 0x6f, 0x6e, 0x74, 0x72, 0x6f,
	0x6c, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x6d, 0x69,
	0x63, 0x50, 0x57, 0x4d, 0x53, 0x69, 0x7a, 0x65, 0x69, 0x6e, 0x42, 0x69,
	0x74, 0x73, 0x3e, 0x39, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69,
	0x67, 0x68, 0x74, 0x50, 0x6d, 0x69, 0x63, 0x50, 0x57, 0x4d, 0x53, 0x69,
	0x7a, 0x65, 0x69, 0x6e, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74,
	0x50, 0x4d, 0x49, 0x43, 0x42, 0x61, 0x6e, 0x6b, 0x53, 0x65, 0x6c, 0x65,
	0x63, 0x74, 0x3e, 0x33, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69,
	0x67, 0x68, 0x74, 0x50, 0x4d, 0x49, 0x43, 0x42, 0x61, 0x6e, 0x6b, 0x53,
	0x65, 0x6c, 0x65, 0x63, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x4d, 0x49,
	0x43, 0x50, 0x57, 0x4d, 0x46, 0x72, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63,
	0x79, 0x3e, 0x38, 0x30, 0x30, 0x30, 0x30, 0x30, 0x3c, 0x2f, 0x42, 0x61,
	0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x50, 0x4d, 0x49, 0x43, 0x50,
	0x57, 0x4d, 0x46, 0x72, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x79, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69,
	0x67, 0x68, 0x74, 0x53, 0x74, 0x65, 0x70, 0x73, 0x3e, 0x31, 0x30, 0x30,
	0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x53,
	0x74, 0x65, 0x70, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42,
	0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x44, 0x65, 0x66, 0x61,
	0x75, 0x6c, 0x74, 0x3e, 0x38, 0x30, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b,
	0x6c, 0x69, 0x67, 0x68, 0x74, 0x44, 0x65, 0x66, 0x61, 0x75, 0x6c, 0x74,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c,
	0x69, 0x67, 0x68, 0x74, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65, 0x72,
	0x3e, 0x34, 0x30, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67,
	0x68, 0x74, 0x4c, 0x6f, 0x77, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65,
	0x72, 0x50, 0x6d, 0x69, 0x63, 0x4e, 0x75, 0x6d, 0x3e, 0x32, 0x3c, 0x2f,
	0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x50, 0x6d, 0x69, 0x63,
	0x4e, 0x75, 0x6d, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x50, 0x4d,
	0x49, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x50, 0x6d, 0x69, 0x63, 0x4d, 0x6f,
	0x64, 0x65, 0x6c, 0x3e, 0x30, 0x78, 0x32, 0x46, 0x3c, 0x2f, 0x50, 0x4d,
	0x49, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x50, 0x6d, 0x69, 0x63, 0x4d, 0x6f,
	0x64, 0x65, 0x6c, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x50, 0x4d,
	0x49, 0x50, 0x6f, 0x77, 0x65, 0x72, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67,
	0x3e, 0x31, 0x3c, 0x2f, 0x50, 0x4d, 0x49, 0x50, 0x6f, 0x77, 0x65, 0x72,
	0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d,
	0x69, 0x6e, 0x4c, 0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e,
	0x30, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73,
	0x73, 0x4d, 0x69, 0x6e, 0x4c, 0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x72, 0x69, 0x67,
	0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d, 0x61, 0x78, 0x4c, 0x75, 0x6d,
	0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e, 0x30, 0x3c, 0x2f, 0x42, 0x72,
	0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d, 0x61, 0x78, 0x4c,
	0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x09, 0x3c,
	0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x52, 0x61,
	0x6e, 0x67, 0x65, 0x4c, 0x65, 0x76, 0x65, 0x6c, 0x30, 0x3e, 0x35, 0x30,
	0x30, 0x20, 0x33, 0x31, 0x39, 0x35, 0x30, 0x30, 0x20, 0x35, 0x30, 0x30,
	0x20, 0x32, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65,
	0x73, 0x73, 0x52, 0x61, 0x6e, 0x67, 0x65, 0x4c, 0x65, 0x76, 0x65, 0x6c,
	0x30, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x41, 0x64, 0x61, 0x70,
	0x74, 0x69, 0x76, 0x65, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65,
	0x73, 0x73, 0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x31, 0x3c,
	0x2f, 0x41, 0x64, 0x61, 0x70, 0x74, 0x69, 0x76, 0x65, 0x42, 0x72, 0x69,
	0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x46, 0x65, 0x61, 0x74, 0x75,
	0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x43, 0x41, 0x42,
	0x4c, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e, 0x54, 0x72, 0x75, 0x65,
	0x3c, 0x2f, 0x43, 0x41, 0x42, 0x4c, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x00
                })
                While(One)
                {
                    Name(_T_0, 0x0)
                    Store(ToInteger(Arg2, ), _T_0)
                    If(LEqual(_T_0, 0x8056))
                    {
                        Store(PCFG, Local2)
                    }
                    Else
                    {
                        If(LEqual(_T_0, 0x8000))
                        {
                            Store(PCF1, Local2)
                        }
                        Else
                        {
                            Store(PCFG, Local2)
                        }
                    }
                    Break
                }
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(PGRT, 0x2, NotSerialized)
            {
                Name(RBUF, Buffer(One)
                {
	0x00
                })
                Return(RBUF)
            }
            Method(DEVT, 0x1, NotSerialized)
            {
                Notify(\_SB_.GPU0, Arg0)
            }
            Method(BLCP, 0x2, NotSerialized)
            {
                Name(RBUF, Buffer(0x100)
                {
                })
                Return(RBUF)
            }
            Method(PBRT, 0x2, NotSerialized)
            {
                Name(RBUF, Buffer(One)
                {
	0x00
                })
                Return(RBUF)
            }
            Method(ROE1, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE2, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE3, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE4, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE5, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE6, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Name(_DOD, Package(0x1)
            {
                0x24321
            })
            Device(AVS0)
            {
                Name(_ADR, 0x24321)
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x2)
                    {
	0x79, 0x00
                    })
                    Return(RBUF)
                }
                Name(_DEP, Package(0x3)
                {
                    \_SB_.MMU0,
                    \_SB_.IMM0,
                    \_SB_.VFE0
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_HRV, 0x0, NotSerialized)
            {
                Name(RESU, Zero)
                Name(TIER, Zero)
                Name(DREV, Zero)
                Name(FAMI, Zero)
                And(\_SB_.SIDT, 0xf, TIER)
                And(ShiftRight(\_SB_.SJTG, 0x1c, ), 0xf, DREV)
                ShiftLeft(DREV, 0x4, DREV)
                If(LEqual(\_SB_.SDFE, 0x69))
                {
                    ShiftLeft(0x3, 0xb, FAMI)
                }
                Or(TIER, RESU, RESU)
                Or(DREV, RESU, RESU)
                Or(FAMI, RESU, RESU)
                Return(RESU)
            }
            Method(CHDV, 0x0, NotSerialized)
            {
                Name(CHIF, Package(0x2)
                {
                    One,
                    Package(0x7)
                    {
                        "CHILDDEV",
                        Zero,
                        0x24321,
                        "QCOM_AVStream_8350",
                        Zero,
                        "Qualcomm Camera AVStream Mini Driver",
                        Package(0x4)
                        {
                            "COMPATIBLEIDS",
                            0x2,
                            "VEN_QCOM&DEV__AVSTREAM",
                            "QCOM_AVSTREAM"
                        }
                    }
                })
                Return(CHIF)
            }
            Method(_LID, 0x0, NotSerialized)
            {
                Return(One)
            }
        }
        Device(SCM0)
        {
            Name(_HID, "QCOM05DD")
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(TLOG)
        {
            Name(_HID, "QCOM1AE4")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(TREE)
        {
            Name(_HID, "QCOM05DE")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x31)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x88,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x86,
	0x09, 0x00, 0x01, 0xef, 0xbe, 0xad, 0xde, 0xad, 0xde, 0xef, 0xbe, 0x79,
	0x00
                })
                CreateDWordField(RBUF, 0x27, TGCA)
                CreateDWordField(RBUF, 0x2b, TGCL)
                Store(\_SB_.TCMA, TGCA)
                Store(\_SB_.TCML, TGCL)
                Return(RBUF)
            }
        }
        Device(SPMI)
        {
            Name(_HID, "QCOM1A0B")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CID, "PNP0CA2")
            Name(_UID, One)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xe)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x40, 0x0c, 0x00, 0x00, 0x80, 0x02,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(CONF, 0x0, NotSerialized)
            {
                Name(XBUF, Buffer(0x1a)
                {
	0x00, 0x01, 0x01, 0x01, 0xff, 0x00, 0x02, 0x00, 0x0a, 0x07, 0x04, 0x07,
	0x01, 0xff, 0x10, 0x01, 0x00, 0x01, 0x0c, 0x40, 0x00, 0x00, 0x02, 0x80,
	0x00, 0x00
                })
                Return(XBUF)
            }
        }
        Device(GIO0)
        {
            Name(_HID, "QCOM1A0C")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x83)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x10, 0x0f, 0x00, 0x00, 0x30, 0x00,
	0x89, 0x06, 0x00, 0x09, 0x01, 0xf0, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x09, 0x01, 0xf0, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x09, 0x01, 0xf0,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x09, 0x01, 0xf0, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x09, 0x01, 0xfc, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x09, 0x01, 0x28, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x11,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x12, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x2d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x99, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xdc,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0xa7, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xad, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(OFNI, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0xcb, 0x00
                })
                Return(RBUF)
            }
            Name(GABL, Zero)
            Method(_REG, 0x2, NotSerialized)
            {
                If(LEqual(Arg0, 0x8))
                {
                    Store(Arg1, GABL)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x40, 0x8f, 0x24, 0x4f, 0xe2, 0xd5, 0x9f, 0x49, 0x83, 0x4c, 0x27, 0x75,
	0x8e, 0xa1, 0xcd, 0x3f
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(Arg2, _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(One)
                            {
	0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x1)
                                {
                                    0x140
                                })
                            }
                            Else
                            {
                                BreakPoint
                            }
                        }
                        Break
                    }
                }
                Else
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
            }
        }
        Device(IPCC)
        {
            Name(_HID, "QCOM1AC2")
            Name(_CID, "QCOMFFE2")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x26)
                {
	0x89, 0x06, 0x00, 0x01, 0x01, 0x05, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x06, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x07,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x84, 0x03, 0x00, 0x00,
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(WWAN)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.PM01
            })
            Name(_HID, "QCOM1ADA")
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Name(GMDM, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x4d,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
            })
            Name(GMDR, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x50,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
            })
            Name(GMDS, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x48,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
            })
            Scope(\_SB_.PM01)
            {
                OperationRegion(MPON, GeneralPurposeIO, Zero, One)
                OperationRegion(PMDR, GeneralPurposeIO, Zero, One)
                OperationRegion(PMON, GeneralPurposeIO, Zero, One)
            }
            Field(\_SB_.PM01.MPON, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.WWAN.GMDM),
                MPON, 1
            }
            Field(\_SB_.PM01.PMDR, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.WWAN.GMDR),
                PMDR, 1
            }
            Field(\_SB_.PM01.PMON, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.WWAN.GMDS),
                PMON, 1
            }
            Method(_MFF, 0x0, NotSerialized)
            {
                Store("Start SDX55 Power OFF Sequence", Debug)
                If(LOr(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PSUB, "QRD08350")))
                {
                    Sleep(0x190)
                    Store("Set GPIO 6D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.MPON)
                    Store("Set GPIO 9D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMDR)
                    Sleep(0xd7)
                    Store("Set GPIO 1D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMON)
                    Sleep(One)
                }
                Else
                {
                    Store("SDX55 Power OFF not supported for this form factor", Debug)
                }
                Store("End SDX55 Power OFF Sequence", Debug)
            }
            Method(_MNF, 0x0, NotSerialized)
            {
                Store("Start SDX55 Power OFF Sequence with 3000 ms delay.", Debug)
                If(LOr(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PSUB, "QRD08350")))
                {
                    Sleep(0x190)
                    Store("Set GPIO 6D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.MPON)
                    Store("Set GPIO 9D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMDR)
                    Sleep(0xbb8)
                    Store("Set GPIO 1D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMON)
                    Sleep(One)
                }
                Else
                {
                    Store("SDX55 Power OFF not supported for this form factor", Debug)
                }
                Store("End SDX55 Power OFF Sequence", Debug)
            }
        }
        Scope(\_SB_.WWAN)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP1, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        Device(PCI0)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, Zero)
            Name(_SEG, Zero)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0xb5
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0xb6
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0xb7
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0xb8
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP0, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Name(PGID, Buffer(0xa)
            {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x43, 0x49, 0x30, 0x00
            })
            Name(DBUF, Buffer(DBFL)
            {
            })
            CreateByteField(DBUF, Zero, STAT)
            CreateByteField(DBUF, 0x2, DVAL)
            CreateField(DBUF, 0x18, 0xa0, DEID)
            Method(OPRG, 0x1, Serialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(Arg0, Debug)
                Store(Arg0, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
            Method(_RMV, 0x0, Serialized)
            {
                Return(One)
            }
            Method(_OST, 0x3, Serialized)
            {
                Store("In _OST of PCI0", Debug)
                While(One)
                {
                    Name(_T_0, Zero)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, 0x103))
                    {
                        Store("In _OST, Ejection Processing", Debug)
                        While(One)
                        {
                            Name(_T_1, Zero)
                            Store(ToInteger(Arg1, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                Store("In PCI0 _OST, Ejection Success", Debug)
                                Notify(\_SB_.PCI0, 0x3)
                            }
                            Else
                            {
                                If(LNot(LEqual(Match(Package(0x4)
                                {
                                    0x80,
                                    0x81,
                                    0x82,
                                    0x83
                                }, MEQ, _T_1, MTR, Zero, Zero), Ones)))
                                {
                                    Store("In PCI0 _OST, Ejection Failure", Debug)
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x84))
                                    {
                                        Store("In PCI0 _OST, Ejection Pending", Debug)
                                    }
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        If(LEqual(_T_0, 0x200))
                        {
                            Store("In PCI0 _OST, Insertion Processing", Debug)
                            While(One)
                            {
                                Name(_T_2, Zero)
                                Store(ToInteger(Arg1, ), _T_2)
                                If(LEqual(_T_2, Zero))
                                {
                                    Store("In PCI0 _OST, Insertion Success", Debug)
                                    Notify(\_SB_.PCI0, Zero)
                                }
                                Break
                            }
                        }
                    }
                    Break
                }
            }
            Method(_CBA, 0x0, NotSerialized)
            {
                Return(0x700000000)
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x7a)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x02,
	0x8a, 0x2b, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00, 0x00, 0xff, 0xff,
	0xff, 0x1f, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x8a, 0x2b,
	0x00, 0x00, 0x0c, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x20, 0x07, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x3f,
	0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x88, 0x0d, 0x00, 0x02,
	0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x02, 0x00,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            One
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P0RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P0RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R0RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R0RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R0RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x6)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    },
                    Buffer(0x10)
                    {
	0xcc, 0x06, 0xcc, 0xef, 0xac, 0x73, 0xc3, 0x4b, 0xbf, 0xf0, 0x76, 0x14,
	0x38, 0x07, 0xc3, 0x89
                    },
                    Package(0x2)
                    {
                        Package(0x2)
                        {
                            "ExternalFacingPort",
                            One
                        },
                        Package(0x2)
                        {
                            "UID",
                            Zero
                        }
                    },
                    Buffer(0x10)
                    {
	0x14, 0xd8, 0xff, 0xda, 0xba, 0x6e, 0x8c, 0x4d, 0x8a, 0x91, 0xbc, 0x9b,
	0xbf, 0x4a, 0xa3, 0x01
                    },
                    Package(0x2)
                    {
                        Package(0x2)
                        {
                            "usb4-host-interface",
                            \_SB_.UBF0.PRT0
                        },
                        Package(0x2)
                        {
                            "usb4-port-number",
                            Zero
                        }
                    }
                })
                Method(_DSW, 0x3, NotSerialized)
                {
                }
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBF0, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x60,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBF0)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P0RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R0RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(QPPX)
        {
            Name(_HID, "QCOM1A96")
            Name(_CID, "QCOMFFE4")
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0xfe)
                {
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x5e,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x01, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x61,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x01, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x02, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x03, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x03, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_QPG, 0x0, Serialized)
            {
                Return(Package(0x7)
                {
                    One,
                    One,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
            }
            Method(_HPX, 0x2, Serialized)
            {
                While(One)
                {
                    Name(_T_0, Zero)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, Zero))
                    {
                        \_SB_.PCI0.OPRG(Arg1)
                    }
                    Else
                    {
                        If(LEqual(_T_0, One))
                        {
                            \_SB_.PCI1.OPRG(Arg1)
                        }
                    }
                    Break
                }
            }
            Method(_HPE, 0x2, Serialized)
            {
                While(One)
                {
                    Name(_T_0, Zero)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, Zero))
                    {
                        If(LEqual(Arg1, Zero))
                        {
                            Store(One, PRP0)
                            Notify(\_SB_.PCI0, Zero)
                        }
                        Else
                        {
                            Store(0xffffffff, PRP0)
                            Notify(\_SB_.PCI0, One)
                        }
                    }
                    Else
                    {
                        If(LEqual(_T_0, One))
                        {
                            If(LEqual(Arg1, Zero))
                            {
                                Store(One, PRP1)
                                Notify(\_SB_.PCI1, Zero)
                            }
                            Else
                            {
                                Store(0xffffffff, PRP1)
                                Notify(\_SB_.PCI1, One)
                            }
                        }
                    }
                    Break
                }
            }
            Name(GWLE, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x40,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
            })
            Scope(\_SB_.GIO0)
            {
                OperationRegion(WLEN, GeneralPurposeIO, Zero, One)
            }
            Field(\_SB_.GIO0.WLEN, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.QPPX.GWLE),
                WLEN, 1
            }
            Method(_RST, 0x1, Serialized)
            {
                While(One)
                {
                    Name(_T_0, Zero)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, Zero))
                    {
                        Store(Zero, \_SB_.QPPX.WLEN)
                        Sleep(0x5)
                        Store(One, \_SB_.QPPX.WLEN)
                    }
                    Else
                    {
                        If(LEqual(_T_0, One))
                        {
                            Store("SDX not supported yet", Debug)
                        }
                        Else
                        {
                            Store("Invalid PCIe port number passed to QPPX reset helper", Debug)
                        }
                    }
                    Break
                }
            }
        }
        Device(PCI1)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, One)
            Name(_SEG, One)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x1d2
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x1d3
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x1d6
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x1d7
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP1, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Name(PGID, Buffer(0xa)
            {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x43, 0x49, 0x31, 0x00
            })
            Name(DBUF, Buffer(DBFL)
            {
            })
            CreateByteField(DBUF, Zero, STAT)
            CreateByteField(DBUF, 0x2, DVAL)
            CreateField(DBUF, 0x18, 0xa0, DEID)
            Method(OPRG, 0x1, Serialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(Arg0, Debug)
                Store(Arg0, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
            Method(_RMV, 0x0, Serialized)
            {
                Return(One)
            }
            Method(_OST, 0x3, Serialized)
            {
                Store("In _OST of PCI1", Debug)
                While(One)
                {
                    Name(_T_0, Zero)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, 0x103))
                    {
                        Store("In _OST, Ejection Processing", Debug)
                        While(One)
                        {
                            Name(_T_1, Zero)
                            Store(ToInteger(Arg1, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                Store("In PCI1 _OST, Ejection Success", Debug)
                                Notify(\_SB_.PCI1, 0x3)
                            }
                            Else
                            {
                                If(LNot(LEqual(Match(Package(0x4)
                                {
                                    0x80,
                                    0x81,
                                    0x82,
                                    0x83
                                }, MEQ, _T_1, MTR, Zero, Zero), Ones)))
                                {
                                    Store("In PCI1 _OST, Ejection Failure", Debug)
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x84))
                                    {
                                        Store("In PCI1 _OST, Ejection Pending", Debug)
                                    }
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        If(LEqual(_T_0, 0x200))
                        {
                            Store("In PCI1 _OST, Insertion Processing", Debug)
                            While(One)
                            {
                                Name(_T_2, Zero)
                                Store(ToInteger(Arg1, ), _T_2)
                                If(LEqual(_T_2, Zero))
                                {
                                    Store("In PCI1 _OST, Insertion Success", Debug)
                                    Notify(\_SB_.PCI1, Zero)
                                }
                                Break
                            }
                        }
                    }
                    Break
                }
            }
            Method(_CBA, 0x0, NotSerialized)
            {
                Return(0x600000000)
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x7a)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02,
	0x8a, 0x2b, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x06, 0x00, 0x00, 0x00, 0xff, 0xff,
	0xff, 0x1f, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x8a, 0x2b,
	0x00, 0x00, 0x0c, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x20, 0x06, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x3f,
	0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x88, 0x0d, 0x00, 0x02,
	0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x02, 0x00,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x2
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P1RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P1RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R1RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R1RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R1RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x6)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    },
                    Buffer(0x10)
                    {
	0xcc, 0x06, 0xcc, 0xef, 0xac, 0x73, 0xc3, 0x4b, 0xbf, 0xf0, 0x76, 0x14,
	0x38, 0x07, 0xc3, 0x89
                    },
                    Package(0x2)
                    {
                        Package(0x2)
                        {
                            "ExternalFacingPort",
                            One
                        },
                        Package(0x2)
                        {
                            "UID",
                            One
                        }
                    },
                    Buffer(0x10)
                    {
	0x14, 0xd8, 0xff, 0xda, 0xba, 0x6e, 0x8c, 0x4d, 0x8a, 0x91, 0xbc, 0x9b,
	0xbf, 0x4a, 0xa3, 0x01
                    },
                    Package(0x2)
                    {
                        Package(0x2)
                        {
                            "usb4-host-interface",
                            \_SB_.UBF0.PRT1
                        },
                        Package(0x2)
                        {
                            "usb4-port-number",
                            One
                        }
                    }
                })
                Method(_DSW, 0x3, NotSerialized)
                {
                }
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x63,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P1RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R1RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI2)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, 0x2)
            Name(_SEG, 0x2)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x46
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x47
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x48
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x49
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP2, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x1e)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x30, 0x3c, 0x00, 0x00, 0xd0, 0x01,
	0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
	0x00, 0x00, 0x02, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x3
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P2RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P2RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R2RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R2RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R2RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x80,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P2RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R2RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI3)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, 0x3)
            Name(_SEG, 0x3)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x38
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x39
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x3a
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x3b
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP3, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x1e)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x30, 0x38, 0x00, 0x00, 0xd0, 0x01,
	0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
	0x00, 0x00, 0x02, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x4
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P3RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P3RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R3RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R3RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R3RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xc0,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P3RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R3RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI4)
        {
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.QPPX,
                \_SB_.WWAN
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, 0x4)
            Name(_SEG, 0x4)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x51
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x52
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x53
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x54
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP4, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x1e)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x30, 0x34, 0x00, 0x00, 0xd0, 0x01,
	0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
	0x00, 0x00, 0x02, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x5
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P4RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P4RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R4RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R4RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R4RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
	0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P4RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R4RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI5)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, 0x5)
            Name(_SEG, 0x5)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x42
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x43
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x44
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x45
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP5, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x1e)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x30, 0x32, 0x00, 0x00, 0xd0, 0x01,
	0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
	0x00, 0x00, 0x02, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x6
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P5RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P5RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R5RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R5RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R5RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x40,
	0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P5RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R5RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI6)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, 0x6)
            Name(_SEG, 0x6)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x2a
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x2b
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x2c
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x2d
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP6, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x1e)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x30, 0x30, 0x00, 0x00, 0xd0, 0x01,
	0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
	0x00, 0x00, 0x02, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x7
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P6RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P6RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R6RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R6RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R6RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x80,
	0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P6RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R6RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(IPC0)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Name(_HID, "QCOM1A0D")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(GLNK)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.IPCC,
                \_SB_.RPEN
            })
            Name(_HID, "QCOM1A84")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(ARPC)
        {
            Name(_DEP, Package(0x4)
            {
                \_SB_.MMU0,
                \_SB_.GLNK,
                \_SB_.SCM0,
                \_SB_.IMM0
            })
            Name(_HID, "QCOM1A5C")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(ARPD)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.ADSP,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM1A82")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(RFS0)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.IPC0
            })
            Name(_HID, "QCOM1A15")
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x26)
                {
	0x86, 0x09, 0x00, 0x01, 0x88, 0x88, 0x88, 0x88, 0x99, 0x99, 0x99, 0x99,
	0x86, 0x09, 0x00, 0x01, 0x11, 0x11, 0x11, 0x11, 0x22, 0x22, 0x22, 0x22,
	0x86, 0x09, 0x00, 0x01, 0x33, 0x33, 0x33, 0x33, 0x44, 0x44, 0x44, 0x44,
	0x79, 0x00
                })
                CreateDWordField(RBUF, 0x4, RMTA)
                CreateDWordField(RBUF, 0x8, RMTL)
                CreateDWordField(RBUF, 0x10, RFMA)
                CreateDWordField(RBUF, 0x14, RFML)
                CreateDWordField(RBUF, 0x1c, RFAA)
                CreateDWordField(RBUF, 0x20, RFAL)
                Store(\_SB_.RMTB, RMTA)
                Store(\_SB_.RMTX, RMTL)
                Store(\_SB_.RFMB, RFMA)
                Store(\_SB_.RFMS, RFML)
                Store(\_SB_.RFAB, RFAA)
                Store(\_SB_.RFAS, RFAL)
                Return(RBUF)
            }
        }
        Scope(\_SB_.RFS0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(IPA_)
        {
            Name(_DEP, Package(0x6)
            {
                \_SB_.PEP0,
                \_SB_.RPEN,
                \_SB_.TREE,
                \_SB_.MMU0,
                \_SB_.GLNK,
                \_SB_.IPC0
            })
            Name(_HID, "QCOM1A6A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x2c)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xe4, 0x01, 0x00, 0x00, 0x06, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xae, 0x02, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xe0, 0x01, 0x00, 0x00, 0x03, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xd0, 0x01, 0x00, 0x00, 0x79, 0x00
                })
            }
            Device(NTAD)
            {
                Name(_ADR, One)
            }
        }
        Scope(\_SB_.IPA_)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(QDIG)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Name(_HID, "QCOM1A13")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(SSM_)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.GLNK,
                \_SB_.TREE
            })
            Name(_HID, "QCOM1A14")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(SYSM)
        {
            Name(_HID, "ACPI0010")
            Name(_UID, 0x100000)
            Name(_LPI, Package(0x4)
            {
                Zero,
                0x1000000,
                One,
                Package(0xa)
                {
                    0x251c,
                    0x1770,
                    One,
                    0x20,
                    Zero,
                    Zero,
                    0xc300,
                    Buffer(0x11)
                    {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                    },
                    Buffer(0x11)
                    {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                    },
                    "platform.DRIPS"
                }
            })
            Device(CLUS)
            {
                Name(_HID, "ACPI0010")
                Name(_UID, 0x10)
                Name(_LPI, Package(0x5)
                {
                    Zero,
                    0x1000000,
                    0x2,
                    Package(0xa)
                    {
                        0x170c,
                        0xbb8,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        0x20,
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        "L3Cluster.D2"
                    },
                    Package(0xa)
                    {
                        0x1770,
                        0xce4,
                        One,
                        Zero,
                        Zero,
                        One,
                        0x40,
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        "L3Cluster.D4"
                    }
                })
                Device(CPU0)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, Zero)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C4"
                        }
                    })
                }
                Device(CPU1)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, One)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C4"
                        }
                    })
                }
                Device(CPU2)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x2)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C4"
                        }
                    })
                }
                Device(CPU3)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x3)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold3.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold3.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold3.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold3.C4"
                        }
                    })
                }
                Device(CPU4)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x4)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C2"
                        },
                        Package(0xa)
                        {
                            0xf96,
                            0x3e8,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C3"
                        },
                        Package(0xa)
                        {
                            0x118a,
                            0x5dc,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C4"
                        }
                    })
                }
                Device(CPU5)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x5)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime1.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime1.C2"
                        },
                        Package(0xa)
                        {
                            0xf96,
                            0x3e8,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime1.C3"
                        },
                        Package(0xa)
                        {
                            0x118a,
                            0x5dc,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime1.C4"
                        }
                    })
                }
                Device(CPU6)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x6)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime2.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime2.C2"
                        },
                        Package(0xa)
                        {
                            0xf96,
                            0x3e8,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime2.C3"
                        },
                        Package(0xa)
                        {
                            0x118a,
                            0x5dc,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime2.C4"
                        }
                    })
                }
                Device(CPU7)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x7)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime3.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime3.C2"
                        },
                        Package(0xa)
                        {
                            0xf96,
                            0x3e8,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime3.C3"
                        },
                        Package(0xa)
                        {
                            0x118a,
                            0x5dc,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime3.C4"
                        }
                    })
                }
            }
        }
        Device(GPS_)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Name(_HID, "QCOM1A6C")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Scope(\_SB_.GPS_)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QGP0)
        {
            Name(_HID, "QCOM1A88")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x20)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x90, 0x00, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x17, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x18, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(QGP1)
        {
            Name(_HID, "QCOM1A88")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xa0, 0x00, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x3c, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(QGP2)
        {
            Name(_HID, "QCOM1A88")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x2)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x20)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x6d, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x70, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(CSEC)
        {
            Name(_HID, "QCOM1AA8")
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QWPP)
        {
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_HID, "QCOM1A79")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x1a)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x60, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x68, 0x09, 0x00, 0x00, 0x07, 0x00,
	0x79, 0x00
                })
            }
        }
        Device(NFCD)
        {
            Name(_HID, "NXP1001")
            Name(_CID, "ACPINXP1001")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CRS, Buffer(0x41)
            {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0x80, 0x1a, 0x06, 0x00, 0x28, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x31, 0x36, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x57, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
            })
            Name(NFCS, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x3f,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
            })
            Name(NFCP, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x3e,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
            })
            Scope(GIO0)
            {
                OperationRegion(NFPO, GeneralPurposeIO, Zero, One)
            }
            Field(\_SB_.GIO0.NFPO, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.NFCD.NFCP),
                MGPE, 1
            }
            Method(POON, 0x0, NotSerialized)
            {
                Store(One, MGPE)
            }
            Method(POOF, 0x0, NotSerialized)
            {
                Store(Zero, MGPE)
            }
            Name(NFCF, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x56,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
            })
            Scope(GIO0)
            {
                OperationRegion(NFFO, GeneralPurposeIO, Zero, One)
            }
            Field(\_SB_.GIO0.NFFO, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.NFCD.NFCF),
                MGFE, 1
            }
            Method(FWON, 0x0, NotSerialized)
            {
                Store(One, MGFE)
            }
            Method(FWOF, 0x0, NotSerialized)
            {
                Store(Zero, MGFE)
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                Store("Method NFC _DSM begin", Debug)
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xc4, 0xf6, 0xe7, 0xa2, 0x38, 0x96, 0x85, 0x44, 0x9f, 0x12, 0x6b, 0x4e,
	0x20, 0xb6, 0x0d, 0x63
                }))
                {
                    If(LEqual(Arg2, Zero))
                    {
                        Store("Method NFC _DSM QUERY", Debug)
                        If(LEqual(Arg1, One))
                        {
                            \_SB_.NFCD.POOF()
                            Sleep(0x14)
                            Return(Buffer(One)
                            {
	0x0f
                            })
                        }
                    }
                    If(LEqual(Arg2, 0x2))
                    {
                        Store("Method NFC _DSM SETPOWERMODE", Debug)
                        If(LEqual(Arg3, One))
                        {
                            \_SB_.NFCD.POON()
                            Sleep(0x14)
                        }
                        If(LEqual(Arg3, Zero))
                        {
                            \_SB_.NFCD.POOF()
                            Sleep(0x14)
                        }
                    }
                    If(LEqual(Arg2, One))
                    {
                        Store("Method NFC _DSM SETFWMODE", Debug)
                        If(LEqual(Arg3, One))
                        {
                            \_SB_.NFCD.FWON()
                            Sleep(0x14)
                            \_SB_.NFCD.POOF()
                            Sleep(0x14)
                            \_SB_.NFCD.POON()
                            Sleep(0x14)
                        }
                        If(LEqual(Arg3, Zero))
                        {
                            \_SB_.NFCD.FWOF()
                            Sleep(0x14)
                            \_SB_.NFCD.POOF()
                            Sleep(0x14)
                            \_SB_.NFCD.POON()
                            Sleep(0x14)
                        }
                    }
                    If(LEqual(Arg2, 0x3))
                    {
                        Store("Method NFC _DSM EEPROM Config", Debug)
                        Return(Buffer(0x13)
                        {
	0x9c, 0x1f, 0x38, 0x19, 0xa8, 0xb9, 0x4b, 0xab, 0xa1, 0xba, 0xd0, 0x20,
	0x76, 0x88, 0x2a, 0xe0, 0x03, 0x01, 0x11
                        })
                    }
                }
            }
            Name(PGID, Buffer(0xa)
            {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x4e, 0x46, 0x43, 0x44, 0x00
            })
            Name(DBUF, Buffer(DBFL)
            {
            })
            CreateByteField(DBUF, Zero, STAT)
            CreateByteField(DBUF, 0x2, DVAL)
            CreateField(DBUF, 0x18, 0xa0, DEID)
            Method(_S1D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_S2D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_S3D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_PS0, 0x0, NotSerialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(Zero, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
            Method(_PS3, 0x0, NotSerialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(0x3, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(SOCP)
        {
            Name(_HID, "QCOM1ADD")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.STOR, STOR)
        }
        Device(QDSS)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.MMU0
            })
            Name(_HID, "QCOM1A56")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x4a)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x2e, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0xa0, 0x04, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0xa0, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x44, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x41,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x42, 0x00, 0x00, 0x00,
	0x79, 0x00
                })
            }
        }
        Device(QCSP)
        {
            Name(_DEP, Package(0x3)
            {
                \_SB_.GLNK,
                \_SB_.SOCP,
                \_SB_.SPSS
            })
            Name(_HID, "QCOM1A87")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.STOR, STOR)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QCDB)
        {
            Name(_HID, "QCOM1ADE")
            Method(_SUB, 0x0, NotSerialized)
            {
                Return("AGN00000")
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SERB)
        {
            Name(_HID, "QCOM05B2")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(RMNT)
        {
            Name(_HID, "QCOM1A95")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(MBRG)
        {
            Name(_HID, "QCOM1A07")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(RMAT)
        {
            Name(_HID, "QCOM1A08")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(DPLB)
        {
            Name(_HID, "QCOM1A70")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(CCID)
        {
            Name(_HID, "QCOM1AA2")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(DSBY)
        {
            Name(_HID, "QCOM1ACD")
            Alias(\_SB_.PSUB, _SUB)
        }
        Scope(\_SB_.SERB)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LEqual(\_SB_.PLST, Zero), LEqual(\_SB_.PLST, 0x2)), LEqual(\_SB_.PLST, 0x3)))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        Scope(\_SB_.RMNT)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Scope(\_SB_.MBRG)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Scope(\_SB_.RMAT)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Scope(\_SB_.DPLB)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SSVC)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.IPC0,
                \_SB_.QDIG
            })
            Name(_HID, "QCOM1ADB")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CID, "ACPIQCOM1ADB")
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Name(HWNL, One)
        Device(HWN0)
        {
            Name(_HID, "QCOM1A68")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.HWNL, Zero))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
            Method(HWNL, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x10)
                {
                    0x2,
                    0x3,
                    0x19b,
                    0x14,
                    Zero,
                    Zero,
                    One,
                    One,
                    0x2,
                    0x2,
                    One,
                    One,
                    One,
                    0x3,
                    0x6,
                    One
                })
                Return(CFG0)
            }
        }
        Scope(\_SB_)
        {
            Device(WLTM)
            {
                Name(_HID, "QCOM1AD5")
                Name(_CID, "QCOMFFE0")
                Alias(\_SB_.PSUB, _SUB)
                Name(_DEP, Package(0x3)
                {
                    \_SB_.PCI6,
                    \_SB_.SBTD,
                    \_SB_.IPC0
                })
            }
        }
        Device(SSGS)
        {
            Name(_HID, "QCOM1AD8")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(CAMP)
        {
            Name(_DEP, Package(0x6)
            {
                \_SB_.PEP0,
                \_SB_.PMIC,
                \_SB_.PML0,
                \_SB_.ARPC,
                \_SB_.NSP0,
                \_SB_.GIO0
            })
            Name(_HID, "QCOM1A32")
            Name(_UID, 0x1b)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x77)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xc4, 0x0a, 0x00, 0x10, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x20, 0xc2, 0x0a, 0x00, 0xb4, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0xa0, 0xc4, 0x0a, 0x00, 0x10, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0xb0, 0xc4, 0x0a, 0x00, 0x10, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0xc0, 0xc4, 0x0a, 0x00, 0x10, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0xd0, 0xc4, 0x0a, 0x00, 0x10, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xec, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x2f, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xab,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xaa, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xeb, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(CAMS)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.MPCS
            })
            Name(_HID, "QCOM1A26")
            Name(_UID, 0x15)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(CAMF)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.MPCS
            })
            Name(_HID, "QCOM1A06")
            Name(_UID, 0x1a)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(CAMI)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.MPCS
            })
            Name(_HID, "QCOM1A99")
            Name(_UID, 0x1c)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(CAMT)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.MPCS
            })
            Name(_HID, "QCOM1ACE")
            Name(_UID, 0x1d)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(CAMU)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.MPCS
            })
            Name(_HID, "QCOM1ACF")
            Name(_UID, 0x1e)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(FLSH)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.CAMP
            })
            Name(_HID, "QCOM1A27")
            Name(_UID, 0x19)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(MPCS)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.CAMP
            })
            Name(_HID, "QCOM1A98")
            Name(_UID, 0x18)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x86)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x50, 0xc6, 0x0a, 0x00, 0x20, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x70, 0xc6, 0x0a, 0x00, 0x20, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0xa0, 0xc5, 0x0a, 0x00, 0x20, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0xc0, 0xc5, 0x0a, 0x00, 0x20, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x50, 0xcf, 0x0a, 0x00, 0x02, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x52, 0xcf, 0x0a, 0x00, 0x02, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x54, 0xcf, 0x0a, 0x00, 0x02, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x56, 0xcf, 0x0a, 0x00, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xfd, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xfe, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xff,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xe0, 0x01, 0x00, 0x00,
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(JPGE)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.CAMP,
                \_SB_.MMU0
            })
            Name(_HID, "QCOM1A33")
            Name(_UID, 0x17)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2c)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0xe0, 0xc4, 0x0a, 0x00, 0x40, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x20, 0xc5, 0x0a, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xfa, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xfb, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(VFE0)
        {
            Name(_DEP, Package(0x4)
            {
                \_SB_.MMU0,
                \_SB_.PEP0,
                \_SB_.CAMP,
                \_SB_.GIO0
            })
            Name(_HID, "QCOM1A25")
            Name(_UID, 0x16)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xf4)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0xed, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x3f, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x60,
	0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x1f, 0x03, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x1e, 0x03, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xef, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xf5,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x88, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x19, 0x03, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x18, 0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xfc,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xf4, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x87, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x17, 0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x16,
	0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xf1, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xf0, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xf3, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xf2,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xa1, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xa0, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x1c, 0x03, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x1a,
	0x03, 0x00, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0d, 0x00,
	0x02, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,
	0x00, 0x00, 0x70, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f,
	0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(EVA0)
        {
            Name(_DEP, Package(0x6)
            {
                \_SB_.IMM0,
                \_SB_.MMU0,
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.TREE,
                \_SB_.PMIC
            })
            Name(_HID, "QCOM0CF1")
            Name(_UID, 0x1e)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x3b)
                {
	0x89, 0x06, 0x00, 0x01, 0x01, 0x0a, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xb0, 0x0a, 0x00, 0x00, 0x10, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x88, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x04, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(SEN2)
        {
            Name(_DEP, Package(0x3)
            {
                \_SB_.IPC0,
                \_SB_.SCSS,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM1A93")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CID, "QCOM1A67")
            Name(_PLD, Package(0x1)
            {
                Buffer(0x14)
                {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x1c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                }
            })
        }
        Device(HPS0)
        {
            Name(_HID, "QCOM1AD9")
            Alias(\_SB_.PSUB, _SUB)
            Name(ENTP, 0xff)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(ENTP, 0xff))
                {
                    If(LEqual(\_SB_.PLST, 0x4))
                    {
                        Return(0xf)
                    }
                    Else
                    {
                        Return(Zero)
                    }
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        Name(HPDB, Zero)
        Name(HPDS, Buffer(One)
        {
	0x00
        })
        Name(PINA, Zero)
        Name(DPPN, 0xd)
        Name(CCST, Buffer(One)
        {
	0x02
        })
        Name(CCS2, 0x2)
        Name(PORT, Buffer(One)
        {
	0x02
        })
        Name(HIRQ, Buffer(One)
        {
	0x00
        })
        Name(USBC, Buffer(One)
        {
	0x0b
        })
        Name(MUXC, Buffer(One)
        {
	0x00
        })
        Device(URS0)
        {
            Name(_HID, "QCOM1A8B")
            Name(_CID, Package(0x2)
            {
                "PNP0CA1",
                "QCOMFFE1"
            })
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.UCS0
            })
            Name(_CRS, Buffer(0xe)
            {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x60, 0x0a, 0xff, 0xff, 0x0f, 0x00,
	0x79, 0x00
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Device(USB0)
            {
                Name(_ADR, Zero)
                Name(_S0W, 0x3)
                Name(_CRS, Buffer(0x2f)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xa5, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa2, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x19, 0x01, 0x11,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x1b, 0x01, 0x0f, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x1b, 0x01, 0x0e, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Method(CCVL, 0x0, NotSerialized)
                {
                    Return(\_SB_.UCS0.ECC0)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0x85, 0xe3, 0x2e, 0xce, 0xe6, 0x00, 0xcb, 0x48, 0x9f, 0x05, 0x2e, 0xdb,
	0x92, 0x7c, 0x48, 0x99
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x1d
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x2))
                                    {
                                        Return(Zero)
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x3))
                                        {
                                            Return(Zero)
                                            Break
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_1, 0x4))
                                            {
                                                Return(0x2)
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x00
                                                })
                                                Break
                                            }
                                        }
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            Return(Buffer(One)
                            {
	0x00
                            })
                            Break
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
            Device(UFN0)
            {
                Name(_ADR, One)
                Name(_S0W, 0x3)
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Name(_CRS, Buffer(0x14)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xa5, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa2, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Method(CCVL, 0x0, NotSerialized)
                {
                    Return(\_SB_.UCS0.ECC0)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0xeb, 0xcf, 0x56, 0xfe, 0xd5, 0x49, 0x78, 0x43, 0xa8, 0xa2, 0x29, 0x78,
	0xdb, 0xe5, 0x4a, 0xd2
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x03
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, One))
                                    {
                                        Return(0x20)
                                        Break
                                    }
                                    Else
                                    {
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            If(LEqual(_T_0, Buffer(0x10)
                            {
	0x9f, 0x29, 0xde, 0x18, 0x76, 0x94, 0xc9, 0x4f, 0xb4, 0x3b, 0x8a, 0xeb,
	0x71, 0x3e, 0xd7, 0x51
                            }))
                            {
                                While(One)
                                {
                                    Name(_T_3, 0x0)
                                    Store(ToInteger(Arg2, ), _T_3)
                                    If(LEqual(_T_3, Zero))
                                    {
                                        While(One)
                                        {
                                            Name(_T_4, 0x0)
                                            Store(ToInteger(Arg1, ), _T_4)
                                            If(LEqual(_T_4, Zero))
                                            {
                                                Return(Buffer(One)
                                                {
	0x03
                                                })
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x01
                                                })
                                                Break
                                            }
                                            Break
                                        }
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_3, One))
                                        {
                                            Return(0x39)
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x00
                                            })
                                            Break
                                        }
                                    }
                                    Break
                                }
                            }
                            Else
                            {
                                Return(Buffer(One)
                                {
	0x00
                                })
                                Break
                            }
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
        }
        Device(URS1)
        {
            Name(_HID, "QCOM1A8C")
            Name(_CID, Package(0x2)
            {
                "PNP0CA1",
                "QCOMFFE1"
            })
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_CCA, Zero)
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.UCS0
            })
            Name(_CRS, Buffer(0xe)
            {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x80, 0x0a, 0xff, 0xff, 0x0f, 0x00,
	0x79, 0x00
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Device(USB1)
            {
                Name(_S0W, 0x3)
                Name(_ADR, Zero)
                Name(_CRS, Buffer(0x2f)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xaa, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa7, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x19, 0x01, 0x33,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x1b, 0x01, 0x0d, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x1b, 0x01, 0x0c, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x80, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Name(STVL, 0xf)
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(STVL)
                }
                Method(CCVL, 0x0, NotSerialized)
                {
                    Return(\_SB_.UCS0.ECC1)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0x85, 0xe3, 0x2e, 0xce, 0xe6, 0x00, 0xcb, 0x48, 0x9f, 0x05, 0x2e, 0xdb,
	0x92, 0x7c, 0x48, 0x99
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x1d
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x2))
                                    {
                                        Return(Zero)
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x3))
                                        {
                                            Return(Zero)
                                            Break
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_1, 0x4))
                                            {
                                                Return(0x2)
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x00
                                                })
                                                Break
                                            }
                                        }
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            Return(Buffer(One)
                            {
	0x00
                            })
                            Break
                        }
                        Break
                    }
                }
                Method(_DIS, 0x0, NotSerialized)
                {
                }
                Method(REMD, 0x0, NotSerialized)
                {
                    Store(Zero, STVL)
                    Notify(\_SB_.URS1.USB1, One)
                }
                Method(ADDD, 0x0, NotSerialized)
                {
                    Store(0xf, STVL)
                    Notify(\_SB_.URS1.USB1, One)
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
            Device(UFN1)
            {
                Name(_ADR, One)
                Name(_S0W, 0x3)
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x80, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Name(_CRS, Buffer(0x14)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xaa, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa7, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Method(CCVL, 0x0, NotSerialized)
                {
                    Return(\_SB_.UCS0.ECC1)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0xeb, 0xcf, 0x56, 0xfe, 0xd5, 0x49, 0x78, 0x43, 0xa8, 0xa2, 0x29, 0x78,
	0xdb, 0xe5, 0x4a, 0xd2
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x03
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, One))
                                    {
                                        Return(0x20)
                                        Break
                                    }
                                    Else
                                    {
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            If(LEqual(_T_0, Buffer(0x10)
                            {
	0x9f, 0x29, 0xde, 0x18, 0x76, 0x94, 0xc9, 0x4f, 0xb4, 0x3b, 0x8a, 0xeb,
	0x71, 0x3e, 0xd7, 0x51
                            }))
                            {
                                While(One)
                                {
                                    Name(_T_3, 0x0)
                                    Store(ToInteger(Arg2, ), _T_3)
                                    If(LEqual(_T_3, Zero))
                                    {
                                        While(One)
                                        {
                                            Name(_T_4, 0x0)
                                            Store(ToInteger(Arg1, ), _T_4)
                                            If(LEqual(_T_4, Zero))
                                            {
                                                Return(Buffer(One)
                                                {
	0x03
                                                })
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x01
                                                })
                                                Break
                                            }
                                            Break
                                        }
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_3, One))
                                        {
                                            Return(0x39)
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x00
                                            })
                                            Break
                                        }
                                    }
                                    Break
                                }
                            }
                            Else
                            {
                                Return(Buffer(One)
                                {
	0x00
                                })
                                Break
                            }
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
        }
        Device(UCSI)
        {
            Name(_HID, 0xc06256)
            Name(_CID, 0xa00cd041)
            Name(_UID, 0x3)
            Name(_DDN, "USB Type-C")
            Name(_DEP, Package(0x3)
            {
                \_SB_.ABD_,
                \_SB_.PMGK,
                \_SB_.UCS0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Store(0x110, VERS)
                Store(Zero, CCI_)
                Store(Zero, MSGI)
                If(LGreater(\_SB_.PMGK.LKUP, Zero))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Device(UCN0)
            {
                Name(_ADR, Zero)
                Name(_PLD, Package(0x1)
                {
                    Buffer(0x14)
                    {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                    }
                })
                Name(_UPC, Package(0x4)
                {
                    One,
                    0x9,
                    Zero,
                    Zero
                })
            }
            Device(UCN1)
            {
                Name(_ADR, One)
                Name(_PLD, Package(0x1)
                {
                    Buffer(0x14)
                    {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x80, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                    }
                })
                Name(_UPC, Package(0x4)
                {
                    One,
                    0x9,
                    Zero,
                    Zero
                })
            }
            Name(_CRS, Buffer(0xe)
            {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x8a, 0x80, 0x30, 0x00, 0x00, 0x00,
	0x79, 0x00
            })
            OperationRegion(USBC, SystemMemory, 0x808a0000, 0x30)
            Field(USBC, ByteAcc, NoLock, Preserve)
            {
                VERS, 16,
                RESV, 16,
                CCI_, 32,
                CTRL, 64,
                MSGI, 128,
                MSGO, 128
            }
            Name(BUFF, Buffer(0x32)
            {
            })
            CreateField(BUFF, Zero, 0x8, BSTA)
            CreateField(BUFF, 0x8, 0x8, BSIZ)
            CreateField(BUFF, 0x10, 0x10, BVER)
            CreateField(BUFF, 0x30, 0x20, BCCI)
            CreateField(BUFF, 0x50, 0x40, BCTL)
            CreateField(BUFF, 0x90, 0x80, BMGI)
            CreateField(BUFF, 0x110, 0x80, BMGO)
            Method(OPMW, 0x0, NotSerialized)
            {
                Store(CTRL, BCTL)
                Store(MSGO, BMGO)
                Store(BUFF, \_SB_.PMGK.UCSI)
                Return(Zero)
            }
            Method(OPMR, 0x0, NotSerialized)
            {
                Store(\_SB_.PMGK.UCSI, BUFF)
                Store(BVER, VERS)
                Store(BCCI, CCI_)
                Store(BMGI, MSGI)
                Return(Zero)
            }
            Method(_DSM, 0x4, Serialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xc2, 0x98, 0x83, 0x6f, 0xa4, 0x7c, 0xe4, 0x11, 0xad, 0x36, 0x63, 0x10,
	0x42, 0xb5, 0x00, 0x8f
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(One)
                            {
	0x0f
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(OPMW())
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(OPMR())
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Zero)
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(One)
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
        }
        Device(UCS0)
        {
            Name(_HID, "QCOM1AA4")
            Name(_CID, "QCOMFFE5")
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Method(_SUB, 0x0, NotSerialized)
            {
                If(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x3)))
                {
                    Return("QRDR8350")
                }
                Else
                {
                    Return(\_SB_.PSUB)
                }
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(CRS0, Buffer(0x1d2)
                {
	0x86, 0x09, 0x00, 0x01, 0x40, 0x00, 0x8a, 0x80, 0x20, 0x00, 0x00, 0x00,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8e, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0x80, 0x1a, 0x06, 0x00, 0x08, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x32, 0x32, 0x00, 0x8e, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,
	0x00, 0x01, 0x06, 0x00, 0x80, 0x1a, 0x06, 0x00, 0x0c, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x49, 0x43, 0x32, 0x32, 0x00, 0x79, 0x00
                })
                Name(CRS1, Buffer(0x19a)
                {
	0x86, 0x09, 0x00, 0x01, 0x40, 0x00, 0x8a, 0x80, 0x20, 0x00, 0x00, 0x00,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xff,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x79, 0x00
                })
                If(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x3)))
                {
                    Return(CRS0)
                }
                Else
                {
                    Return(CRS1)
                }
            }
            OperationRegion(USBC, SystemMemory, 0x808a0040, 0x20)
            Field(USBC, ByteAcc, NoLock, Preserve)
            {
                INFO, 8,
                UPDT, 8,
                CCX0, 8,
                MUX0, 8,
                RES0, 8,
                VID0, 16,
                SID0, 16,
                SVS0, 64,
                CCX1, 8,
                MUX1, 8,
                RES1, 8,
                VID1, 16,
                SID1, 16,
                SVS1, 64
            }
            Name(PORT, Buffer(0x20)
            {
	0x02
            })
            CreateByteField(PORT, Zero, EINF)
            CreateByteField(PORT, One, EUPD)
            CreateByteField(PORT, 0x2, ECC0)
            CreateByteField(PORT, 0x3, EMX0)
            CreateWordField(PORT, 0x5, EVI0)
            CreateWordField(PORT, 0x7, ESI0)
            CreateQWordField(PORT, 0x9, ESV0)
            CreateByteField(PORT, 0x11, ECC1)
            CreateByteField(PORT, 0x12, EMX1)
            CreateWordField(PORT, 0x14, EVI1)
            CreateWordField(PORT, 0x16, ESI1)
            CreateQWordField(PORT, 0x18, ESV1)
            Method(USBW, 0x0, NotSerialized)
            {
                Store(UPDT, EUPD)
                Notify(\_SB_.PMGK, 0xf0)
                Return(Zero)
            }
            Method(USBR, 0x0, NotSerialized)
            {
                Store(EINF, INFO)
                Store(EUPD, UPDT)
                Store(ECC0, CCX0)
                Store(EMX0, MUX0)
                Store(Zero, RES0)
                Store(EVI0, VID0)
                Store(ESI0, SID0)
                Store(ESV0, SVS0)
                Store(ECC1, CCX1)
                Store(EMX1, MUX1)
                Store(Zero, RES1)
                Store(EVI1, VID1)
                Store(ESI1, SID1)
                Store(ESV1, SVS1)
                Notify(UCS0, 0xa0)
                Store(ECC0, \_SB_.CCS2)
                Notify(\_SB_.CFSA, \_SB_.CCS2)
                Return(Zero)
            }
        }
        Device(CFSA)
        {
            Name(_HID, "FSA04480")
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x65)
                {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0xa0, 0x86, 0x01, 0x00, 0x42, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x31, 0x34, 0x00, 0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08,
	0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x01, 0x00, 0x26, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x01, 0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x1a, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(MPA_)
        {
            Name(_HID, "QCOM05B4")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08350"), LEqual(\_SB_.PLST, Zero))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MPA1)
        {
            Name(_HID, "QCOM05B5")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBJ0)
        {
            Name(_HID, "QCOM05B6")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08350"), LEqual(\_SB_.PLST, Zero))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBJ1)
        {
            Name(_HID, "QCOM05B7")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBJ2)
        {
            Name(_HID, "QCOM05B8")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBJ3)
        {
            Name(_HID, "QCOM05B9")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBS0)
        {
            Name(_HID, "QCOM05BA")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBS1)
        {
            Name(_HID, "QCOM05BB")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08350"), LEqual(\_SB_.PLST, Zero))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBS2)
        {
            Name(_HID, "QCOM05BC")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08350"), LEqual(\_SB_.PLST, Zero))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBS3)
        {
            Name(_HID, "QCOM05BD")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MSKN)
        {
            Name(_HID, "QCOM05BE")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08350"), LEqual(\_SB_.PLST, Zero))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MJCT)
        {
            Name(_HID, "QCOM05BF")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08350"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08350"), LEqual(\_SB_.PLST, Zero))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBCL)
        {
            Name(_HID, "QCOM1AD4")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        ThermalZone(TZ51)
        {
            Name(_HID, "QCOM05C0")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.MPA_
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.MPA_
                })
            }
        }
        ThermalZone(TZ58)
        {
            Name(_HID, "QCOM1A63")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.MBS1
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.MBS1,
                    \_SB_.ADC1
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x2))))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        ThermalZone(TZ59)
        {
            Name(_HID, "QCOM1A64")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.MBS2
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.MBS2,
                    \_SB_.ADC1
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x2))))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        ThermalZone(TZ61)
        {
            Name(_HID, "QCOM1A61")
            Name(_UID, Zero)
            Name(_TZD, Package(0x3)
            {
                \_SB_.MSKN,
                \_SB_.MJCT,
                \_SB_.MBJ0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.MSKN,
                    \_SB_.ADC1
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)), LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x2))))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        Device(AGR0)
        {
            Name(_HID, "ACPI000C")
            Name(_PUR, Package(0x2)
            {
                One,
                Zero
            })
            Method(_OST, 0x3, NotSerialized)
            {
                Store(Arg2, \_SB_.PEP0.ROST)
            }
        }
        ThermalZone(TZ0_)
        {
            Name(_HID, "QCOM1A58")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ0_.TTSP)
            }
        }
        ThermalZone(TZ1_)
        {
            Name(_HID, "QCOM1A58")
            Name(_UID, One)
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TPSV)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TTC2)
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ2_)
        {
            Name(_HID, "QCOM1A59")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ2_.TTSP)
            }
        }
        ThermalZone(TZ3_)
        {
            Name(_HID, "QCOM1A59")
            Name(_UID, One)
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TPSV)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TTC2)
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ5_)
        {
            Name(_HID, "QCOM1A91")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.GPU0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TPSV)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TTC2)
            }
            Name(TTSP, 0x2)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ6_)
        {
            Name(_HID, "QCOM1A47")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ6_.TTSP)
            }
        }
        ThermalZone(TZ7_)
        {
            Name(_HID, "QCOM1AC4")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ7_.TTSP)
            }
        }
        ThermalZone(TZ8_)
        {
            Name(_HID, "QCOM1AC5")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ8_.TTSP)
            }
        }
        ThermalZone(TZ9_)
        {
            Name(_HID, "QCOM1AC6")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ9_.TTSP)
            }
        }
        ThermalZone(TZ10)
        {
            Name(_HID, "QCOM1A46")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ10.TTSP)
            }
        }
        ThermalZone(TZ11)
        {
            Name(_HID, "QCOM1ABF")
            Name(_UID, One)
            Name(_TZD, Package(0x1)
            {
                \_SB_.CSW0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TPSV)
            }
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TTC2)
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ12)
        {
            Name(_HID, "QCOM1AC0")
            Name(_UID, Zero)
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ12.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ13)
        {
            Name(_HID, "QCOM1A57")
            Name(_UID, Zero)
            Name(_TZD, Package(0x4)
            {
                \_SB_.GPU0,
                \_SB_.WLTM,
                \_SB_.CSW0,
                \_SB_.MBCL
            })
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(0xdca)
            }
            Name(_TC1, One)
            Name(_TC2, 0x5)
            Name(_TSP, 0x14)
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.BCL1
                })
            }
        }
        ThermalZone(TZ14)
        {
            Name(_HID, "QCOM1AD6")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.DMMY
            })
            Name(TPSV, 0xdca)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ14.TPSV)
            }
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ14.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ14.TTC2)
            }
            Name(TTSP, 0xf)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ14.TTSP)
            }
            Method(_TFP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ14.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ15)
        {
            Name(_HID, "QCOM1AC8")
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x25)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xc0,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
                })
                Return(RBUF)
            }
            Name(_TZD, Package(0x4)
            {
                \_SB_.SYSM.CLUS.CPU0,
                \_SB_.SYSM.CLUS.CPU1,
                \_SB_.SYSM.CLUS.CPU2,
                \_SB_.SYSM.CLUS.CPU3
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ15.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ15.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ15.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ15.TTC2)
            }
            Name(_TSP, One)
            Name(_TZP, Zero)
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x4b, 0x2c, 0xd4, 0xc2, 0x5e, 0xe2, 0x1c, 0x47, 0x8a, 0x4e, 0x29, 0x0a,
	0xac, 0x3a, 0x29, 0xa3
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(Arg2, _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(Arg1, _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(Buffer(One)
                                        {
	0x03
                                        })
                                    }
                                    Break
                                }
                                Return(Buffer(One)
                                {
	0x00
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Store(DerefOf(Index(Arg3, Zero, )), \_SB_.TZ15.TPSV)
                                    Store(DerefOf(Index(Arg3, One, )), \_SB_.TZ15.TCRT)
                                    Store(DerefOf(Index(Arg3, 0x2, )), \_SB_.TZ15.TTC2)
                                    Store(Zero, \_SB_.TZ15.TTC1)
                                    Notify(\_SB_.TZ15, 0x81)
                                    Return(\_SB_.TZ15.TPSV)
                                }
                                Else
                                {
                                    Return(Zero)
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Zero)
                    }
                    Break
                }
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.PMIC
                })
            }
        }
        ThermalZone(TZ16)
        {
            Name(_HID, "QCOM1AC9")
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x25)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
                })
                Return(RBUF)
            }
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_MTL, 0x32)
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ16.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ16.TCRT)
            }
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ16.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ16.TTC2)
            }
            Name(_TSP, One)
            Name(_TZP, Zero)
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x4b, 0x2c, 0xd4, 0xc2, 0x5e, 0xe2, 0x1c, 0x47, 0x8a, 0x4e, 0x29, 0x0a,
	0xac, 0x3a, 0x29, 0xa3
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(Arg2, _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(Arg1, _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(Buffer(One)
                                        {
	0x03
                                        })
                                    }
                                    Break
                                }
                                Return(Buffer(One)
                                {
	0x00
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Store(DerefOf(Index(Arg3, Zero, )), \_SB_.TZ16.TPSV)
                                    Store(DerefOf(Index(Arg3, One, )), \_SB_.TZ16.TCRT)
                                    Store(DerefOf(Index(Arg3, 0x2, )), \_SB_.TZ16.TTC2)
                                    Store(Zero, \_SB_.TZ16.TTC1)
                                    Notify(\_SB_.TZ16, 0x81)
                                    Return(\_SB_.TZ16.TPSV)
                                }
                                Else
                                {
                                    Return(Zero)
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Zero)
                    }
                    Break
                }
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.PMIC
                })
            }
        }
        ThermalZone(TZ17)
        {
            Name(_HID, "QCOM1ACA")
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x25)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x40,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
                })
                Return(RBUF)
            }
            Name(_TZD, Package(0x1)
            {
                \_SB_.GPU0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ17.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ17.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ17.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ17.TTC2)
            }
            Name(_TSP, One)
            Name(_TZP, Zero)
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x4b, 0x2c, 0xd4, 0xc2, 0x5e, 0xe2, 0x1c, 0x47, 0x8a, 0x4e, 0x29, 0x0a,
	0xac, 0x3a, 0x29, 0xa3
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(Arg2, _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(Arg1, _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(Buffer(One)
                                        {
	0x03
                                        })
                                    }
                                    Break
                                }
                                Return(Buffer(One)
                                {
	0x00
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Store(DerefOf(Index(Arg3, Zero, )), \_SB_.TZ17.TPSV)
                                    Store(DerefOf(Index(Arg3, One, )), \_SB_.TZ17.TCRT)
                                    Store(DerefOf(Index(Arg3, 0x2, )), \_SB_.TZ17.TTC2)
                                    Store(Zero, \_SB_.TZ17.TTC1)
                                    Notify(\_SB_.TZ17, 0x81)
                                    Return(\_SB_.TZ17.TPSV)
                                }
                                Else
                                {
                                    Return(Zero)
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Zero)
                    }
                    Break
                }
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.PMIC
                })
            }
        }
        ThermalZone(TZ18)
        {
            Name(_HID, "QCOM1ACB")
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x25)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x80,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
                })
                Return(RBUF)
            }
            Name(_TZD, Package(0x2)
            {
                \_SB_.WLTM,
                \_SB_.CSW0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ18.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ18.TCRT)
            }
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ18.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ18.TTC2)
            }
            Name(_TSP, One)
            Name(_TZP, Zero)
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x4b, 0x2c, 0xd4, 0xc2, 0x5e, 0xe2, 0x1c, 0x47, 0x8a, 0x4e, 0x29, 0x0a,
	0xac, 0x3a, 0x29, 0xa3
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(Arg2, _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(Arg1, _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(Buffer(One)
                                        {
	0x03
                                        })
                                    }
                                    Break
                                }
                                Return(Buffer(One)
                                {
	0x00
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Store(DerefOf(Index(Arg3, Zero, )), \_SB_.TZ18.TPSV)
                                    Store(DerefOf(Index(Arg3, One, )), \_SB_.TZ18.TCRT)
                                    Store(DerefOf(Index(Arg3, 0x2, )), \_SB_.TZ18.TTC2)
                                    Store(Zero, \_SB_.TZ18.TTC1)
                                    Notify(\_SB_.TZ18, 0x81)
                                    Return(\_SB_.TZ18.TPSV)
                                }
                                Else
                                {
                                    Return(Zero)
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Zero)
                    }
                    Break
                }
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.PMIC
                })
            }
        }
        ThermalZone(TZ20)
        {
            Name(_HID, "QCOM1AD7")
            Name(_UID, Zero)
            Name(_TZD, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.GPU0,
                \_SB_.CSW0
            })
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ99)
        {
            Name(_HID, "QCOM1A5A")
            Name(_UID, 0x64)
            Name(_TZD, Package(0xe)
            {
                \_SB_.SYSM.CLUS.CPU0,
                \_SB_.SYSM.CLUS.CPU1,
                \_SB_.SYSM.CLUS.CPU2,
                \_SB_.SYSM.CLUS.CPU3,
                \_SB_.SYSM.CLUS.CPU4,
                \_SB_.SYSM.CLUS.CPU5,
                \_SB_.SYSM.CLUS.CPU6,
                \_SB_.SYSM.CLUS.CPU7,
                \_SB_.PEP0,
                \_SB_.GPU0.MON0,
                \_SB_.GPU0,
                \_SB_.WLTM,
                \_SB_.PMBM,
                \_SB_.CSW0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TCRT)
            }
            Name(TTC1, 0x4)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TTC1)
            }
            Name(TTC2, 0x3)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ31)
        {
            Name(_HID, "QCOM1A5D")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(TPSV, 0xe2e)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TPSV)
            }
            Name(TCRT, 0xef6)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TTC2)
            }
            Name(TTSP, 0x1e)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TTSP)
            }
        }
        ThermalZone(TZ32)
        {
            Name(_HID, "QCOM1A5E")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
            Name(_TZD, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.GPU0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TTC2)
            }
            Name(TTSP, 0x28)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TTSP)
            }
        }
        ThermalZone(TZ33)
        {
            Name(_HID, "QCOM1A5F")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
            Name(_TZD, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.GPU0
            })
            Name(TPSV, 0xe2e)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ33.TPSV)
            }
            Name(TCRT, 0xef6)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ33.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ33.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ33.TTC2)
            }
            Name(TTSP, 0x32)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ33.TTSP)
            }
        }
        ThermalZone(TZ34)
        {
            Name(_HID, "QCOM1A60")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
            Name(_TZD, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.GPU0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ34.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ34.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ34.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ34.TTC2)
            }
            Name(TTSP, 0x1e)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ34.TTSP)
            }
        }
        ThermalZone(TZ35)
        {
            Name(_HID, "QCOM05C6")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.MBS0
                })
            }
            Name(_TZD, Package(0x2)
            {
                \_SB_.WLTM,
                \_SB_.MSKN
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ35.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ35.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ35.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ35.TTC2)
            }
            Name(TTSP, 0x28)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ35.TTSP)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        ThermalZone(TZ36)
        {
            Name(_HID, "QCOM05C7")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.MBS1
                })
            }
            Name(_TZD, Package(0x1)
            {
                \_SB_.MBS1
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ36.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ36.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ36.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ36.TTC2)
            }
            Name(TTSP, 0x32)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ36.TTSP)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        ThermalZone(TZ37)
        {
            Name(_HID, "QCOM05C8")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.MBS2
                })
            }
            Name(_TZD, Package(0x1)
            {
                \_SB_.MBS2
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ37.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ37.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ37.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ37.TTC2)
            }
            Name(TTSP, 0x28)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ37.TTSP)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        ThermalZone(TZ38)
        {
            Name(_HID, "QCOM1A64")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
            Name(_TZD, Package(0x2)
            {
                \_SB_.WLTM,
                \_SB_.MSKN
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ38.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ38.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ38.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ38.TTC2)
            }
            Name(TTSP, 0x32)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ38.TTSP)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LAnd(LEqual(\_SB_.PSUB, "QRD08350"), LEqual(\_SB_.PLST, 0x4)))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Name(HWNH, Zero)
        Device(HWN1)
        {
            Name(_HID, "QCOM1A69")
            Name(_UID, One)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.HWNH, Zero))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
            Name(_DEP, Package(One)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(HAPI, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x3)
                {
                    One,
                    One,
                    One
                })
                Return(CFG0)
            }
            Method(HAPC, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x16)
                {
                    Zero,
                    0x984,
                    Zero,
                    One,
                    One,
                    One,
                    One,
                    Zero,
                    0x4,
                    One,
                    0x3,
                    0x14,
                    One,
                    0x3,
                    Zero,
                    Zero,
                    0x6,
                    Zero,
                    Zero,
                    0x535,
                    0x3,
                    One
                })
                Return(CFG0)
            }
        }
        Device(TSC5)
        {
            Name(_HID, "SCSY0792")
            Name(_UID, One)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.GIO0,
                \_SB_.I2C5
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x41)
                {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0x80, 0x1a, 0x06, 0x00, 0x48, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x32, 0x43, 0x35, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x17, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(PGID, Buffer(0xa)
            {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x54, 0x53, 0x43, 0x35, 0x00
            })
            Name(DBUF, Buffer(DBFL)
            {
            })
            CreateByteField(DBUF, Zero, STAT)
            CreateByteField(DBUF, 0x2, DVAL)
            CreateField(DBUF, 0x18, 0xa0, DEID)
            Method(_S1D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_S2D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_S3D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_PS0, 0x0, NotSerialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(Zero, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
            Method(_PS3, 0x0, NotSerialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(0x3, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
        }
        Device(BTNS)
        {
            Name(_HID, "ACPI0011")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x6b)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x15, 0x00, 0x02, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x07,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xc6, 0x00,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x06, 0x00, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(_DSD, Package(0x2)
            {
                Buffer(0x10)
                {
	0x25, 0xd6, 0x6b, 0xfa, 0xe8, 0x9c, 0x0d, 0x47, 0xa2, 0xc7, 0xb3, 0xca,
	0x36, 0xc4, 0x28, 0x2e
                },
                Package(0x4)
                {
                    Package(0x5)
                    {
                        Zero,
                        One,
                        Zero,
                        One,
                        0xd
                    },
                    Package(0x5)
                    {
                        One,
                        Zero,
                        One,
                        One,
                        0x81
                    },
                    Package(0x5)
                    {
                        One,
                        One,
                        One,
                        0xc,
                        0xe9
                    },
                    Package(0x5)
                    {
                        One,
                        0x2,
                        One,
                        0xc,
                        0xea
                    }
                }
            })
        }
        Device(RVRM)
        {
            Name(_HID, "QCOM1AF8")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(DBUS)
        {
            Name(_HID, "QCOM1AFF")
            Alias(\_SB_.PSUB, _SUB)
            Method(CHLD, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    Package(0x4)
                    {
                        "DBUS\\QCOM1AF0",
                        Zero,
                        0x9,
                        One
                    }
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
        }
        Device(NRCX)
        {
            Name(_HID, "QCOM1AF6")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(PSAU)
        {
            Name(_HID, "QCOM1AF1")
            Alias(\_SB_.PSUB, _SUB)
        }
        Scope(\_SB_.RVRM)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Scope(\_SB_.CCID)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QDCI)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Name(_HID, "QCOM1A12")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(FMRT)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.IC14
            })
            Name(_HID, "RTC06226")
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x41)
                {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0x80, 0x1a, 0x06, 0x00, 0x64, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x31, 0x34, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x03,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x32, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BTH0)
        {
            Name(_HID, "QCOM1A6B")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.PMIC,
                \_SB_.UR19
            })
            Name(_PRW, Package(0x2)
            {
                Zero,
                Zero
            })
            Name(_S4W, 0x2)
            Name(_S0W, 0x2)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(PBUF, Buffer(0x45)
                {
	0x8e, 0x1d, 0x00, 0x01, 0x00, 0x03, 0x02, 0x35, 0x00, 0x01, 0x0a, 0x00,
	0x00, 0xc2, 0x01, 0x00, 0x20, 0x00, 0x20, 0x00, 0x00, 0xc0, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x55, 0x52, 0x31, 0x39, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x01, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x41, 0x00, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(PBUF)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(ADC1)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.SPMI,
                \_SB_.PMIC
            })
            Name(_HID, "QCOM1A11")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(INTB, Buffer(0x4a)
                {
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x20,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x28,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x79, 0x00
                })
                Name(NAM_, Buffer(0xa)
                {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x53, 0x50, 0x4d, 0x49, 0x00
                })
                Name(VUSR, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x00, 0x31, 0x01, 0x00, 0x00
                })
                Name(VBTM, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x00, 0x34, 0x01, 0x00, 0x00
                })
                Concatenate(VUSR, NAM_, Local1)
                Concatenate(VBTM, NAM_, Local2)
                Concatenate(Local1, Local2, Local3)
                Concatenate(Local3, INTB, Local0)
                Return(Local0)
            }
        }
    }
}
