utility.get_gun_argument = function()
   local placeid = game.PlaceId
   if placeid == 2788229376 or placeid == 4106313503 or placeid == 11143225577 or placeid == 17319408836 or placeid == 18110728826 then
       return "UpdateMousePosI"
   elseif placeid == 5602055394 or placeid == 7951883376 then
       return "MousePos" 
   elseif placeid == 10100958808 or placeid == 12645617354 or placeid == 14171242539 or placeid == 14412436145 or placeid == 14412355918 or placeid == 14413720089 or placeid == 17403265390 or placeid == 17403166075 or placeid == 17403262882 or placeid == 15186202290 or placeid == 15763494605 then
       return "MOUSE"
   elseif placeid == 9825515356 then
       return "MousePosUpdate"
   elseif placeid == 15166543806 then
       return "MoonUpdateMousePos"
   elseif placeid == 16033173781 or placeid == 7213786345 then
       return "UpdateMousePosI"
   else
       return "UpdateMousePos"
   end
end

return utility
