class QueryChecksController < ApplicationController
  def new
    @queries = session[:queries]
  end

  def create
    session[:queries] = params[:queries]
    checker = QueryChecker.new(params)

    if checker.call.present?
      session[:file_path] = checker.file_path
      redirect_to(query_check_path)
    else
      render :new
    end
  end

  def show
    file_path = session[:file_path]
    session.delete(:file_path)

    if file_path && File.exist?(file_path)
      @result = YAML.load(File.read(file_path))
      File.delete(file_path)
    else
      redirect_to(new_query_check_path)
    end
  end
end
