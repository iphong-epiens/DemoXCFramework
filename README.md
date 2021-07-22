# DemoXCFramework

## 1. iOS Framework로 아카이브 -> Build 디렉토리에 xcarchive 생성됨
xcodebuild archive -scheme demoframework -configuration Release -destination 'generic/platform=iOS' -archivePath './build/demoframework.framework-iphoneos.xcarchive' SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

## 2. Binary Framework 컴파일 -> Build 디렉토리에 xcframework 생성됨
xcodebuild -create-xcframework -framework './build/demoframework.framework-iphoneos.xcarchive/Products/Library/Frameworks/demoframework.framework' -output './build/demoframework.xcframework'

## 3. xcframework 파일을 Swift Package Manager에 포함시켜 배포한다.

## 4.참조

### 1) https://www.raywenderlich.com/17753301-creating-a-framework-for-ios
### 2) https://learn-hyeoni.tistory.com/55
