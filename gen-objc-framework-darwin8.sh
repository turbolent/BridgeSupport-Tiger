#!/bin/sh

mkdir -p DSTROOT-darwin8.0/System/Library/Frameworks/objc.framework/Versions/A/Resources/BridgeSupport
RUBYLIB=DSTROOT-darwin8.0/System/Library/BridgeSupport/ruby-1.8 ruby gen_bridge_metadata.rb  -c '-I/usr/include/objc' -C '-I/usr/include/objc' /usr/include/objc/objc.h /usr/include/objc/objc-api.h /usr/include/objc/objc-runtime.h /usr/include/objc/objc-class.h -o DSTROOT-darwin8.0/System/Library/Frameworks/objc.framework/Versions/A/Resources/BridgeSupport/objc.bridgesupport
