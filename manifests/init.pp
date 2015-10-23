class foreman_compute (){
  include foreman::cli
  file {['/etc/hammer','/etc/hammer/foreman_compute']: 
    ensure => directory
  }

}
