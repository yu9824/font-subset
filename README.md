# font-subset

## Environment

You can build the environment with docker.

### build

```bash
sh docker/build.sh
```

### run

```bash
sh docker/run.sh
```

## How to use

```bash
sh compress.sh XXX.ttf
```

You give `XXX.ttf`, subset it with the letters included in `char.txt` without losing kerning information, and then get a compressed `XXX.min.woff2` .
