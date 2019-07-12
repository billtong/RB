bash 'install_gem' do
    cwd     ::File.dirname(__FILE__)
    code    'sudo gem install "jenkins_api_client" -q --no-document  --source=https://www.rubygems.org'
end
