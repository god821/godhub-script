MiscTab:CreateToggle({
   Name = "Safe Mode (Detectar Players)",
   CurrentValue = false,
   Flag = "SafeMode",
   Callback = function(Value)
      getgenv().SafeMode = Value
      while getgenv().SafeMode do
         task.wait(1)
         for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character then
               Rayfield:Notify({
                  Title = "⚠️ Alerta!",
                  Content = v.Name.." está próximo!",
                  Duration = 4,
               })
            end
         end
      end
   end,
})