# {{cookiecutter.project_name}}

{{cookiecutter.package_description}}

## Installation

To install the package locally for development:

```bash
pip3 install -e .
```

To build the documentation:

```bash
cd docs/

# Install sphinx requirements (if necessary)
pip3 install -r requirements.txt

# Build the docs
make html

# Open the docs in your browser
google-chrome _build/html/index.html
```

## Usage

## Releases

If tagged releases are used, the following script can be run to generate a changelog between tags. This will create/update a `CHANGELOG.md` file.

```bash
scripts/generate-changelog.sh
```
