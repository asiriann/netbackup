class netbackup::config inherits netbackup {

  contain netbackup::config::exclude_list
  contain netbackup::config::include_list

}
