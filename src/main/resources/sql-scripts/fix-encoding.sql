ALTER DATABASE sweater CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE sweater.message CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE sweater.user_role CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE sweater.user_table CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;
UPDATE `sweater`.`message` t SET t.`text` = 'ить' WHERE t.`id` = 3