class StaticPagesController < ApplicationController
  def index
  end

  def contacto
  end

  def xaltipan
  end

  def tierradegloria
  end

  def universitarios
    @feedback = Feedback.new
  end

  def voluntariado
    @feedback = Feedback.new
  end
end
