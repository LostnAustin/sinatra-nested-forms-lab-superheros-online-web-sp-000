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
        # binding.pry
        @hero_bio << hero[:bio]

        erb :"/super_hero"
# binding.pry 
      end
    end


    #   @member1_name = params[:team][:hero][0][:name]
    #   @member1_power = params[:team][:hero][0][:power]
    #   @member1_bio = params[:team][:hero][0][:biography]
    #
    #   @member2_name = params[:team][:hero][1][:name]
    #   @member2_power = params[:team][:hero][1][:power]
    #   @member2_bio = params[:team][:hero][2][:biography]
    #
    #   @member3_name = params[:team][:hero][2][:name]
    #   @member3_power = params[:team][:hero][2][:power]
    #   @member3_bio = params[:team][:hero][2][:biography]





 end
