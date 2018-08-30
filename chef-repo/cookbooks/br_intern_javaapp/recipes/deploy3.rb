remote '/home/ubuntu/java_app.zip' do
    source 'http://www.java2s.com/Open-Source/Java_Free_CodeDownload/c/CarPool-master.zip'
    action :create
    owner 'root'
    group 'root'
    mode '0755'
end


bash 'unzip_app' do
  cwd ::File.dirname(/home/ubuntu)
  code <<-EOH
    sudo apt-get install zip
    unzip java_app.zip -d /home/ubuntu
    EOH
end


