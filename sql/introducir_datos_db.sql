-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (nombre, email, contraseña, telefono) VALUES
('Juan Pérez', 'juan.perez@example.com', 'contraseña123', '123456789'),
('Ana García', 'ana.garcia@example.com', 'contraseña456', '987654321'),
('Carlos López', 'carlos.lopez@example.com', 'contraseña789', '456123789'),
('Lucía Martínez', 'lucia.martinez@example.com', 'lucia2025', '321654987'),
('Javier Sánchez', 'javier.sanchez@example.com', 'javi456', '654987321'),
('Pedro González', 'pedro.gonzalez@example.com', 'pedro123', '789654123'),
('María Ruiz', 'maria.ruiz@example.com', 'maria789', '147258369'),
('Luis Fernández', 'luis.fernandez@example.com', 'luis@123', '258369147'),
('Elena López', 'elena.lopez@example.com', 'elena456', '369258741'),
('Marta Jiménez', 'marta.jimenez@example.com', 'marta123', '741258963');

-- Insertar datos en la tabla Perfiles
INSERT INTO Perfiles (id_usuario, plan_membresia, fecha_inicio_membresia, fecha_fin_membresia, estado_membresia) VALUES
(1, 'comfort', '2025-01-01', '2026-01-01', 'activa'),
(2, 'premium', '2025-02-01', '2026-02-01', 'activa'),
(3, 'ultimate', '2025-03-01', '2026-03-01', 'inactiva'),
(4, 'comfort', '2025-04-01', '2026-04-01', 'activa'),
(5, 'premium', '2025-05-01', '2026-05-01', 'inactiva'),
(6, 'ultimate', '2025-06-01', '2026-06-01', 'activa'),
(7, 'comfort', '2025-07-01', '2026-07-01', 'activa'),
(8, 'premium', '2025-08-01', '2026-08-01', 'activa'),
(9, 'ultimate', '2025-09-01', '2026-09-01', 'activa'),
(10, 'comfort', '2025-10-01', '2026-10-01', 'inactiva');

-- Insertar datos en la tabla Gimnasios
INSERT INTO Gimnasios (nombre_gimnasio, direccion, horario, aforo_maximo, descripcion) VALUES
('Gimnasio Central', 'Calle Mayor 123, Ciudad', 'Lunes a Viernes: 6:00 - 22:00, Sábado: 8:00 - 14:00', 150, 'Gimnasio moderno con todas las instalaciones'),
('Fitness Club', 'Avenida del Sol 456, Ciudad', 'Lunes a Viernes: 7:00 - 21:00, Domingo cerrado', 100, 'Club de fitness con entrenadores especializados'),
('Centro Deportivo Elite', 'Calle Luna 789, Ciudad', 'Lunes a Viernes: 6:00 - 23:00', 200, 'Centro de alto rendimiento deportivo'),
('Gimnasio Xtreme', 'Calle Ficticia 100, Ciudad', 'Lunes a Sábado: 5:00 - 23:00', 180, 'Gimnasio con equipos de última generación'),
('FitWorld', 'Avenida Real 222, Ciudad', 'Lunes a Domingo: 6:00 - 22:00', 250, 'Gimnasio grande con diversas áreas de entrenamiento'),
('SuperGym', 'Calle Oceanía 300, Ciudad', 'Lunes a Viernes: 7:00 - 20:00', 120, 'Gimnasio pequeño, pero con gran ambiente');
 
-- Insertar datos en la tabla Salas
INSERT INTO Salas (id_gimnasio, nombre_sala, descripcion, aforo) VALUES
(1, 'Sala de Cardio', 'Equipos de cardio, bicicletas y cintas de correr', 50),
(1, 'Sala de Pesas', 'Pesas libres y máquinas de musculación', 40),
(1, 'Sala de Estiramientos', 'Zona para estiramientos y relajación', 30),
(2, 'Sala de Yoga', 'Zona tranquila para clases de yoga', 25),
(2, 'Sala de Spinning', 'Clases de spinning y ciclismo indoor', 30),
(3, 'Piscina', 'Piscina cubierta para natación y actividades acuáticas', 100),
(3, 'Sala de Pilates', 'Zona especializada en pilates', 20),
(4, 'Sala Xtreme', 'Sala de alta intensidad con máquinas y pesas', 60),
(5, 'Sala Fit', 'Zona para entrenamiento funcional', 50),
(6, 'Sala de Relax', 'Zona de relajación con masajes', 15);

-- Insertar datos en la tabla Reservas
INSERT INTO Reservas (id_usuario, id_sala, fecha_reserva, hora_inicio, hora_fin) VALUES
(1, 1, '2025-01-15', '09:00:00', '10:00:00'),
(1, 2, '2025-01-16', '10:30:00', '11:30:00'),
(2, 3, '2025-01-16', '18:00:00', '19:00:00'),
(3, 4, '2025-01-17', '08:00:00', '09:00:00'),
(4, 5, '2025-01-18', '11:00:00', '12:00:00'),
(5, 6, '2025-01-19', '09:30:00', '10:30:00'),
(6, 2, '2025-01-20', '14:00:00', '15:00:00'),
(7, 1, '2025-01-21', '16:00:00', '17:00:00'),
(8, 3, '2025-01-22', '19:00:00', '20:00:00'),
(9, 5, '2025-01-23', '06:00:00', '07:00:00');

-- Insertar datos en la tabla Entrenadores
INSERT INTO Entrenadores (nombre, especialidad, id_gimnasio, horario_disponible) VALUES
('Pedro Martínez', 'Entrenador Personal', 1, 'Lunes a Viernes: 9:00 - 14:00'),
('Marta Sánchez', 'Instructora de Yoga', 2, 'Lunes, Miércoles, Viernes: 10:00 - 12:00'),
('Luis Pérez', 'Entrenador de Natación', 3, 'Lunes a Sábado: 7:00 - 13:00'),
('Laura García', 'Entrenadora de Spinning', 2, 'Martes y Jueves: 15:00 - 18:00'),
('Carlos Martínez', 'Entrenador de CrossFit', 4, 'Lunes a Viernes: 8:00 - 17:00'),
('Raquel López', 'Instructora de Pilates', 3, 'Lunes y Miércoles: 10:00 - 12:00');

-- Insertar datos en la tabla Actividades Grupales
INSERT INTO ActividadesGrupales (nombre_actividad, descripcion, id_entrenador, id_sala, hora_inicio, hora_fin) VALUES
('Clases de Spinning', 'Clases grupales de ciclismo indoor', 2, 4, '10:00:00', '11:00:00'),
('Yoga para principiantes', 'Clase introductoria de yoga', 2, 3, '11:00:00', '12:00:00'),
('Entrenamiento de natación', 'Clases grupales de natación', 3, 5, '08:00:00', '09:00:00'),
('CrossFit Avanzado', 'Entrenamiento de alta intensidad en grupo', 5, 6, '17:00:00', '18:00:00'),
('Pilates para Todos', 'Clase de Pilates para principiantes y expertos', 6, 3, '12:00:00', '13:00:00'),
('Spinning Avanzado', 'Clase intensa de spinning con música motivacional', 4, 2, '18:00:00', '19:00:00');

-- Insertar datos en la tabla Inscripciones
INSERT INTO Inscripciones (id_usuario, id_actividad) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 1),
(8, 2),
(9, 3),
(10, 4);