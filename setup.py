from setuptools import find_packages, setup

setup(
    name="mypackage",
    version="1.0.0",
    description="My package",
    author="YOUR NAME",
    author_email="YOUR EMAIL",
    url="https://github.com/justinmklam/python-package-template",
    packages=find_packages(),
    scripts=[],
    install_requires=[
        "sphinx",
        "m2r",
        "pytest",
    ],
    zip_safe=False,
)
