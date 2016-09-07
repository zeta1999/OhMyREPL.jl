module CustomPassTest

using Base.Test

using OhMyREPL
import OhMyREPL.ANSICodes: ANSIToken, ANSIValue

using Tokenize


function foobar_bluify(ansitokens, tokens, ::Int)
    for (ansitok, tok) in zip(ansitokens, tokens)
        println(tok)
        if (Tokenize.Tokens.kind(tok) == Tokenize.Tokens.IDENTIFIER
               && Tokenize.Tokens.untokenize(tok) == "foobar")
            ansitok.foreground = ANSIValue(:foreground, :blue)
        end
    end
end

b = IOBuffer()

str = "function :foobar, foobar # foobar"
OhMyREPL.test_pass(b, foobar_bluify, str)

println("Original string: ", str)
println("Bluified string: ", takebuf_string(b))
println()

end
