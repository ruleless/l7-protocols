# Napster - P2P filesharing
# Pattern quality: good veryfast
# Protocol groups: p2p
#
# All my tests show that this pattern is fast, but one user has reported that
# it is slow.  Your milage may vary.
# 
# Should work for any Napster offspring, like OpenNAP.
# (Yes, people still use this!)
# Matches both searches and downloads.
#
# http://opennap.sourceforge.net/napster.txt
#
# This pattern has been tested and is believed to work well.
#
# To get or provide more information about this protocol and/or pattern:
# http://www.protocolinfo.org/wiki/Napster
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

napster
# (client-server: length, assumed to be less than 256, login or new user login, 
# username, password, port, client ID, link-type |
# client-client: 1, firewalled or not, username, filename) 
# Assumes that filenames are well-behaved ASCII strings.  I have found
# one case where this assumptions fails (filename had \x99 in it).
^(.[\x02\x06][!-~]+ [!-~]+ [0-9][0-9]?[0-9]?[0-9]?[0-9]? "[\x09-\x0d -~]+" ([0-9]|10)|1(send|get)[!-~]+ "[\x09-\x0d -~]+")
