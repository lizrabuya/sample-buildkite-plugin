#!/usr/bin/env bats

setup() {
  load "${BATS_PLUGIN_PATH}/load.bash"

  # Uncomment to enable stub debugging
  # export CURL_STUB_DEBUG=/dev/tty
 
} 

@test "Normal basic operations" {

  run "$PWD"/hooks/command

  assert_success
  assert_output --partial 'Running plugin with options' 
}

@test "Optional value changes behaviour" {
  export BUILDKITE_PLUGIN_SAMPLE_OPTIONAL='other value'

  run "$PWD"/hooks/command

  assert_success
  assert_output --partial 'Running plugin with options'
  assert_output --partial 'optional: other value'
}
 

