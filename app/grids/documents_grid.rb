class DocumentsGrid
  include Datagrid

  scope do |m|
    Document
  end

  column :key
  column :title
  column :is_auth
  column :actions, html: true, header: '' do |o|
    link_to I18n.t('actions.edit'), edit_admin_document_path(o.key)
  end
end
