# frozen_string_literal: true

module ApplicationHelper
  def year
    Time.current.year
  end

  def github_url(author, repo, author_or_repo)
    case author_or_repo
    when 'author'
      link_to author.to_s, 'https://github.com/Lushnikov-N-A/', rel: 'nofollow noopener', target: '_blank'
    when 'repo'
      link_to repo.to_s, 'https://github.com/Lushnikov-N-A/TestGuru/', rel: 'nofollow noopener', target: '_blank'
    end
  end

  def thinknetica
    link_to 'Thinknetica', 'https://thinknetica.com/', rel: 'nofollow noopener', target: '_blank'
  end
end
