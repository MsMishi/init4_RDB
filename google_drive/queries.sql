/*MAKE NEW USER*/
INSERT INTO drive_users (real_name, email, password)
  VALUES ("Joe Blow", "notfakemail@yupfakemail.com", "p@sswerd1");

/*CHANGE FILE CONTENT*/
UPDATE google_drive
  SET file_content = "I think I made a big mistake"
  WHERE id = 3
  ;

/*SHOW PEOPLE SHARED WITH*/
SELECT google_drive.filename, drive_users.real_name
  FROM google_drive
  LEFT JOIN drive_users ON google_drive.id_shared_with = drive_users.user_id
  ;
