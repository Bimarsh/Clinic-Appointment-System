INSERT INTO `tmp`.`user`(`username`, `password`, `enabled`, `role`) VALUES ('admin@mum.edu', '$2a$06$HZdf9.pKdAmSXp6a8ltUUeghU4i.RhyhLd0Y0cY0olJ0W8nPyGxKm', True, 'ROLE_ADMIN');
INSERT INTO `tmp`.`user`(`username`, `password`, `enabled`, `role`) VALUES ('doctor@mum.edu', '$2a$06$y7z84MbQKZN3mSuG4pkp6eoEjzre3K9m8rAW1cg/QB069/uaTb672', True, 'ROLE_DOCTOR');
INSERT INTO `tmp`.`user`(`username`, `password`, `enabled`, `role`) VALUES ('receptionist@mum.edu', '$2a$06$7QzG4R4FBYuMxg92HzsBqeqjusU4Efwq5gqC9yv7rWI9AOPNYoxHS', True, 'ROLE_RECEPTIONIST');
INSERT INTO `tmp`.`user`(`username`, `password`, `enabled`, `role`) VALUES ('patient@mum.edu', '$2a$06$tfuv/KLkBll7XaY0VPdHn.Im6OEjs.bTIIfzWMdsA7Rfr75Aegtam', True, 'ROLE_PATIENT');

INSERT INTO `tmp`.`doctor`(`email`, `first_name`, `last_name`, `speciality`) VALUES ('doctor@mum.edu', 'Sample', 'Doctor', 'DERMATOLOGISTS');

INSERT INTO `tmp`.`patient`(`birthDate`, `email`, `firstName`, `lastName`, `phone`, `remarks`, `Credentials`) VALUES ('2017-09-27', 'patient@spears.com', 'Sample', 'Patient', '012-345-6789', 'The patient is fierceful.', 4);

INSERT INTO `tmp`.`appointment` (`id`, `bookingtype`, `date`, `description`, `doctor_id`, `patient_id`) VALUES ('1', '1', '2017-1-1', 'AnnualHealthCheck', '1', '1');