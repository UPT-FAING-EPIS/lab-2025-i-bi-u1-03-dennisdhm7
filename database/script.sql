-- Crear tabla de Ventas en la cevichería
CREATE TABLE Ventas (
    Id INT PRIMARY KEY,
    Cliente NVARCHAR(100),
    Producto NVARCHAR(100),
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    Fecha DATE
);

-- Insertar registros de ejemplo
INSERT INTO Ventas (Id, Cliente, Producto, Cantidad, PrecioUnitario, Total, Fecha)
VALUES
(1, 'Carlos Gómez', 'Ceviche Mixto', 2, 25.00, 50.00, '2025-04-15'),
(2, 'Lucía Pérez', 'Arroz con Mariscos', 1, 30.00, 30.00, '2025-04-16'),
(3, 'Jorge Ramírez', 'Jalea Especial', 3, 28.00, 84.00, '2025-04-17'),
(4, 'Mariana Torres', 'Leche de Tigre', 4, 12.00, 48.00, '2025-04-17');
