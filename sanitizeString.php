<?php
	    function sanitize_string($string, $min='', $max='')
    {
      $pattern = '/(;|\||`|>|<|&|^|"|'."\n|\r|'".'|{|}|[|]|\)|\()/i'; 
      // no piping, passing possible environment variables ($),
      // seperate commands, nested execution, file redirection, 
      // background processing, special commands (backspace, etc.), quotes
      // newlines, or some other special characters
      $string = preg_replace($pattern, '', $string);
      $len = strlen($string);
      if((($min != '') && ($len < $min)) || (($max != '') && ($len > $max)))
      {
        return FALSE;
      }
      return $string;
    }
?>