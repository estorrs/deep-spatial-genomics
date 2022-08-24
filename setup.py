from setuptools import setup, find_packages

setup(
    name = 'deep-spatial-genomics',
    packages = find_packages(exclude=['examples']),
    version = '0.0.2',
    license='MIT',
    description = 'Deep Spatial Genomics',
    author = 'Erik Storrs',
    author_email = 'erik@storrs.io',
    url = 'https://github.com/estorrs/deep-spatial-genomics',
    keywords = [
        'artificial intelligence',
        'machine learning',
        'deep learning',
        'spatial genomics',
        'spatial transcriptomics',
        'multiplex imaging',
        'attention mechanism',
    ],
    install_requires=[
        'einops>=0.4.1',
        'torch>=1.10',
        'torchvision',
        'scanpy'
    ],
    classifiers=[
        'Development Status :: 4 - Beta',
        'Intended Audience :: Developers',
        'Topic :: Scientific/Engineering :: Bio-Informatics',
        'Topic :: Scientific/Engineering :: Artificial Intelligence',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python :: 3.6',
    ],
)
