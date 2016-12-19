# Netbackup base class
class netbackup (
  $install_dir,
  $excludes,
  Optional[Hash] $includes,
) {

  contain netbackup::config

}
