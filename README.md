# primer.kak

<img src="swatch.svg">

Color scheme for [Kakoune](https://github.com/mawww/kakoune) based on GitHub's
[Primer design system](https://primer.style/).

## Installation

### Using [plug.kak](https://github.com/robertmeta/plug.kak) (recommended)

With plug.kak installed, add to your `kakrc` file:

```kakoune
plug "evanrelf/primer.kak" theme config %{ colorscheme primer }
```

### Manually

Download color scheme:

```bash
$ mkdir -p ~/.config/kak/colors/
$ curl -L https://raw.githubusercontent.com/evanrelf/primer.kak/master/colors/primer.kak -o ~/.config/kak/colors/primer.kak
```

Add to your `kakrc` file:

```kakoune
colorscheme primer
```
