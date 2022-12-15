function destroyItems(parent, exclusions)
	for Index, Object in next, parent:GetChildren()) do
		if not exclusions[Object.Name] then
			Object:Destroy()
		end
	end
end

while task.wait(3000) do
	if not game:GetService("RunService"):IsStudio() then
		destroyItems(workspace.Deployables, {"Coin Generator", "Plant Box"})
		destroyItems(workspace.Drops, {})
	end
end
