//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  method sueldo() = sueldo
  method sueldo(nuevo) { sueldo = nuevo }
  method recibirPago(monto) {}
}

object baigorria {
  var empanadasVendidas = 0
  var totalCobrado = 0
  method vender(cantidad) { empanadasVendidas += cantidad }
  method sueldo() = empanadasVendidas * 15
  method totalCobrado() = totalCobrado
  method recibirPago(monto) { 
    totalCobrado += monto
    empanadasVendidas = 0
  }
}

object gimenez {
  var fondo = 300000
  method fondo() = fondo
  method pagarSueldo(empleado) { 
    const monto = empleado.sueldo()
    fondo -= monto
    empleado.recibirPago(monto)
  }
}





