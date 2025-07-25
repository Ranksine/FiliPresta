# **Sistema de gestión de prestamos FiliPresta**

Este proyecto gestionará clientes y sus prestamos, contando con inversores en dos distintos esquemas de negocio en donde
se administrará su capital, asi como el cobro a los clientes.

## Sistema de prestamos

Los prestamos se realizarán en dos esquemas: prestamo personal y financiamiento

### Prestamo personal

1. Tazas de interés más elevadas
2. Frecuencia de cobro mayor (SEMANAL)
3. Cantidad máxima de capital estan limitadas
4. Cantidad maxima de creditos a 14 semanas. (+1 extra)

---

### Financiamiento

1. Los periodos de financiamiento son a 6, 12 y 24 meses
2. El periodo máximo de financiamiento es a 24 meses (2 años)
3. Los pagos se calculan de la siguiente manera:
   `(capital/meses_financiados) + (cantidad_prestada)*2.5%`
4. Cuando la cuenta se tiene al corriente, se pueden realizar pagos adelantados
5. Un pago adelantado se calcula de la siguiente manera:
   `capital/meses_financiados`

---

### Lineamientos generales

- Una persona si puede adquirir cualquier tipo de prestamo
- Se realizará un estudio socieconomico antes de otorgar el primer prestamo
  - Salario semanal para prestamo personal
  - Salario mensual para financiamiento
  - Trabajo actual
  - Otros ingresos
- En base a los ingresos totales de la persona se establecera la capacidad de pago
  - Si una persona no cuenta con la capacidad de pago acorde al prestamo solicitado,
    se le negará y no podrá adquirir prestamos superiores a su capacidad. _(Preguntar)_
- Se registrará el motivo del prestamo
- Se registrarán fechas de inicio y de finalización del prestamo
- La calidad/reputación del cliente se manejará como un catálogo
- Se manejará una lista negra que contendrá los siguientes campos:
  - Motivo de ingreso a la lista
  - Fecha de ingreso
  - Fecha de egreso
  - Id de persona
- Cuándo una persona entra en la lista negra, su perfil queda marcado y no puede hacer
  movimentos hasta que se elimine de la lista negra.
- Tanto en el resumen como en el formulario de registro de pagos se mostrara, ademas:
  - Número de pagos realizados del prestamo.
  - Cantidad total pagada.
  - Porcentaje restante con una barra de progreso.
  - Cantidad de pagos faltantes.

---

### Modulos

- Login
- Busqueda de personas (con tabla de personas)
- Perfil de persona
  - Información personal
  - Prestamo activo (con redirección a sus movimientos)
  - Historial de prestamos otorgados
  - Muestra etiquetas asociadas (positivas o negativas (lista negra) )
- Registro de prestamo y registro de pagos de prestamo
- Lista negra
- Cartera de clientes (registro, consulta y modificación)
- Cartera de proveedores (registro, consulta y modificación)

---

## Dudas pendientes

1. ¿Cuánto es lo maximo a prestar en cada prestamo?
2. ¿Cuál es el periodo máximo disponible para prestamos personales?
3. ¿Cuál es sería la formula en para la capacidad de pago que
   determine si una persona puede adquirir una cantidad en prestamo?

## Próximos pasos

- Migrar la aplicación a la nube en un webhost
- Implementar vista movil
- Realizar reportes estaticos y dinamicos

### By: _Ranksine_
