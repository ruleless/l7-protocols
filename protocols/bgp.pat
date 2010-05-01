# BGP - Border Gateway Protocol - RFC 1771
# Pattern quality: ok veryfast
# Protocol groups: ietf_draft_standard networking
#
# This pattern is UNTESTED.
#
# To get or provide more information about this protocol and/or pattern:
# http://www.protocolinfo.org/wiki/BGP
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

bgp
# "After a transport protocol connection is established, the first
# message sent by each side is an OPEN message."
# "If the Type of the message is OPEN, or if the Authentication Code used
# in the OPEN message of the connection is zero, then the Marker must be
# all ones."
# Then the 2 byte length field, then the 1 byte type field (1 = OPEN).
# Then the BGP version: 3 was RFC'd in 1991, 4 was RFC'd in 1995.
# Could keep going, but that should be sufficient.
^\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff..?\x01[\x03\x04]

