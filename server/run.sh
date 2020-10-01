sleep 20
cd /opt/server && python manage.py makemigrations && python manage.py migrate 
#user
cd /opt/server && echo "from jxwaf.models import jxwaf_user;jxwaf_user.objects.get_or_create(user_id='$USER_API_KEY',email='$USER_NAME',password='$USER_PASSWORD',api_password='$USER_API_PASSWORD')" | python manage.py shell
#mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h172.20.0.200 -e "insert into jxwaf_jxwaf_user(user_id,email,password,api_password)values('$USER_API_KEY','$USER_NAME','$USER_PASSWORD','$USER_API_PASSWORD');"
#superuser
cd /opt/server && echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('$SUPER_USER', '$SUPER_EMAIL', '$SUPER_PASSWORD')" | python manage.py shell 
uwsgi /opt/server/uwsgi2.ini &&  nginx 

tail -f /var/log/access.log
