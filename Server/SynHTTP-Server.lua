local module = {}
local thing = game.ReplicatedStorage:WaitForChild("http_error")
local ver = "v1.0"
function module.Init()
	thing.OnServerInvoke = function(plr, request)
		if request == "getversion" then
			return ver
		else
			return nil
		end
	end
end
function module.Request(dict)
	for _,v in pairs(game.Players:GetPlayers()) do
		local yes = thing:InvokeClient(v, dict)
		if yes then
			return yes
		end
	end
end
return module
