# Read Any File

Read any file from a repository.

## Inputs

- `file`: the path to the file you want to read, relative to the repository root

## Outputs

- `contents`: the contents of the file

## Usage

The following is from the `test.yml` workflow in this repository:

```yml
jobs:
  test:
    runs-on: ubuntu-latest
    name: Test read file action
    steps:
      -
        name: Checkout code
        uses: actions/checkout@v2
      - name: Read file
        uses: ./
        id: read_file
        with:
          file: ./LICENSE
      - name: Echo file
        run: echo "${{ steps.read_file.outputs.contents }}"
```
