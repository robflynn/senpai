module ComponentsHelper
	def component(name, *options, &block)
		render "components/#{name}", *options, &block
	end

	def component_box(*options, &block)
		component(:box, *options, &block)
	end
end
