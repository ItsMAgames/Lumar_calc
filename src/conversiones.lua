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
function GraToRad(n)
    n = n or io.read("n")

    local const <const> = 200

    local calc1 = n * math.pi
    Rads = calc1 / const

    return n, Rads
end

--RADIANES A GRADIANES
function RadToGrad(n)
    n = n or io.read("n")

    local const <const> = 200

    local calc = n * const
    Grads = calc / math.pi

    return n, Grads
end

--DEBUGGEAR LAS FUNCIONES
--print(RadToDeg(0.785398))
--print(DegToGra(45))
--print(GraToDeg(50))
--print(GraToRad(50))
--print(RadToGrad(0.785398))