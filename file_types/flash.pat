# Flash - Macromedia Flash.  
# Pattern quality: good veryfast
# 
# If this pattern does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-developers@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

# Thanks to Brandon Enright {bmenrigh AT ucsd.edu}

# Macromedia spec:
# http://download.macromedia.com/pub/flash/flash_file_format_specification.pdf

flash
# As of flash 6 SWF files can be compressed.  Flash 8 will be out soon
# (end of 2005?) so this pattern prepares for that.  It assumes that 
# no major changes will be made to the format.
^[FC]WS[\x01-\x08]
