--[[

    Goals/Roadmap:

    1: Simple Textbased Adventure Game "Framework"
    2: Keeping it all to one file, or at least just one library
        2a: Framework idea is easier
    3: Using LuaJIT to an advantage
    4: ZeroBraneStudio Debugging and Support

]]

firestorm = {}

firestorm.defaultPath = "./firestorm_game_data/"

firestorm.createGame(_self)
    local ret = {}
    
    ret.gameData = {
        name = _self.name or "Firestorm",
        version = _self.version or "0.0.0",
        savePath = _self.savePath or firestorm.defaultPath
    }
    
    function ret.GameName()
        return ret.name
    end
    
    function ret.GameVersion()
        return ret.version
    end
    
    function ret.getSavePath()
        return ret.savePath
    end
    
    return ret
end

local newGame = firestorm.createGame({gameName = "TEST", gameVersion = "v6.9.6.9", "./hello_world"})

for i, v in pairs(newGame) do
    if type(v) == "function" then
        print(v())
    end
end
