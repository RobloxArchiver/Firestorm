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

function firestorm.createGame(_self)
    local self = {}
    
    self.gameData = {
        name = _self.name or "Firestorm",
        version = _self.version or "0.0.0",
        savePath = _self.savePath or firestorm.defaultPath
    }
    
    function self.getName()
        return self.gameData.name
    end
    
    function self.getVersion()
        return self.gameData.version
    end
    
    function self.getSavePath()
        return self.gameData.savePath
    end
    
    return self
end

function firestorm.game(gameData)
	 local self = {}
	 
	 
	 
	 return self
end

local newGame = firestorm.createGame({name = "TEST", version = "v6.9.6.9", savePath = "./hello_world"})
