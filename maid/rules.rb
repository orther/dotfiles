# NOTE: These maid rules require ALPHA version of maid: 0.8.0.alpha.4

# The Maid::Tools source is a good reference while writing maid rules:
#   https://github.com/benjaminoakes/maid/blob/master/lib/maid/tools.rb

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
    dir('~/Desktop/Screen shot *').each do |path|
      if 1.day.since?(used_or_created_at(path))
        move(path, '~/Documents/Misc Screenshots/')
      end
    end
  end

  rule 'Remove Desktop files not accessed within the last 3 days' do
    dir('~/Desktop/*').each do |path|
      if 1.week.since?(used_or_created_at(path))
        trash(path)
      end
    end
  end

  rule 'Remove Download files not accessed within the last 3 days' do
    dir('~/Downloads/*').each do |path|
      if 1.week.since?(used_or_created_at(path))
        trash(path)
      end
    end
  end
end
