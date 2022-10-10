--FUNCIONES BASICAS DE LA CALCULADORA

--RAIZ CUADRADA DE UN NUMERO
function squere(var)
	-- body
	print("El resultado es:")
	local cuadrado = math.sqrt(var)

	print(cuadrado)

	return
end

--SUMA DE 2 NUMEROS
function sum(var1, var2)
	-- body

	print("El resultado es:")
	local result = var1 + var2

	return print(result)
end

--RESTA DE 2 NUMEROS
function less(var1, var2)
	-- body

	print("El resultado es:")
	local resta = var1 - var2

	return print(resta)
end

--MULTIPLICACION DE 2 NUMEROS
function per(var1, var2)
	-- body

	print("El resultado es:")
	local multi = var1 * var2

	return print(multi)
end

--SEGUNDA POTENCIA DE UN NUMERO
function power(var, var2)
	-- body
	print("El resultado es:")
	local power = var^var2

	if var1 == 0 and var2 == 0 then
		print("Error matematico")
		os.exit()
	end

	return print(power)
end

--DIVISION DE 2 NUMEROS
function between(var1, var2)
	-- body

	print("El resultado es:")
	local divi = var1 / var2

	if var2 == 0 then
		print("Error matematico")
		os.exit()
	end

	return print(divi)
end

--VALOR DE PI
function pi_val()
	-- body
	return print(math.pi)
end