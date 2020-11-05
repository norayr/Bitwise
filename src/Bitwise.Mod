MODULE Bitwise;

(*  https://people.inf.ethz.ch/wirth/Oberon/SETs.pdf
    https://titanwolf.org/Network/Articles/Article?AID=147979d2-82e4-4469-be81-f16c997572a2#gsc.tab=0 *)

IMPORT
  SYSTEM,
  Out;

PROCEDURE And*(a, b: LONGINT): LONGINT;
VAR
  x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET,a); y := SYSTEM.VAL(SET,b);
  RETURN SYSTEM.VAL(LONGINT,x * y)
END And;

PROCEDURE Or*(a, b: LONGINT): LONGINT;
VAR
  x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET,a); y := SYSTEM.VAL(SET,b);
  RETURN SYSTEM.VAL(LONGINT,x + y)
END Or;

PROCEDURE Xor*(a, b: LONGINT): LONGINT;
VAR
  x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET,a); y := SYSTEM.VAL(SET,b);
  RETURN SYSTEM.VAL(LONGINT,x / y);
END Xor;

PROCEDURE AndNot*(a, b: LONGINT): LONGINT;
VAR
  x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET, a); y := SYSTEM.VAL(SET, b);
  RETURN SYSTEM.VAL(LONGINT,x - y)
END AndNot;

PROCEDURE Not*(a: LONGINT): LONGINT;
VAR
  x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET, a);
  RETURN SYSTEM.VAL(LONGINT, -x)
END Not;

PROCEDURE LeftShift*(a, b: LONGINT): LONGINT;
  VAR x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET,a); y := SYSTEM.VAL(SET,b);
  RETURN SYSTEM.VAL(LONGINT,SYSTEM.LSH(x,b))
END LeftShift;

PROCEDURE RightShift*(a, b: LONGINT): LONGINT;
  VAR x, y: SET;
BEGIN
  x := SYSTEM.VAL(SET,a); y := SYSTEM.VAL(SET,b);
  RETURN SYSTEM.VAL(LONGINT,SYSTEM.LSH(x,-b))
END RightShift;

PROCEDURE Do(a,b: LONGINT);
VAR
  x,y: SET;
BEGIN
  x := SYSTEM.VAL(SET,a);y := SYSTEM.VAL(SET,b);
  Out.String("a and b :> ");Out.Int(SYSTEM.VAL(LONGINT,x * y),0);Out.Ln;
  Out.String("a or b  :> ");Out.Int(SYSTEM.VAL(LONGINT,x + y),0);Out.Ln;
  Out.String("a xor b :> ");Out.Int(SYSTEM.VAL(LONGINT,x / y),0);Out.Ln;
  Out.String("a and ~b:> ");Out.Int(SYSTEM.VAL(LONGINT,x - y),0);Out.Ln;
  Out.String("~a      :> ");Out.Int(SYSTEM.VAL(LONGINT,-x),0);Out.Ln;
  Out.String("a left shift b :> ");Out.Int(SYSTEM.VAL(LONGINT,SYSTEM.LSH(x,b)),0);Out.Ln;
  Out.String("a right shift b :> ");Out.Int(SYSTEM.VAL(LONGINT,SYSTEM.LSH(x,-b)),0);Out.Ln;
  Out.String("a left rotate b :> ");Out.Int(SYSTEM.VAL(LONGINT,SYSTEM.ROT(x,b)),0);Out.Ln;
  Out.String("a right rotate b :> ");Out.Int(SYSTEM.VAL(LONGINT,SYSTEM.ROT(x,-b)),0);Out.Ln;
  Out.String("a arithmetic left shift b :> ");Out.Int(SYSTEM.VAL(LONGINT,ASH(a,b)),0);Out.Ln;
  Out.String("a arithmetic right shift b :> ");Out.Int(SYSTEM.VAL(LONGINT,ASH(a,-b)),0);Out.Ln
END Do;
 
BEGIN
  Do(10,2);
END Bitwise.
