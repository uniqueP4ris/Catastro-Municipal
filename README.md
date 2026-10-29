# Catastro Municipal

Base de datos relacional en MySQL 8 para gestionar el catastro de viviendas de un municipio: zonas urbanas, viviendas, propietarios, habitantes y familias.
Proyecto académico de modelado e implementación de bases de datos. Incluye el modelo entidad-relación, el diccionario de datos, el script SQL con la estructura y los datos de prueba, y 23 vistas para consultar y validar la información.

## Contenido del repositorio

| Archivo | Descripción |
| --- | --- |
| `CatastroMunicipal.sql` | Estructura (7 tablas y 23 vistas) y datos de prueba |
| `docs/DER.png` | Diagrama entidad-relación |
| `docs/diccionario_de_datos.pdf` | Diccionario de datos de cada tabla |

## El problema

El municipio está dividido en zonas urbanas (colonias) donde se han construido viviendas de dos tipos: **casas unifamiliares** y **bloques de pisos**. El sistema debe almacenar:

- las viviendas, su tipo y su ubicación en una zona urbana;
- las personas que las habitan y quién es su propietario;
- las familias, con su cabeza de familia, vivan o no en la misma vivienda.

## Modelo de datos

El modelo tiene 7 tablas. Los tipos de dato, tamaños y restricciones de cada columna están en el [diccionario de datos](docs/diccionario_de_datos.pdf).

| Tabla | Descripción |
| --- | --- |
| `tzonaurbana` | Zonas urbanas (colonias) del municipio |
| `ttipo` | Tipos de vivienda: `1` = Casa unifamiliar, `2` = Bloque de piso |
| `tvivienda` | Viviendas: calle, número, cantidad de pisos (para bloques), zona y tipo |
| `tpersona` | Personas: nombres y apellidos |
| `tfamilia` | Familias |
| `tpersonavivienda` | Relación entre personas y viviendas; el campo `propietario` indica si la persona es propietaria (`1`) o habitante (`0`) |
| `tfamiliapersona` | Relación entre familias y personas; el campo `cabeceraFamilia` marca al cabeza de familia |

**Relaciones**

- Una zona urbana tiene muchas viviendas (`tvivienda.idZonaUrbana`).
- Un tipo de vivienda clasifica muchas viviendas (`tvivienda.idTipo`).
- Personas y viviendas se relacionan mediante `tpersonavivienda`.
- Familias y personas se relacionan mediante `tfamiliapersona`.

Todas las llaves foráneas usan `ON UPDATE CASCADE` y `ON DELETE RESTRICT` (valor por defecto de MySQL).

![Diagrama entidad-relación](docs/DER.png)

## Instalación

Requisitos: MySQL 8.0 o superior. El script se generó con MySQL 8.0.46.

El script no crea la base de datos, por lo que hay que crearla antes de importar:

```bash
mysql -u root -p -e "CREATE DATABASE catastromunicipal CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;"
mysql -u root -p catastromunicipal < CatastroMunicipal.sql
```

También se puede importar desde HeidiSQL, MySQL Workbench u otro cliente: se crea la base `catastromunicipal`, se selecciona y se ejecuta el archivo `CatastroMunicipal.sql`.

> En Linux, MySQL distingue mayúsculas y minúsculas en los nombres de tablas y vistas. Todos los objetos del script están en minúsculas (por ejemplo, `vresumenzona`).

**Datos de prueba incluidos:** 71 personas, 50 viviendas (25 casas y 25 bloques), 50 familias y 50 zonas urbanas. Todos los datos son ficticios.

## Reglas de negocio y cómo se tratan

El enunciado define siete supuestos. Esta tabla indica cómo se aborda cada uno en la base de datos.

| # | Supuesto | Tratamiento |
| --- | --- | --- |
| 1 | Toda persona habita en una sola vivienda | Se detecta con las vistas `vpersonassinvivienda` y `vpersonasmultivivienda` |
| 2 | Cada vivienda tiene un solo propietario | Se detecta con `vviviendassinpropietariooduplicados` |
| 3 | Cada vivienda está en una única zona urbana | Se garantiza con la llave foránea `tvivienda.idZonaUrbana` (obligatoria) |
| 4 | Las zonas urbanas tienen nombres distintos | Se garantiza con la restricción `UNIQUE` sobre `nombreZonaUrbana` |
| 5 | Los nombres de calle son únicos en el municipio | Se simplifica: la calle es un atributo de `tvivienda` |
| 6 | Una familia es un conjunto de personas con relación directa | Tablas `tfamilia` y `tfamiliapersona`; `vfamiliascabecerasinvalidas` detecta familias sin cabeza o con más de uno |
| 7 | Casas unifamiliares y bloques de pisos | Tabla `ttipo` y columna `cantidadPisos` |

## Vistas

El script define 23 vistas, agrupadas por propósito.

**Consulta de información**

| Vista | Qué devuelve |
| --- | --- |
| `vvivienda` | Viviendas con su zona y tipo |
| `vpersonavivienda` | Personas con su vivienda, zona y si son propietarias |
| `vfamiliapersona` | Integrantes de cada familia y quién es cabeza |
| `vdireccionpropietario` | Propietario y dirección completa de cada vivienda |
| `vcabezasfamiliadomicilio` | Cabeza de cada familia con su domicilio |
| `cabecerafamilias` | Cabecera de familia con su familia, vivienda y zona |
| `vhabitantesporvivienda` | Cantidad de habitantes de cada vivienda |
| `vhabitantesnopropietarios` | Habitantes de cada vivienda junto al propietario de esta |
| `vbloquesaltos` | Bloques de 4 o más pisos |
| `vapellidofamilia` | Compara los apellidos de cada persona con el nombre de su familia |
| `vcapacidadvivienda` | Límite, habitantes y lugares libres de cada vivienda |

**Validación de integridad**

| Vista | Qué detecta |
| --- | --- |
| `vpersonassinvivienda` | Personas sin vivienda registrada |
| `vpersonasmultivivienda` | Personas registradas en más de una vivienda |
| `vviviendassinpropietariooduplicados` | Viviendas con cero o más de un propietario |
| `vviviendassinhabitantes` | Viviendas sin habitantes |
| `vviviendasllenas` | Viviendas que alcanzan su límite de personas |
| `vfamiliascabecerasinvalidas` | Familias sin cabeza o con más de uno |
| `vfamiliasmultivivienda` | Familias cuyos integrantes están en más de una vivienda |
| `vpropietarionohabitavivienda` | Propietarios de una vivienda que habitan en otra |

**Resúmenes**

| Vista | Qué devuelve |
| --- | --- |
| `vresumenzona` | Viviendas (casas y bloques) y habitantes por zona |
| `vresumentipovivienda` | Total, promedio de habitantes y promedio de pisos por tipo |
| `vresumenfamilia` | Integrantes y cabeza de cada familia |
| `vtotalviviendapropietario` | Propietarios con dos o más viviendas |

Con los datos de prueba incluidos, algunas vistas de validación devuelven registros, lo que permite comprobar su funcionamiento:

| Vista | Filas |
| --- | --- |
| `vpersonassinvivienda` | 2 |
| `vpersonasmultivivienda` | 3 |
| `vviviendassinpropietariooduplicados` | 3 |
| `vviviendassinhabitantes` | 3 |
| `vviviendasllenas` | 5 |
| `vfamiliascabecerasinvalidas` | 0 |
| `vpropietarionohabitavivienda` | 0 |

## Ejemplos de consultas

Resumen de viviendas y habitantes por zona:

```sql
SELECT * FROM vresumenzona ORDER BY `Total de habitantes` DESC;
```

Viviendas que han alcanzado su capacidad:

```sql
SELECT idVivienda, calle, numVivienda, tipo, limite, habitantes
FROM vviviendasllenas;
```

Viviendas sin propietario o con más de uno:

```sql
SELECT * FROM vviviendassinpropietariooduplicados;
```

Propietario y dirección de cada vivienda:

```sql
SELECT * FROM vdireccionpropietario LIMIT 5;
```

Cantidad de viviendas por zona y tipo, sin usar vistas:

```sql
SELECT z.nombreZonaUrbana AS zona, t.nombreTipo AS tipo, COUNT(*) AS viviendas
FROM tvivienda v
JOIN tzonaurbana z ON z.idZonaUrbana = v.idZonaUrbana
JOIN ttipo t ON t.idTipo = v.idTipo
GROUP BY z.nombreZonaUrbana, t.nombreTipo
ORDER BY viviendas DESC, zona;
```

## Limitaciones y posibles mejoras

- Los supuestos 1, 2 y 8 se **verifican mediante vistas**, pero la base de datos no impide registrar datos que los incumplan.
- Se podrían agregar restricciones `UNIQUE` o `CHECK` y triggers para impedir los datos inválidos en lugar de solo detectarlos.

## Autor
[Mendoza Moreno Luis Diego] — [github.com/uniqueP4ris](https://github.com/uniqueP4ris)
