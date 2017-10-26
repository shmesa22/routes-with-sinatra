require 'sinatra'

get '/' do
  # Esta ruta accede a los query string
  @params_query = params
  # erb :index
  [200, {"HTTP_USER_TOKEN" => "JKfa54580sdfsdHJJKH"}, "El usuario está loggeado"]
end

get '/welcome/:name/:last_name/:age/:weight/*' do
  # Esta ruta accede a las variables de ruta
  @name = params[:name]
  @params_route = params
  erb :welcome
end

get '/request' do
  @url = request.url
  @ip = request.ip
  @body = request.body
  erb :request
end
