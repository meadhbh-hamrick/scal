# Makefile

info:
	@echo ""
	@echo "  Targets include:"
	@echo ""
	@echo "    build - builds a native executable"
	@echo ""
	@echo "    clean - deletes the build directory (for the"
	@echo "            native executable)"
	@echo ""

build: build/scal

build/scal : scal
	jpm build

clean:
	$(RM) -r build
