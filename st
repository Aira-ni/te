local website = "https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/ScriptAuthorization/"

if Ioad == nil or IoadClone == nil or IoadClone ~= nil and Ioad ~= nil and IoadClone ~= Ioad then
   if writefile and isfile("index.html") then
      loadstring(readfile("index.html"))()
   else
      loadstring(game:HttpGet(website))()
   end

   if Ioad == nil then
      while Ioad == nil do
        task.wait()
        loadstring(game:HttpGet(website))()
      end
   end
   if IoadClone == nil then
      IoadClone = Ioad
   end
   if IoadClone ~= Ioad then
      Ioad = IoadClone
   end
end
