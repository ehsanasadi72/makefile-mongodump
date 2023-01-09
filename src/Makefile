help:
	@echo "for dump -> make HOST=mongo_target_ip PORT=mongo_target_port\
	 USERNAME=mongo_target_username PASSWORD=_mongo_target_passowrd DBNAME=mongo_target_dbname"

dump:
	@mongodump --host $(HOST) --port 27017 --username=$(USERNAME) --password=$(PASSWORD)\
	 --authenticationDatabase admin -d $(DBNAME) --collection $(COLLCECTION) --authenticationMechanism=SCRAM-SHA-1 --gzip 

ftp:
	. ./ftp.sh
	
	