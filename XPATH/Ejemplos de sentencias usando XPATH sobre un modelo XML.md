# 📘 Ejemplos de sentencias en XPATH

## 📂 Modelo XML a comprobar con XPATH

```xml
<libros>
   <libro categoria="tecnico">
       <titulo>XML</titulo>
       <precio>40</precio>
       <editorial>
           <nombre>Ra-Ma</nombre>
       </editorial>
   </libro>
   <libro categoria="novela">
       <titulo>XSD</titulo>
       <precio>35</precio>
       <editorial>
           <nombre>Roma</nombre>
       </editorial>
   </libro>
   <libro categoria="tecnico">
       <titulo>XPATH</titulo>
       <precio>30</precio>
       <editorial>
           <nombre>Marcombo</nombre>
       </editorial>
   </libro>
   <libro categoria="tecnico">
       <titulo>XPATH</titulo>
       <precio>30</precio>
       <editorial>
           <nombre>Anaya</nombre>
       </editorial>
   </libro>
</libros>
```

---

## 🔢 Consultas

### `count(/libros/libro)`
Cuenta el número total de elementos `<libro>`.
```text
Int64='4'
```

### `/libros/libro[position()<=2]`
Devuelve los dos primeros libros según su posición.
```xml
<libro categoria="tecnico">...</libro>
<libro categoria="novela">...</libro>
```

### `/libros/libro[last()]`
Obtiene el último libro del listado.
```xml
<libro categoria="tecnico">...</libro>
```

### `/libros/libro/precio`
Selecciona todos los elementos `<precio>`.
```xml
<precio>40</precio>
<precio>35</precio>
<precio>30</precio>
<precio>30</precio>
```

### `/libros/libro[last()]/precio`
Obtiene el precio del último libro.
```xml
<precio>30</precio>
```

### `/libros/libro[last()]/precio/text()`
Devuelve solo el texto del precio del último libro.
```text
Text='30'
```

### `/libros/libro[precio>25]`
Filtra los libros cuyo precio es mayor que 25.
```xml
<libro categoria="tecnico">...</libro>
<libro categoria="novela">...</libro>
<libro categoria="tecnico">...</libro>
<libro categoria="tecnico">...</libro>
```

### `/libros/libro[precio>35]/titulo`
Obtiene el título de libros con precio mayor a 35.
```xml
<titulo>XML</titulo>
```

### `/libros/libro[precio>35]/título/text()`
Devuelve solo el texto del título anterior.
```text
Text='XML'
```

### `count(/libros/libro/título)`
Cuenta cuántos títulos hay.
```text
Int64='4'
```

### `/libros/libro[editorial/nombre='Roma']`
Filtra libros cuya editorial sea "Roma".
```xml
<libro categoria="novela">...</libro>
```

### `/libros/libro/editorial/nombre[text()='Roma']/text()`
Devuelve solo el texto "Roma".
```text
Text='Roma'
```

### `/libros/libro[precio>25]/editorial/nombre[text()='Roma']/../..`
Devuelve el libro completo que cumple ambas condiciones.
```xml
<libro categoria="novela">...</libro>
```

### `/libros/libro[precio/text()>25][editorial/nombre='Roma']`
Versión optimizada del filtro anterior.
```xml
<libro categoria="novela">...</libro>
```

### `/libros/libro[precio>25]/(precio+5)`
Suma 5 al precio de los libros filtrados.
```text
Double='45'
Double='40'
Double='35'
Double='35'
```

### `/libros/libro[precio>25]/(precio*2)`
Multiplica por 2 el precio de los libros filtrados.
```text
Double='80'
Double='70'
Double='60'
Double='60'
```

### `//nombre`
Selecciona todos los elementos `<nombre>` del documento.
```xml
<nombre>Ra-Ma</nombre>
<nombre>Roma</nombre>
<nombre>Marcombo</nombre>
<nombre>Anaya</nombre>
```

### `//editorial/nombre`
Selecciona todos los nombres dentro de editoriales.
```xml
<nombre>Ra-Ma</nombre>
<nombre>Roma</nombre>
<nombre>Marcombo</nombre>
<nombre>Anaya</nombre>
```

### `//@categoria`
Obtiene todos los atributos "categoria".
```text
categoria=tecnico
categoria=novela
categoria=tecnico
categoria=tecnico
```

### `//libro[@categoria='novela']`
Filtra libros de categoría novela.
```xml
<libro categoria="novela">...</libro>
```

### `//libro[@categoria='novela']/precio/text()`
Devuelve el precio de libros de tipo novela.
```text
Text='35'
```

### `//editorial/nombre/upper-case(text())`
Convierte los nombres a mayúsculas.
```text
RA-MA
ROMA
MARCOMBO
ANAYA
```

### `//editorial/nombre/lower-case(text())`
Convierte los nombres a minúsculas.
```text
ra-ma
roma
marcombo
anaya
```

### `//editorial[contains(nombre,'Roma')]/..`
Devuelve el libro cuya editorial contiene "Roma".
```xml
<libro categoria="novela">...</libro>
```

### `avg(//precio)`
Calcula la media de los precios.
```text
Double='33.75'
```

### `//precio | //titulo`
Devuelve todos los precios y títulos.
```xml
<titulo>XML</titulo>
<precio>40</precio>
<titulo>XSD</titulo>
<precio>35</precio>
<titulo>XPATH</titulo>
<precio>30</precio>
<titulo>XPATH</titulo>
<precio>30</precio>
```
