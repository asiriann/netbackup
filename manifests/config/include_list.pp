class netbackup::config::include_list inherits netbackup::config {

  unless $netbackup::includes =~ Undef {
    $include_files = keys($netbackup::includes)

    $include_files.each |String $include_file|{

      $items = $netbackup::includes[$include_file]

      file { "${netbackup::install_dir}/${include_file}":
        ensure  => file,
        content => epp('netbackup/include_list.epp', { items => $items }),
      }

    }
  }
}
