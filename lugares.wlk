import vehiculos.*
object paris{
    method recuerdo() = "Torre Eiffel"

    method puedeViajar(vehiculo) = vehiculo.esRapido() 
}

object buenosAires{
    var presidente = "messi"
    method elegirPresidente(unCandidato){
        presidente = unCandidato
    }
    method recuerdo() = 
    if (presidente == "messi") "Mate con Yerba" else "Mate sin Yerba"    

    method puedeViajar(vehiculo) = vehiculo.tieneCombustible()
}

object bagdad{
    
    method recuerdo() = ["Bidon con petroleo crudo", "Arma de destrucción masiva", "Jardines Colgantes"].anyOne()
    
    method puedeViajar(vehiculo) = true 
}

object lasVegas{
    var homenaje = paris
    method homenajear(unLugar){
        homenaje = unLugar
    }
    method recuerdo() = homenaje.recuerdo()

    method puedeViajar(vehiculo) = homenaje.puedeViajar(vehiculo)
}

object rioDeJaneiro{
    method recuerdo() = "Cristo Redentor"

    method puedeViajar(vehiculo) = vehiculo.tieneCombustible() and vehiculo.esRapido() 
}