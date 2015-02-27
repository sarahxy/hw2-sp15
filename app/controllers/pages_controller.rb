class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    if params[:adjective].blank?
      @text = "You are nothing!"
    else
      @text = params[:name] + " is so " + params[:adjective]
    end
  end

  def age
  end

  def person
    @me = Person.new(params[:name], params[:age])
    @introduction = @me.introduce
    @birth = @me.birth_year
    @my_nickname = @me.nickname
  end
end
