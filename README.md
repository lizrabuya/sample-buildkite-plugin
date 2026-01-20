# Sample Buildkite Plugin [![Build status](https://badge.buildkite.com/d673030645c7f3e7e397affddd97cfe9f93a40547ed17b6dc5.svg)](https://buildkite.com/buildkite/plugins-template)

A Buildkite plugin for something awesome
 
## Options

These are all the options available to configure this plugin's behaviour. 

### Optional 

#### `optional` (string)

Describe how the plugin behaviour changes if this option is not specified, allowed values and its default.
 

## Examples

### Basic usage

Minimal configuration with just the required option:

```yaml
steps:
  - label: "🔨 Basic plugin usage"
    command: "echo processing"
    plugins:
      - sample#v0.0.1: ~
```

### With optional parameters

Adding optional configuration:

```yaml
steps:
  - label: "🔨 Plugin with options"
    command: "echo processing with options"
    plugins:
      - sample#v0.0.1:
          optional: "optional-value"
```

## Developing

**Run all tests:**

```bash
docker run -it --rm -v "$PWD:/plugin:ro" buildkite/plugin-tester
```
 

**Run shellcheck:**

```bash
shellcheck hooks/* tests/* lib/*.bash
```

## 📜 License

The package is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
