# Netbackup base class
class netbackup (
  $install_dir,
  $excludes,
) {

  contain netbackup::config

}
