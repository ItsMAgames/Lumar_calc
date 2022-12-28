--CALCULADORA LUMAR

-- TODO: IMPLEMENTAR FUNCIONES TRIGONOMETRICAS CON RADIANES EN "src/Avanzadas" O CREAR NUEVO SCRIPT

--Scrits requeridos
--require "Avanzadas"
require "basicas"
require "menu"
require "Inicio"

--PONER TEXTO
local function texto()
	-- body
	print("Inserte un numero y presiene enter, despues inserte otro numero")

	return
end

local function texto_de_potencia()
	-- body
	print("Inserte el numero que decea potenciar", "\n")
	print("Despues inserte la potencia a la que se elevara", "\n")
end

local function texto_de_raiz()
	-- body
	print("Inserte el numero del cual quiere obtener su raiz")
end

local function texto_de_pi()
	-- body
	print("El valor de PI es:")
end



--FUNCION PRINCIPAL
function Main()
	-- body

	--variables
	local keyWord1 = "Suma"
	local keyWord2 = "Resta"
	local keyWord3 = "Multiplicacion"
	local keyWord4 = "Division"
	local keyWord5 = "Potencia"
	local keyWord6 = "Raiz"
	local keyWord7 = "Pi"
	
	--IMPRIMIR EL MENU
	--menuEspecial()
	--MenuTrabajado()

	Bienvenida()

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
Main()

print("Muchas gracias por usar 'LUMAR'", "\n")
print("¿Desea volver a usarla?", "\n")

local t = {'Si', 'No'}

io.write(t[1], "\n")
io.write(t[2], '\n')

local respuesta = io.read("l")

if respuesta == "Si" then
	Main()
elseif respuesta == "No" then
	os.exit()
end