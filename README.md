# Read Any File

Read any file from a repository.

## Inputs

- `file`: the path to the file you want to read, relative to the repository root (default is ./VERSION)

## Outputs

- `contents`: the contents of the file

## Usage

```yml
jobs:
  test:
    runs-on: ubuntu-latest
    name: Test read file action
    steps:
      -
        name: Checkout code
        uses: actions/checkout@v3
      - name: Read file
        uses: bfren/read-file@v1
        id: read_file
        with:
          file: ./VERSION
      - name: Echo file
        run: echo "${{ steps.read_file.outputs.contents }}"
```

## Licence

> [MIT](https://mit.bfren.dev/2021)

## Copyright

> Copyright (c) 2021-2022 bfren
> Unless otherwise stated
