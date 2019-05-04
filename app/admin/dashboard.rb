ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: "대시보드"

  page_action :get_question, method: :post do
    question_id = params[:id]
    question = Question.find(question_id)
    question.solving(current_admin_user.id)
  end

  content title: proc{ I18n.t("active_admin.dashboard") } do
    render 'table'
  end # content
end
