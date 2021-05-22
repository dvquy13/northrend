.PHONY: build publish


build:
	python -m build

publish:
ifeq ($(VERSION),)
		@echo Missing param VERSION!!!
		@exit 1
endif
	python -m twine upload dist/northrend-$(VERSION)*
