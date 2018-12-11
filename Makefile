NPM_SCOPE := alexghr
WASM_PACK := wasm-pack
YARN := yarn

.PHONY: build-wasm
build-wasm:
	$(WASM_PACK) build --scope $(NPM_SCOPE) --target browser --out-dir ./pkg/

.PHONY: build-website
build-website:
	$(YARN) workspace @$(NPM_SCOPE)/game-of-life build