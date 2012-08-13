module HasAttached
  class InstallGenerator < Rails::Generators::Base
    
    source_root File.expand_path('../templates', __FILE__)
      
    def generate_config

create_file "config/s3.yml", <<-CONTENT
production:
  bucket: BUCKET_NAME
  access_key_id: ACCESS_KEY_ID
  secret_access_key: SECRET_ACCESS_KEY
CONTENT

create_file "config/styles.yml", <<-CONTENT
styles:
  photo:
    large: "800x600"
CONTENT
    
    end

  end
end
