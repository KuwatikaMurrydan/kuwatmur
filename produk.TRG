TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` trigger before_produk_update\nbefore update on produk\nfor each row\nbegin\ninsert into log_harga_produk\nset kode_produk = old.kode_produk,\nharga_baru=new.harga,\nharga_lama=old.harga,\nwaktu_perubahan=now();\nend'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1716775849287444
