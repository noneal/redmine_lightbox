module RedmineLightbox
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        if context[:controller]
          return stylesheet_link_tag("jquery.fancybox-1.3.4.css", :plugin => "redmine_lightbox", :media => "screen") \
            + stylesheet_link_tag("lightbox.css", :plugin => "redmine_lightbox", :media => "screen") \
            + javascript_include_tag('jquery.fancybox-1.3.4.pack.js', :plugin => 'redmine_lightbox') \
            + javascript_include_tag('jquery.easing-1.3.pack.js', :plugin => 'redmine_lightbox') \
            + javascript_include_tag('lightbox.js', :plugin => 'redmine_lightbox') \
        else
          return ''
        end
      end
    end
  end
end
