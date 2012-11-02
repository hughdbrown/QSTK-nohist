try:
    from setuptools import setup, find_packages
except ImportError:
    from ez_setup import use_setuptools
    use_setuptools()
    from setuptools import setup, find_packages

setup(
    name='QSTK',
    version='0.1',
    description='Python toolkit for stocks',
    author='Tucker Balch',
    author_email='tucker@cc.gatech.edu',
    url='http://wiki.quantsoftware.org/',
    # On ubuntu, you need to install these:
    #   sudo apt-get install libfreetype6-dev libpng-dev
    # before you can get matplotlib to build
    install_requires=[
        'nose==1.2.1',
        'numpy==1.6.2',
        'python-dateutil==2.1',
        'pytz==2012h',
        'pandas==0.9.0',
        'matplotlib==1.1.1',
    ],
    tests_require=[
        'nose==1.2.1',
        'coverage==3.5.3',
        'pylint==0.26.0',
        'pep8==1.3.3',
        'pyflakes==0.5.0',
    ],
    setup_requires=[],
    packages=find_packages(exclude=['tests']),
    include_package_data=True,
    test_suite='nose.collector',
    zip_safe=False,
)
