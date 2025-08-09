------> Crear tabla Usuario
CREATE TABLE Usuario (
	idUsuario INT IDENTITY(1,1)  PRIMARY KEY NOT NULL,
	idTipoIdentidad CHAR(3) NOT NULL,
	numeroIdentidad INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50),
	direccion VARCHAR(100),
	telefono VARCHAR(20) NOT NULL,
	email VARCHAR(50)
)

------> Crear tabla TipoDeIdentidad
CREATE TABLE TipoDeIdentidad (
	idTipoIdentidad CHAR(3) PRIMARY KEY NOT NULL,
	descripcionIdentidad VARCHAR(100) NOT NULL
)

------> Crear tabla Registro
CREATE TABLE Registro (
	idRegistro INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fechaRegistro DATE NOT NULL
)

------> Crear tabla UsuarioRegistro
CREATE TABLE UsuarioRegistro (
	idUsuario INT NOT NULL,
	idRegistro INT NOT NULL,

	CONSTRAINT PK_UsuarioRegistro PRIMARY KEY(idUsuario, idRegistro)
)

------> Crear tabla Perfil
CREATE TABLE Perfil (
	idPerfil CHAR(3) PRIMARY KEY NOT NULL,
	descripcionPerfil VARCHAR(100) NOT NULL
)

------> Crear tabla UsuarioPerfil
CREATE TABLE UsuarioPerfil (
	idUsuario INT NOT NULL,
	idPerfil CHAR(3)NOT NULL,

	CONSTRAINT PK_UsuarioPerfil PRIMARY KEY(idUsuario, idPerfil)
)

------> Crear tabla Infraccion
CREATE TABLE Infraccion (
	idInfraccion CHAR(3) PRIMARY KEY NOT NULL,
	descripcionInfraccion VARCHAR(100) NOT NULL
)

------> Crear tabla Sancion
CREATE TABLE Sancion (
	idSancion INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	idInfraccion CHAR(3) NOT NULL,
	fechaInicio DATETIME,
	fechaFinal DATETIME
)

------> Crear tabla UsuarioSancion
CREATE TABLE UsuarioSancion (
	idUsuario INT NOT NULL,
	idSancion INT NOT NULL,

	CONSTRAINT PK_UsuarioSancion PRIMARY KEY(idUsuario, idSancion)
)

------> Crear tabla Libro
CREATE TABLE Libro (
	idLibro INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	titulo VARCHAR(1000) NOT NULL,
	fechaPublicacion DATE,
	genero VARCHAR(50)
)

------> Crear tabla Autor
CREATE TABLE Autor (
	idAutor INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nombre VARCHAR(50),
	apellido VARCHAR(50)
)

------> Crear tabla LibroAutor
CREATE TABLE LibroAutor (
	idLibro INT,
	idAutor INT,

	CONSTRAINT PK_LibroAutor PRIMARY KEY(idLibro, idAutor)
)

------> Crear tabla Editorial
CREATE TABLE Editorial (
	idEditorial INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nombre VARCHAR(1000)
)

------> Crear tabla LibroEditorial
CREATE TABLE LibroEditorial (
	idLibro INT,
	idEditorial INT,

	CONSTRAINT PK_LibroEditorial PRIMARY KEY(idLibro, idEditorial)
)

------> Crear tabla Stock
CREATE TABLE Stock (
	idStock INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	cantidadTotal INT NOT NULL,
	cantidadDisponible INT NOT NULL
)

------> Crear tabla LibroStock
CREATE TABLE LibroStock (
	idLibro INT,
	idStock INT,

	CONSTRAINT PK_LibroStock PRIMARY KEY(idLibro, idStock)
)

------> Crear tabla Adquisicion
CREATE TABLE Adquisicion (
	idAdquisicion CHAR(3) PRIMARY KEY NOT NULL,
	descripcionAdquisicion VARCHAR(1000)
)

------> Crear tabla Ingreso
CREATE TABLE Ingreso (
	idIngreso INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fechaIngreso DATE NOT NULL,
	idAdquisicion CHAR(3)
)

------> Crear tabla LibroIngreso
CREATE TABLE LibroIngreso (
	idLibro INT,
	idIngreso INT,

	CONSTRAINT PK_LibroIngreso PRIMARY KEY(idLibro, idIngreso)
)


------> Crear tabla MotivoRetiro
CREATE TABLE MotivoRetiro (
	idMotivoRetiro CHAR(3) PRIMARY KEY NOT NULL,
	descripcionMotivoRetiro VARCHAR(1000)
)

------> Crear tabla Retiro
CREATE TABLE Retiro (
	idRetiro INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fechaRetiro DATE NOT NULL,
	idMotivoRetiro CHAR(3)
)

------> Crear tabla LibroRetiro
CREATE TABLE LibroRetiro (
	idLibro INT,
	idRetiro INT,

	CONSTRAINT PK_LibroRetiro PRIMARY KEY(idLibro, idRetiro)
)

------> Crear tabla Prestamo
CREATE TABLE Prestamo (
	idPrestamo INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fechaPrestamo DATE,
	fechaLimite DATETIME
)

------> Crear tabla PrestamoUsuarioLibro
CREATE TABLE PrestamoUsuarioLibro (
	idPrestamo INT,
	idUsuario INT,
	idLibro INT,

	CONSTRAINT PK_PrestamoUsuarioLibro PRIMARY KEY(idPrestamo, idUsuario, idLibro)
)

------> Crear tabla EstadoLibro
CREATE TABLE EstadoLibro (
	idEstadoLibro CHAR(3) PRIMARY KEY NOT NULL,
	descripcionEstado VARCHAR(1000)
)

------> Crear tabla LibroPrestamoEstadolibro
CREATE TABLE LibroPrestamoEstadolibro (
	idLibro INT,
	idPrestamo INT,
	idEstadoLibro CHAR(3),

	CONSTRAINT PK_LibroPrestamoEstadolibro PRIMARY KEY(idLibro, idPrestamo, idEstadoLibro)
)

------> Crear tabla EstadoDePrestamo
CREATE TABLE EstadoDePrestamo (
	idEstadoPrestamo CHAR(3) PRIMARY KEY NOT NULL,
	descripcionEstadoPrestamo VARCHAR(100)
)

------> Crear tabla PrestamoEstadodeprestamo
CREATE TABLE PrestamoEstadodeprestamo (
	idPrestamo INT,
	idEstadoPrestamo CHAR(3),

	CONSTRAINT PK_PrestamoEstadodeprestamo PRIMARY KEY(idPrestamo, idEstadoPrestamo)
)

------> Crear tabla Devolucion
CREATE TABLE Devolucion (
	idDevolucion INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fechaLimite DATETIME,
	fechaDevolucion DATETIME,
	idEstadoDevolucion CHAR(3)
)

------> Crear tabla EstadoDeDevolucion
CREATE TABLE EstadoDeDevolucion (
	idEstadoDevolucion CHAR(3) PRIMARY KEY NOT NULL,
	descripcionEstadoDevolucion VARCHAR(100)
)

------> Crear tabla PrestamoDevolucion
CREATE TABLE PrestamoDevolucion (
	idPrestamo INT,
	idDevolucion INT,

	CONSTRAINT PK_PrestamoDevolucion PRIMARY KEY(idPrestamo, idDevolucion)
)

------> Crear tabla DevolucionUsuarioLibroEstadolibro
CREATE TABLE DevolucionUsuarioLibroEstadolibro (
	idDevolucion INT,
	idUsuario INT,
	idLibro INT,
	idEstadoLibro CHAR(3),

	CONSTRAINT PK_DevolucionUsuarioLibroEstadolibro PRIMARY KEY(idDevolucion, idUsuario, idLibro, idEstadoLibro)
)

------> Crear tabla Multa
CREATE TABLE Multa (
	idMulta INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	totalMulta MONEY
)

------> Crear tabla MultaDevolucion
CREATE TABLE MultaPrestamoDevolucion (
	idMulta INT,
	idPrestamo INT,
	idDevolucion INT,

	CONSTRAINT PK_MultaDevolucion PRIMARY KEY(idMulta, idPrestamo, idDevolucion)
)

------> Crear tabla EstadoDeMulta
CREATE TABLE EstadoDeMulta (
	idEstadoDeMulta CHAR(3) PRIMARY KEY NOT NULL,
	descripcionEstadoMulta VARCHAR(100)
)

------> Crear tabla MultaEstadodemulta
CREATE TABLE MultaEstadodemulta (
	idMulta INT,
	idEstadoDeMulta CHAR(3),

	CONSTRAINT PK_MultaEstadodemulta PRIMARY KEY(idMulta, idEstadoDeMulta)
)