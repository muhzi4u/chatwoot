class AssignmentMailer < ApplicationMailer
  default from: 'accounts@chatwoot.com'
  layout 'mailer'

  def conversation_assigned(conversation, agent)
    @agent = agent
    @conversation = conversation
    mail(to: @agent.email, subject: "#{@agent.name}, A new conversation [ID - #{@conversation.display_id}] has been assigned to you.")
  end
end
