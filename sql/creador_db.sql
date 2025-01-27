-- Crear base de datos
CREATE DATABASE gimnasio;

-- Seleccionar la base de datos
USE gimnasio;

-- Crear tabla de Usuarios
CREATE TABLE Usuarios (
    id_usuario BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    telefono VARCHAR(15)
);

-- Crear tabla de Perfiles
CREATE TABLE Perfiles (
    id_perfil BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_usuario BIGINT UNSIGNED,
    plan_membresia ENUM('comfort', 'premium', 'ultimate') NOT NULL,
    fecha_inicio_membresia DATE NOT NULL,
    fecha_fin_membresia DATE NOT NULL,
    estado_membresia ENUM('activa', 'inactiva') NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Crear tabla de Gimnasios
CREATE TABLE Gimnasios (
    id_gimnasio BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_gimnasio VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    horario VARCHAR(100) NOT NULL,
    aforo_maximo INT UNSIGNED NOT NULL,
    descripcion TEXT
);

-- Crear tabla de Salas
CREATE TABLE Salas (
    id_sala BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_gimnasio BIGINT UNSIGNED,
    nombre_sala VARCHAR(100) NOT NULL,
    descripcion TEXT,
    aforo INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_gimnasio) REFERENCES Gimnasios(id_gimnasio)
);

-- Crear tabla de Reservas
CREATE TABLE Reservas (
    id_reserva BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_usuario BIGINT UNSIGNED,
    id_sala BIGINT UNSIGNED,
    fecha_reserva DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);

-- Crear tabla de Entrenadores
CREATE TABLE Entrenadores (
    id_entrenador BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    id_gimnasio BIGINT UNSIGNED,
    horario_disponible TEXT,
    FOREIGN KEY (id_gimnasio) REFERENCES Gimnasios(id_gimnasio)
);

-- Crear tabla de Actividades Grupales
CREATE TABLE ActividadesGrupales (
    id_actividad BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_actividad VARCHAR(100) NOT NULL,
    descripcion TEXT,
    id_entrenador BIGINT UNSIGNED,
    id_sala BIGINT UNSIGNED,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_entrenador) REFERENCES Entrenadores(id_entrenador),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);

-- Crear tabla de Inscripciones
CREATE TABLE Inscripciones (
    id_inscripcion BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_usuario BIGINT UNSIGNED,
    id_actividad BIGINT UNSIGNED,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_actividad) REFERENCES ActividadesGrupales(id_actividad)
);