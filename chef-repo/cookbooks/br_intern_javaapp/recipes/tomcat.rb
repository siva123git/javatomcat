
group 'tomcat' do
  action :create
  members 'root' 
end 

directory '/opt/tomcat' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_file 'tomcat.tar.gz' do
  source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'tomcat' do
    command 'sudo tar -C /opt/tomcat -zxvf /home/ubuntu/tomcat.tar.gz'
end

service 'tomcat7' do
    action :restart
end
