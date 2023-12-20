Citizen.CreateThread(function()
    while true do
        local time = os.date('%X')
        Citizen.Wait(500)
        for k,v in pairs(ardaxyz.List) do
        if time == v.time then
            if v.action == "stop" then
    StopResource(v.script)
            elseif v.action == "restart" then
                StopResource(v.script)
                Citizen.Wait(100)
                StartResource(v.script)   
            elseif v.action == "start" then
                StartResource(v.script)
            end
        end
    end
    end
end)
