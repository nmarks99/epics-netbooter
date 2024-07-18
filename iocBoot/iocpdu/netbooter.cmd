##### Set up Synaccess netBooter power strip(s) #####

# Examples:
# # Set up a 16 port power strip
# drvAsynIPPortConfigure("device_name", "IP_ADDRESS")
# dbLoadRecords("$(TOP)/db/Synaccess_np1601du.db","P=$(PREFIX), R=device_name:, PORT=device_name")

# Set up a 5 port power strip
drvAsynIPPortConfigure("pdu5_1", "192.168.1.100:23")
dbLoadRecords("$(TOP)/db/Synaccess_np05b.db","P=$(PREFIX), R=pdu5_1:, PORT=pdu5_1")
