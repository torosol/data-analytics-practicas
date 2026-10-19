-- ============================================================================
-- Curso: Analista de Datos - Coderhouse
-- Módulo 3 - Unidad 1: Diseño e Implementación de Estructuras (CREATE TABLE)
-- Archivo: modulo3_unidad1_diseno.sql
-- Descripción: Creación de tablas base 'clientes' y 'productos' para el sistema
--              de gestión de ventas.
-- Motor compatible: SQL Server (SSMS)
-- ============================================================================

-- ----------------------------------------------------------------------------
-- 1. CREACIÓN DE LA TABLA 'clientes'
-- ----------------------------------------------------------------------------
-- Justificación de tipos de datos elegidos:
-- - id_cliente: INT. Tipo numérico entero ideal para la clave primaria que 
--   identifica de forma unívoca y rápida a cada cliente.
-- - nombre: VARCHAR(100). Cadena de texto de longitud variable hasta 100 caracteres.
--   Suficiente para almacenar nombres y apellidos completos sin desperdiciar espacio.
-- - perfil_bio: VARCHAR(MAX) / TEXT. Campo de texto largo para almacenar notas, 
--   antecedentes o biografías del cliente sin restricciones estrictas de longitud.
-- - fecha_registro: DATE. Tipo de dato temporal nativo para almacenar únicamente 
--   la fecha (año-mes-día) sin hora, optimizando la claridad del registro.
-- ----------------------------------------------------------------------------

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    perfil_bio VARCHAR(MAX),
    fecha_registro DATE NOT NULL
);

-- ----------------------------------------------------------------------------
-- 2. CREACIÓN DE LA TABLA 'productos'
-- ----------------------------------------------------------------------------
-- Justificación de tipos de datos elegidos:
-- - id_producto: INT. Clave primaria entera para identificar cada artículo o SKU.
-- - descripcion: VARCHAR(255). Texto variable de hasta 255 caracteres para detallar
--   el nombre comercial y características principales del producto.
-- - precio: DECIMAL(10,2). Estándar obligatorio para datos monetarios en bases de datos.
--   Evita los errores de redondeo propios de los tipos de punto flotante (FLOAT/REAL). 
--   Soporta hasta 8 dígitos enteros y 2 decimales (ej. 99,999,999.99).
-- - esta_activo: SMALLINT. Se utiliza un número entero pequeño (por ejemplo, 1 para 
--   indicar activo y 0 para inactivo) para representar el estado de disponibilidad 
--   de forma eficiente y optimizada.
-- ----------------------------------------------------------------------------

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    esta_activo SMALLINT NOT NULL DEFAULT 1
);