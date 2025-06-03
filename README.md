# Sistema de Gestión de Inventario

## Descripción del Proyecto
Este proyecto es una aplicación web diseñada para la gestión de inventario de un negocio, desarrollada con PHP como lenguaje principal del lado del servidor, junto con HTML, CSS y JavaScript para el frontend. La aplicación permite administrar productos, categorías, proveedores, clientes, compras, ventas y accesos de usuarios, con funcionalidades como generación de reportes, carritos de compra y gestión de stock. Utiliza una base de datos MySQL para almacenar la información y Bootstrap para un diseño responsivo.

**Autor**: Edu-Hernandez  
**Palabras clave**: PHP, Gestión de Inventario, MySQL, Bootstrap, HTML, CSS, JavaScript

## Características
- **Gestión de Productos**: Crear, editar, eliminar y actualizar el stock de productos, con soporte para imágenes.
- **Gestión de Categorías**: Agregar, editar y eliminar categorías de productos.
- **Gestión de Proveedores**: Registrar, modificar y eliminar proveedores.
- **Gestión de Clientes**: Crear, editar y eliminar información de clientes.
- **Gestión de Compras y Ventas**: Registrar compras y ventas con carritos, generar boletas y tickets.
- **Autenticación**: Sistema de inicio de sesión, cambio de contraseña y gestión de accesos.
- **Reportes**: Generación de reportes en PDF utilizando la librería FPDF.
- **Interfaz Responsiva**: Diseño adaptado a diferentes dispositivos con Bootstrap.
- **Gráficos**: Visualización de datos mediante gráficos (usando Chart.js).
- **Validaciones**: Validación de formularios con JavaScript.

## Tecnologías Utilizadas
- **Backend**: PHP, MySQL, FPDF
- **Frontend**: HTML, CSS, JavaScript, Bootstrap, Chart.js, jQuery, DataTables
- **Base de Datos**: MySQL (esquema definido en `inventario.sql`)
- **Otros**: FontAwesome para íconos, JSZip y PDFMake para exportación de datos

## Estructura del Proyecto
```
inventory/
│
├── Imagenes de los productos/        # Imágenes de productos de ejemplo
│   ├── Transformer colgante.jpg
│   ├── barbie clásica.jpg
│   ├── barbie.jpg
│   ├── medias para niños y niñas.jpg
│   ├── sabanas y edredón queen.jpg
├── backend/                          # Archivos del backend
│   ├── config/
│   │   └── Conexion.php             # Configuración de la conexión a la base de datos
│   ├── css/
│   │   ├── admin.css
│   │   ├── bootstrap.min.css
│   │   ├── buttonsdataTables.css
│   │   ├── datatable.css
│   │   ├── font.css
│   │   ├── style.css
│   ├── fonts/
│   │   └── fontawesome-webfont.woff2
│   ├── fpdf/
│   │   ├── doc/
│   │   ├── font/
│   │   ├── fpdf.css
│   │   ├── fpdf.php              # Librería para generar PDFs
│   ├── img/
│   │   ├── subidas/              # Directorio para imágenes subidas
│   │   ├── barraucv.jpg
│   │   ├── ca.png
│   │   ├── logoucv.jpeg
│   │   ├── wallpa.png
│   ├── js/
│   │   ├── Chart.min.js
│   │   ├── admin.js
│   │   ├── buttonshtml5.js
│   │   ├── buttonsprint.js
│   │   ├── cat.js
│   │   ├── datatable.js
│   │   ├── datatablebuttons.js
│   │   ├── jquery-2.2.4.min.js
│   │   ├── jquery.min.js
│   │   ├── jszip.js
│   │   ├── main.js
│   │   ├── marc.js
│   │   ├── pdfmake.js
│   │   ├── provee.js
│   │   ├── reenvio.js
│   │   ├── script.js
│   │   ├── validate.js
│   │   ├── vfs_fonts.js
│   ├── modal/
│   │   └── md_marc.php           # Modal para marcas
│   ├── php/
│   │   ├── add_cart.php
│   │   ├── add_cart_purchase.php
│   │   ├── add_category.php
│   │   ├── add_check.php
│   │   ├── add_check_purchase.php
│   │   ├── add_customer.php
│   │   ├── add_marca.php
│   │   ├── add_perfil.php
│   │   ├── add_prodct.php
│   │   ├── add_supplier.php
│   │   ├── addtocart.php
│   │   ├── delete_category.php
│   │   ├── delete_customer.php
│   │   ├── delete_product.php
│   │   ├── delete_supplier.php
│   │   ├── fetch_cate.php
│   │   ├── functions_chart.php
│   │   ├── login.php
│   │   ├── upd_acceso.php
│   │   ├── upd_acceso_pwd.php
│   │   ├── upd_cart.php
│   │   ├── upd_cart_purchase.php
│   │   ├── upd_category.php
│   │   ├── upd_customer.php
│   │   ├── upd_foto_prodct.php
│   │   ├── upd_perfil_pwd.php
│   │   ├── upd_prodct.php
│   │   ├── upd_prodct_stock.php
│   │   ├── upd_supplier.php
├── frontend/                          # Archivos del frontend
│   ├── accesos/
│   │   ├── cambiar.php
│   │   ├── editar.php
│   │   ├── mostrar.php
│   ├── administrador/
│   │   ├── chart.php
│   │   ├── escritorio.php
│   ├── categorias/
│   │   ├── editar.php
│   │   ├── mostrar.php
│   │   ├── nuevo.php
│   ├── clientes/
│   │   ├── crear.php
│   │   ├── editar.php
│   │   ├── mostrar.php
│   │   ├── nuevo.php
│   │   ├── password.php
│   ├── compra/
│   │   ├── cart.php
│   │   ├── checkout.php
│   │   ├── eliminar.php
│   │   ├── mostrar.php
│   │   ├── nuevo.php
│   ├── funciones/
│   │   ├── cat.php
│   │   ├── marc.php
│   │   ├── provee.php
│   ├── productos/
│   │   ├── editar.php
│   │   ├── foto.php
│   │   ├── mostrar.php
│   │   ├── nuevo.php
│   │   ├── stock.php
│   ├── proveedores/
│   │   ├── editar.php
│   │   ├── mostrar.php
│   │   ├── nuevo.php
│   ├── ventas/
│   │   ├── boleta.php
│   │   ├── cart.php
│   │   ├── checkout.php
│   │   ├── eliminar.php
│   │   ├── mostrar.php
│   │   ├── nuevo.php
│   │   ├── ticket.php
│   │   ├── venta.php
│   ├── login.php
│   ├── salir.php
├── test/
│   └── phpunit.phar                 # Herramienta para pruebas unitarias
├── .htaccess                        # Configuración de Apache
├── index.php                        # Punto de entrada (redirige a login.php)
├── inventario.sql                   # Esquema de la base de datos
└── README.md                        # Documentación del proyecto
```

## Requisitos Previos
- PHP 7.4 o superior
- Servidor web (Apache recomendado)
- MySQL o MariaDB
- Navegador web moderno
- Conexión a la base de datos configurada en `backend/config/Conexion.php`

## Instalación
1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/Edu-Hernandez/Inventory.git
   cd Inventory
   ```

2. **Configurar el servidor web**:
   - Configura un servidor web (como Apache) para que apunte al directorio `inventory/`.
   - Asegúrate de que el módulo `mod_rewrite` esté habilitado para manejar las rutas definidas en `.htaccess`.

3. **Configurar la base de datos**:
   - Crea una base de datos en MySQL (por ejemplo, `inventario`).
   - Importa el esquema desde `inventario.sql`:
     ```bash
     mysql -u root -p inventario < inventario.sql
     ```
   - Actualiza las credenciales de la base de datos en `backend/config/Conexion.php`.

4. **Configurar permisos**:
   - Asegúrate de que el directorio `backend/img/subidas/` tenga permisos de escritura para almacenar imágenes subidas.

5. **Iniciar el servidor**:
   - Si usas el servidor de desarrollo de PHP:
     ```bash
     php -S localhost:8000
     ```
   - Accede a la aplicación en `http://localhost:8000`.

## Uso
1. **Acceder a la aplicación**:
   - Abre un navegador y navega a `http://localhost:8000`. Serás redirigido a `frontend/login.php`.

2. **Iniciar sesión**:
   - Ingresa credenciales válidas en la página de inicio de sesión.
   - Una vez autenticado, accederás al panel de administración (`frontend/administrador/escritorio.php`).

3. **Gestión de recursos**:
   - **Productos**: Crea (`nuevo.php`), edita (`editar.php`), elimina o actualiza el stock (`stock.php`) desde `frontend/productos/`.
   - **Categorías**: Administra categorías en `frontend/categorias/`.
   - **Proveedores**: Gestiona proveedores en `frontend/proveedores/`.
   - **Clientes**: Registra o edita clientes en `frontend/clientes/`.
   - **Compras**: Registra compras y gestiona carritos en `frontend/compra/`.
   - **Ventas**: Registra ventas, genera boletas o tickets en `frontend/ventas/`.
   - **Accesos**: Gestiona usuarios y contraseñas en `frontend/accesos/`.
   - **Reportes**: Visualiza gráficos en `frontend/administrador/chart.php` o genera PDFs.

4. **Cerrar sesión**:
   - Usa `frontend/salir.php` para cerrar la sesión.

## Estructura de la Base de Datos
El archivo `inventario.sql` define las tablas necesarias, que probablemente incluyen:
- `producto`: Almacena información de productos (ID, nombre, descripción, stock, precio, etc.).
- `categoria`: Almacena categorías de productos.
- `proveedor`: Almacena datos de proveedores.
- `cliente`: Almacena información de clientes.
- `compra` y `venta`: Registra compras y ventas.
- `acceso`: Gestiona datos de autenticación de usuarios.

**Nota**: Asegúrate de importar `inventario.sql` y verificar que las claves foráneas estén correctamente configuradas.

## Notas
- La aplicación utiliza Bootstrap para el diseño y DataTables para la visualización de tablas dinámicas.
- La librería FPDF (`backend/fpdf/`) se usa para generar reportes en PDF, como boletas y tickets.
- Los scripts JavaScript en `backend/js/` manejan validaciones, gráficos y funcionalidades dinámicas.
- Las imágenes de productos se almacenan en `backend/img/subidas/` y las imágenes de ejemplo están en `Imagenes de los productos/`.
- El archivo `.htaccess` configura las rutas para una navegación limpia.
- Las pruebas unitarias pueden realizarse con `phpunit.phar` en la carpeta `test/`.

## Solución de Problemas
- **Error de conexión a la base de datos**: Verifica las credenciales en `backend/config/Conexion.php` y asegúrate de que MySQL esté en ejecución.
- **Rutas no funcionan**: Confirma que `.htaccess` esté configurado correctamente y que `mod_rewrite` esté habilitado en Apache.
- **Imágenes no se suben**: Asegúrate de que `backend/img/subidas/` tenga permisos de escritura.
- **Errores en formularios**: Verifica que los scripts PHP en `backend/php/` estén correctamente vinculados a las vistas en `frontend/`.
- **Problemas con Bootstrap o JavaScript**: Asegúrate de tener conexión a internet para los recursos CDN o descarga los archivos localmente.
- **Errores en reportes PDF**: Confirma que la librería FPDF esté correctamente configurada en `backend/fpdf/`.