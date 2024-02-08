local blips = {
     {title="Example 1", colour=5, id=446, x = -347.291, y = -133.370, z = 38.009},
     {title="Example 2", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287}
  }
      
Citizen.CreateThread(function()
    for _, blip in pairs(blips) do
      blip.blip = AddBlipForCoord(blip.x, blip.y, blip.z)
      SetBlipSprite(blip.blip, blip.id)
      SetBlipDisplay(blip.blip, 4)
      SetBlipScale(blip.blip, 1.0)
      SetBlipColour(blip.blip, blip.colour)
      SetBlipAsShortRange(blip.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(blip.title)
      EndTextCommandSetBlipName(blip.blip)
    end
end)