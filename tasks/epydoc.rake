namespace :epydocs do
  HTML_DOCS_PATH = File.join(FileUtils.pwd, "Docs", "html")
  PDF_DOCS_PATH = File.join(FileUtils.pwd, "Docs", "pdf")

  desc "Build epydocs"
  task :build do # => ["setup:epydocs"] do
    [HTML_DOCS_PATH, PDF_DOCS_PATH].each {|p| FileUtils.rm_rf("#{p}/*", :verbose => true)}
    FileUtils.cd(CLIENT_CODE_DIR) do
      #new_python_path = "/home/hughdbrown/.virtualenvs/qstk/lib/python2.7"
      #sh("export PYTHONPATH='#{new_python_path}'")
      sh("epydoc --html . -o #{HTML_DOCS_PATH} --name QSTK")
      sh("epydoc --pdf . -o #{PDF_DOCS_PATH} --name QSTK")
    end
  end
end

desc "All epydocs tasks"
task :epydocs => ["epydocs:build"]
