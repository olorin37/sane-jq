# Sane jq prelude library
JQ standard library with more sane behaviour.

# Usage

Just put `prelude.jq` file in `~/.jq` at your users home (the user which runs `jq`). And in your `jq` code just include or import the file.

```
import "prelude" as Prelude;

Prelude::lt(7, 10)  # => ture
Prelude::gt("7", 7) # => yields error (while standard jq "7" > 7 would return true, sic!)

# or just 

include "prelude";

lt(7, 10)     # => true
gt("a", "b")  # => false
```

# Reason

Jq is wanderfull tool for JSON manipulation for Shell scripts. But some standard functions/operators behaves a little irrational.

 _to be continued_
