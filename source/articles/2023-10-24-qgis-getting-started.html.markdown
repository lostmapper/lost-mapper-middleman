---
title: "Getting Started with QGIS"
date: 2023-10-24
---

# Getting Started with QGIS

## What is QGIS?

QGIS is a free and open source Geographic Information System that runs on Windows, Mac and Linux. You can download it for free from [https://qgis.org/](https://qgis.org/en/site/)

In this Getting Started guide I will show you:

- How to create and save QGIS Projects
- How to add a reference layer using OpenStreetMap
- How to move and zoom around your map
- How to create Spatial Bookmarks so you can quickly get to where you want to be
- How to create a Print Layout of your map and export a PDF of it

For this article I will be using QGIS 3.32.3-Lima on macOS Sonoma.

## Creating and Saving a QGIS Project

Most everything you do in QGIS is going to be done in the context of a Project, so it’s important that we get comfortable with creating and saving them.

### Create a Directory for your Mapping Projects

I suggest keeping all your mapping projects together in a dedicated folder (or directory) on your machine. Depending on the size of your projects and data you may or may not want this folder to be in your iCloud Drive.

- Determine where you want to store your projects
- Create a folder named gisor mapping
- Inside of that folder create a project folder — in this case we’ll call it `interesting-places`

### Creating and Saving a Project

Now that we have a folder for our project, let’s create one in QGIS. There are a few ways we can do this:

- Click the Project menu and select New
- Click the New Project button in the Project Toolbar
- Hold down Command and press N

Next we should give the project a formal title:

- From the **Project** menu choose **Properties…**
- Or press **Shift Command P**
- Make sure the **General** tab is selected on the left
- In the **Project title** text box enter Interesting Places
- Click OK

We should now see that our QGIS window title has change from Untitled Project to Interesting Places.

Now that our project has a title we can save it:

- Click on the **Project** menu and choose **Save**
- Or press **Command S**
- Navigate to the interesting-places folder you created above
- Change the name in **Save As** if you’d like
- Click **Save**

## Adding an OpenStreetMap Layer

You may have noticed that the main “document” area of QGIS is currently blank and gives us no idea where we are mapping. Fortunately we can use [OpenStreetMap](http://openstreetmap.org) to provide a nice base map to quickly visualize things:

- In the **Browser** panel on the left open up **XYZ Tiles**
- Right-click on the **OpenStreetMap** entry and choose **Add Layer to Project**
- You can also just double-click the **OpenStreetMap** entry to add it to your project

## Panning and Zooming around a Map

When you start QGIS the default tool that’s enabled is the **Pan Map** tool — the hand icon in the **Map Navigation Toolbar**. You can click and drag to pan around the map but it’s not too helpful when we’re this zoomed out.

Let’s get a closer look at things by zooming in:

- Switch to the **Zoom In** tool (the magnifying glass with the plus sign inside it)
- Click and drag a rectangle around the area that you are interested in

## Using the Locator Bar

Another way we can quickly find what we are looking for is by using the **Locator Bar** in the lower left of the QGIS window:

For example, if we wanted to find Easter Island we could use the [Nominatim Geocoder](https://nominatim.org) option to find it:

- Click on the **Locator Bar** (or press Command K)
- Type the great than symbol > followed by a space and the words easter island
- Use the **arrow keys** to navigate the entries
- Press **Return** to select the highlighted entry
- You can also just double-click on the entry you are interested in

You can then use the **Zoom In** tool to further refine the area you are looking for:

## Creating Spatial Bookmarks

As we work maps we will likely be panning and zooming in and out. It would be convenient to be able to return to this initial view of the island after we’ve completed some detail work.

To do that we can create what’s known as a **Spatial Bookmark**. These bookmarks can be stored at a **Project** level or a **User** level. User level Spatial Bookmarks are good for locations you might need to refer to across several projects. In this case we’ll create a Project level Spatial Bookmark. Once again, there are a few ways to accomplish this:

- In the **Browser** panel open up **Spatial Bookmarks**, right-click on **Project Bookmarks** and choose **New Spatial Bookmark…**
- Or, on the **View** menu select new **Spatial Bookmark…**
- Or, press **Command B**

Whichever method you choose you will be greeted with a **Bookmark Editor **dialog. For this bookmark we’ll set the following:

- **Name:** Easter Island
- **Saved in: **Project Bookmarks

Leave everything else as is and click **Save**. You should now see your new bookmark show up in the **Browser** under **Project Bookmarks**.

If we pan and zoom around the map and ever want to get back to this initial view, all we need to do is double-click the **Easter Island** bookmark.

This bookmark will also come in handy when creating a Print Layout, which is what we’ll do next.

## Creating a Print Layout

Up until now we’ve been working in what’s called the **Map View**. This view is a bit of a mixture between managing geographic data and styling geographic data.

When we want to create a printable view of our map we need to create a **Print Layout**. A **Print Layout** will allow us to add things like titles, legends, north arrows, attributions, area maps and things of that nature. It will also let us save the resulting layout as a PDF and other image formats.

### Adding a Print Layout

To create a new print layout:

- Click on the **Project** menu and choose **New Print Layout…** (or press **Command P**)
- In the **Create Print Layout** dialog provide a title for your layout. We’ll call ours Landspace

### Setting the Page Size

Before we add any elements to our print layout we need to set the **Page Size**. This is easiest to do when there’s nothing else on the map yet:

- Right-click on the blank layout and choose **Page Properties…**
- On the right side in the **Item Properties** tab we can set the **Size** and **Orientation**

For my layout I’ll be setting the **Size** to Letter and the **Orientation** to Landscape

### Adding a Map Title

Let’s add a title to our map so folks know what we’re showing:

- In the Toolbox on the left click **Add Label**
- Click and drag a rectangle out at the top of the page
- In the **Item Properties** on the right to set the **Text**, **Font**, **Horizontal Alignment** and whatever other settings pique your interest

### Adding the Map

Of course our map isn’t much use with the actual location on it, so let’s add it:

- Click on the **Add Map** tool in the **Toolbox**
- Click and drag a large rectangle out for the map
- If the correct area is not showing you can use the **Bookmarks** button in the Item Properties panel to select the **Spatial Bookmark** we made previously — another place it comes in handy!

It might seem silly to have to add the actual map to the layout but there are cases where you might want to have multiple maps in a layout, such as having a detailed view with an inset overview of the overall location.

### Saving a PDF

The last step is to export our map as a PDF. Would you be surprised to learn there’s a couple of ways to do this?

- From the **Layout** menu choose **Export as PDF… **or from the** Layout Toolbar** choose **Export as PDF…**
- Select the location and name you want to save the PDF as
- Click **Save**
- In the **PDF Export Options** you can leave everything as is and click **Save**

The only thing left to do is open up your PDF and check it out.

## Summary

This is only scratching the surface of what is possible with QGIS but what you’ve learned today will be the basis of many mapping projects in QGIS.

If you’re interested in learning more please follow me on [YouTube](https://www.youtube.com/@lostmapper). If you have any questions or suggestions, feel free to reach out to me on [Mastodon](https://mapstodon.space/@lostmapper).
