------> Agregar Foreign key en la tabla Usuario
ALTER TABLE Usuario
ADD CONSTRAINT FK_Usuario_idTipoIdentidad
FOREIGN KEY (idTipoIdentidad)
REFERENCES TipoDeIdentidad(idTipoIdentidad)

------> Agregar Foreign key en la tabla UsuarioRegistro
ALTER TABLE UsuarioRegistro
ADD CONSTRAINT FK_UsuarioRegistro_idUsuario
FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_UsuarioRegistro_idRegistro
FOREIGN KEY (idRegistro) REFERENCES Registro(idRegistro)

------> Agregar Foreign key en la tabla UsuarioPerfil
ALTER TABLE UsuarioPerfil
ADD CONSTRAINT FK_UsuarioPerfil_idUsuario
FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_UsuarioPerfil_idPerfil
FOREIGN KEY (idPerfil) REFERENCES Perfil(idPerfil)

------> Agregar Foreign key en la tabla Sancion
ALTER TABLE Sancion
ADD CONSTRAINT FK_Sancion_idInfraccion
FOREIGN KEY (idInfraccion)
REFERENCES Infraccion(idInfraccion)

------> Agregar Foreign key en la tabla UsuarioSancion
ALTER TABLE UsuarioSancion
ADD CONSTRAINT FK_UsuarioSancion_idUsuario
FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_UsuarioSancion_idSancion
FOREIGN KEY (idSancion) REFERENCES Sancion(idSancion)

------> Agregar Foreign key en la tabla LibroAutor
ALTER TABLE LibroAutor
ADD CONSTRAINT FK_LibroAutor_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_LibroAutor_idAutor
FOREIGN KEY (idAutor) REFERENCES Autor(idAutor)

------> Agregar Foreign key en la tabla LibroEditorial
ALTER TABLE LibroEditorial
ADD CONSTRAINT FK_LibroEditorial_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_LibroEditorial_idEditorial
FOREIGN KEY (idEditorial) REFERENCES Editorial(idEditorial)

------> Agregar Foreign key en la tabla LibroStock
ALTER TABLE LibroStock
ADD CONSTRAINT FK_LibroStock_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_LibroStock_idStock
FOREIGN KEY (idStock) REFERENCES Stock(idStock)

------> Agregar Foreign key en la tabla Ingreso
ALTER TABLE Ingreso
ADD CONSTRAINT FK_Ingreso_idAdquisicion
FOREIGN KEY (idAdquisicion)
REFERENCES Adquisicion(idAdquisicion)

------> Agregar Foreign key en la tabla LibroIngreso
ALTER TABLE LibroIngreso
ADD CONSTRAINT FK_LibroIngreso_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_LibroIngreso_idIngreso
FOREIGN KEY (idIngreso) REFERENCES Ingreso(idIngreso)

------> Agregar Foreign key en la tabla Retiro
ALTER TABLE Retiro
ADD CONSTRAINT FK_Retiro_idMotivoRetiro
FOREIGN KEY (idMotivoRetiro) REFERENCES MotivoRetiro(idMotivoRetiro)

------> Agregar Foreign key en la tabla LibroRetiro
ALTER TABLE LibroRetiro
ADD CONSTRAINT FK_LibroRetiro_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_LibroRetiro_idRetiro
FOREIGN KEY (idRetiro) REFERENCES Retiro(idRetiro)

------> Agregar Foreign key en la tabla PrestamoUsuarioLibro
ALTER TABLE PrestamoUsuarioLibro
ADD CONSTRAINT FK_PrestamoUsuarioLibro_idPrestamo
FOREIGN KEY (idPrestamo) REFERENCES Prestamo(idPrestamo),
CONSTRAINT FK_PrestamoUsuarioLibro_idUsuario
FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_PrestamoUsuarioLibro_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro)

------> Agregar Foreign key en la tabla LibroPrestamoEstadolibro
ALTER TABLE LibroPrestamoEstadolibro
ADD CONSTRAINT FK_LibroPrestamoEstadolibro_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_LibroPrestamoEstadolibro_idPrestamo
FOREIGN KEY (idPrestamo) REFERENCES Prestamo(idPrestamo),
CONSTRAINT FK_LibroPrestamoEstadolibro_idEstadolibro
FOREIGN KEY (idEstadoLibro) REFERENCES EstadoLibro(idEstadoLibro)

------> Agregar Foreign key en la tabla PrestamoEstadodeprestamo
ALTER TABLE PrestamoEstadodeprestamo
ADD CONSTRAINT FK_PrestamoEstadodeprestamo_idPrestamo
FOREIGN KEY (idPrestamo) REFERENCES Prestamo(idPrestamo),
CONSTRAINT FK_PrestamoEstadodeprestamo_idEstadoPrestamo
FOREIGN KEY (idEstadoPrestamo) REFERENCES EstadoDePrestamo(idEstadoPrestamo)

------> Agregar Foreign key en la tabla Devolucion
ALTER TABLE Devolucion
ADD CONSTRAINT FK_Devolucion_idEstadoDevolucion
FOREIGN KEY (idEstadoDevolucion)
REFERENCES EstadoDeDevolucion(idEstadoDevolucion)

------> Agregar Foreign key en la tabla PrestamoDevolucion
ALTER TABLE PrestamoDevolucion
ADD CONSTRAINT FK_PrestamoDevolucion_idPrestamo
FOREIGN KEY (idPrestamo) REFERENCES Prestamo(idPrestamo),
CONSTRAINT FK_PrestamoDevolucion_idDevolucion
FOREIGN KEY (idDevolucion) REFERENCES Devolucion(idDevolucion)

------> Agregar Foreign key en la tabla DevolucionUsuarioLibroEstadolibro
ALTER TABLE DevolucionUsuarioLibroEstadolibro
ADD CONSTRAINT FK_DevolucionUsuarioLibroEstadolibro_idDevolucion
FOREIGN KEY (idDevolucion) REFERENCES Devolucion(idDevolucion),
CONSTRAINT FK_DevolucionUsuarioLibroEstadolibro_idUsuario
FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_DevolucionUsuarioLibroEstadolibro_idLibro
FOREIGN KEY (idLibro) REFERENCES Libro(idLibro),
CONSTRAINT FK_DevolucionUsuarioLibroEstadolibro_idEstadoLibro
FOREIGN KEY (idEstadoLibro) REFERENCES EstadoLibro(idEstadoLibro)

------> Agregar Foreign key en la tabla MultaPrestamoDevolucion
ALTER TABLE MultaPrestamoDevolucion
ADD CONSTRAINT FK_MultaPrestamoDevolucion_idMulta
FOREIGN KEY (idMulta) REFERENCES Multa(idMulta),
CONSTRAINT FK_MultaPrestamoDevolucion_idPrestamo
FOREIGN KEY (idPrestamo) REFERENCES Prestamo(idPrestamo),
CONSTRAINT FK_MultaPrestamoDevolucion_idDevolucion
FOREIGN KEY (idDevolucion) REFERENCES Devolucion(idDevolucion)

------> Agregar Foreign key en la tabla MultaEstadodemulta
ALTER TABLE MultaEstadodemulta
ADD CONSTRAINT FK_MultaEstadodemulta_idMulta
FOREIGN KEY (idMulta) REFERENCES Multa(idMulta),
CONSTRAINT FK_MultaEstadomulta_idEstadoDeMulta
FOREIGN KEY (idEstadoDeMulta) REFERENCES EstadoDeMulta(idEstadoDeMulta)