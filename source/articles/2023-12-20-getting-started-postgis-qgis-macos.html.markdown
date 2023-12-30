---
title: "Getting Started with PostGIS in QGIS on macOS"
date: 2023-12-20
---

# Getting Started with PostGIS in QGIS on macOS

## What is PostGIS?

PostGIS is an extension for the popular relational database PostgreSQL. It adds support for storing, indexing and querying geographic data.

There are a number of reasons why you might want to use PostGIS but the primary advantage of using a database over files is the fact that multiple people can access, query and update information in a database at the same time.

## Downloading and Installing Postgres.app

To get up and running fast we’re going to use an app called Postgres.app which includes PostGIS. You can download it from [https://postgresapp.com](https://postgresapp.com/)

While this app provides a great way to start learning PostGIS, it’s likely not what you should use for an enterprise level application.

1. Head to [https://postgresapp.com](https://postgresapp.com/) and download the latest release
1. Open the Disk Image and drag the **Postgres** application to your Applications folder
1. Start up the application from your **Applications** folder or **Spotlight**
1. Confirm that you want to open it
1. Click the **Initialize** button to create a PostgreSQL 16 instance
1. This will create a server with 3 databases:
  - *your username*
  - postgres
  - template1

## Enabling the PostGIS Extension

Before we can do anything we first need to enable the PostGIS extension in our database.

Double-click the database named after your username and it will bring up a `psql` session in a terminal window. `psql` is a command-line tool for interacting with a Postgres database.

Enter the following commands to enable the PostGIS Extension on the database named with your username. In my case it’s named `brian`.

    CREATE SCHEMA postgis;
    CREATE EXTENSION postgis SCHEMA postgis;
    CREATE EXTENSION postgis_raster SCHEMA postgis;
    ALTER DATABASE brian SET search_path=public,postgis;
    exit

Schemas are namespaces that help you organize the tables, views and other things you create in your database. We created a schema named `postgis` so that all the information associated with the PostGIS extensions won’t pollute or collide with other schemas we create. The extensions will still be available to all other schemas in the database.

## Connecting to PostGIS from QGIS

Now that we have a database running with the PostGIS extension installed we can connect to it from QGIS:

1. Start up QGIS
1. In the **Browser** right-click on **PostgreSQL** and click **New Connection**
1. Enter the following:
  - Name: Postgres.app-*username*
  - Host: localhost
  - Port: 5432 
  - Database: *username*
1. Under **Authentication** click **Basic**
  - User name: *username*
1. Click **Test Connection**
1. Click **OK**

## Creating Schemas

As I mentioned previously, schemas are a convenient way to organize the tables, views and other database objects you create. Let’s create a dedicated schema called `tutorial` for the work we’ll be doing today:

1. In the **Browser**, under **PostgreSQL**, right-click on your new connection and choose **New Schema…**
1. Enter tutorial for the **Name**
1. Click **OK**

## Creating Tables

Now that we have a dedicated schema, let’s create a table to hold some point data:

1. Right-click on the tutorial schema and choose **New Table…**
1. The **Schema** should already be set to tutorial
1. Change the table **Name** to points
1. Click **Add Field**
1. Change the field’s **Name** to name
1. Change the field’s **Type** to Text, limited variable length (varchar)
1. Change the field’s **Length** to 64
1. Set the **Geometry Type** to point
1. Click **OK**
1. Double-click the new `points` table in your `tutorial` schema to add it as a layer to your map

## Adding Data to a Table

Once we have our points table as a layer in our project we can add data like we would with a GeoPackage or Shapefile:

1. Select the `points` layer
1. Click the **Toggle Editing** button to enable editing
1. Click the**Add Point Feature** button to start adding points
1. Click on the map view to add a point
1. Leave the **ID** value as is — it’s automatically set to a function that grabs the next available ID for the table
1. Set a **Name** for the point
1. Click **OK**
1. Click the **Save Layer Edits** button
1. Right-click the points layer choose **Open Attribute Table** to see your points

## Importing Layers into PostGIS via QGIS

Another thing we can do with PostGIS is import data from other formats, such as Shapefiles. Lets import that US States and Territories from weather.gov:

1. Download and unzip the US States Shapefile: [https://www.weather.gov/source/gis/Shapefiles/County/s_08mr23.zip](https://www.weather.gov/source/gis/Shapefiles/County/s_08mr23.zip)
1. In the **Database** menu choose **DB Manager…**
1. Under **PostGIS** choose the tutorial schema
1. Click **Import Layer/File…**
1. Click the **…** next to the **Input** field and navigate to where you unzipped the file `s_08mr23.shp`
1. Make sure **Schema** is set to tutorial
1. Change the **Table** name to us_states_and_territories
1. Check **Primary Key** and ensure it’s set to id
1. Check **Geometry Column** and ensure it’s set to geom
1. Check **Convert field names to lowercase**
1. Check **Create spatial index**
1. Click **OK**
1. Double-click the `us_states_and_territories` table under the tutorial schema in the **Browser** to add it as a layer to your map

## Summary

You’ve now have a PostGIS database running on your machine and you know how to create your own schemas, create your own tables and import data using QGIS.

There are a couple of books you might want to check out — one I’ve been working through and the other I haven’t picked up yet:

- [PostGIS in Action](https://www.manning.com/books/postgis-in-action-third-edition)
- [Spatial SQL](https://locatepress.com/book/spatial-sql)

If you’re interested in learning more please follow me on [YouTube](https://www.youtube.com/@lostmapper). If you have any questions or suggestions, feel free to reach out to me on [Mastodon](https://mapstodon.space/@lostmapper).
