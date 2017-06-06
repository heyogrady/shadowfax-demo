class Superadmin::DesignsController < ApplicationController

  def templates_index
    render "superadmin/designs/templates/index"
  end

  def templates_show
    render "superadmin/designs/templates/show"
  end

  def templates_new
    render "superadmin/designs/templates/new"
  end

  def templates_dashboard
    render "superadmin/designs/templates/dashboard"
  end

  def templates_wizard
    render "superadmin/designs/templates/wizard", layout: "landing-page"
  end

  def templates_settings
    render "superadmin/designs/templates/settings"
  end

  def templates_components
    render "superadmin/designs/templates/components"
  end

end
