xcodebuild -sdk iphonesimulator14.4 -project "PortmoneSDKProxy.xcodeproj" -configuration Release
xcodebuild -sdk iphoneos14.4 -project "PortmoneSDKProxy.xcodeproj" -configuration Release
cd build
rm -rf "Release-fat"
cp -R "Release-iphoneos" "Release-fat"
cp -R "Release-iphonesimulator/PortmoneSDKProxy.framework/Modules/PortmoneSDKProxy.swiftmodule/" "Release-fat/PortmoneSDKProxy.framework/Modules/PortmoneSDKProxy.swiftmodule/"
lipo -create -output "Release-fat/PortmoneSDKProxy.framework/PortmoneSDKProxy" "Release-iphoneos/PortmoneSDKProxy.framework/PortmoneSDKProxy" "Release-iphonesimulator/PortmoneSDKProxy.framework/PortmoneSDKProxy"
lipo -info "Release-fat/PortmoneSDKProxy.framework/PortmoneSDKProxy"
cd ..