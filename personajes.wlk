/*En el método `encontrar(elemento)` de `floki` 
vemos que pasan dos cosas: el elemento recibe un ataque con un valor
que es la potencia del arma, y el arma registra que ha sido usada.
 Hay una condición: que el arma esté cargada.*/

/*Se le tiene que poder preguntar a `mario` si _es feliz_ o no. 
`mario` es feliz si: o bien recolectó en total al menos 50 unidades,
 o bien el último elemento con el que se encontró mide al menos 10 metros de alto.
La acción que falta en el método `encontrar(elemento)`
 es necesaria para poder evaluar esta segunda condición.*/
 /*Las dos cosas definidas son: el valor recolectado por `mario`
  aumenta en un valor que depende del elemento, y el elemento recibe el trabajo
  que hace `mario` sobre él.*/


import armamento.*
import elementos_del_Juego.*

object floki {
    
    
    var arma = jabalina
    var ultimoElemento = castillo 

    method encontrar(elemento) {
        ultimoElemento = elemento
    }
    method elegirArma(unaArma) {
        arma = unaArma
    }
    method arma() {
        return arma
    }

   method atacar(objetivo) {
    if (arma.estaCargada()) {
        objetivo.recibirAtaque(arma.potencia())
        arma.usar()
        console.println("Floki atacó con " + arma + " y la descargó.")
    } else {
        console.println("El arma está descargada. Floki la recarga y ataca.")
        arma.recargar()
        objetivo.recibirAtaque(arma.potencia())
        arma.usar()
        console.println("Floki atacó con " + arma + " y la descargó.")
            }
    }
}


object mario {
    var recolectadas = 0
    var ultimoElemento = tipa // inicializo en tipa para que no de error al preguntar altura

    method encontrar(elemento) {
        recolectadas = recolectadas + elemento.valor()
        elemento.recibirTrabajo()
        ultimoElemento = elemento
    }
    
    method esFeliz() {
        return recolectadas >= 50 || ultimoElemento.altura() >= 10
    }
}