function coseno(var)
	-- TRANSFORMARDE RADIANES A GRADOS

	local constante = 180
		
	local calc1 = math.pi * var
	local rad = calc1 / constante

	--variables-

	--Coseno
	print("El coseno de " .. var .. " Es igual a:")

	local cos = math.cos(rad)

	return print(cos)
end

--DEBUGGEAR LAFUNCION
coseno(35)