parseCommands("context found it")

on parseCommands(inputValue as text)
    set searchValue to "context"
    set parsedInput to null
    if (inputValue contains searchValue) then
        set x to 1
        set startFound to false
        set endFound to false
        repeat while (startFound is false)
            if word x of inputValue is searchValue
                set parsedInput to word (x+1) of inputValue
                set startFound to true
            end if
            set x to x+1
        end repeat
        set y to x
        repeat while (endFound is false)
            set parsedInput to (parsedInput & " " & (word (y+1) of inputValue))
            if (word (y+1) of inputValue) is (word -1 of inputValue) then
                set endFound to true
                set y to y+1
            end if
        end repeat
    end if
    return parsedInput
end parseCommands