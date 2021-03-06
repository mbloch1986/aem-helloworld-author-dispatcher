version ?= 0.9.1

package:
	rm -rf stage
	mkdir -p stage
	zip -r \
	    -x "*.DS_Store" \
	    -x "*stage*" \
	    -x "*.idea*" \
	    -x "*.git*" \
	    -X "stage/aem-helloworld-author-dispatcher-$(version).zip" *

.PHONY: package
