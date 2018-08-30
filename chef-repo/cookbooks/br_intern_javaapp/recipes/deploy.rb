remote_file '/home/ubuntu/java_app.zip' do
    source 'http://www.java2s.com/Open-Source/Java_Free_CodeDownload/c/CarPool-master.zip'
    action :create
end

bash 'unzip_app' do
  cwd ::File.dirname(/home/ubuntu)
  code <<-EOH
    sudo apt-get install unzip
    unzip CarPool-master.zip -d /home/ubuntu
    EOH
end
