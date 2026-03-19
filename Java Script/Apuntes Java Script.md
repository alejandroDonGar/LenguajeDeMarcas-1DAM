# 📘 JavaScript - Primer Trimestre (1º DAM)

------------------------------------------------------------------------

## 🧭 1. JavaScript

JavaScript es un lenguaje de programación interpretado que se ejecuta en
el navegador (lado del cliente).\
Los navegadores (Chrome, Safari, etc.) interpretan el código dentro de
la etiqueta:

``` html
<script></script>
```

-   Es sensible a mayúsculas/minúsculas\
-   No necesita especificar tipo en variables\
-   No está orientado a objetos como Java (en este contexto básico)

------------------------------------------------------------------------

## ⚙️ 1.1 Sintaxis básica

``` html
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>

<body>
<script>
</script>
</body>
</html>
```

------------------------------------------------------------------------

## 📦 1.2 Variables

### 🔹 1.2.1 let

Permite declarar variables modificables:

``` js
let a = 7;        // número
let a = "hola";   // string
let a = true;     // booleano
let a;            // undefined
```

------------------------------------------------------------------------

### 🌍 1.2.2 Scope (ámbito)

#### Global Scope

Disponible en todo el código

#### Local Scope

Solo dentro de bloques `{}`

``` js
let a = 7;

{
  let b = "hola";
  console.log(a);
  console.log(b);
}

console.log(a);
console.log(b); // error
```

------------------------------------------------------------------------

### 🔒 1.2.3 const

Variable constante (no modificable)

``` js
const x = 10;
```

------------------------------------------------------------------------

## 📋 1.3 Listas

``` js
let lista = [2, "5", 8, true];
lista[0];
```

------------------------------------------------------------------------

## 🖨️ 1.4 Mostrar resultados

``` js
console.log(variable);
alert(variable);
window.alert(variable);
```

------------------------------------------------------------------------

## ✍️ 1.5 document.write

``` js
document.write("<h1>Texto</h1>");
```

⚠️ Sobrescribe el HTML si se usa después de cargar la página

------------------------------------------------------------------------

## 🎯 1.6 Seleccionar elementos

``` html
<p id="parrafo">Texto</p>

<script>
let elemento = document.getElementById("parrafo");
elemento.innerText = "Nuevo texto";
</script>
```

------------------------------------------------------------------------

## 🔧 1.7 Funciones

``` html
<button onclick="cambiar()">Click</button>

<script>
function cambiar() {
  let elemento = document.getElementById("parrafo");
  elemento.innerText = "Nuevo texto";
}
</script>
```

------------------------------------------------------------------------

## ➕ 1.8 Sumas

``` js
function suma(a, b) {
  alert(a + b);
}

let primero = 7;

suma(++primero, 3);
suma(primero++, 3);

alert(primero);
```

------------------------------------------------------------------------

## 🔀 1.9 If

``` js
let a = 7;
a = a + 7;

if (a > 10) {
  a = "hola";
}

console.log(a);
```

------------------------------------------------------------------------

## 🔁 1.10 For

``` js
let cadena = "hola";

for (let i = 0; i < cadena.length; i++) {
  console.log(cadena[i] + " cuando i=" + i);
}
```

------------------------------------------------------------------------

## 🔄 1.11 Switch

``` js
switch(valor) {
  case 1:
    break;
  case 2:
    break;
}
```

------------------------------------------------------------------------

## 🔤 1.12 Cadenas

``` js
let cadena = "holaaaa";
cadena.length;
```

-   `.length` → propiedad\
-   Métodos → llevan `()`

------------------------------------------------------------------------

### 🧱 1.12.1 Clases

``` js
let fecha = new Date();
```

------------------------------------------------------------------------

## 👨‍💻 Autor

Alejandro Donate García\
1º DAM
