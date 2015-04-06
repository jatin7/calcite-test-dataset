# Shuts down databases that would otherwise clash with the VM's ports
case $(uname -s) in
(Linux)
  sudo /etc/init.d/mongodb stop
  sudo /etc/init.d/mysql stop
  sudo /etc/init.d/postgresql stop
  ;;
(Darwin)
  mysql.server stop
  ;;
esac

