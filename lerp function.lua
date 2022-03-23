local function lerpCFrame(part, cframe, duration)
	for i=0, 1, 0.01*duration do
		wait()
		part.CFrame = part.CFrame:Lerp(cframe, i)

	end
end

