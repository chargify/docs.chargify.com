module ApplicationHelper
  MAX_BREADCRUMB_LEVEL = 5
  def breadcrumbs
    crumbs = []
    level = 1
    
    if page && parent = page.parent
      while (level < MAX_BREADCRUMB_LEVEL) && parent
        if parent.respond_to?(:permalink)
          crumbs << link_to(parent.title, doculab_doc_path(parent.permalink))
        else
          crumbs << parent.title
        end
        parent = parent.respond_to?(:parent) ? parent.parent : nil
        level += 1
      end
    end
    
    crumbs << link_to(Doculab.title, doculab_root_path)
    crumbs.reverse
  end
  
  private
  
    def index?
      params[:permalink].blank? || params[:permalink] == 'index'
    end
end
