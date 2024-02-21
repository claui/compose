function __compose {
  uni s -j -f all "$@" \
    | jq -r '.[]
      | (": \"" + .char + "\"   U" + .hex + " # " + .name)'
}

export -f __compose
