
object feroz {
	var pesoLobo= 10
	method estaSaludable(){
		return pesoLobo.between(20,150)
	}
	method aumentarPeso(peso){
		pesoLobo=pesoLobo+peso
	}
	method disminuirPeso(peso){
		pesoLobo=pesoLobo-peso
	}
	method sufrirCrisis(){
		pesoLobo=10
	}
	method comer(alimento){
		pesoLobo= pesoLobo+ (alimento.obtenerPeso() * 0.10)
	}
	method correr(){
		pesoLobo=pesoLobo-1
	}
	method soplar(casa){
		/**pierde tanto peso como la resistencia de la casa más el peso de los ocupantes.*/
		pesoLobo= pesoLobo-casa.obtenerResistenciaDeCasa()
		/**chanchito.huir(casa,casaDeMadera,1)*/
	}
}

object caperucita{
	const pesoCaperucita= 60
	method obtenerPeso(){
		return pesoCaperucita+ canasta.obtenerPeso()
	}
}

object canasta{
	var cantidadTotalDeManzanas= 6
	const pesoManzana= 0.2
	method darCantidadDeManzanas(numeroDeManzanas){
		cantidadTotalDeManzanas=numeroDeManzanas
	}
	method caerManzana(){
		cantidadTotalDeManzanas= 0.max(cantidadTotalDeManzanas-1)
	}
	method obtenerPeso()= cantidadTotalDeManzanas * pesoManzana
}

object abuelita{
	const pesoAbuelita= 50
	method obtenerPeso(){
		return pesoAbuelita
	}
}

object cazador{
	const pesoCazador= 75
	method obtenerPeso(){
		return pesoCazador
	}
	method disparar(){
		feroz.sufrirCrisis()
	}
}
/**muchas dudas a partir de aca */
object chanchito{
	const pesoChanchito= 10
	method obtenerPeso(){
		return pesoChanchito
	}
	method huir(casaDeLaQueHuyen,casaNueva,cantidadDeChanchitos){
		casaDeLaQueHuyen.vaciarCasa()
		casaNueva.sumarOcupantes(cantidadDeChanchitos)
	}
}

object casaDePaja{
	var cantidadDeOcupantes= 1
	const resistenciaDeLaCasa= chanchito.obtenerPeso()*self.totalDeOcupantes()
	method obtenerResistenciaDeCasa(){
		return resistenciaDeLaCasa
	}
	method sumarOcupantes(numeroDeOcupantes){
		cantidadDeOcupantes= cantidadDeOcupantes + numeroDeOcupantes
	}
	method totalDeOcupantes(){
		return cantidadDeOcupantes
	}
}

object casaDeMadera{
	var cantidadDeOcupantes= 1
	const resistenciaDeLaCasa= 5 + (chanchito.obtenerPeso()*self.totalDeOcupantes())
	method obtenerResistenciaDeCasa(){
		return resistenciaDeLaCasa
	}
	method sumarOcupantes(numeroDeOcupantes){
		cantidadDeOcupantes= cantidadDeOcupantes + numeroDeOcupantes
	}
	method totalDeOcupantes(){
		return cantidadDeOcupantes
	}
	method vaciarCasa(){
		cantidadDeOcupantes=0
	}
}

object casaDeLadrillo{
	var cantidadDeOcupantes= 1
	const resistenciaDeLaCasa= (2*self.totalDeLadrillos())+ (chanchito.obtenerPeso()*cantidadDeOcupantes)
	var cantidadDeLadrillos
	method establecerCantidadDeLadrillos(numeroLadrillos){
		cantidadDeLadrillos= numeroLadrillos
	}
	method totalDeLadrillos(){
		return cantidadDeLadrillos
	}
	method obtenerResistenciaDeCasa(){
		return resistenciaDeLaCasa
	}
	method sumarOcupantes(numeroDeOcupantes){
		cantidadDeOcupantes= cantidadDeOcupantes + numeroDeOcupantes
	}
	method totalDeOcupantes(){
		return cantidadDeOcupantes
	}
}