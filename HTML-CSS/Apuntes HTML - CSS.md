# HTML y CSS — 1er Trimestre

> Apuntes pasados a Markdown, ordenados y con los ejemplos de código corregidos para que no den errores de sintaxis al mostrarse en GitHub.

---

## 1. Código básico inicial

### 1.1. Iniciar servidor

En terminal:

```bash
python3 -m http.server 8000
```

También se puede usar otro puerto, como `80`, `8001`, etc.

### 1.2. Buscar el localhost

En el navegador:

```text
http://localhost:8000
```

---

## 2. Etiquetas y atributos HTML

### 2.1. Forma del código

```html
<html>
  <head>
    <meta charset="utf-8">
    <title>Título</title>
  </head>
  <body>
  </body>
</html>
```

### 2.1.1. Cabeceras

```html
<h1></h1>
<h2></h2>
<h3></h3>
<h4></h4>
<h5></h5>
<h6></h6>
```

`<h1>` es el encabezado más grande y `<h6>` el más pequeño.

### 2.1.2. Negrita

```html
<b></b>
```

### 2.1.3. Párrafos y líneas de texto

```html
<a></a>
<p></p>
```

- `<a></a>`: línea de texto, sin separar tanto del resto del contenido.
- `<p></p>`: crea un párrafo y lo separa del resto del contenido.

### 2.1.4. Atributo `style`

El atributo `style` va dentro de una etiqueta para cambiar sus estilos.

```html
style="parámetro: valor; parámetro: valor;"
```

#### 2.1.4.1. Parámetros y valores de `style`

```html
<p style="color: red;"></p>
<p style="background-color: yellow;"></p>
<p style="width: 50%;"></p>
<p style="height: 60%;"></p>
<p style="padding: 10px;"></p>
<p style="margin: 10px;"></p>
```

- `color`: cambia el color del texto.
- `background-color`: cambia el color del fondo.
- `width`: cambia la anchura.
- `height`: cambia la altura.
- `padding`: separación entre el texto y el borde del contenedor.
- `margin`: separación entre el contenedor y los elementos externos.

### 2.1.5. Imágenes

```html
<img src="url-de-la-imagen" alt="Descripción de la imagen">
```

### 2.1.6. Contenedores

```html
<div></div>
```

Esta etiqueta va dentro de `<body></body>`.

Podemos usar el atributo `style` para cambiar las características del contenedor.

### 2.1.7. Listas

#### 2.1.7.1. Listas desordenadas

```html
<ul>
  <li>Elemento</li>
</ul>
```

- `<ul>` crea una lista desordenada.
- `<li>` crea cada elemento de la lista.

#### 2.1.7.2. Listas ordenadas

```html
<ol>
  <li>Elemento</li>
</ol>
```

- `<ol>` crea una lista ordenada.
- `<li>` crea cada elemento de la lista.

#### 2.1.7.3. Listas descriptivas

```html
<dl>
  <dt>Título</dt>
  <dd>Descripción</dd>
</dl>
```

- `<dl>` crea una lista descriptiva.
- `<dt>` crea el título de la lista.
- `<dd>` crea la descripción del título anterior.

### 2.1.8. Notas

```html
<details>
  <summary>Título de la nota</summary>
  <p>Descripción de la nota</p>
</details>
```

- `<details>` crea una nota desplegable.
- `<summary>` añade el nombre de la nota.

### 2.1.9. Tablas

```html
<table>
  <tr>
    <th>Cabecera</th>
    <th>Cabecera</th>
  </tr>
  <tr>
    <td>Dato</td>
    <td>Dato</td>
  </tr>
</table>
```

- `<table>` crea una tabla.
- `<tr>` crea una fila.
- `<td>` crea una celda normal.
- `<th>` crea una celda de cabecera en negrita.

#### 2.1.9.1. Atributos dentro de las tablas

```html
<table cellpadding="5" cellspacing="2">
  <tr>
    <td colspan="2">Celda combinada</td>
  </tr>
</table>
```

- `cellpadding="5"`: separación interior de las celdas.
- `cellspacing="2"`: separación entre celdas.
- `colspan="2"`: une la celda actual con la siguiente.

### 2.1.10. Vídeo interactivo

```html
<iframe src="url-del-video" width="560" height="315"></iframe>
```

Crea un marco donde podremos ver e interactuar con un vídeo usando el enlace dado.

### 2.1.11. Formularios

```html
<form></form>
```

Crea la base de un formulario.

#### 2.1.11.1. Atributos de `<form></form>`

```html
<form action="url-donde-se-enviaran-los-datos" method="POST" enctype="multipart/form-data">
</form>
```

#### 2.1.11.2. Atributos de `<label></label>`

```html
<label for="nombre">Nombre</label>
```

#### 2.1.11.3. Atributos de `<input>`

```html
<input type="text" id="nombre" name="varN">
<input type="password" id="clave" name="varClave">
<input type="email" id="correo" name="varCorreo">
<input type="date" id="fecha" name="varFecha">
<input type="color" id="color" name="varColor">
<input type="submit" value="Enviar">
<input type="file" id="archivo" name="varArchivo">
```

- `type="text"`: texto.
- `type="password"`: contraseña.
- `type="email"`: correo electrónico.
- `type="date"`: fecha.
- `type="color"`: selector de color.
- `type="submit"`: botón de envío.
- `type="file"`: subir un archivo.

También se puede usar `select` para elegir entre varias opciones:

```html
<select name="varN">
  <option value="opcion1">Opción 1</option>
  <option value="opcion2">Opción 2</option>
</select>
```

---

## 2.2. Hojas de estilo en cascada (CSS)

```html
<style></style>
```

A diferencia del atributo `style=""`, esto actúa como etiqueta y normalmente va dentro de `<head></head>`.

### 2.2.1. Tipos de CSS

#### 2.2.1.1. CSS Inline

Es el atributo `style=""`, ya que va dentro de la línea que queremos modificar.

#### 2.2.1.2. CSS Internal

Es la etiqueta `<style></style>` dentro de `<head></head>`.

#### 2.2.1.3. CSS External

Se escribe en un archivo separado, normalmente con extensión `.css`.

### 2.2.2. Formato de CSS Internal

```html
<head>
  <style>
    etiqueta, .clase, #id {
      parametro: valor;
    }

    etiqueta, .clase, #id {
      parametro: valor;
    }
  </style>
</head>
```

### 2.2.3. Formato de CSS External

Archivo `styles.css`:

```css
etiqueta, .clase, #id {
  parametro: valor;
}

etiqueta, .clase, #id {
  parametro: valor;
}
```

Y en el HTML original:

```html
<link rel="stylesheet" type="text/css" href="styles.css">
```

Esto traerá los cambios del archivo CSS al HTML.

Los atributos usados en CSS serán los mismos que los de `style=""`.

---

## 2.3. Modelo de cajas

### 2.3.1. Dos tipos: block e inline

#### 2.3.1.1. Block

Empieza en una línea nueva y ocupa el `100%` de su contenedor.

Ejemplos:

```html
<div></div>
<body></body>
<p></p>
```

> En los apuntes originales aparece también `<span>` como block, pero en HTML normalmente `<span>` es inline.

Si usamos:

```html
style="display: inline;"
```

cambiamos una caja de block a inline.

#### 2.3.1.2. Inline

No empieza en línea nueva y solo ocupa lo que ocupe su contenido.

Si queremos salto de línea, añadimos:

```html
<br>
```

Ejemplos habituales de elementos inline:

```html
<label></label>
<input>
<span></span>
```

Si usamos:

```html
style="display: block;"
```

cambiamos una caja de inline a block.

También existe:

```html
style="display: inline-block;"
```

Esto hace que el elemento se comporte como inline, pero conserve algunas propiedades de block, como `margin` o `width`.

### 2.3.2. Contenedor Inline

```html
<span></span>
```

Funciona de forma parecida a `<div></div>`, pero:

- `<div>` es block.
- `<span>` es inline.

### 2.3.3. Comentarios en HTML y CSS

Comentario en CSS:

```css
/* Comentario */
```

Comentario en HTML:

```html
<!-- Comentario -->
```

### 2.3.4. Flex

Ejemplo:

```html
<head>
  <style>
    #xid {
      display: flex;
    }
  </style>
</head>

<body>
  <div id="xid">
    <p>Párrafo</p>
    <a href="#">Elemento A</a>
  </div>
</body>
```

```css
display: flex;
```

Hace que los elementos se coloquen juntos en un mismo eje.

Los elementos afectados por `display: flex;` se llaman **items**.

#### Propiedades habituales de Flex

```css
gap: 10px;
justify-content: center;
align-items: center;
```

- `gap`: separación entre los elementos del contenedor.
- `justify-content`: distribuye los items en el eje principal.
- `align-items`: distribuye los items en el eje secundario.

También se puede usar:

```css
:nth-of-type(n)
```

Selecciona un elemento según su posición.

#### 2.3.4.1. En caso de modelo horizontal

- Eje horizontal = principal = `justify-content`
- Eje vertical = secundario = `align-items`

#### 2.3.4.2. En caso de modelo vertical

- Eje vertical = principal = `justify-content`
- Eje horizontal = secundario = `align-items`

##### 2.3.4.2.1. Tipos de `justify-content`

```css
justify-content: start;
justify-content: center;
justify-content: end;
justify-content: space-between;
justify-content: space-around;
justify-content: space-evenly;
```

- `start`: al principio.
- `center`: al centro.
- `end`: al final.
- `space-between`: reparte el espacio entre elementos.
- `space-around`: añade espacio antes y después de cada elemento; los extremos tienen la mitad.
- `space-evenly`: reparte el mismo espacio en todos los lados.

##### 2.3.4.2.2. Tipos de `align-items`

Son equivalentes a los de `justify-content`, pero aplicados al eje secundario.

#### Cambiar el eje del contenedor

```css
flex-direction: row;
flex-direction: column;
```

- `row`: eje horizontal.
- `column`: eje vertical.

#### Medidas relativas a la ventana

```css
height: 50vh;
width: 50vw;
```

- `vh`: altura relativa al tamaño de la ventana.
- `vw`: anchura relativa al tamaño de la ventana.

### 2.3.5. Grid

```css
display: grid;
```

Este tipo de contenedor dispone los elementos en filas y columnas.

También se puede usar:

```css
justify-items: center;
grid-template-columns: 1fr 1fr;
```

- `justify-items`: parecido a `justify-content`, pero para grid.
- `grid-template-columns`: define las columnas.
- `1fr 1fr`: divide el espacio en dos fracciones iguales.

#### 2.3.5.1. Tipos de `grid-template-columns`

```css
grid-template-columns: auto;
grid-template-columns: auto auto;
grid-template-columns: auto auto auto;
```

- `auto`: una columna.
- `auto auto`: dos columnas.
- `auto auto auto`: tres columnas.

Si hubiera más items que columnas, el navegador pondrá los elementos sobrantes en una nueva fila.

#### Posicionar elementos en grid

```css
grid-column-start: 2;
grid-column-end: 4;
grid-row-start: 1;
```

- `grid-column-start`: columna donde empieza el elemento.
- `grid-column-end`: columna donde termina el elemento.
- `grid-row-start`: fila donde empieza el elemento.

Si queremos unir columnas, el final debe marcar el inicio de la siguiente columna no incluida.

Ejemplo: si queremos ocupar las columnas `2` y `3`:

```css
grid-column-start: 2;
grid-column-end: 4;
```

---

## 2.4. `@media`

Permite modificar los estilos para adaptarlos a distintos tamaños de pantalla.

```html
<style>
  p {
  }

  @media (max-width: 800px) and (min-width: 400px) {
    div {
    }
  }
</style>
```

Se usa para diseño responsive.

---

## Fin de los apuntes

**Temas de HTML, CSS y modelo de cajas terminados.**

**Primer Trimestre — Alejandro Donate García (1º DAM)**
