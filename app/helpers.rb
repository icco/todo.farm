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

    def days year, month, day
      now = Time.utc(year, month, day)
      yesterday = now - 86400
      tomorrow = now + 86400

      return [yesterday, now, tomorrow]
    end
  end
end

BrainChild::App.helpers BrainChild::Helpers
