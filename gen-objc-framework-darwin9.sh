#!/bin/sh

mkdir -p DSTROOT-darwin9.0/System/Library/Frameworks/objc.framework/Versions/A/Resources/BridgeSupport
RUBYLIB=DSTROOT-darwin9.0/System/Library/BridgeSupport/ruby-1.8 ruby gen_bridge_metadata.rb -F complete -c '-I/usr/include/objc' -C '-I/usr/include/objc' /usr/include/objc/objc.h /usr/include/objc/runtime.h /usr/include/objc/message.h -o DSTROOT-darwin9.0/System/Library/Frameworks/objc.framework/Versions/A/Resources/BridgeSupport/objc.bridgesupport
