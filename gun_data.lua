local gun_data = {
   remote = {
       names = {
           "MainEvent",
           "Bullets", 
           ".gg/untitledhood",
           "Remote",
           "MAINEVENT",
           ".gg/flamehood"
       }
   },
   argument = {
       default = "UpdateMousePos",
       ["2788229376"] = "UpdateMousePosI", 
       ["4106313503"] = "UpdateMousePosI",
       ["11143225577"] = "UpdateMousePosI",
       ["17319408836"] = "UpdateMousePosI",
       ["18110728826"] = "UpdateMousePosI",
       ["5602055394"] = "MousePos",
       ["7951883376"] = "MousePos",
       ["10100958808"] = "MOUSE",
       ["12645617354"] = "MOUSE",
       ["14171242539"] = "MOUSE",
       ["14412436145"] = "MOUSE", 
       ["14412355918"] = "MOUSE",
       ["14413720089"] = "MOUSE",
       ["17403265390"] = "MOUSE",
       ["17403166075"] = "MOUSE",
       ["17403262882"] = "MOUSE",
       ["15186202290"] = "MOUSE",
       ["15763494605"] = "MOUSE",
       ["9825515356"] = "MousePosUpdate",
       ["15166543806"] = "MoonUpdateMousePos",
       ["16033173781"] = "UpdateMousePosI",
       ["7213786345"] = "UpdateMousePosI"
   }
}


gun_data.get_event = function()
   for _, name in pairs(gun_data.remote.names) do
       local remote = game.ReplicatedStorage:FindFirstChild(name)
       if remote then return remote end
   end
end

gun_data.get_args = function()
   return gun_data.argument[tostring(game.PlaceId)] or gun_data.argument.default
end

return gun_data
