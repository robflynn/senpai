class ComponentGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)

    desc "Generate a Senpai Component in app/javascript/senpai/components/"    
    def create_component_files
        create_file "app/javascript/senpai/components/#{file_name}/_#{file_name}.html.erb", <<-EOF
<%
    attributes = {        
    }
%>            
<!-- component markup goes here -->    
<div class="#{file_name}">
</div>
        EOF

        create_file "app/javascript/senpai/components/#{file_name}/_#{file_name}.js", <<-EOF
// Javascript for component `#{file_name}` goes here
        EOF

        create_file "app/javascript/senpai/components/#{file_name}/_#{file_name}.scss", <<-EOF
// Styling for component `#{file_name}` goes here
        EOF


    end
end