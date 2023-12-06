module ApplicationHelper # モジュールはメソッドを格納できるもの
  # ページごとの完全なタイトルを返す
  def full_title(page_title = '')
    base_title = 'Ruby on Rails Tutorial Sample App'
    # page_title が存在するか？
    if page_title.empty?
      base_title
    else
      # #{} は " " の中で変数内の文字列を取り出す（式展開）
      "#{page_title} | #{base_title}"
    end
  end
end
