# Sane jq prelude library
JQ prelude library. It implements only functions for which their buildin alternative behaves badly.

# Usage

Just put `prelude.jq` file in `~/.jq` at your users home (the user which runs `jq`). And in your
`jq` code just include or import the file.

```
import "prelude" as Prelude;

Prelude::lt(7, 10)  # => true
Prelude::gt("7", 7) # => yields error (while standard jq "7" > 7 would return true, sic!)

# or just 

include "prelude";

lt(7, 10)     # => true
gt("a", "b")  # => false
```

# Reason

`jq` is a wonderful tool for JSON manipulation from Shell scripts, but some of standard functions
or operators behave in a little irrational way.

 _to be continued_
