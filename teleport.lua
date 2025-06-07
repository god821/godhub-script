TeleportTab:CreateButton({
   Name = "Ir para Cidade 1",
   Callback = function()
      local char = game.Players.LocalPlayer.Character
      if char and char:FindFirstChild("HumanoidRootPart") then
         char:PivotTo(CFrame.new(100, 30, 500))
      end
   end,
})