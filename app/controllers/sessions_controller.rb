class SessionsController < ApplicationController

  # пустой экшен, только показывает свой шаблон
  def new
  end

  # создает в объекте session новый факт залогиненности пользователя
  # если он правильно сообщил мэйл/пароль
  def create
    user = User.authenticate(params[:name], params[:password])

    if user.present?
      session[:user_id] = user.id
      redirect_to root_url, notice: 'вы успешно залогинились'
    else
      flash.now.alert = 'Неправильные имя или пароль'
      render :new
    end
  end

  # удаляет сессию залогиненного юзера
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Вы разлогинились! Приходите еще!'
  end

end
