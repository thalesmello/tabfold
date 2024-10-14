# Tabfold

## Motivation

Plugin that enables fold toggle using the `<Tab>` key.

In the terminal, there is no distinction between the `<Tab>` the the `<C-I>` keys.

It's desireable to use the `<Tab>` key to apply folding, but it's also derieable to keep on
using `<C-I>` to move forward after moving backward.

So, to distinguishes between these two use cases, when `<Tab>` is pressed:

1. Tries to navigate forward and;
2. Toggles folding if it's still in the same location (i.e. did not move).

In most situations, you want to move forward right after you moved backward with `<C-O>`. In these
use cases, this key is supposed to work as intended.

In most other situtations, you are editing code and at the top of your jump list. It means that, if you
press the `<Tab>` key, you aren't going to jump anywhere. In those situations, it's possible to remap it
to be used to toggle folding.

## When there is conflict

In the rare situations you want to toggle folding, but you just jumped back from a location, you can use the
`<S-Tab>` key combination to toggle folding.

## Configuration

By default, if the vim instance `has('gui_running')` it will only assign the toggle behavior to the `<Tab>` key, as some GUI clients are able to differenciate between `<C-I>` and `<Tab>`. In case your client doesn't properly differeciate between the two keys, you can enforce the toggle and fold `<Tab>` behavior with:

```
let g:tabfold_enforce_forward_or_toggle_fold = 1
```

## Inspiration

This plugin was inspired by [a Karabiner video by wincent](https://www.youtube.com/watch?v=YnLL9kUrWk0), in which he solves this same problem with Karabiner.
I wanted to achieve a similar result using just Vimscript, so I came up with this plugin.
