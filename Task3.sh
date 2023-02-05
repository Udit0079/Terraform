getValueFromObject() {
  local object=$1
  local key=$2
  echo $object | jq -r ".$key"
}
