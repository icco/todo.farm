# Helper methods defined here can be accessed in any controller or view in the application
module BrainChild
  module Helpers
    include FuzzyTimeHelper

    def mkd text
      markdown = Redcarpet::Markdown.new(
        Redcarpet::Render::HTML,
        autolink: true,
        tables: true,
        no_intra_emphasis: true,
        strikethrough: true,
        fenced_code_blocks: true)

        markdown.render(text.to_s)
    end
  end
end

BrainChild::App.helpers BrainChild::Helpers
