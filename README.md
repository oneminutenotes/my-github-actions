# my-github-actions

[![CI](https://github.com/surajkelhe/my-github-actions/actions/workflows/basic.yml/badge.svg)](https://github.com/surajkelhe/my-github-actions/actions/workflows/basic.yml)

# Count arguments docker action

This action prints out the number of arguments passed in

## Inputs

## `arguments to count`

**Required** The arguments to count.

## Outputs

## `argcount`

The count of the arguments.

## Example usage

```yaml
uses: surajkelhe/my-github-actions@main
with:
arguments: one two three
```
