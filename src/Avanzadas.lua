--SCRIPTS REQUERIDOS
require "timer"
-- require "conversiones"

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
		--Sleep(5)

	end

	MenuTipos()
	AvanzadasInicio()

	--CAMBIAR DE GRADOS A RADIANES
	local function degToRad()
	
		n = io.read("n")
		local constante <const> = 180

		local calc1 = math.pi * n
		Radianes = calc1 / constante

		return n, Radianes

	end

	-- PASAR DE RADIANES A GRADOS
function RadToDeg(n)  
    n = n or io.read("n")

    local num <const> = 180

    --CONVERTIR
    local calc1 = n * num
    Grados = calc1 / math.pi

    return n, Grados
end

-- GRADOS A GRADIANES
function DegToGra(n)
    n = n or io.read("n")

    local const1 <const> = 200
    local const2 <const> = 180
    
    local calc1 = n * const1
    Gradianes = calc1 / const2

    return n, Gradianes
end

--GRADIANES A GRADOS
function GraToDeg(n)
    n = n or io.read("n")

    local const1 <const> = 200
    local const2 <const> = 180

    local calc1 = n * const2
    Degrees = calc1 / const1

    return n, Degrees 
end

--GRADIANES A RADIANES
function GraToRad()
    n = io.read("n")

    local const <const> = 200

    local calc1 = n * math.pi
    Radi = calc1 / const

    return n, Radi
end

--RADIANES A GRADIANES
function RadToGrad()
    n = io.read("n")

    local const <const> = 200

    local calc = n * const
    Grads = calc / math.pi

    return n, Grads
end

function Rads(n)
	n = n or io.read("n")

	return n
end

	function coseno()
		-- CREAR UN TEXTO DE INICO
		print("Inserte el coseno que desea calcular")
		-- METODO DE CONVERSION
		if Tipo.value == 1 then
			degToRad()
			print("El coseno de " .. n  .. " Es igual a:")

			if n == 90 then
				print(0)
				os.exit()
			end
			local cos = math.cos(Radianes)

			return print(cos)

		elseif Tipo.value == 2 then
			Rads()

			print("El coseno de " .. n  .. " Es igual a:")
	
			local cos = math.cos(n)
	
			return print(cos)

		elseif Tipo.value == 3 then
			GraToRad()

			print("El coseno de " .. n .. " Es igual a:")
	
			local cos = math.cos(Radi)
	
			return print(cos)
		end

	end

	function tangente()
		-- TEXTO DE INICIO DE LA FUNCION
		print("Inserte la tangente que desea calcular")

		if Tipo.value == 1 then
			degToRad()
			print("La tangente de " .. n  .. " Es igual a:")

			--CORRECCIONDE BUG
			if n == 90 then
				print("No calculable")
				os.exit()
			end

			local tan = math.cos(Radianes)

			return print(tan)

		elseif Tipo.value == 2 then
			Rads()

			print("La tangente de " .. n  .. " Es igual a:")
	
			local tan = math.cos(n)
	
			return print(tan)

		elseif Tipo.value == 3 then
			GraToRad()

			print("La tangente de " .. n .. " Es igual a:")
	
			local tan = math.cos(Radi)
	
			return print(tan)
		end

	end

	function seno()
		-- TEXTO DE INICO DE LA FUNCION 
		print("Inserte el seno que desea calcular")

		if Tipo.value == 1 then
			degToRad()
			print("El seno de " .. n  .. " Es igual a:")

			local sen = math.cos(Radianes)

			return print(sen)

		elseif Tipo.value == 2 then
			Rads()

			print("El seno de " .. n  .. " Es igual a:")
	
			local sen = math.cos(n)
	
			return print(sen)

		elseif Tipo.value == 3 then
			GraToRad()

			print("El seno de " .. n .. " Es igual a:")
	
			local sen = math.cos(Radi)
	
			return print(sen)
		end

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
