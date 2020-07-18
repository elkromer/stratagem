from distutils.core import setup
from setuptools.command.build_py import build_py
from ctypes import sizeof, c_void_p
import platform
import codecs
import os

is64bit = sizeof(c_void_p) > 4 and True or False

def read(*parts):
  here = os.path.abspath(os.path.dirname(__file__))
  return codecs.open(os.path.join(here, *parts), 'r').read()

data_files = [("", ["LICENSE"])]
         
class CustomBuildPy(build_py):
  def run(self):
    build_py.run(self)

setup(
  name = 'krome',
  version = '0.0.0001',
  description = 'Reese created this as a test',
  long_description = read('README.md'),
  keywords = 'Test Library ',
  url = 'hkrome.com',
  author = 'Reese Krome',
  author_email = 'reesek@nsoftware.com',
  license = 'Proprietary - see Software License in documentation',
  classifiers=[
    'Operating System :: MacOS :: MacOS X',
    'Operating System :: Microsoft :: Windows',
    'Operating System :: POSIX',
    'Programming Language :: Python',
    'Topic :: Utilities',
  ],
  packages=['krome'],
  package_dir={'krome': 'krome'},
  data_files = data_files,
  cmdclass={'build_py': CustomBuildPy},
  platforms = ["Windows", "Linux", "MacOS"],
)