# coding: utf-8
module Sociality
  module Helper
    def social_share_button_tag(title = "", opts = {})
      extra_data = {}
      rel = opts[:rel]
      html = []
      html << "<div class='sociality' data-title='#{h title}' data-img='#{opts[:image]}'"
      html << "data-url='#{opts[:url]}' data-desc='#{opts[:desc]}' data-popup='#{opts[:popup]}' data-via='#{opts[:via]}'>"

      Sociality.config.allow_sites.each do |name|
        extra_data = opts.select { |k, _| k.to_s.start_with?('data') } if name.eql?('tumblr')
        special_data = opts.select { |k, _| k.to_s.start_with?('data-' + name) }

        link_title = t "sociality.share_to", :name => t("sociality.#{name.downcase}")
        html << link_to(content_tag(:span), "#", {:rel => ["nofollow", rel],
                                 "data-site" => name,
                                 :class => "sociality-#{name}",
                                 :onclick => "return Sociality.share(this);",
                                 :title => h(link_title)}.merge(extra_data).merge(special_data)).html_safe
      end
      html << "</div>"
      raw html.join("\n")
    end
  end
end