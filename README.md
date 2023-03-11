# One-Click Runable Instance of Mastodon


### Table o' Contents
- About this repl
	- How it works
  - Tech Stack
  - Folder/File explanation
  - Running this repl locally
- Upgrading to Production
- Contributing
- Credits ❤


## About this Repl

> The current configuration for the Repl is *development*. To upgrade to *production*, follow the [instructions](#upgrading-to-production)
> 
This is a Bash repl, which is essentially just a shell where programs can be run. Being a *one-click runable* repl, all you have to do to have your very own Mastodon instance is click the run button. I also reccomend you give this repl an **8x boost** and **enable Always On**. Both of these options are availible through Hacker plans.

### How this Repl Works

All the files you view were generated through cloning the [GitHub Repo](https://github.com/mastodon/mastodon) of Mastodon and scripts located in [`start.sh`](/start.sh). Said scripts initiate (in order):

1. **[Redis](https://redis.io/)**, that caches for PostgreSQL.
2. **[PostgreSQL](https://www.postgresql.org/)**, the database system
3. **[Nginx](https://www.nginx.com/)**, used as a reverse proxy (it "sits in front of web servers and forwards client (e.g. web browser) requests to those web servers" - [Cloudflare, What is a reverse proxy?](https://www.cloudflare.com/learning/cdn/glossary/reverse-proxy/#:~:text=A%20reverse%20proxy%20is%20a,security%2C%20performance%2C%20and%20reliability.))
4. Mastodon! (using **[Webpack](https://webpack.js.org/)**)

The Mastodon files in the GitHub repo are located in [`./live`](/live). The rest of the files and folders are explained [here](#folder-file-explanation).

### Tech Stack
- **[Ruby on Rails](https://rubyonrails.org/)** powers the REST API and other web pages
- **[React.js](https://reactjs.org/)** and **[Redux](https://redux.js.org/)** are used for the dynamic parts of the interface
- **[Node.js](https://nodejs.org/)** powers the streaming API

### Folder/File Explanation

| **File/Folder name** | **Location**                     | **Description**                                                                                                                                      |
|----------------------|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| start.sh             | `~/Mastodon/start.sh`            | Starts up the Mastodon instance.                                                                                                                     |
| README.md            | `~/Mastodon/README.md`           | Provides details about this Repl and instructions on how to use it                                                                                   |
| postgresql.log       | `~/Mastodon/postgresql.log`      | PostgreSQL logs                                                                                                                                      |
| postgresql.conf.tpl  | `~/Mastodon/postgresql.conf.tpl` | PostgreSQL's main configuration file and the primary source of configuration parameter settings.                                                     |
| nginx.conf           | `~/Mastodon/postgresql.conf.tpl` | Nginx configuration file, similar purpose as the file above                                                                                          |
| mime.types           | `~/Mastodon/mime.types`          | A very large list of [MIME Types](https://www.iana.org/assignments/media-types/media-types.xhtml)                                                    |
| freedesktop.org.xml  | `~/Mastodon/freedesktop.org.xml` | Purpose is quite unknown. My research shows a link to Ruby on Rails, but not exactly sure what part it plays. Delete at your own risk.               |
| dump.rdb             | `~/Mastodon/dump.rdb`            | Redis backup file.                                                                                                                                   | 
| postgres/            | `~/Mastodon/postgres/`           | Where PostgreSQL keeps all the data inserted in the database                                                                                         | 
| logs/                | `~/Mastodon/logs/`               | Folder that contains all the important logs that for your server. Refer to them for errors.                                                          | 
| logs/nginx.pid       | `~/Mastodon/logs/nginx.pid`      | Stores the main process ID of the nginx process                                                                                                      |  
| logs/error.log       | `~/Mastodon/logs/error.log`      | Nginx error logs.                                                                                                                                    |  
| live/                | `~/Mastodon/live/`               | Folder that contains all of Mastodon's code. This folder contains the code that is used when rendering client pages and fulfilling backend requests. |
| data/                | `~/Mastodon/data/`               | PostgreSQL data folder. Contains, as the name implies, data :)                                                                                       |  
| cache/               | `~/Mastodon/cache/`              | Cache.                                                                                                                                               | 

### Running this Repl locally

1. To run this repl on *your* machine, head over to the [GitHub](https://github.com/Sidd-underscore/Mastodon).
2. Download the code from there (Replit doesn't like downloading big Repls)
3. Extract the zip file and either `cd` into the resulting folder through the terminal or righ-click on the resulting folder and open it with the terminal
4. Run
   ```sh
   sh start.sh
   ```
5. The code should start the Redis server, install everything and open a port.

   ***THIS PROCESS MAY TAKE A WHILE AND IS INCREDIBLY RESOURCE-CONSUMING***

## Upgrading to Production 

Upgrading is quite simple:

1. Head over to [`start.sh`](/start.sh) and edit **line 24, column 21 through 32** to say `production` instead of `development`
2. Jump to [`.replit`](/.replit) and edit **line 12, column 12 through 23** to say `production` instead of `development`
3. Restart the server!
4. 🎆

---

## Contributing

I 💖 help with code, especially on a project like this. To add more, fix my typos or improve my code in any way shape or form, head over to the [GitHub](https://github.com/Sidd-underscore/Mastodon), do your ~~thing~~ edits and submit a pull request. Further discussing may insue between you, me or others.

## Credits 💝

Kudos to [this amazing Replit blog article](https://blog.replit.com/setting-up-a-mastodon) by [Arec Nawo](https://areknawo.com/). Follow them on [Twitter](https://twitter.com/areknawo), [Facebook](https://www.facebook.com/areknawoblog) and check out their [GitHub](https://github.com/areknawo)!
