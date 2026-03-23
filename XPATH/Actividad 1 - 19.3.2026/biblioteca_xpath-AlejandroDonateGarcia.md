# Ejercicios de XPATH

* Código de ejemplo:

``` 
<biblioteca>
    <libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>
    <libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>
    <libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>
    <revista id="R1">
        <titulo>National Geographic</titulo>
        <mes>Enero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">6</precio>
    </revista>
    <revista id="R2">
        <titulo>Muy Interesante</titulo>
        <mes>Febrero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">5</precio>
    </revista>
</biblioteca>
```

## Actividades

### 1 - Todos los libros

```
//libros
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 2 - Todos los títulos de los libros

```
//libro/titulo/text()
```

* Resultado:

```
Text='El Quijote'
Text='Cien años de soledad'
Text='La sombra del viento'
```

---
---

### 3 - Todos los autores

```
//autor/text()
```

* Resultado:

```
Text='Miguel de Cervantes'
Text='Gabriel García Márquez'
Text='Carlos Ruiz Zafón'
```

---
---

### 4 - Todos los titulos (libros y revistas)

```
//titulo/text()
```

* Resultado:

```
Text='El Quijote'
Text='Cien años de soledad'
Text='La sombra del viento'
Text='National Geographic'
Text='Muy Interesante'
```

---
---

### 5 - El libro cuyo id es L1

```
//libro[@id="L1"]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
```

---
---

### 6 - El título del libro con id L2

```
//libro[@id="L2"]/titulo/text()
```

* Resultado:

```
Text='Cien años de soledad'
```

---
---

### 7 - Los libros publicados después del año 1900

```
//libro[anio>1900]
```

* Resultado:

```
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 8 - Los libros cuyo precio sea mayor que 20

```
//libro[precio>20]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 9 - Los títulos de los libros cuyo precio sea mayor que 20

```
//libro[precio>20]/titulo/text()
```

* Resultado:

```
Text='El Quijote'
Text='La sombra del viento'
```

---
---

### 10 - Todos los elementos que tengan atributo moneda

```
//@moneda/.. 
```
```
//*[@moneda]
```

* Resultado:

```
Element='<precio moneda="EUR">25</precio>'
Element='<precio moneda="EUR">18</precio>'
Element='<precio moneda="EUR">22</precio>'
Element='<precio moneda="EUR">6</precio>'
Element='<precio moneda="EUR">5</precio>'
```

---
---

### 11 - Todos los precios

```
//precio/text()
```

* Resultado 1:

```
Text='25'
Text='18'
Text='22'
Text='6'
Text='5'
```

---
---

### 12 - Todos los precios cuya moneda sea EUR

```
//precio[@moneda="EUR"]/text()
```

* Resultado:

```
Text='25'
Text='18'
Text='22'
Text='6'
Text='5'
```

---
---

### 13 - El primer libro de la biblioteca

```
//libro[1]
```
```
//libro[position()=1]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
```

---
---

### 14 - El último libro de la biblioteca

```
//libro[last()]
```

* Resultado:

```
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 15 - El segundo libro

```
//libro[2]
```
```
//libro[position()=2]
```

* Resultado:

```
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
```

---
---

### 16 - Todos los libros cuya categoría sea Novela

```
//libro[categoria="Novela"]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
```

---
---

### 17 - Los títulos de los libros cuya categoría sea Misterio

```
//libro[categoria="Misterio"]/titulo/text()
```

* Resultado:

```
Text='La sombra del viento'
```

---
---

### 18 - El autor del libro El Quijote

```
//libro[titulo="El Quijote"]/autor/text()
```

* Resultado:

```
Text='Miguel de Cervantes'
```

---
---

### 19 - Los libros publicados antes del año 2000

```
//libro[anio<2000]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
```

---
---

### 20 - Los títulos de las revistas

```
//revista/titulo/text()
```

* Resultado:

```
Text='National Geographic'
Text='Muy Interesante'
```

---
---

### 21 - La revista publicada en el mes Febrero

```
//revista[mes="Febrero"]
```

* Resultado:

```
Element='<revista id="R2">
        <titulo>Muy Interesante</titulo>
        <mes>Febrero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">5</precio>
    </revista>'
```

---
---

### 22 - El precio de la revista Muy Interesante

```
//revista[titulo="Muy Interesante"]/precio/text()
```

* Resultado:

```
Text='5'
```

---
---

### 23 - Todos los elementos titulo que estén dentro de libro

```
//libro/titulo
```

* Resultado:

```
Element='<titulo>El Quijote</titulo>'
Element='<titulo>Cien años de soledad</titulo>'
Element='<titulo>La sombra del viento</titulo>'
```

---
---

### 24 - Todos los nodos hijos de biblioteca

```
/biblioteca/*
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
Element='<revista id="R1">
        <titulo>National Geographic</titulo>
        <mes>Enero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">6</precio>
    </revista>'
Element='<revista id="R2">
        <titulo>Muy Interesante</titulo>
        <mes>Febrero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">5</precio>
    </revista>'
```

---
---

### 25 - Todos los nodos descendientes de biblioteca

```
/biblioteca//*
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<titulo>El Quijote</titulo>'
Element='<autor>Miguel de Cervantes</autor>'
Element='<anio>1605</anio>'
Element='<precio moneda="EUR">25</precio>'
Element='<categoria>Novela</categoria>'
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
Element='<titulo>Cien años de soledad</titulo>'
Element='<autor>Gabriel García Márquez</autor>'
Element='<anio>1967</anio>'
Element='<precio moneda="EUR">18</precio>'
Element='<categoria>Realismo mágico</categoria>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
Element='<titulo>La sombra del viento</titulo>'
Element='<autor>Carlos Ruiz Zafón</autor>'
Element='<anio>2001</anio>'
Element='<precio moneda="EUR">22</precio>'
Element='<categoria>Misterio</categoria>'
Element='<revista id="R1">
        <titulo>National Geographic</titulo>
        <mes>Enero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">6</precio>
    </revista>'
Element='<titulo>National Geographic</titulo>'
Element='<mes>Enero</mes>'
Element='<anio>2024</anio>'
Element='<precio moneda="EUR">6</precio>'
Element='<revista id="R2">
        <titulo>Muy Interesante</titulo>
        <mes>Febrero</mes>
        <anio>2024</anio>
        <precio moneda="EUR">5</precio>
    </revista>'
Element='<titulo>Muy Interesante</titulo>'
Element='<mes>Febrero</mes>'
Element='<anio>2024</anio>'
Element='<precio moneda="EUR">5</precio>'
```

---
---

### 26 - Los libros cuyo precio sea menor que 20

```
//libro[precio>20]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 27 - Los títulos de libros escritos por Carlos Ruiz Zafón

```
//libro[autor="Carlos Ruiz Zafón"]/titulo/text()
```

* Resultado:

```
Text='La sombra del viento'
```

---
---

### 28 - Los elementos que tengan atributo id

```
//libro[@id]
```

* Resultado:

```
Element='<libro id="L1">
        <titulo>El Quijote</titulo>
        <autor>Miguel de Cervantes</autor>
        <anio>1605</anio>
        <precio moneda="EUR">25</precio>
        <categoria>Novela</categoria>
    </libro>'
Element='<libro id="L2">
        <titulo>Cien años de soledad</titulo>
        <autor>Gabriel García Márquez</autor>
        <anio>1967</anio>
        <precio moneda="EUR">18</precio>
        <categoria>Realismo mágico</categoria>
    </libro>'
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 29 - Los libros cuyo título contenga la palabra "sombra"

```
//libro[titulo[contains(text(),'sombra')]]
```

* Resultado:

```
Element='<libro id="L3">
        <titulo>La sombra del viento</titulo>
        <autor>Carlos Ruiz Zafón</autor>
        <anio>2001</anio>
        <precio moneda="EUR">22</precio>
        <categoria>Misterio</categoria>
    </libro>'
```

---
---

### 30 - El año de publicación del último libro

```
//libro[last()]/anio/text()
```

* Resultado:

```
Text='2001'
```