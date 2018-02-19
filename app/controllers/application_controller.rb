class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :init

  def set_title(title = '')
    @title = [title.strip, ' - ', @project_name].join if !title.strip.empty?
  end

  private

  def init
    project_name = Rails.application.config.settings.project_name

    @project_name = project_name
    @title        = project_name
    @copyright    = get_copyright
    @pagelist = {
      'home'      => '在庫',
      'companies' => '取引先',
      'trades'    => '分析',
      'configs'   => '設定'
    }
  end

  def get_copyright
    started_year = Rails.application.config.settings.project_started.to_s
    current_year = Date.today.year.to_s
    if started_year == current_year
      year_tag = current_year
    else
      year_tag = [started_year, '-', current_year].join
    end

    author      = Rails.application.config.settings.project_author
    author_link = Rails.application.config.settings.project_author_link
    author_tag  = ''
    unless author.empty?
      if !author_link.empty?
        author_tag = ['<a href="', author_link,  '">', '@', author, '</a>/'].join
      else
        author_tag = '@' << author
      end
    end
    return "Copyright #{year_tag} #{@project_name} #{author_tag}"
  end
end

