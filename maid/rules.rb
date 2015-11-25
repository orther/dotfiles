# NOTE: These maid rules require ALPHA version of maid: 0.8.0.alpha.4

# The Maid::Tools source is a good reference while writing maid rules:
#   https://github.com/benjaminoakes/maid/blob/master/lib/maid/tools.rb

# Protected Dir - Return the results from the Maid::Tools.dir function with
# protected paths removed.
#
## Examples
#
#     pdir('~/Downloads/*.zip')
#     pdir('~/Downloads/*.{exe,deb,dmg,pkg,rpm}')
#     pdir(['~/Downloads/*.zip', '~/Dropbox/*.zip'])
#     pdir(%w(~/Downloads/*.zip ~/Dropbox/*.zip))
#     pdir('~/{Downloads,Dropbox}/*.zip')
#     pdir('~/Music/**/*.m4a')
def pdir(globs)
  return dir(globs).reject { |p| protected_path?(p) }
end

# This function is meant to be a single place to define conditions to
# determine if a file or folder is protected (don't get effected by rules)
#
# ## Example
#
#     protected_path?("foo.zip") # => false
def protected_path?(path)
  # NOTE: this requires tag to be installed `brew install tag`
  ['Red'].each do |tag|
    if contains_tag?(path, tag)
      return true
    end
  end
  return false
end

# Return the used_at time (Spotlight metadata attribute kMDItemLastUsedDate)
# if available, otherwise return created_at time (Unix ctime) which is should
# always be available.
#
# ## Example
#
#     used_or_created_at("foo.zip") # => Sat Apr 09 10:50:01 -0400 2015
def used_or_created_at(path)
  return used_at(path) || created_at(path)
end

Maid.rules do
  rule 'Misc Screenshots' do
    pdir('~/Desktop/Screen shot *').each do |path|
      # log("screen shots w/ reject" + path)
      if 1.day.since?(used_or_created_at(path))
        move(path, '~/Documents/Misc Screenshots/')
      end
    end
  end

  rule 'Remove Desktop files not accessed within the last 3 days' do
    pdir('~/Desktop/*').each do |path|
      if 3.day.since?(used_or_created_at(path))
        trash(path)
      end
    end
  end

  rule 'Remove Download files not accessed within the last 3 days' do
    pdir('~/Downloads/*').each do |path|
      if 3.day.since?(used_or_created_at(path))
        trash(path)
      end
    end
  end
end
