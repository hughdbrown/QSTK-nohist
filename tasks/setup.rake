# -----------------------------------------------------
# Setup tasks.
# -----------------------------------------------------
namespace "setup" do
  desc "Run the development setup"
  task :develop do
    sh("python setup.py develop")
  end

  desc "Run the main setup"
  task :install do
    sh("python setup.py install")
  end

  desc "Install linting requirements"
  task :lint do
    sh("pip install pep8 pylint coverage pyflakes")
  end

  desc "Install testing requirements"
  task :test do
    sh("pip install nose")
  end

  desc "Install epydocs requirements"
  task :epydocs do
    version = "epydoc-3.0.1"
    url = "http://prdownloads.sourceforge.net/epydoc/#{version}.tar.gz"
    install_tar(url, version) #unless sh("which epydoc")
  end
end

task :setup => ["setup:install", "setup:develop"]
