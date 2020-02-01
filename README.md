# PlugClacks

> "You know they'll never really die while the Trunk is alive[...]
> It lives while the code is shifted, and they live with it, always Going Home."
> -- Moist von Lipwig, Going Postal, Chapter 13

In Terry Pratchett's Discworld series, the clacks are a series of semaphore
towers loosely based on the concept of the telegraph. Invented by an artificer
named Robert Dearheart, the towers could send messages "at the speed of light"
using standardized codes. Three of these codes are of particular import:

 - **G**: send the message on
 - **N**: do not log the message
 - **U**: turn the message around at the end of the line and send it back again

When Dearheart's son John died due to an accident while working on a clacks
tower, Dearheart inserted John's name into the overhead of the clacks with a
"GNU"\* in front of it as a way to memorialize his son forever (or for at least as
long as the clacks are standing.)

> "A man is not dead while his name is still spoken."
> -- Going Postal, Chapter 4 prologue

\* It has nothing to do with [GNU Project][gnu]

Keeping the legacy of [Sir Terry Pratchett][terry] alive forever. For as long as his name
is still passed along the Clacks (currently known as internet), Death can't have him.

This library adds [`X-Clacks-Overhead`][clacks] (above text is copied from that
page) HTTP header to all responses sent from your Plug application.

## Installation and usage

The package can be installed by adding `plug_clacks` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:plug_clacks, "~> 0.1.0"}
  ]
end
```

And then adding somewhere in your Plug pipeline:

```elixir
plug PlugClacks
```

If you want to keep memory of another people important for you then you can also
pass them as `:names` option to the plug. Author of this library **highly encourages**
people to add at least name, and use it in form of:

```elixir
plug PlugClacks, name: ["Joe Armstrong"]
```

Sir Terry is always added, no matter what options you will set.

## License

See [LICENSE](LICENSE).

[gnu]: https://gnu.org
[clacks]: http://www.gnuterrypratchett.com
[terry]: http://en.wikipedia.org/wiki/Terry_Pratchett
