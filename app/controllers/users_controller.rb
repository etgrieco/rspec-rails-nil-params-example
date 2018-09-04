class UsersController < ApplicationController

  def index
    escaped_query = CGI.escape(params[:query])
    render(json: { query: escaped_query })
  end

end
