# Add any additional setup tasks here
chmod 600 /etc/ssl/private/ssl-cert-snakeoil.key

# These tasks are run as root
CONF="/etc/postgresql/9.5/main/postgresql.conf"
AUTH="/etc/postgresql/9.5/main/pg_hba.conf"

# Restrict subnet to docker private network
# echo "host    all             all             172.17.0.0/16               md5" >> $AUTH # this will come in when adding full file
# Listen on all ip addresses
# echo "listen_addresses = '*'" >> $CONF # this will come in when adding full file
# echo "port = 5432" >> /etc/postgresql/9.5/main/postgresql.conf #unnecessary since 5432 is default. 

# Enable ssl

# echo "ssl = true" >> $CONF #this is also default
#echo "ssl_ciphers = 'DEFAULT:!LOW:!EXP:!MD5:@STRENGTH' " >> $CONF
#echo "ssl_renegotiation_limit = 512MB "  >> $CONF 
#echo "ssl_cert_file = '/etc/ssl/certs/ssl-cert-snakeoil.pem'" >> $CONF  #this is also default
#echo "ssl_key_file = '/etc/ssl/private/ssl-cert-snakeoil.key'" >> $CONF  #this is also default
#echo "ssl_ca_file = ''                       # (change requires restart)" >> $CONF 
#echo "ssl_crl_file = ''" >> $CONF 
