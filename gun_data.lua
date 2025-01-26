return {
    get_event = function()
        for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == "MainEvent" or v.Name == "Bullets" or v.Name == ".gg/untitledhood" or v.Name == "Remote" or v.Name == "MAINEVENT" or v.Name == ".gg/flamehood" or game:GetService("ReplicatedStorage"):FindFirstChild("assets") and game:GetService("ReplicatedStorage").assets:FindFirstChild("dh") and v == game:GetService("ReplicatedStorage").assets.dh.MainEvent then
                return v
            end
        end
    end,

    get_args = function(position)
        local place_id = game.PlaceId
        if place_id == 2788229376 then
            return "UpdateMousePosI"
        elseif place_id == 9825515356 then
            return "MousePosUpdate" 
        elseif place_id == 5602055394 then
            return "MousePos"
        elseif place_id == 17403265390 then
            return "MOUSE"
        elseif place_id == 17403166075 then
            return "MOUSE"
        elseif place_id == 17403262882 then
            return "MOUSE"
        elseif place_id == 15186202290 then
            return "MOUSE"
        elseif place_id == 11143225577 then
            return "UpdateMousePos"
        elseif place_id == 15763494605 then
            return "MOUSE"
        elseif place_id == 15166543806 then
            return "MoonUpdateMousePos"
        elseif place_id == 17319408836 then
            return "UpdateMousePos"
        elseif place_id == 16033173781 then
            return "UpdateMousePosI"
        elseif place_id == 7213786345 then
            return "UpdateMousePosI"
        elseif place_id == 18110728826 then
            return "UpdateMousePos"
        elseif place_id == 17897702920 then
            return "UpdateMousePos"
        elseif place_id == 14975320521 then
            return "UpdateMousePos"
        elseif place_id == 17200018150 then
            return "UpdateMousePos"
        elseif place_id == 15644861772 then
            return "UpdateMousePos"
        elseif place_id == 17809101348 then
            return "UpdateMousePos"
        elseif place_id == 17344804827 then
            return "UpdateMousePos"
        elseif place_id == 16435867341 then
            return "UpdateMousePos"
        else
            return "UpdateMousePos"
        end
    end,

    detect = function(event, args, position)
        if not event then return end
        
        if type(args) == "string" then
            event:FireServer(args, position)
        else
            event:FireServer("UpdateMousePos", position)
        end
    end
}
