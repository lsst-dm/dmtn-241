.. image:: https://img.shields.io/badge/dmtn--241-lsst.io-brightgreen.svg
   :target: https://dmtn-241.lsst.io
.. image:: https://travis-ci.com/lsst-dm/dmtn-241.svg
   :target: https://travis-ci.com/lsst-dm/dmtn-241

#################################################################################
Data management and execution systems for the Rubin Observatory Science Pipelines
#################################################################################

DMTN-241
========

We present the Rubin Observatory system for data storage/retrieval and pipelined code execution. The layer for data storage and retrieval is named the Butler. It consists of a relational database, known as the registry, to keep track of metadata and relations, and a system to manage where the data is located, named the datastore. Together these systems create an abstraction layer that science algorithms can be written against. This abstraction layer manages the complexities of the large data volumes expected and allows algorithms to be written independently, yet be tied together automatically into a coherent processing pipeline. This system consists of tools which execute these pipelines by transforming them into execution graphs which contain concrete data stored in the Butler. The pipeline infrastructure is designed to be scalable in nature, allowing execution on environments ranging from a laptop all the way up to multi-facility data centers. This presentation will focus on the data management aspects as well as an overview on the creation of pipelines and the corresponding execution graphs.

Links
=====

- Live drafts: https://dmtn-241.lsst.io
- GitHub: https://github.com/lsst-dm/dmtn-241

Build
=====

This repository includes lsst-texmf_ as a Git submodule.
Clone this repository::

    git clone --recurse-submodules https://github.com/lsst-dm/dmtn-241

Compile the PDF::

    make

Clean built files::

    make clean

Updating acronyms
-----------------

A table of the technote's acronyms and their definitions are maintained in the `acronyms.tex` file, which is committed as part of this repository.
To update the acronyms table in ``acronyms.tex``::

    make acronyms.tex

*Note: this command requires that this repository was cloned as a submodule.*

The acronyms discovery code scans the LaTeX source for probable acronyms.
You can ensure that certain strings aren't treated as acronyms by adding them to the `skipacronyms.txt <./skipacronyms.txt>`_ file.

The lsst-texmf_ repository centrally maintains definitions for LSST acronyms.
You can also add new acronym definitions, or override the definitions of acronyms, by editing the `myacronyms.txt <./myacronyms.txt>`_ file.

Updating lsst-texmf
-------------------

`lsst-texmf`_ includes BibTeX files, the ``lsstdoc`` class file, and acronym definitions, among other essential tooling for LSST's LaTeX documentation projects.
To update to a newer version of `lsst-texmf`_, you can update the submodule in this repository::

   git submodule update --init --recursive

Commit, then push, the updated submodule.

.. _lsst-texmf: https://github.com/lsst/lsst-texmf
