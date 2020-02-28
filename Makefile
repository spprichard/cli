repeat:
	swift build -c release
	cp .build/release/rep /usr/local/bin/

roll:
	swift build -c release
	cp .build/release/rol /usr/local/bin/

proj:
	swift package generate-xcodeproj
	open cli.xcodeproj

