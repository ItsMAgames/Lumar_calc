--CALCULADORA LUMAR

--PONER TEXTO
function texto()
	-- body
	print("Inserte un numero y presiene enter, despues inserte otro numero")

	return
end

function texto_de_potencia()
	-- body
	print("Inserte el numero que decea potenciar", "\n")
	print("Despues inserte la potencia a la que se elevara", "\n")
end

function texto_de_raiz()
	-- body
	print("Inserte el numero del cual quiere obtener su raiz")
end

function texto_de_pi()
	-- body
	print("El valor de PI es:")
end

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

--FUNCION PRINCIPAL
function main()
	-- body

	--variables
	local keyWord1 = "Suma"
	local keyWord2 = "Resta"
	local keyWord3 = "Multiplicacion"
	local keyWord4 = "Division"
	local keyWord5 = "Potencia"
	local keyWord6 = "Raiz"
	local keyWord7 = "Pi"
	local operaciones = {"Suma", "Resta", "Multiplicacion", "Division", "Potencia", "Raiz", "Pi"}

	print("Bienvenido a la calculadora 'LUMAR'", "\n")
	io.read("*l")

	print("Como primer paso tienes que seleccionar que operacion realizaras", "\n")
	io.read("*l")

	print("Acontinuacion apareceran las operaciones selecciona la tuya", "\n")
	io.read("*l")

	io.write(operaciones[1], "\n")
	io.write(operaciones[2], "\n")
	io.write(operaciones[3], "\n")
	io.write(operaciones[4], "\n")
	io.write(operaciones[5], "\n")
	io.write(operaciones[6], "\n")
	io.write(operaciones[7], "\n")

	print("Escibe tu operacion a realizar", "\n")
	--Variable especial
	local input = io.read("*l")

	if input == keyWord1 then
		io.write(texto())
		io.write(sum(io.read("*n"), io.read("*n")))
	end

	if input == keyWord2 then
		io.write(texto())
		io.write(less(io.read("*n"), io.read("*n")))
	end

	if input == keyWord3 then
		io.write(texto())
		io.write(per(io.read("*n"), io.read("*n")))
	end

	if input == keyWord4 then
		io.write(texto())
		io.write(between(io.read("*n"), io.read("*n")))
	end

	if input == keyWord5 then
		io.write(texto_de_potencia())
		print(power(io.read("*n"), io.read("*n")))
	end

	if input == keyWord6 then
		io.write(texto_de_raiz())
		print(squere(io.read("*n")))
	end

	if input == keyWord7 then
		print(texto_de_pi())
		print(pi_val())
	end

	print("\n")

	return
end

--GENERAR TODO
print(main())

print("Muchas gracias por usar 'LUMAR'")

os.exit()