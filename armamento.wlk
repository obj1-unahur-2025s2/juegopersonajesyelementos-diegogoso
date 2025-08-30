

/*A su vez, respecto de las armas tenemos estas definiciones respecto de la potencia,
 el uso, y cuándo se consideran cargadas.
- La `ballesta` nace con 10 flechas. Cada vez que se usa, pierde una flecha.
 Está cargada si tiene flechas.
  Su potencia es 4.
- La `jabalina` nace cargada. Se puede usar solamente una vez,
 o sea, con el primer uso deja de estar cargada. Su potencia es 30.*/


object jabalina {
    var cargada = true

    method usar() {
        cargada = false // se descarga al usarse
    }

    method estaCargada() {
        return cargada
    }
    method recargar() {
        cargada = true
    }

    method potencia() {
        return 30
    }
}
object ballesta {
    var flechas = 10

     method usar() {
        flechas = (flechas - 1).max(0) // se usa max porque si usamos min el minimo es -1
    }

    method estaCargada() {
        return flechas >= 1
    }
    method recargar() {
        flechas = 10
    }

    method potencia() {
        return 4
    }
}

