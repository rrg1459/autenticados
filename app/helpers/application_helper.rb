module ApplicationHelper

  def verifica_imagen(enlace)
    File.exists?('public' + enlace)
  end

end
