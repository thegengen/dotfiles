files = {
  "ack/ackrc"   => "~/.ackrc",
  "bash/profile" => "~/.bash_profile",
  "bash/bash.d"  => "~/.bash.d",
  "rubygems/gemrc" => "~/.gemrc",
  "git/gitconfig" => "~/.gitconfig",
  "git/gitignore" => "~/.gitignore",
  "tmux/tmux.conf" => "~/.tmux.conf",
  "vim" => "~/.vim",
  "vimrc" => "~/.vimrc",
  "gvimrc" => "~/.gvimrc",
}

desc "install dotfiles on the system"
task :install do
  files.each do |source, dest|
    run("rm -rf #{dest} && cp -r #{source} #{dest}")
  end
end

desc "copy files into the repo from the system"
task :fetch do
  files.each do |dest, source|
    run("rm -rf #{dest} && cp -r #{source} #{dest}")
  end
  run("rm -rf vim/bundle/*")
  run("cp -r ~/.vim/bundle/Vundle.vim vim/bundle")
end

def run(cmd)
  puts(cmd)
  system(cmd)
end
