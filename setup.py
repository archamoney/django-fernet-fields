from os.path import join
from setuptools import setup, find_packages


long_description = (
    open('README.rst').read() + open('CHANGES.rst').read())


def get_version():
    with open(join('fernet_fields', '__init__.py')) as f:
        for line in f:
            if line.startswith('__version__ ='):
                return line.split('=')[1].strip().strip('"\'')


setup(
    name='django-fernet-fields',
    version=get_version(),
    description="Fernet-encrypted model fields for Django",
    long_description=long_description,
    long_description_content_type='text/x-rst',
    author='ORCAS, Inc',
    author_email='orcastech@orcasinc.com',
    url='https://github.com/orcasgit/django-fernet-fields/',
    packages=find_packages(),
    install_requires=['Django>=1.11,<5.1', 'cryptography>=0.9'],
    classifiers=[
        'Environment :: Web Environment',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3.8',
        'Programming Language :: Python :: 3.9',
        'Programming Language :: Python :: 3.10',
        'Programming Language :: Python :: 3.11',
        'Programming Language :: Python :: 3.12',
        'Programming Language :: Python :: Implementation :: CPython',
        'Framework :: Django',
    ],
    # Only support Python versions in testing matrix
    python_requires='>=3.8,<3.13',
    zip_safe=False,
)
