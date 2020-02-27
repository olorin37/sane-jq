# Sane JQ Prelude library

def version:
  [0,1,0]
  ;
def version_string:
  "v\(version[0]).\(version[1]).\(version[2])"
  ;


## Alternative for alternative operator
def Or(default):
  if . == null then
    default
  else
    .
  end
  ;
def Or(value; default):
  value | Or(default)
  ;

## Helper for checking type ==
def is_same_type(lhs; rhs):
  (lhs|type) == (rhs|type)
  ;

## Ordering check
def lt(lhs; rhs):
  if is_same_type(lhs; rhs) then
    lhs < rhs
  else
    error("Comparing vaules of two different types: left hand side "+
          "(\(lhs|@json)) is \(lhs|type) while right hand side (\(rhs|@json)) "+
          "is \(rhs|type)")
  end
  ;
def lt(rhs):
  lt(.; rhs)
  ;

def le(lhs; rhs):
  if is_same_type(lhs; rhs) then
    lhs <= rhs
  else
    error("Comparing vaules of two different types: left hand side "+
          "(\(lhs|@json)) is \(lhs|type) while right hand side (\(rhs|@json)) "+
          "is \(rhs|type)")
  end
  ;
def le(rhs):
  le(.; rhs)
  ;


def gt(lhs; rhs):
  if is_same_type(lhs; rhs) then
    lhs > rhs
  else
    error("Comparing vaules of two different types: left hand side "+
          "(\(lhs|@json)) is \(lhs|type) while right hand side (\(rhs|@json)) "+
          "is \(rhs|type)")
  end
  ;
def gt(rhs):
  gt(.; rhs)
  ;

def ge(lhs; rhs):
  if is_same_type(lhs; rhs) then
    lhs >= rhs
  else
    error("Comparing vaules of two different types: left hand side "+
          "(\(lhs|@json)) is \(lhs|type) while right hand side (\(rhs|@json)) "+
          "is \(rhs|type)")
  end
  ;
def ge(rhs):
  ge(.; rhs)
  ;
