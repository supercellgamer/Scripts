repeat
    if workspace:FindFirstChild("TeslaGate") then
workspace:FindFirstChild("TeslaGate"):Destroy()
    end
until not workspace:FindFirstChild("TeslaGate")
repeat
    if workspace:FindFirstChild("XL-TeslaGate") then
workspace:FindFirstChild("XL-TeslaGate"):Destroy()
    end
until not workspace:FindFirstChild("XL-TeslaGate")
print("[Site-76] Deleted All Tesla Gates")
repeat
    if workspace:FindFirstChild("Door") then
workspace:FindFirstChild("Door"):Destroy()
    end
until not workspace:FindFirstChild("Door")
repeat
    if workspace:FindFirstChild("ShelterDoor") then
workspace:FindFirstChild("ShelterDoor"):Destroy()
    end
until not workspace:FindFirstChild("ShelterDoor")
repeat
    if workspace:FindFirstChild("BulkheadDoor") then
workspace:FindFirstChild("BulkheadDoor"):Destroy()
    end
until not workspace:FindFirstChild("BulkheadDoor")
repeat 
    if workspace.Spawns.DSpawns.Cell:FindFirstChild("Door") then
workspace.Spawns.DSpawns.Cell:FindFirstChild("Door"):Destroy()
    end
until not workspace.Spawns.DSpawns.Cell:FindFirstChild("Door")
repeat 
    if workspace.DoorProp:FindFirstChild("SecretDoor") then
workspace.DoorProp:FindFirstChild("SecretDoor"):Destroy()
    end
until not workspace.DoorProp:FindFirstChild("SecretDoor")
repeat 
    if workspace.DoorProp:FindFirstChild("DoorProp") then
workspace.DoorProp:FindFirstChild("DoorProp"):Destroy()
    end
until not workspace.DoorProp:FindFirstChild("DoorProp")
print("[Site-76] Deleted All Doors")
warn("Ignore the rest of the error messages")