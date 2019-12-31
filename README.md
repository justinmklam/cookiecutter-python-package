# Cookiecutter Python Package Template

Yet another minimal [cookiecutter](https://github.com/cookiecutter/cookiecutter) python package template, with an emphasis on easy and good looking documentation in Sphinx.

An example project created from this template can be found [here](https://github.com/justinmklam/example-python-package), with accompanying documentation hosted on [Read the Docs](https://example-python-package.readthedocs.io/en/latest/README.html).

## Usage

```bash
# Install the template engine
pip install cookiecutter

# Create a new project from this template
cookiecutter https://github.com/justinmklam/cookiecutter-python-package
```

This will prompt you to enter new values (or hit `ENTER` to accept the default ones), shown below:

```
author_name [Justin Lam]:
author_email [contact@justinmklam.com]:
project_name [My Py Package]:
package_name [mypypackage]:
package_version [0.1.0]:
package_description [A minimal cookiecutter template for Python packages]:
package_url [https://github.com/justinmklam/cookiecutter-python-package]:
```

Then to add it to an (empty) repository on GitHub:

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin <REPO URL>
git push -u origin master
```

## Features

* Uses:
    * Sphinx for documentation (with Google or Numpy-style docstrings)
    * Pytest as the test runner
* Includes:
    * Script to auto-generate a changelog of changes between tagged releases
    * [Read the Docs](https://readthedocs.org/) configuration file (optional)
    * BitBucket Pipelines configuration file (optional)

*Note: If the optional configuration files are not needed, simply delete them after the project has been created.*

## Documentation

### On the Code Side

Although function docstrings can be written in Sphinx/reStructuredText syntax, it's not as human-readable as Google or Numpy style docstrings. As such, this project uses the `sphinx.ext.napoleon` extension to parse the latter docstring formats.

reStructuredText can be used at the top of each file to describe the module's contents. At a minimum, the file should have a title and brief description. See `drivers/sample_driver.py` or `utils/sample_util.py` for reference.

### On the Docs Side

To generate the Sphinx docs, each new python file must be added to `{{cookiecutter.package_name}}.rst` as shown below. The repository already contains a few examples which can be used as reference.

```
.. automodule:: <python filename>
   :members:
   :undoc-members:
   :show-inheritance:
```

*Note: This may seem labourious, but it provides easier to follow documentation than the autogenerated modules using `sphinx-apidoc`.*

Additional pages can be added to the table of contents in `index.rst`. Although Sphinx prefers reStrureStructuredText files, markdown is also supported through the `recommonmark` extension.
