include_recipe "java"
include_recipe "git"
include_recipe "zeromq::dev"

source_package "jzmq" do
  source "https://github.com/zeromq/jzmq.git"
  source_type "git"
  ref "master"
  build_command "./autogen.sh && ./configure && make install"
  creates "/usr/local/share/java/zmq.jar"
end
