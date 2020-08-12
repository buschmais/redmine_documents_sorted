Redmine::Plugin.register :redmine_documents_sorted do
  name 'Documents Sorted'
  author 'Frank Schwarz'
  description 'Documents sorted by Date by default'
  version '0.0.1.dev'

  Redmine::MenuManager.map :project_menu do |menu|
    menu.delete :documents
    menu.push :documents, { :controller => 'documents', :action => 'index', :sort_by => 'date' }, :param => :project_id, :caption => :label_document_plural, :after => :news
  end
end
