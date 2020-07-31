# APP demo de autenticacion con google

Esa App es un demo de autenticación con google.

### Desarrollo

También tiene una autenticación con devise, de tal manera que el usuario al momento de autenticarse con google la app le crea un usuario que puede usar para entrar sin necesidad de autenticarse con google(dos métodos de entrada en paralelo), este usuario se ve en la barra de navegaron y usualmente es la letra u seguido de 6 numeros aleatorios, la clave o password es la letra p seguido de los mismos 6 números, ejemplo, la relación de usuario/password es: u321456/p321456.

# Características

  - Autenticación con google 

También puede:
  - Autenticar/crear/entrar con el método de la gema devise
  - Crear/ver/guardar/imprimir documentos en PDF

### Instalación

```sh
$ bundle install
$ rails db:migrate
```

### Versiones de Ruby y Rails

```sh
$ ruby -v
```
ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]
```sh
$ rails -v
```
Rails 5.0.7.2

### Gemas destacadas

Gemas para convertir documentos html en pdf (wicked_pdf, wkhtmltopdf-binary), esto es especialmente útil para mandar documentos a los usuarios como informes/facturas/información en general y con los estilos que el portal quiere, este documento se puede ver/imprimir/descargar.

Esta gema recomienda (no es mandatorio) instalar un software para confirmar que se pueden generar los documentos pdf.

El enlace de la gema wkhtmltopdf-binary):
[https://github.com/zakird/wkhtmltopdf_binary_gem](https://github.com/zakird/wkhtmltopdf_binary_gem)

El enlace de los creadores de la gema en donde se encuentra el binario que recomiendan:
[https://wkhtmltopdf.org/downloads.html](https://wkhtmltopdf.org/downloads.html)


### Gemas con mención especial

| Gema | Característica |
| ------ | ------ |
| devise | Gestión de usuarios localmente |
| byebug | Depurador de Ruby por excelencia |
| pry-rails | Permite usar pry como consola |
| letter_opener | Para recibir correos localmente en desarrollo |
| omniauth-google-oauth2 | Autenticación con google |
| gem carrierwave | Sube archivos a una app de Ruby |
| gem mini_magick | Manipula imagenes con uso minimo de memoria |


**E N J O Y**