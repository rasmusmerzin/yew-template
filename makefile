build:
	wasm-pack build\
		--target web\
		--out-dir public/build\
		--out-name main\
		--release\
		--no-typescript
	rm -rf public/build/{.gitignore,package.json,README.md}

clean:
	rm -rf public/build

.PHONY: build clean
