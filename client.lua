--TriggerServerEvent('InteractSound_SV:PlayWithinDistance', '25', 'judge', 0.30 )
-- Ez már be van állítva a mappoláshoz! Fontos hogy ez QB szerókra javasolt!

AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        print('Betöltés megkezdése')
    end
end)


Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("judge", vector3(-519.41, -176.1, 38.55), 3.55, 1, {
      name = "judge",
      debugPoly = false,
      heading=210,
      minZ=38.15,
      maxZ=38.65
  }, {
      options = {
          {
            action = function(entity)
                TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'judge', 1.0) --Hang NE NYÚLJ IDE
            end,
              icon = "fas fa-car",
              label = "Kalapács használata"
          },
      },
      job = {"all"},
      distance = 1.5
  })
  end)


