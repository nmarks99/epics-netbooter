# ../../bin/${EPICS_HOST_ARCH}/pdu st.cmd
< envPaths

dbLoadDatabase("../../dbd/iocpduLinux.dbd")
iocpduLinux_registerRecordDeviceDriver(pdbbase)

< settings.iocsh

# autosave
iocshLoad("$(AUTOSAVE)/iocsh/autosave_settings.iocsh", "PREFIX=$(PREFIX), SAVE_PATH=$(TOP)/iocBoot/$(IOC)")
iocshLoad("$(AUTOSAVE)/iocsh/save_restore.iocsh",      "PREFIX=$(PREFIX), POSITIONS_FILE=auto_positions, SETTINGS_FILE=auto_settings")
iocshLoad("$(AUTOSAVE)/iocsh/autosaveBuild.iocsh",     "PREFIX=$(PREFIX), BUILD_PATH=autosave")
luaCmd("modules=require('modules'); for mod,path in pairs(modules) do set_requestfile_path(path .. '/db') end")


< netbooter.cmd

###############################################################################
iocInit
###############################################################################

# print the time our boot was finished
date
