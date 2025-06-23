all:
	xcodegen generate
	xcodebuild -configuration Debug -arch arm64 -alltargets -jobs 2 SYMROOT="$(CURDIR)/build"
clean:
	rm -fr *.xcodeproj
	rm -fr build
