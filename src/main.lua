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

function firestorm.data(_self)
    local self = {
        name = _self.name or "Firestorm",
        version = _self.version or "0.0.0",
        savePath = _self.savePath or firestorm.defaultPath
    }
    
    function self:getName()
        return self.name
    end
    
    function self:getVersion()
        return self.version
    end
    
    function self:getSavePath()
        return self.savePath
    end
    
    return self
end

function firestorm.game(gameData)
    local self = {}
 
    function self.createOptions(options)
        local self = {}
        self.options = {}

        for flag, option in pairs(options) do
            self.options[flag] = option
        end

        function self:getOption(flag)
            if self.options[idx] then
                return self.options[flag]
            end
        end

        return self
    end
 
    return self
end

local myData = firestorm.data({name = "TEST", version = "v6.9.6.9", savePath = "./hello_world"})
local gameMain = firestorm.game(myData)

local options = gameMain.createOptions({
	["flag1"] = "Welcome to Firestorm",
	["firestormFramework"] = "Firestorm is BAD!" 
})

print(options:getOption("firestormFramework"))
