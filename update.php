<?php

function nl() { echo '<br/>'; }
function nl2() { nl(); nl(); }

nl();
echo "MISE A JOUR DU SITE WEB EN COURS";
nl();
echo "...";
nl2();

$CMD = "git pull";
//$CMD = "../UPDATE";
//$CMD = 'ls -lart';
echo $CMD;
$output = shell_exec($CMD);
echo "<pre>$output</pre>";
nl2();

echo "MISE A JOUR TERMINÉE";
nl2();

#phpinfo();
