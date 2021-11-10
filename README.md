# ScienceMesh Documentation

## Build locally

Before hacking you need to install [Hugo extended version](https://github.com/gohugoio/hugo/releases) and
and NPM and then run `npm install postcss-cli` only if you plan to hack on the theme style.

```
git clone https://github.com/cs3community/cs32022-web
cd cs32022-web
git submodule update --init --recursive # to install the theme and deps
npm install

# change the config.toml to set / instead of /2022.
# This is to allow the rendering of the website in your computer.
  % git diff config.toml
  -baseURL = "/2022"
  +baseURL = "/"
hugo server
```

Open a browser at http://localhost:1313

## Deploying
Make sure your changes are commited at that the config.toml baseUrl is set to /2022.
Run `./deploy.sh`.
The website will be available at https://www.cs3community.org/2022/
