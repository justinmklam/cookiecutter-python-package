from setuptools import find_packages, setup

setup(
    name="{{cookiecutter.package_name}}",
    version="{{cookiecutter.package_version}}",
    description="{{cookiecutter.package_description}}",
    author="{{cookiecutter.author_name}}",
    author_email="{{cookiecutter.author_email}}",
    url="{{cookiecutter.package_url}}",
    packages=find_packages(),
    scripts=[],
    install_requires=[
        "sphinx",
        "m2r",
        "pytest",
    ],
    zip_safe=False,
)
