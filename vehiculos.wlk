import lugares.*
import arsenal.*
object alambique{
    var combustible = 100

    method tieneCombustible() = combustible > 10
    method esRapido() = true 

    method puedeViajar(unLugar) = unLugar.puedeViajar(self)
    method viajar(){
        combustible -= 10
    }
}

object superChatarraEspecial{
    var arsenal = caniones
    method cambiarArsenal(nuevoArsenal){
        arsenal = nuevoArsenal
    }

    method combustible() = arsenal.disparos() 

    method tieneCombustible() = self.combustible() > 10

    method esRapido() = arsenal.disparos() > 10

    method puedeViajar(unLugar) = unLugar.puedeViajar(self)

    method viajar(){
        arsenal.disparar()
    }
}

object antiguallaBlindada{
    var cantidadGansters = 10

    method esPeligroso() = cantidadGansters > 6

    method tieneCombustible() = self.esPeligroso()

    method esRapido() = cantidadGansters < 3

    method puedeViajar(unLugar) = unLugar.puedeViajar(self)

    method viajar(){
        cantidadGansters -= 1
    }
}

object superConvertible{
    var transformacion = alambique
    
    method transformar(unVehiculo){
        transformacion = unVehiculo
    }

    method puedeViajar(unLugar) = unLugar.puedeViajar(self)

    method tieneCombustible() = transformacion.tieneCombustible()
    method esRapido() = transformacion.esRapido()

    method viajar(){
        transformacion.viajar()
    }
}