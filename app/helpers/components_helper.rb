module ComponentsHelper    
	def component(name, options = {}, &block)
        if block_given?
            render layout: "components/#{name}/#{name}", locals: { options: options }, &block
        else
            render partial: "components/#{name}/#{name}", locals: { options: options }
        end
	end

    def c_icon(options = {}, &block)
        component(:icon, options, &block)
    end

    def tag_attributes(hash)        
        hash.select { |k,v| v}.map { |k,v| "#{k.strip}=\"#{v.strip}\"" }.join(" ").html_safe
    end

end