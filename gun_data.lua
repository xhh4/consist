local gun_data = {
   groups = {
       [32948907] = {
           remote = game:GetService("ReplicatedStorage").assets.dh.MainEvent,
           args = {
               [1] = "UpdateMousePos",
               [2] = {
                   [1] = position,
                   [2] = position
               }
           }
       },
       [35112943] = {
           remote = game:GetService("ReplicatedStorage").MAINEVENT,
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
       ".gg/flamehood"
   }
}

return {
   get_remote = function()
       local group_id = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId
       if gun_data.groups[group_id] then
           return gun_data.groups[group_id].remote
       end
       
       for _, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
           if table.find(gun_data.remotes, v.Name) then
               return v
           end
       end
   end,

   get_args = function(position)
       local group_id = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId
       
       if gun_data.groups[group_id] then
           local args = gun_data.groups[group_id].args
           if #args[2] == 2 then
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
