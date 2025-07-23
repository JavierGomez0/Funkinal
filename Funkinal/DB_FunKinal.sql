create database FunKinal_DB;
use FunKinal_DB;

create table usuarios (
    idUsuario int auto_increment primary key,
    nombre varchar(50),
    apellido varchar(50),
    correo varchar(100) unique,
    contraseña varchar(100),
    telefono varchar(20),
    estado varchar(64) default("Activo")
);

create table productos (
    idProducto int auto_increment primary key,
    nombre varchar(100),
    precio decimal(10,2),
    descripcion text,
    stock int,
    estado enum('Existencias', 'Agotado')
);

create table categorias (
    idCategoria int auto_increment primary key,
    nombre varchar(100),
    descripcion text
);

create table carrito (
    idCarrito int auto_increment primary key,
    idUsuario int,
    fechaCreacion datetime,
    estado varchar(50),
    foreign key (idUsuario) references usuarios(idUsuario)
);

create table detalleCarrito (
    idDetalleCarrito int auto_increment primary key,
    idCarrito int,
    idProducto int,
    cantidad int,
    precioUnitario decimal(10,2),
    subtotal decimal(10,2),
    foreign key (idCarrito) references carrito(idCarrito),
    foreign key (idProducto) references productos(idProducto)
);

create table compras (
    idCompra int auto_increment primary key,
    idUsuario int,
    fechaCompra datetime,
    total decimal(10,2),
    estado enum('pendiente', 'pagado', 'enviado', 'cancelado'),
    foreign key (idUsuario) references usuarios(idUsuario)
);

create table detalleCompras (
    idDetalleCompra int auto_increment primary key,
    idCompra int,
    idProducto int,
    cantidad int,
    precioUnitario decimal(10,2),
    foreign key (idCompra) references compras(idCompra),
    foreign key (idProducto) references productos(idProducto)
);

create table pagos (
    idPago int auto_increment primary key,
    idCompra int,
    fechaPago datetime,
    monto decimal(10,2),
    metodoPago varchar(50),
    estadoPago enum('Pagado', 'Sin pago'),
    foreign key (idCompra) references compras(idCompra)
);

create table reseñas (
    idReseña int auto_increment primary key,
    idUsuario int,
    idProducto int,
    comentario text,
    calificacion int,
    fecha datetime,
    foreign key (idUsuario) references usuarios(idUsuario),
    foreign key (idProducto) references productos(idProducto)
);

create table administradores (
    idAdmin int auto_increment primary key,
    nombre varchar(100),
    correo varchar(100) unique,
    contraseña varchar(100)
);
