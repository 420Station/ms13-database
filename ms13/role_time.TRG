TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `role_timeTloginsert` AFTER INSERT ON `role_time` FOR EACH ROW BEGIN INSERT into role_time_log (ckey, job, delta) VALUES (NEW.ckey, NEW.job, NEW.minutes);\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `role_timeTlogupdate` AFTER UPDATE ON `role_time` FOR EACH ROW BEGIN INSERT into role_time_log (ckey, job, delta) VALUES (NEW.CKEY, NEW.job, NEW.minutes-OLD.minutes);\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `role_timeTlogdelete` AFTER DELETE ON `role_time` FOR EACH ROW BEGIN INSERT into role_time_log (ckey, job, delta) VALUES (OLD.ckey, OLD.job, 0-OLD.minutes);\nEND'
sql_modes=524288 524288 524288
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8mb3' 'utf8mb3' 'utf8mb3'
connection_cl_names='utf8mb3_general_ci' 'utf8mb3_general_ci' 'utf8mb3_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=166759435053 166759435048 166759435064
