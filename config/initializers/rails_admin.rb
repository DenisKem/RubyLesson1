RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit
  # config.parent_controller = 'ApplicationController'

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    config.model Employee do
      list do
        fields :full_name, :job_start, :position
      end

      edit do
        exclude_fields :employee_to_projects
      end

      object_label_method do
        :name_and_positions
      end
    end

    config.model Position do
      list do
        exclude_fields :created_at, :updated_at
      end
    end

    config.model EmployeeToProject do
      visible false
    end
  end
end
