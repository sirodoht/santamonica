# santamonica

Simple [Zola](https://www.getzola.org/)-based podcast website, designed for fans
of self-hosted-ness.

## Features

* Statically generated
* RSS support
* Support for static pages (eg. About page)
* Content in markdown files
* "Read more" feature
* Native HTML `<audio>` player
* No JS
* Easily customisable
* Zola is the only third-party dependency used

## How to use

Clone, edit [config.toml](config.toml) with your podcast details, delete example episodes, deploy.

## Development

Start auto-reload web server:

```sh
zola serve
```

## Structure

* There is no theme used, all HTML files are in the `templates` directory.
* Content is stored as markdown files.
* Episodes are stored in `content/episodes/episode-name.md`
* Static pages are stored

## File hierarchy

```sh
$ tree
.
├── config.toml  # zola configuration file
├── content/  # contains episode files in markdown
│   ├── about.md  # also contains static pages files
│   └── episodes/
│       ├── _index.md  # zola file to designate taxonomy
│       ├── episode-1.md  # example first episode markdown file
│       └── episode-2.md  # another example
├── public/  # generated HTML files
│   ├── 404.html  # generated
│   ├── atom.xml  # generated RSS
│   ├── about/  # generated
│   │   └── index.html  # generated
│   ├── episodes/  # generated
│   │   ├── episode-1/  # generated
│   │   │   └── index.html  # generated
│   │   ├── episode-2/  # generated
│   │   │   └── index.html  # generated
│   │   └── index.html  # generated
│   ├── index.html  # generated
│   ├── main.css  # generated
│   ├── robots.txt  # generated
│   └── sitemap.xml  # generated
├── static/
│   └── main.css  # source CSS styles
└── templates/  # HTML files
    ├── 404.html
    ├── index.html  # main layout and index file
    ├── page.html  # template for static pages
    └── episode.html  # template for podcast episode pages
```

## Deployment

One can deploy on a number of free services, eg. [Netlify](https://www.getzola.org/documentation/deployment/netlify/),
[GitHub](https://www.getzola.org/documentation/deployment/github-pages/),
[Gitlab](https://www.getzola.org/documentation/deployment/gitlab-pages/), et al.

One can also deploy on their own server. There is an [nginx configuration](nginx.conf) file using
standard practices and configured with Letsencrypt SSL.

To generate the certificate, one can use this command with [certbot](https://certbot.eff.org/) installed:

```sh
certbot certonly --webroot -d podcast.com --email your@email.com -w /var/www/_letsencrypt -n --agree-tos
```

Note: One will need to disable the SSL `http` directive before running the above command.

## Screenshots

The index looks like this:

![screenshot-index](https://imgz.org/iAETtfQr.png)

The episode page like this:

![screenshot-episode](https://imgz.org/i3t5b2fm.png)

## License

Code licensed under [MIT](LICENSE).
