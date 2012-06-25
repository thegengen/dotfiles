files = {
  "ack/_ackrc"   => "~/.ackrc",
  "bash/profile" => "~/.bash_profile",
  "bash/bash.d"  => "~/.bash.d"
}

desc "install dotfiles" 
task :install do
  files.each do |source, dest|
    run("cp -r #{source} #{dest}")
  end
end

def run(cmd)
  puts(cmd)
  system(cmd)
end
