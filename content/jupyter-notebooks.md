---
title: Jupyter Notebooks - Python
---

## Summary

In this tutorial, we will provide a brief introduction to:

1.  Jupyter Notebooks in the JupyterHub
2.  Programming in **Python** (using Jupyter Notebook)
3.  Geospatial Fundamentals (optional, self-study)
4.  Command line (**terminal**/shell)
5.  Version Control (code management using **git**)


## Introduction :: Programming in Python

Switch to Jupyter Notebook for an introduction to programming in Python

-   Variables (and mathematical operations)
-   [Data Structures](https://swcarpentry.github.io/python-novice-inflammation/04-lists/index.html) (list, tuple, dict)
-   [Flow Control](https://swcarpentry.github.io/python-novice-inflammation/05-loop/index.html) using loops (for, while)
-   [Conditionals](https://swcarpentry.github.io/python-novice-inflammation/07-cond/index.html) (if, else, elif)
-   [Functions](https://swcarpentry.github.io/python-novice-inflammation/08-func/index.html)
-   [Errors and Exceptions](https://swcarpentry.github.io/python-novice-inflammation/09-errors/index.html) (understanding and handling errors)
-   Using modules (libraries, packages)
    -   [pandas](https://pandas.pydata.org/docs/): high-performance, easy-to-use data structures and data analysis tools
    -   [rioxarray](https://corteva.github.io/rioxarray/stable/): based on the rasterio package for working with rasters and [`xarray`](http://xarray.pydata.org/en/stable/)

### Python Learning Resources

Self-paced lesson on [Programming with Python](https://swcarpentry.github.io/python-novice-inflammation/) from Software Carpentry

## Introduction :: Geospatial Fundamentals (Optional)

Detailed self-paced lesson on [Fundamentals of Geospatial Raster and Vector Data with Python](https://carpentries-incubator.github.io/geospatial-python/) from Data Carpentry

## Jupyter Notebooks in Earth Sciences

There are many Jupyter Notebooks that you can copy and run in our JupyterHub. Note our JupyterHub is set up for geospatial research and connection to NASA's data in the cloud. It is also set up for parallel processing with Dask. 

- [NASA Cloud Hackweek 2022](https://nasa-openscapes.github.io/2021-Cloud-Hackathon/) 
- [OceanHackWeek](https://oceanhackweek.org)
- [ICESat-2 Hackweeks](https://icesat-2-2022.hackweek.io/intro.html)

## Python/Conda environments

Python users can create conda environments if they need to install modules. You create a `environments.yml` file like this:

```yaml
name: nsidc
channels:
  - conda-forge
dependencies:
  - ipykernel
  - awscli~=1.21.4
  - requests
  - pip
```

And then in a terminal do this to activate the environment.
```
conda env create -f environment.yml --name myenv
conda activate myenv
conda list
```



