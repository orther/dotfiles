Maid.rules do
  rule 'Remove Desktop files not accessed within the last week' do
    dir('~/Desktop/*').each do |path|
      if !1.week.since?(accessed_at(path))
        trash(path)
      end
    end
  end

  rule 'Remove Download files not accessed within the last week' do
    dir('~/Downloads/*').each do |path|
      if !1.week.since?(accessed_at(path))
        trash(path)
      end
    end
  end
end
