UPDATE 
     table1 t1,
     table2 t2
SET -- Updating table1 with the data from table2.(If the data from table2 is null, it won't replace the data in table1)
     t1.en_name = COALESCE(t2.en_name,t1.en_name),
     t1.gender = COALESCE(t2.gender,t1.gender),
     t1.birthday = COALESCE(t2.birthday,t1.birthday),
     t1.age = COALESCE(t2.age,t1.age),
     t1.email = COALESCE(t2.email,t1.email),
     t1.zip_code = COALESCE(t2.zip_code,t1.zip_code),
     t1.region = COALESCE(t2.region,t1.region),
     t1.county = COALESCE(t2.county,t1.county),
     t1.district = COALESCE(t2.district,t1.district),
     t1.address = COALESCE(t2.address,t1.address),
     t1.cell = COALESCE(t2.cell,t1.cell),
     t1.tele = COALESCE(t2.tele,t1.tele),
     t1.id_num = COALESCE(t2.id_num,t1.id_num)
WHERE -- Setting your updating condition
     t1.id = t2.id