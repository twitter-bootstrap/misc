
build: components misc.css
	@component build --dev

components: component.json
	@component install --dev

misc.css: misc.less variables.less mixins.less close.less
	@lessc misc.less >misc.css

clean:
	rm -fr build components template.js

.PHONY: clean
