<?php
//plugin di esempio per vedere quanta memoria utilizza TGUserbot. 
class memoryusage extends TGUserbotPlugin {
  function onStart() {
    function get_memory_usage() {
      $size = memory_get_usage(true);
      $unit = ['b', 'kb', 'mb', 'gb', 'tb', 'pb'];
      return @round($size/pow(1024, ($i=floor(log($size, 1024)))), 2).' '.$unit[$i];
    }
}
  function onUpdate() {
    global $msg;
    global $chatID;
    if ($msg == '/memoryusage') {
      sm($chatID, 'Sto utilizzando '.get_memory_usage());
    }
  }
}
