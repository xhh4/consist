local gun_data = {
   groups = {
       [32948907] = {
           args = {
               [1] = "UpdateMousePos",
               [2] = {
                   [1] = position,
                   [2] = position
               }
           }
       },
       [35112943] = {
           args = {
               [1] = "MOUSE", 
               [2] = {
                   [1] = position
               }
           }
       }
   },
   
   games = {
       [2788229376] = {args = "UpdateMousePosI"},
       [9825515356] = {args = "MousePosUpdate"},
       [5602055394] = {args = "MousePos"},
       [15186202290] = {args = "MOUSE"},
       [15166543806] = {args = "MoonUpdateMousePos"},
       [16033173781] = {args = "UpdateMousePosI"},
       [7213786345] = {args = "UpdateMousePosI"}
   },

   remotes = {
       "MainEvent",
       "Bullets", 
       ".gg/untitledhood",
       "Remote",
       "MAINEVENT",
       ".gg/flamehood",
       game:GetService("ReplicatedStorage").assets.dh.MainEvent
   }
}

return {
   get_remote = function()
       local group_id = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId
       
       for _, remote in pairs(gun_data.remotes) do
           if typeof(remote) == "Instance" then
               return remote
           elseif game:GetService("ReplicatedStorage"):FindFirstChild(remote) then
               return game:GetService("ReplicatedStorage")[remote]
           end
       end
   end,

   get_args = function(position)
       local group_id = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId
       
       if gun_data.groups[group_id] then
           local args = gun_data.groups[group_id].args
           if args[2][2] then
               args[2][1] = position
               args[2][2] = position
           else
               args[2][1] = position
           end
           return args
       end
       
       if gun_data.games[game.PlaceId] then
           return gun_data.games[game.PlaceId].args 
       end
       
       return "UpdateMousePos"
   end
}
