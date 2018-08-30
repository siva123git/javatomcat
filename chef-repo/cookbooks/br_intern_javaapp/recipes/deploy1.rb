remote_file '/home/ubuntu/java_app.zip' do
    source 'http://www.java2s.com/Open-Source/Java_Free_CodeDownload/c/CarPool-master.zip'
    action :create
    owner 'root'
    group 'root'
    mode '0755'
end

