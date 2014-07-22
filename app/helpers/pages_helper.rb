module PagesHelper

  def stargazers_count
    repo = Octokit.repo 'concerto/concerto'
    return repo.stargazers_count
  end

  #Returns a Tuple <avatar_url, user_name, commit_message> representing latest
  #commit in concerto/concerto.
  def latest_commit
    commits = Octokit.commits 'concerto/concerto', :per_page => 1
    commit = commits.first
    user = commit.author.login
    user_icon_url = commit.author.avatar_url
    #need to figure out how much we will truncate
    comment = commit.commit.message
    return user_icon_url, user, comment
  end


  #Returns a Tuple <release_version, release_date, release_url> representing the
  #latest release we've published in Github.
  def latest_release
    releases = Octokit.releases 'concerto/concerto'
    #Find the latest non-draft non-prerelease release.
    release = releases.detect {|f| f[:draft] == false && f[:prerelease] == false }

    release_version = release.name
    release_date = release.published_at.strftime("%m/%d/%Y")
    release_url = release.zipball_url
    return release_version, release_date, release_url
  end

end
