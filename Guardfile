# A sample Guardfile
# More info at https://github.com/guard/guard#readme

at_exit { `spring stop` }

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{app/controllers/.+\.rb})
  watch(%r{app/models/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html|.scss|.coffee)).*})  { |m| "/assets/#{m[2]}" }
  # Rails 4 scss convention
  watch(%r{(app|vendor)(/assets/\w+/(.+)\.(scss))}) { |m| "/assets/#{m[3]}.css" }
  # Routes
  watch('config/routes.rb')
end
