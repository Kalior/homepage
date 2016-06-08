require 'github/markup'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_first_me

  private
    def set_first_me
      @me_first = Me.first
      @me_description = GitHub::Markup.render("description.markdown", @me_first.description)
    end
end
