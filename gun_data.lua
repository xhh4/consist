return {
   get_remote = function()
       local mt = getrawmetatable(game)
       local old_namecall = mt.__namecall
       setreadonly(mt, false)
       
       mt.__namecall = newcclosure(function(self, ...)
           local argument = {...}
           local method = getnamecallmethod()
           
           if not checkcaller() and method == "FireServer" then
               gun_remote = self
               gun_argument = argument
           end
           
           return old_namecall(self, ...)
       end)
       
       setreadonly(mt, true)
   end
}
