class CalculatorController < ApplicationController

    def index
        render 'calculator/index'
    end

    def cal
        p = params[:principal].to_i
        r = params[:rate].to_f/100
        m = params[:months].to_i

        puts "principal is #{p}"
        puts "rate is #{r}"
        puts "months is #{m}"

        x = (1+r/12)**m
        puts "x is #{x}"


        @result = (p*(r/12)*x/(x-1)).round(2)

        render :index
    end


    def show
        render :index
    end
end