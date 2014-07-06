desc "Show rake routes without the cluttering PATCH line"
task :short do
  Rake::Task["routes"].invoke
end