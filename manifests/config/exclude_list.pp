class netbackup::config::exclude_list inherits netbackup::config {

  $exclude_files = keys($netbackup::excludes)

  $exclude_files.each |String $exclude_file|{

    $items = $netbackup::excludes[$exclude_file]

    file { "${netbackup::install_dir}/${exclude_file}":
      ensure  => file,
      content => epp('netbackup/exclude_list.epp', { 'items' => "${items}" }),
    }

  }

}
