bash 'unzip_app' do
  cwd ::File.dirname(/home/ubuntu)
  code <<-EOH
    sudo apt-get install zip
    unzip CarPool-master.zip -d /home/ubuntu
    EOH
end

