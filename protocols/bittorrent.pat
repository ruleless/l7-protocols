# Bittorrent - P2P filesharing / publishing tool - http://www.bittorrent.com
# Pattern attributes: good slow notsofast undermatch
# Protocol groups: p2p open_source
# Wiki: http://www.protocolinfo.org/wiki/Bittorrent
#
# This pattern has been tested and is believed to work well.
# It will, however, not work on bittorrent streams that are encrypted, since
# it's impossible to match encrypted data (unless the encryption is extremely 
# weak, like rot13 or something...).

bittorrent

# Does not attempt to match the HTTP download of the tracker
# 0x13 is the length of "bittorrent protocol"
# Second two bits match UDP wierdness
# Next bit matches something Azureus does
# Ditto on the next bit.  Could also match on "user-agent: azureus", but that's in the next
# packet and perhaps this will match multiple clients.

# This is not a valid GNU basic regular expression (but we don't use those).
\x13bittorrent protocol|d1:ad2:id20:|\x08'7P\)[RP]|^azver\x01$|^get /scrape\?info_hash=
