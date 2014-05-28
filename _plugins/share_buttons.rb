#http://davidwkelso.com/jekyll-sharing/
#https://gist.github.com/thebigreason/1296097

module Jekyll
    module ShareButtonsFilter
      def share_buttons url
        full_url = @context.registers[:site].config['url'] + url

        <<-HTML
          <div class="sharing-buttons">
            <span class="twitter">
              <a href="http://twitter.com/share" class="twitter-share-button" data-url="#{full_url}">Tweet</a>
            </span>
            <span class="google">
              <g:plusone size="medium" href="#{full_url}"></g:plusone>
            </span>
            <span class="Facebook">
              <iframe src="https://www.facebook.com/plugins/like.php?href=#{full_url}&amp;show_faces=false&amp;layout=button_count" scrolling="no" frameborder="0" style="height: 21px; width: 100px" allowTransparency="true"></iframe>
            </span>
          </div>
        HTML
      end
    end
  end

  Liquid::Template.register_filter Jekyll::ShareButtonsFilter