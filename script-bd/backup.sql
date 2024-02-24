CREATE TABLE public.producto (
	id serial4 NOT NULL,
	nombre varchar(250) NOT NULL,
	precio numeric(10, 2) NOT NULL,
	CONSTRAINT pk_producto PRIMARY KEY (id)
);

CREATE TABLE public.cliente (
	id serial4 NOT NULL,
	nombres varchar(250) NOT NULL,
	apellidos varchar(250) NOT NULL,
	dni varchar(20) not null,
	telefono varchar(20),
	email varchar(250),
	CONSTRAINT pk_cliente PRIMARY KEY (id)
);


CREATE TABLE public.venta (
	id serial4 NOT NULL,
	id_cliente int4 NOT NULL,
	fecha date NOT NULL,
	CONSTRAINT pk_venta PRIMARY KEY (id),
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id)
);

CREATE TABLE public.detalle_venta (
	id serial4 NOT NULL,
	id_venta int4 NOT NULL,
	id_producto int4 NOT NULL,
	cantidad int4 NOT NULL,
	CONSTRAINT pk_detalle_venta PRIMARY KEY (id),
	CONSTRAINT fk_venta FOREIGN KEY (id_venta) REFERENCES public.venta(id),
	CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES public.producto(id)
);

INSERT INTO public.cliente (nombres, apellidos, dni, telefono, email) VALUES
  ('Juan', 'Perez', '74228318', '999-123-456', 'juan@example.com'),
  ('María', 'López', '74228319', '999-234-567', 'maria@example.com'),
  ('Carlos', 'García', '74228320', '999-345-678', 'carlos@example.com'),
  ('Laura', 'Martínez', '74228321', '999-456-789', 'laura@example.com'),
  ('Pedro', 'Sánchez', '74228322', '999-567-890', 'pedro@example.com'),
  ('Ana', 'Rodríguez', '74228323', '999-678-901', 'ana@example.com'),
  ('Luis', 'Gómez', '74228324', '999-789-012', 'luis@example.com'),
  ('Elena', 'Díaz', '74228325', '999-890-123', 'elena@example.com'),
  ('Miguel', 'López', '74228326', '999-901-234', 'miguel@example.com'),
  ('Sofía', 'Martín', '74228327', '999-012-345', 'sofia@example.com'),
  ('Diego', 'Hernández', '74228328', '999-123-456', 'diego@example.com'),
  ('Marina', 'Gutiérrez', '74228329', '999-234-567', 'marina@example.com'),
  ('Javier', 'Pérez', '74228330', '999-345-678', 'javier@example.com'),
  ('Lucía', 'Sánchez', '74228331', '999-456-789', 'lucia@example.com'),
  ('Pablo', 'García', '74228332', '999-567-890', 'pablo@example.com'),
  ('Clara', 'Gómez', '74228333', '999-678-901', 'clara@example.com'),
  ('Daniel', 'Díaz', '74228334', '999-789-012', 'daniel@example.com'),
  ('Valeria', 'Martínez', '74228335', '999-890-123', 'valeria@example.com'),
  ('Gabriel', 'López', '74228336', '999-901-234', 'gabriel@example.com'),
  ('Natalia', 'Hernández', '74228337', '999-012-345', 'natalia@example.com'),
  ('Mateo', 'Gutiérrez', '74228338', '999-123-456', 'mateo@example.com'),
  ('Sara', 'Pérez', '74228339', '999-234-567', 'sara@example.com'),
  ('Alejandro', 'Sánchez', '74228340', '999-345-678', 'alejandro@example.com'),
  ('Paula', 'Gómez', '74228341', '999-456-789', 'paula@example.com'),
  ('Bruno', 'Díaz', '74228342', '999-567-890', 'bruno@example.com'),
  ('Lucas', 'Martínez', '74228343', '999-678-901', 'lucas@example.com'),
  ('Emma', 'López', '74228344', '999-789-012', 'emma@example.com'),
  ('Carmen', 'Hernández', '74228345', '999-890-123', 'carmen@example.com'),
  ('Marcos', 'Gutiérrez', '74228346', '999-901-234', 'marcos@example.com');
 
 INSERT INTO public.producto (nombre, precio) VALUES
  ('Producto 1', 10.50),
  ('Producto 2', 20.25),
  ('Producto 3', 15.75),
  ('Producto 4', 12.80),
  ('Producto 5', 30.00),
  ('Producto 6', 18.99),
  ('Producto 7', 25.50),
  ('Producto 8', 8.75),
  ('Producto 9', 22.49),
  ('Producto 10', 19.95),
  ('Producto 11', 14.20),
  ('Producto 12', 27.30),
  ('Producto 13', 16.50),
  ('Producto 14', 11.75),
  ('Producto 15', 9.99),
  ('Producto 16', 23.45),
  ('Producto 17', 32.75),
  ('Producto 18', 28.90),
  ('Producto 19', 17.25),
  ('Producto 20', 35.50),
  ('Producto 21', 21.80),
  ('Producto 22', 13.45),
  ('Producto 23', 26.99),
  ('Producto 24', 18.25),
  ('Producto 25', 7.90),
  ('Producto 26', 24.75),
  ('Producto 27', 29.60),
  ('Producto 28', 16.25),
  ('Producto 29', 12.99),
  ('Producto 30', 20.45);
 
 INSERT INTO public.venta (id_cliente, fecha) VALUES
  (1, '2024-02-10'), (2, '2024-02-10'), (3, '2024-02-10'), (4, '2024-02-10'), (5, '2024-02-10'),
  (6, '2024-02-10'), (7, '2024-02-10'), (8, '2024-02-10'), (9, '2024-02-10'), (10, '2024-02-10'),
  (11, '2024-02-11'), (12, '2024-02-11'), (13, '2024-02-11'), (14, '2024-02-11'), (15, '2024-02-11'),
  (16, '2024-02-11'), (17, '2024-02-11'), (18, '2024-02-11'), (19, '2024-02-11'), (20, '2024-02-11'),
  (21, '2024-02-12'), (22, '2024-02-12'), (23, '2024-02-12'), (24, '2024-02-12'), (25, '2024-02-12'),
  (26, '2024-02-12'), (27, '2024-02-12'), (28, '2024-02-12'), (29, '2024-02-12'), (1, '2024-02-12'),
  (2, '2024-02-13'), (3, '2024-02-13'), (4, '2024-02-13'), (5, '2024-02-13'), (6, '2024-02-13'),
  (7, '2024-02-13'), (8, '2024-02-13'), (9, '2024-02-13'), (10, '2024-02-13'), (11, '2024-02-13'),
  (12, '2024-02-14'), (13, '2024-02-14'), (14, '2024-02-14'), (15, '2024-02-14'), (16, '2024-02-14'),
  (17, '2024-02-14'), (18, '2024-02-14'), (19, '2024-02-14'), (20, '2024-02-14'), (21, '2024-02-14');
 
 INSERT INTO public.detalle_venta (id_venta, id_producto, cantidad) VALUES
  (1, 1, 5), (1, 12, 3), (1, 25, 7), (1, 7, 2), (1, 14, 4),
  (2, 3, 6), (2, 16, 2), (2, 29, 3), (2, 5, 8), (2, 20, 5),
  (3, 8, 4), (3, 21, 2), (3, 9, 7), (3, 15, 3), (3, 26, 6),
  (4, 10, 2), (4, 22, 5), (4, 11, 3), (4, 19, 4), (4, 28, 6),
  (5, 13, 7), (5, 24, 3), (5, 16, 5), (5, 1, 2), (5, 25, 4),
  (6, 18, 4), (6, 3, 3), (6, 20, 2), (6, 6, 6), (6, 29, 5),
  (7, 7, 5), (7, 14, 2), (7, 22, 4), (7, 9, 3), (7, 19, 7),
  (8, 25, 3), (8, 2, 6), (8, 28, 2), (8, 11, 5), (8, 15, 4),
  (9, 16, 7), (9, 10, 2), (9, 26, 4), (9, 5, 3), (9, 21, 6),
  (10, 8, 5), (10, 17, 4), (10, 1, 3), (10, 29, 2), (10, 12, 7),
  (11, 4, 2), (11, 23, 3), (11, 13, 5), (11, 18, 6), (11, 27, 4),
  (12, 6, 3), (12, 15, 2), (12, 24, 5), (12, 7, 4), (12, 28, 7);