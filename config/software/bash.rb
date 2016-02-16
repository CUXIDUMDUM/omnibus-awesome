name "bash"
default_version "4.3.30"

dependency "libiconv"
dependency "ncurses"

version("4.3.30") { source md5: "a27b3ee9be83bd3ba448c0ff52b28447" }

source url: "https://ftp.gnu.org/gnu/bash/bash-#{version}.tar.gz"

relative_path "bash-#{version}"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  configure_command = ["./configure",
                       "--prefix=#{install_dir}/embedded"]

  # On freebsd, you have to force static linking, otherwise the executable
  # will link against the system ncurses instead of ours.
  if freebsd?
    configure_command << "--enable-static-link"
  end

  command configure_command.join(" "), env: env
  make "-j #{workers}", env: env
  make "-j #{workers} install", env: env
end
