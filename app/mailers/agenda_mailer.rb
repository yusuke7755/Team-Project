class AgendaMailer < ApplicationMailer

  def agenda_mail(agenda)
    @agenda = agenda
    @team = Team.find(@agenda.team_id)
      mail to: @team.members.map(&:email).join(","), subject: I18n.t('views.messages.complete_delete_agenda')
  end
end
