DefinitionBlock("DSDT.aml", "DSDT", 0x02, "QCOMM ", "SM6225 ", 3)
{
    Scope(\_SB_) {

        Include("addSub.asl")
        
        Include("dsdt_common.asl")

   }

}
