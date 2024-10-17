function _init()
    _pipboy_boot()
end

function _update()
    if btn(0) then
        print("left")
    end
    if btn(1) then
        print("right")
    end
    if btn(2) then
        print("up")
    end
    if btn(3) then
        print("down")
    end
    if btn(4) then
        print("a")
    end
    if btn(5) then
        print("b")
    end
    if btn(6) then
        print("x")
    end
    if btn(7) then
        print("y")
    end
    if btn(8) then
        print("l")
    end
    if btn(9) then
        print("r")
    end
    if btn(10) then
        print("select")
    end
    if btn(11) then
        print("start")
    end
end

function _draw()

end

function _slowType(text, x, y, colour)
    for i = 1, #text do
        cursor(x, y, colour)
        print(sub(text, 1, i))
        flip()
    end
end

function _delayms(delay)
    local frames = flr(delay * (3/100))
    for i = 1, frames do
        flip()
    end
end

function _pipboy_boot()
    cls()
    print("pip-boy", 0, 0, 11)
    cls()
    
    _slowType("pip\nboy", 0, 0, 11)
    _delayms(2000)
    // cpuo launch efi0
    // cpuo starting efi0
    // start memmory discovery
    // cpuo starting cell relocation


    // cursor character ▮

    cls()
    _slowType("****** pip-os(r) v7.1.0.8 ******", 0, 0, 11)
    _delayms(1000)
    _slowType("copyright 2075 robco(r)", 0, 30, 11)
    _slowType("loader v1.1", 0, 38, 11)
    _slowType("exec version 41.10", 0, 46, 11)
    _slowType("64k ram system", 0, 54, 11)
    _slowType("38911 bytes free", 0, 62, 11)
    _slowType("no holotape found", 0, 70, 11)
    _slowType("load rom(1): deitrix 303", 0, 78, 11)
end