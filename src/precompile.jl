function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(OhMyREPL.Passes.SyntaxHighlighter.SyntaxHighlighterSettings, (OhMyREPL.Passes.SyntaxHighlighter.SyntaxHighlighterSettings, Array{OhMyREPL.ANSICodes.ANSIToken, 1}, Array{Tokenize.Tokens.Token, 1}, Int64,))
    precompile(OhMyREPL.ANSICodes.maybe_print, (Base.AbstractIOBuffer{Array{UInt8, 1}}, Bool, OhMyREPL.ANSICodes.ANSIValue, Bool, Bool,))
    precompile(OhMyREPL.test_passes, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.PassHandler, String, Int64, Bool,))
    precompile(OhMyREPL.add_pass!, (OhMyREPL.PassHandler, String, OhMyREPL.Passes.SyntaxHighlighter.SyntaxHighlighterSettings, Bool,))
    precompile(OhMyREPL._find_pass, (OhMyREPL.PassHandler, String,))
    precompile(OhMyREPL.add_pass!, (OhMyREPL.PassHandler, String, OhMyREPL.Passes.BracketHighlighter.BracketHighlighterSettings, Bool,))
    precompile(OhMyREPL.Passes.BracketHighlighter.bracket_match, (Array{Tokenize.Tokens.Token, 1}, Int64,))
    precompile(OhMyREPL.ANSICodes.update!, (OhMyREPL.ANSICodes.ANSIToken, OhMyREPL.ANSICodes.ANSIToken,))
    precompile(OhMyREPL.ANSICodes.Type, (Type{OhMyREPL.ANSICodes.ANSIValue}, Int64,))
    precompile(OhMyREPL.untokenize_with_ANSI, (Base.AbstractIOBuffer{Array{UInt8, 1}}, Array{OhMyREPL.ANSICodes.ANSIToken, 1}, Array{Tokenize.Tokens.Token, 1},))
    precompile(OhMyREPL.ANSICodes.Type, (Type{OhMyREPL.ANSICodes.ANSIValue}, Symbol, Symbol,))
    precompile(OhMyREPL.test_pass, (Base.AbstractIOBuffer{Array{UInt8, 1}}, Function, String,))
    precompile(OhMyREPL.ANSICodes.Type, (Type{OhMyREPL.ANSICodes.ANSIValue}, Int64,))
    precompile(OhMyREPL.apply_passes!, (OhMyREPL.PassHandler, Array{Tokenize.Tokens.Token, 1}, Int64, Bool,))
    precompile(OhMyREPL.add_pass!, (OhMyREPL.PassHandler, String, Function, Bool,))
    precompile(OhMyREPL.test_pass, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.Passes.BracketHighlighter.BracketHighlighterSettings, String, Int64, Bool,))
    precompile(OhMyREPL.test_pass, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.Passes.SyntaxHighlighter.SyntaxHighlighterSettings, String, Int64, Bool,))
    precompile(OhMyREPL.ANSICodes._print, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.ANSICodes.ANSIToken, Bool,))
    precompile(OhMyREPL._check_pass_name, (OhMyREPL.PassHandler, String, Bool,))
    precompile(OhMyREPL.Passes.BracketHighlighter.BracketHighlighterSettings, (OhMyREPL.Passes.BracketHighlighter.BracketHighlighterSettings, Array{OhMyREPL.ANSICodes.ANSIToken, 1}, Array{Tokenize.Tokens.Token, 1}, Int64,))
    precompile(OhMyREPL.test_pass, (Base.AbstractIOBuffer{Array{UInt8, 1}}, Function, String, Int64, Bool,))
    precompile(OhMyREPL.test_passes, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.PassHandler, String, Int64,))
    precompile(OhMyREPL.test_pass, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.Passes.SyntaxHighlighter.SyntaxHighlighterSettings, String,))
    precompile(OhMyREPL.test_pass, (Base.AbstractIOBuffer{Array{UInt8, 1}}, OhMyREPL.Passes.BracketHighlighter.BracketHighlighterSettings, String, Int64,))
    precompile(OhMyREPL.Prompt.rewrite_with_ANSI, (Base.LineEdit.PrefixSearchState, Bool))
    precompile(OhMyREPL.Prompt.rewrite_with_ANSI, (Base.LineEdit.MIState, Bool))
    precompile(OhMyREPL.Prompt.rewrite_with_ANSI, (Base.LineEdit.PromptState, Bool))
    end
