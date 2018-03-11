ActiveAdmin.register Post do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title, :content, :url, :source, :pubdate
  index do

    column :id
    column :title, :sortable => :title
    #column :section, :sortable => :section
    #column :content, :sortable => :content
    #column :pubdate, :sortable => :pubdate
    column :created_at
    column :updated_at
    column :source
    #column :url, :sortable => :url
    actions
  end

  filter :type
  filter :title
  filter :created_at
  filter :updated_at

  form  do |f|
    f.inputs 'Deatails' do
      f.input :title, :lable => "标题"
      f.input :type, :lable => "分类"
      f.input :content, :lable => "内容", as: :ckeditor , :cke_article_content => { :width=> 70, :overfolw => "hidden" }  
      #f.input :content, :lable => "内容", as: :froala_editor, :input_html => { :height => 40 }  
      #f.input :url, :lable => "url"
      #f.input :source, :lable => "来源"
      f.input :pubdate, as: :datetime_picker, :input_html => {:width => 100}
    end
    
    f.actions
  end

end
