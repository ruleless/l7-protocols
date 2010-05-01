# SSDP - Simple Service Discovery Protocol - easy discovery of network devices
# Pattern quality: good notsofast
# Protocol groups: ietf_draft_standard networking
#
# To get or provide more information about this protocol and/or pattern:
# http://www.protocolinfo.org/wiki/SSDP
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

# This pattern was tested only by listening to a Linksys WRT54G. However,
# I expect it works in general given the simplicity of the protocol.

# SSDP packets should _always_ be sent to the multicast address
# 239.255.255.250, making this pattern irrelevant.  (Moreover, SSDP
# packets should be resitricted to local networks that have plenty of
# bandwidth.)  However, Microsoft, as usual, has other ideas, so maybe
# it could be useful.  Can't hurt, anyway. :-)
#
# http://www.upnp.org/download/draft_cai_ssdp_v1_03.txt
# http://msdn.microsoft.com/library/default.asp?url=/library/en-us/randz/protocol/ssdp.asp

ssdp
^notify[\x09-\x0d ]\*[\x09-\x0d ]http/1\.1[\x09-\x0d -~]*ssdp:(alive|byebye)|^m-search[\x09-\x0d ]\*[\x09-\x0d ]http/1\.1[\x09-\x0d -~]*ssdp:discover

