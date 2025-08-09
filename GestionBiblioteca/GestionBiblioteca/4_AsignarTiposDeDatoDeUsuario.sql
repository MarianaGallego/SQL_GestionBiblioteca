------> Cambiar INT por idNumero

ALTER TABLE Usuario ALTER COLUMN idUsuario idNumero

ALTER TABLE Registro ALTER COLUMN idRegistro idNumero

ALTER TABLE UsuarioRegistro ALTER COLUMN idUsuario idNumero

ALTER TABLE UsuarioRegistro ALTER COLUMN idRegistro idNumero

ALTER TABLE UsuarioPerfil ALTER COLUMN idUsuario idNumero

ALTER TABLE Sancion ALTER COLUMN idSancion idNumero

ALTER TABLE UsuarioSancion ALTER COLUMN idUsuario idNumero

ALTER TABLE UsuarioSancion ALTER COLUMN idSancion idNumero

ALTER TABLE Libro ALTER COLUMN idLibro idNumero

ALTER TABLE Autor ALTER COLUMN idAutor idNumero

ALTER TABLE LibroAutor ALTER COLUMN idLibro idNumero

ALTER TABLE LibroAutor ALTER COLUMN idAutor idNumero

ALTER TABLE Editorial ALTER COLUMN idEditorial idNumero

ALTER TABLE LibroEditorial ALTER COLUMN idLibro idNumero

ALTER TABLE LibroEditorial ALTER COLUMN idEditorial idNumero

ALTER TABLE Stock ALTER COLUMN idStock idNumero

ALTER TABLE LibroStock ALTER COLUMN idLibro idNumero

ALTER TABLE LibroStock ALTER COLUMN idStock idNumero

ALTER TABLE Ingreso ALTER COLUMN idIngreso idNumero

ALTER TABLE LibroIngreso ALTER COLUMN idLibro idNumero

ALTER TABLE LibroIngreso ALTER COLUMN idIngreso idNumero

ALTER TABLE Retiro ALTER COLUMN idRetiro idNumero

ALTER TABLE LibroRetiro ALTER COLUMN idLibro idNumero

ALTER TABLE LibroRetiro ALTER COLUMN idRetiro idNumero

ALTER TABLE Prestamo ALTER COLUMN idPrestamo idNumero

ALTER TABLE PrestamoUsuarioLibro ALTER COLUMN idPrestamo idNumero

ALTER TABLE PrestamoUsuarioLibro ALTER COLUMN idUsuario idNumero

ALTER TABLE PrestamoUsuarioLibro ALTER COLUMN idLibro idNumero

ALTER TABLE LibroPrestamoEstadolibro ALTER COLUMN idLibro idNumero

ALTER TABLE LibroPrestamoEstadolibro ALTER COLUMN idPrestamo idNumero

ALTER TABLE PrestamoEstadodeprestamo ALTER COLUMN idPrestamo idNumero

ALTER TABLE Devolucion ALTER COLUMN idDevolucion idNumero

ALTER TABLE PrestamoDevolucion ALTER COLUMN idPrestamo idNumero

ALTER TABLE PrestamoDevolucion ALTER COLUMN idDevolucion idNumero

ALTER TABLE DevolucionUsuarioLibroEstadolibro ALTER COLUMN idDevolucion idNumero

ALTER TABLE DevolucionUsuarioLibroEstadolibro ALTER COLUMN idUsuario idNumero

ALTER TABLE DevolucionUsuarioLibroEstadolibro ALTER COLUMN idLibro idNumero

ALTER TABLE Multa ALTER COLUMN idMulta idNumero

ALTER TABLE MultaPrestamoDevolucion ALTER COLUMN idMulta idNumero

ALTER TABLE MultaPrestamoDevolucion ALTER COLUMN idPrestamo idNumero

ALTER TABLE MultaPrestamoDevolucion ALTER COLUMN idDevolucion idNumero

ALTER TABLE MultaEstadodemulta ALTER COLUMN idMulta idNumero



------> Cambiar CHAR(3) por abreviatura

ALTER TABLE Usuario ALTER COLUMN idTipoIdentidad abreviatura

ALTER TABLE TipoDeIdentidad ALTER COLUMN idTipoIdentidad abreviatura

ALTER TABLE Perfil ALTER COLUMN idPerfil abreviatura

ALTER TABLE UsuarioPerfil ALTER COLUMN idPerfil abreviatura

ALTER TABLE Infraccion ALTER COLUMN idInfraccion abreviatura

ALTER TABLE Sancion ALTER COLUMN idInfraccion abreviatura

ALTER TABLE Adquisicion ALTER COLUMN idAdquisicion abreviatura

ALTER TABLE Ingreso ALTER COLUMN idAdquisicion abreviatura

ALTER TABLE MotivoRetiro ALTER COLUMN idMotivoRetiro abreviatura

ALTER TABLE Retiro ALTER COLUMN idMotivoRetiro abreviatura

ALTER TABLE EstadoLibro ALTER COLUMN idEstadoLibro abreviatura

ALTER TABLE LibroPrestamoEstadolibro ALTER COLUMN idEstadoLibro abreviatura

ALTER TABLE EstadoDePrestamo ALTER COLUMN idEstadoPrestamo abreviatura

ALTER TABLE PrestamoEstadodeprestamo ALTER COLUMN idEstadoPrestamo abreviatura

ALTER TABLE Devolucion ALTER COLUMN idEstadoDevolucion abreviatura

ALTER TABLE EstadoDeDevolucion ALTER COLUMN idEstadoDevolucion abreviatura

ALTER TABLE DevolucionUsuarioLibroEstadolibro ALTER COLUMN idEstadoLibro abreviatura

ALTER TABLE EstadoDeMulta ALTER COLUMN idEstadoDeMulta abreviatura

ALTER TABLE MultaEstadoDeMulta ALTER COLUMN idEstadoDeMulta abreviatura



------> Cambiar VARCHAR(100) por descripcion

ALTER TABLE TipoDeIdentidad ALTER COLUMN descripcionIdentidad descripcion

ALTER TABLE Perfil ALTER COLUMN descripcionPerfil descripcion

ALTER TABLE Infraccion ALTER COLUMN descripcionInfraccion descripcion

ALTER TABLE Adquisicion ALTER COLUMN descripcionAdquisicion descripcion

ALTER TABLE MotivoRetiro ALTER COLUMN descripcionMotivoRetiro descripcion

ALTER TABLE EstadoLibro ALTER COLUMN descripcionEstado descripcion

ALTER TABLE EstadoDePrestamo ALTER COLUMN descripcionEstadoPrestamo descripcion

ALTER TABLE EstadoDeDevolucion ALTER COLUMN descripcionEstadoDevolucion descripcion

ALTER TABLE EstadoDeMulta ALTER COLUMN descripcionEstadoMulta descripcion