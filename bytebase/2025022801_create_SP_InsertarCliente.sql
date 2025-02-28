-- Crear Stored Procedure para insertar clientes
CREATE PROCEDURE InsertarCliente
    @Nombre NVARCHAR(50),
    @Apellido NVARCHAR(50),
    @Correo NVARCHAR(100),
    @Telefono NVARCHAR(20) = NULL,
    @FechaNacimiento DATE = NULL,
    @Genero NVARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Clientes (Nombre, Apellido, Correo, Telefono, FechaNacimiento, Genero, FechaRegistro)
    VALUES (@Nombre, @Apellido, @Correo, @Telefono, @FechaNacimiento, @Genero, GETDATE());

    PRINT 'Cliente insertado correctamente';
END;