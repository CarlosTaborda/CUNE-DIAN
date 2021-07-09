# CUNE-DIAN
CUNE-DIAN es una utilidad de consola para generar el **Codigo unico de nómina electrónica** CUNE
del Departamento de Impuestos y Aduanas DIAN de Colombia a partir de los parametros cargados a 
traves de un documento csv. Las columnas del csv deben ir en el siguiente
orden:

| Columna| Descripción |
| ------ | ------ |
| NumNE | Número de Documento Soporte de Pago de Nómina Electrónica. (Prefijo concatenado con el Consecutivo de la nómina) |
| FecNE: | Fecha de Generación del Documento.|
| HorNE:| Hora de Generación del Documento incluyendo GMT. |
| ValDev:| Total Devengos, con punto decimal, con decimales truncados a dos (2) dígitos, sin separadores de miles, ni símbolo pesos. |
| ValDed: | Total Deducciones, con punto decimal, con decimales truncados a dos (2) dígitos, sin separadores de miles, ni símbolo pesos. |
| ValToINE: | Total Pagado (Devengado – Deducciones), con punto decimal, con decimales truncados a dos (2) dígitos, sin separadores de miles, ni símbolo pesos |
| NitNE: | NIT del Emisor del Documento, sin puntos ni guiones, sin dígito de verificación.|
| DocEmp: | Número de Identificación del Empleado, sin puntos ni guiones, sin dígito de verificación. |
| TipoXML: | Tipo de XML utilizado.|
| Software-Pin:| Pin del Software utilizado.|
| TipAmb: | Número de identificación del ambiente utilizado por el contribuyente para emitir la nómina, validar el numeral 5.1.1. |




# Usar el comando
El archivo csv y el ejecutable sh deben estar en el mismo directorio 
```sh
sh crear_cune.sh
```
o sientase libre de modificar el funcionamiento del script a su antojo

![](https://raw.githubusercontent.com/CarlosTaborda/CUNE-DIAN/main/cune-use.png)



# Licencia/License
**MIT**
