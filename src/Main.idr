%foreign "browser:lambda: x => console.log(x)"
prim__consoleLog : String -> PrimIO ()

consoleLog : HasIO io => String -> io ()
consoleLog x = primIO $ prim__consoleLog x

data DomNode = MkNode AnyPtr

%foreign "browser:lambda: () => document.body"
prim__body : () -> PrimIO AnyPtr

main : HasIO io => io DomNode
main = map MkNode $ primIO $ prim__body ()
