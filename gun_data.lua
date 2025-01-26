return {
    get_event = function()
        for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == "MainEvent" or v.Name == "Bullets" or v.Name == ".gg/untitledhood" or v.Name == "Remote" or v.Name == "MAINEVENT" or v.Name == ".gg/flamehood" then
                return v
            end
        end
    end,

    get_args = function()
        local place_id = game.PlaceId
        if place_id == 2788229376 or place_id == 4106313503 or place_id == 11143225577 or place_id == 17319408836 or place_id == 18110728826 then
            return "UpdateMousePosI"
        elseif place_id == 5602055394 or place_id == 7951883376 then
            return "MousePos"
        elseif place_id == 10100958808 or place_id == 12645617354 or place_id == 14171242539 or place_id == 14412436145 or place_id == 14412355918 or place_id == 14413720089 or place_id == 17403265390 or place_id == 17403166075 or place_id == 17403262882 or place_id == 15186202290 or place_id == 15763494605 then
            return "MOUSE"
        elseif place_id == 9825515356 then
            return "MousePosUpdate"
        elseif place_id == 15166543806 then
            return "MoonUpdateMousePos"
        elseif place_id == 16033173781 or place_id == 7213786345 then
            return "UpdateMousePosI"
        else
            return "UpdateMousePos"
        end
    end
}
