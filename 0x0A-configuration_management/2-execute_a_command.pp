# Kill process

exec { 'killmenow':
  command => 'killall -9 killmenow',
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  onlyif  => 'pgrep killmenow',
}

