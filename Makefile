carthage_bootstrap:
	(cd Vendor && carthage bootstrap --platform ios --cache-builds)
	rm -Rf Vendor/Carthage/Checkouts

carthage_update:
	(cd Vendor && carthage update --platform ios --cache-builds)
	rm -Rf Vendor/Carthage/Checkouts