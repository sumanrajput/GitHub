date : 21-04-2015

<!-- ALTER TABLE `nies_new1`.`variable_m_details` 
DROP COLUMN `variable_id`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`tblid`, `variable_name`),
DROP INDEX `variable_id_UNIQUE` ;
 -->
 
 
 
 
 ALTER TABLE `nies_new1`.`variable_m_details` 
ADD UNIQUE INDEX `variable_name_UNIQUE` (`variable_name` ASC);
 