Warbler + Sprockets 3
=====================

This repo demonstrates that warbler is not including the sprockets 3 manifest file in the WAR files it builds.  The issue appears to have been introduced in 1.4.2.

NOTE:  Due to an incompatibility between bundler and warbler 1.4.1/1.4.2, you must use bundler < 1.10 with this repository.

There are three Rails apps in this repo.

`app_config_works` uses warbler 1.4.1 and has a local `config/warble.rb` specifying that the asset manifest should be included.  To confirm that this works, you can run:

    $ cd app_config_works
    $ bundle && bundle exec rake war
    $ cd war
    $ tar xf app_config_works.war

You will see that `app_config_works/war/WEB_INF/public/.sprockets-manifest-*.json` exists.

`app_config_broken` uses warbler 1.4.2 and has a local `config/warble.rb` specifying that the asset manifest should be included.  To confirm that this does not work, you can run:

    $ cd app_config_broken
    $ bundle && bundle exec rake war
    $ cd war
    $ tar xf app_config_broken.war

You will see that `app_config_works/war/WEB_INF/public/.sprockets-manifest-*.json` does not exist.

`global_config_broken` uses warbler 1.4.2 and relies on the warbler rails trait to specify that the asset manifest should be included.  To confirm that this does not work, you can run:

    $ cd global_config_broken
    $ bundle && bundle exec rake war
    $ cd war
    $ tar xf global_config_broken.war

You will see that `app_config_works/war/WEB_INF/public/.sprockets-manifest-*.json` does not exist.