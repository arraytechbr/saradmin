class IgrejaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    if @user.tem_permissao ['usuarioPodeAcessarTodosOsNiveisDaIgreja']
      return true
    else
      membro = Membro.find_by_user_id(@user.id)

      unless membro.nil?
        igrejas = Igreja.where(id: membro.igrejas_ids)

        if igrejas.length > 0
          return true
        end

      end

      return false
    end
  end
end
