from setuptools import find_packages, setup

setup(
    name="awesem",
    version="1.0.0",
    description="Code to control the UBC AweSEM device",
    author="Justin Lam",
    author_email="justin@mistywest.com",
    url="https://bitbucket.org/mw_active/ua02-awesem-control",
    packages=find_packages(),
    scripts=[],
    install_requires=[
        "sphinx",
        "m2r",
        "pytest",
    ],
    zip_safe=False,
)
