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
	descripcion VARCHAR(100) NOT NULL
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