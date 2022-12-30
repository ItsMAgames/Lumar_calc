--SCRIPTS REQUERIDOS
require "timer"
require "conversiones"

--FUNCION ENGLOBADORA
function AvanGlobal()
	--FUNCION PARA CREAR UN TEXTO DE INICO EN LAS AVANZADAS
	local function AvanzadasInicio()
    	--VARIABLES ESPECIALES
    	local br = "\n"
    	Op = {
			"Seno",
        	"Coseno",
        	"Tangente"
    	}

    	print("A continuacion seleccione la operacion cientifica que desea realizar", br)

    	io.write(Op[1], br)
    	io.write(Op[2], br)
    	io.write(Op[3], br, br)

		--SLEEP ANTES DE QUE ACABE LA FUNCION
		Sleep(5)

	end

	AvanzadasInicio()
	--MenuTipos()

	--CAMBIAR DE GRADOS A RADIANES
	local function degToRad()
	
		n = io.read("n")
		local constante <const> = 180

		local calc1 = math.pi * n
		Radianes = calc1 / constante

		return n, Radianes

	end

	function coseno()
		-- CREAR UN TEXTO DE INICO
		print("Inserte el coseno que desea calcular")
		-- TRANSFORMARDE RADIANES A GRADOS
		degToRad()
	
		--Coseno
		print("El coseno de " .. n  .. " Es igual a:")

		if n == 90 then
			print(0)
			os.exit()
		end

		local cos = math.cos(Radianes)

		return print(cos)
	end

	function tangente()
		-- TEXTO DE INICIO DE LA FUNCION
		print("Inserte la tangente que desea calcular")

		degToRad()

		--LA TANGENTE
		print("La tangente de " .. n .. " Es igual a:")

		--CORRECCIONDE BUG
		if n == 90 then
			print("No calculable")
			os.exit()
		end

		local tan = math.tan(Radianes)

		return print(tan)

	end

	function seno()
		-- TEXTO DE INICO DE LA FUNCION 
		print("Inserte el seno que desea calcular")

		degToRad()

		--SENO
		print("El seno de " .. n .. " Es igual a:")

		local sen = math.sin(Radianes)

		return print(sen)
	end

	-- INICIALIZAR LAS FUNCIONES TRIGONOMETRICAS
	local input = io.read("*l")

	if input == Op[1] then
		seno()
	elseif input == Op[2] then
		coseno()
	elseif input == Op[3] then
		tangente()
	end

end



--DEBUGGEAR LAFUNCION
--coseno()
--tangente()
--seno()
--AvanGlobal.coseno(60)