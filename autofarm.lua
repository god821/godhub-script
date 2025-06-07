local player = game.Players.LocalPlayer

Rayfield:Notify({
   Title = "Auto Farm",
   Content = "Auto Farm ativado!",
   Duration = 3,
})

FarmTab:CreateToggle({
   Name = "Ativar Auto Farm por Level",
   CurrentValue = false,
   Flag = "AutoFarm",
   Callback = function(Value)
      getgenv().AutoFarm = Value
      while getgenv().AutoFarm do
         task.wait()
         local char = player.Character
         if char and char:FindFirstChild("HumanoidRootPart") then
            char:PivotTo(CFrame.new(1000, 50, 1000))
         end
      end
   end,
})