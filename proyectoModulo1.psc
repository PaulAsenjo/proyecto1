Proceso CalculoTotalAPagar
	
	Definir nombreProducto Como Caracter;
	definir precioUnitario Como Real;
	definir cantidad Como Real;
	Definir costo_envio Como Real;
	
	
	
	precioUnitario <- 100;
	kilos <- 3;
	valor_kilo <- 20;
	
	//esto es una prueba
	Escribir "Ingresa el nombre del producto";
	leer nombreProducto;
	Escribir "Ingresa el precio unitario:";
	leer precioUnitario;
	Escribir "Ingresa la cantidad a comprar:";
	leer cantidad;
	
	definir subTotal Como Real;
	
	subTotal <- precioUnitario * cantidad;
	
	Escribir "El subtotal es ", subTotal;
	
	
	//Descuento 10% 
	Definir DESCUENTO_10 Como Real;
	DESCUENTO_10 <- 0.1;
	
	DESCUENTO_10 <- subTotal * DESCUENTO_10;
	Escribir "Tienes un descuento de ", DESCUENTO_10;
	
	total <- subTotal - DESCUENTO_10;
	Escribir "El subtotal es ", total;
	
	
	
	//IVA
	valor_iva <- 1.12;
	total <- total * valor_iva;
	Escribir "El subtotal a pagar con el IVA es ", total;
	
	
	//Descuento por cantidad
	
	descuento_cantidad <- 0.05;
	
	
	si (cantidad = 2 ) Entonces
		total <- total - (total * 0.05);
		Escribir "Tienes 5% de descuento por llevar 2 unidades";
		Escribir "El subtotal a pagar es ", total;
	SiNo
		Escribir "Llevas más de 2 pares, no tienes 5% de descuento, el subtotal a pagar es ", total;
	FinSi
	
	
	Escribir "__________________________________________________";
	
	
	//Costo de envio 
	
	Definir arreglo Como Caracter;
	Definir opcion Como Entero;
	
	filas <- 3;
	costo_envio <- 10;
	envio_internacional <- 40;
	
	Dimension arreglo[filas];
	
	//Arreglo
	
	arreglo[0] <- "Envío Santiago";
	arreglo[1] <- "Envío Regiones";
	arreglo[2] <- "Envío internacional";
	
	
	Escribir "Seleccione una opción de envío:";
	Para i Desde 0 Hasta 2 Hacer
		Escribir i + 1, ". ", arreglo[i]; 
	Fin Para
	
	
	Escribir "Ingrese el número de la opción deseada: ";
	Leer opcion;
	
	
	Si opcion >= 1 Y opcion <= 2 Entonces
		Escribir "Ha seleccionado: ", arreglo[opcion - 1]; 
		total <- (total + costo_envio);
		Escribir "El total a pagar con el costo de envio + el peso es ", total;
	Sino
		Escribir "El envío internacional tiene un costo de 40";
		total <- (total + envio_internacional);
	Fin Si
	
	
	
	// Valor peso
	si opcion >= 1 Y opcion <= 2 Entonces
		total <- total + (kilos * valor_kilo);
		Escribir "El Costo total a pagar es ", total; 
	FinSi
	
	
FinProceso