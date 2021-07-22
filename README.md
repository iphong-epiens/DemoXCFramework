# DemoXCFramework

## 1. iOS Framework로 아카이브 -> Build 디렉토리에 xcarchive 생성됨

~~~
xcodebuild archive \
-scheme DemoXCFramework \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/DemoXCFramework.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
~~~

## 2. iOS Simulator Framework로 아카이브 -> Build 디렉토리에 xcarchive 생성됨

~~~
xcodebuild archive \
-scheme DemoXCFramework \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/DemoXCFramework.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
~~~

## 3. Binary Framework 컴파일 -> Build 디렉토리에 xcframework 생성됨

~~~
xcodebuild -create-xcframework \
-framework './build/DemoXCFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/DemoXCFramework.framework' \
-framework './build/DemoXCFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/DemoXCFramework.framework' \
-output './build/DemoXCFramework.xcframework'
~~~


## 4. xcframework 파일을 Swift Package Manager에 포함시켜 배포한다.

## 5. 참조
### https://www.raywenderlich.com/17753301-creating-a-framework-for-ios
### https://learn-hyeoni.tistory.com/55
