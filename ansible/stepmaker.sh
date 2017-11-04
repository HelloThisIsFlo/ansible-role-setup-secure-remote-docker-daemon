echo 'Do NOT run, but `source ./stepmaker.sh`'
echo 'If sourced, ignore this message ;)'

function step {
  step=$1
  comment=$2
  cmd=${@:3}

  echo "#!/bin/bash\n\necho \"Running: \\\`$cmd\\\`\"\necho\n$cmd\n" > ./step-$1_$2.sh
  sudo chmod +x ./step-$1_$2.sh
}

