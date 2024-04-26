# Earthdata Login

## Overview

## Why do I need an Earthdata login?

We will be teaching you ways to programmatically access NASA remote-sensing data from within your scripts. You will need to enter your Earthdata username and password in order for this to work.

## Getting an Earthdata login

If you do not already have an Earthdata login, then navigate to the [Earthdata Login](https://urs.earthdata.nasa.gov/) page, a username and password, and then record this somewhere for use during the tutorials:

## Configure programmatic access to NASA servers

If you use web interfaces to retrieve nasa data such as [Earthdata Search](https://earthdata.nasa.gov/) you are prompted to login. We will be using software to retrieve data from NASA Servers during the hackweek, so you must store your credentials on the JupyterHub. Run the following commands on the JupyterHub in a terminal replacing your Earthdata login username and password:

```shell
echo "machine urs.earthdata.nasa.gov login EARTHDATA_LOGIN password EARTHDATA_PASSWORD" > ~/.netrc
chmod 0600 .netrc
```
