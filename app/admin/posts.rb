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
  permit_params :type, :title, :content, :url, :source, :pubdate
  index do

    column :id
    column "标题", :title, :sortable => :title
    column "分类", :type, :collection => [[1, "研究院" ], [2 , "今日新闻" ]]
    #column :content, :sortable => :content
    #column :pubdate, :sortable => :pubdate
    column :created_at
    column :updated_at
    column :source
    #column :url, :sortable => :url
    actions
  end

  #filter :new_tag
  filter :title
  filter :created_at
  filter :updated_at

  form  do |f|
    f.inputs '内容编辑' do
      f.input :title, :lable => "标题"
      f.input :type, :lable => "分类", :as => :select, :collection => [["研究院", 1], ["今日新闻", 2]]
  #    f.input :new_tag
      f.input :content, :lable => "内容", as: :ckeditor , :cke_article_content => { :width=> 70, :overfolw => "hidden" }  
      #f.input :content, :lable => "内容", as: :froala_editor, :input_html => { :height => 40 }  
      #f.input :url, :lable => "url"
      #f.input :source, :lable => "来源"
      f.input :pubdate, as: :date_select
    end
    
    f.actions
  end

end
