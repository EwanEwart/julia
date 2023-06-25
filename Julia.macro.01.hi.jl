# w/o parameter
macro sayhello()
    return :(println("Introduction Julia macroes."))
end

# @sayhello # (macro with 1 method)


# Macros
#
# Macros provide a mechanism
# to include generated code
# into the final body of a program.
#
# A macro maps a tuple of arguments to a returned expression,
# and the resulting expression is compiled directly
# rather than requiring a runtime eval call.
# Macro arguments may include expressions, literal values, and symbols.

macro sayhello(name)
    return :(println("Hello, ", $name))
end

#
# @sayhello # (macro with 1 method)
