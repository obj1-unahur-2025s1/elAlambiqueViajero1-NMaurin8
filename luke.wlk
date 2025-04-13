import lugares.*
import vehiculos.*
object luke{
    var cantidadViajes = 0
    method cantidadViajes() = cantidadViajes
    var ultimoRecuerdo = null
    method ultimoRecuerdo() = ultimoRecuerdo
    
    var vehiculo = alambique
    method cambiarVehiculo(unVehiculo) {
        vehiculo = unVehiculo 
    }

    method viajar(unLugar){
        if (vehiculo.puedeViajar(unLugar)){
            vehiculo.viajar()
            ultimoRecuerdo = unLugar.recuerdo()
            cantidadViajes += 1
        }
    }
}