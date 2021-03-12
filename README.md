# Yew Template

Minimal [Yew](https://yew.rs) Template.

Rust entrypoint is at [`src/lib.rs`](./src/lib.rs) and
JavaScript entrypoint is at [`public/index.html`](./public/index.html).

## Requirements

- [`wasm-pack`](https://rustwasm.github.io/docs/wasm-pack)
- [`make`](https://www.gnu.org/software/make) (optional)

## Recursion Limit

The recursion limit should most likely be increased.

It can be done by specifying a value for `recursion_limit` attribute at the
beginning of [`src/lib.rs`](./src/lib.rs).
For example this line sets the recursion limit to 512.

```rust
#![recursion_limit = "512"]
```

See more at [Limits - The Rust Reference](https://doc.rust-lang.org/reference/attributes/limits.html).

## Usage

### Download

With [`git`](https://git-scm.com)

```
git clone https://github.com/rasmusmerzin/yew-template [project_name]
```

With [`degit`](https://www.npmjs.com/package/degit)

```
degit rasmusmerzin/yew-template [project_name]
```

### Makefile

> [`make`](https://www.gnu.org/software/make) required

- `build` (default) - build `src` to `public/build` directory and remove lib
  related files
- `clean` - remove `public/build` directory

### Serve

With [`miniserve`](https://crates.io/crates/miniserve)

```
miniserve public --index index.html
```

and navigate to `localhost:8080`.

With [`serve`](https://www.npmjs.com/package/serve)

```
serve public
```

and navigate to `localhost:5000`.

> `serve public -s` to redirect non-existing routes to `index.html`
