 require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

        erb :"/super_hero"
    end





    post '/teams' do
      #  binding.pry
      @team_name = params[:team][:name]
      @motto = params[:team][:motto]
      @hero_name = []
      @hero_power = []
      @hero_bio = []

      @heroes = params[:team][:hero]
      @heroes.each do |hero|

        @hero_name << hero[:name]
        @hero_power << hero[:power]
        @hero_bio << hero[:bio]
      end
        erb :teams
    end
 end
