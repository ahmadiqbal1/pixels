<p align="center"><img src="https://devdojo.com/uploads/products/pixel/documentation/pixel-logo-1490552367.png" width="200"></p>

## About

Pixel is a graphic and media download script. Using Pixel you can create a site that allows users to download PSD's, Vectors, Icons, Images, and any other type of media. Users can download files, comment on the download, and favorite/like the downloads. There are also ad placements for the site so you can earn some revenue from visitors coming to your site.

You can find more information about the product from the links below:

- [Product Page](https://devdojo.com/scripts/php/pixel)
- [Demo Page](http://demo.devdojo.com/?product=pixel&theme=material)
- [Laravel](https://laravel.com)
- [Voyager](https://laravelvoyager.com)

Next, let's learn about some of the system requirements you will need in order to install the script.

## Requirements

Pixel was built using Laravel 5.4, this means that the same system requirements needed for Pixel are the same as the system requirements for Laravel 5.4.

 - PHP >= 5.6.4
 - OpenSSL PHP Extension
 - PDO PHP Extension
 - Mbstring PHP Extension
 - Tokenizer PHP Extension
 - XML PHP Extension
 - GD Image Library
 - `file_get_contents` enabled
 - `file_put_contents` enabled

To learn more about the system requirements needed to run a Laravel 5.4 script checkout the following [Server Requirements](https://laravel.com/docs/5.4/installation#server-requirements)

Next, we'll get started by learning how you can download the latest version of the script

## Getting Started

With a Premium Subscription on the DevDojo you will be able to download all the PHP scripts and self host them (optionally, as a Premium subscriber you can take advantage of our free hosting solution).

With the self-hosted version you will want to download the script by visiting the product page at [https://devdojo.com/scripts/php/pixel](https://devdojo.com/scripts/php/pixel)

<img src="https://devdojo.com/media/products/pixel/product-page.png" alt="product page" />

Click on the download button to download the latest version of the script.

Next, we'll move on to learning how to install the Pixel script.

## Installation

After downloading the script you will need to unzip the `pixel.zip` file. Next you will want to copy the contents of the unzipped folder to your server.

> Before running through the installation wizard, you will need to create a MySQL database for your site. Make sure to have your database name, database user, and database password handy to continue through the installation.

After Moving all the necessary files to your server and creating a database you will want to perform the following 3 steps:

**Step 1: Install Composer Dependencies** - You will need to install the composer dependencies in your application by running the following command inside the root directory of your app.

```
composer install
```

**Step 2: Add Your Database Credentials** - Next, you will need to add your database credentials to your environment config. In the root folder you will see a file called `.env.example`, you will want to rename this file to: `.env`. After renaming the file, open it up in a text editor and you should see something that looks similar to the following:

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306

APP_URL=
DB_DATABASE=
DB_USERNAME=
DB_PASSWORD=
...
```

> Hint: Files with a `.` before their name are called hidden files so if you do not see the `.env.example` file you may have to set hidden files to visible. [Learn How To Show Hidden Files Here](https://www.howtogeek.com/194671/how-to-hide-files-and-folders-on-every-operating-system/).

The lines that you will want to pay attention to will be the `DB_HOST`, `APP_URL`, `DB_DATABASE`, `DB_USERNAME`, and `DB_PASSWORD`. You will need to enter in the URL of your application as well as your database host, name, username, and password. An example might look like this:

```
DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306

APP_URL=http://website.com
DB_DATABASE=database_name
DB_USERNAME=database_user
DB_PASSWORD=database_pass
```

**Step 3: Run Your Database Migrations & Seeds** - Next, we need to run our database migrations which will add all the database tables for our application. Inside of the command line in the root of our application we will want to run the following command:

```
php artisan migrate
```

And you should see an output on your screen that looks similar to this:

<img src="https://devdojo.com/uploads/products/install-migrate-1491408435.png" alt="database migration" />

Next, we will need to seed our database with some data. Run the following command in the root of your application:

```
php artisan db:seed
```

And you should see an output that looks similar to:

<img src="https://devdojo.com/uploads/products/install-seed-1491408435.png" alt="database seed" />

Lastly, you will need to make sure your storage symlink is created by running the following command:

```
php artisan storage:link
```

That's it! The script is now installed and you will see your Pixel website in front of you 🎉

## Default Login

After successfully installing the script you may want to login using the **default admin account** to add some downloads, posts, or pages to your site.

As an admin you can login to your site by visiting: `site.com/admin` and you should see the new admin login screen in front of you.

<img src="https://devdojo.com/uploads/products/pixel/documentation/login-1491416542.png" alt="Admin Login" />

Simply enter the default **Admin Login** credentials:

```
email: admin@admin.com
password: password
```

And you will be redirected to your admin dashboard.

<img src="https://devdojo.com/uploads/products/pixel/documentation/dashboard-1491416542.jpg" alt="Admin Dashboard" />

#### Changing your Admin Login credentials

You will probably wish to change your login credentials for your admin user. You can easily do this by visiting `site.com/admin/profile` and click on the `Edit My Profile` button. Then you can update your Name, Email, and Password.

Next, let's move on to learning more about the admin dashboard.


## Admin Dashboard

After you have logged in with the admin user you can then visit your site at `site.com/admin` and you will find yourself in the **Admin Dashboard**

To the left is your main navigation where you can visit the following sections respectively.

 - Dashboard
 - Downloads
 - Categories
 - Tags
 - Posts
 - Pages
 - Media
 - Users
 - Roles
 - Menu Builder
 - Database
 - Settings

#### Dashboard

<img src="https://devdojo.com/uploads/products/pixel/documentation/dashboard-1491416542.jpg" alt="Admin Dashboard" />

The Dashboard is where you will find basic information about your website including how many downloads, users, and posts are on your site.

You can also view Analytic data if you add your Google Analytics information into your Site settings. You can read more about how to do this here [https://webman.io/blog/post/setup-google-analytics-for-laravel-voyager](https://webman.io/blog/post/setup-google-analytics-for-laravel-voyager)

#### Downloads

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2001%20-%20downloads-1491441476.png" alt="Admin Downloads" />

The downloads section will allow you to Browse, Read, Edit, Add, and Delete downloads on your site.

If you would like to add a new download you can click 'Add New' and you will see the following screen.

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-new-download-1491485191.png" alt="Admin Download New" />

Simply, fill out all the info and add your new download. Then, visit your homepage and you will see the new download available on your site.

#### Categories

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2002%20-%20categories-1491441476.png" alt="Admin Categories" />

In the categories section you can view all the current categories that are available. You can edit the existing categories or delete the existing categories. Additionally, you can add your own category.

> Note: by adding a new category this does not automatically mean it will be added to the menu. You will need to add this item to the menu separately. We will go over the Menu Builder further on down the documentation.

#### Tags

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2003%20-%20tags-1491441477.png" alt="Admin Tags" />

You may wish to add new tags so that way you can include them when adding a new product. Tags cannot be added at the same time as adding a new download. You will need to visit the Tags page and add a new tag, then if you go back to add a new download or edit a new download you will now have this new tag that can be selected.

#### Posts

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2004%20-%20posts-1491441477.png" alt="Admin Posts" />

In addition to adding Downloads to your new site you may also wish to add posts. This is very similar to the way the downloads works. You can add/edit/delete posts or you can add a new post.

#### Pages

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2005%20-%20pages-1491441477.png" alt="Admin Pages" />

Instead of adding a post you may wish to add, edit, or delete pages for certain sections such as an about page or a contact page.

#### Media Manager

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2006%20-%20media-1491441477.png" alt="Admin Media Manager" />

Using the media manager you can easily manage any images or content that gets added to your site. You may wish to rename or delete files and folders as well as add new content through the media manager.

> Warning: Be careful when deleting content because if you delete images that are linked to downloads or posts they may show a broken image when that download or post is being viewed.


#### Users

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2007%20-%20users-1491441478.png" alt="Admin Users" />

In the users section you can view all the current users on your website. Additionally you will see your admin user in this list. You can edit or delete any user from your site from the user section.

#### Roles

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2008%20-%20roles-1491441478.png" alt="Admin Roles" />

Each user has a role that allows them access to different sections of the apps. Currently Pixel only allows for admin users to access the back-end of the site. You can create new roles if you want to restrict users to only certain sections of the admin.

#### Menu Builder

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2009%20-%20menus-1491441478.png" alt="Admin Menu" />

Using the Menu builder you can create multiple menus to use throughout your site. There are currently 4 menus that you will see.

- **main** is the front-end top navigation of your site.
- **admin** is the back-end menu that you currently see in your admin.
- **top_bar** is the front-end small top bar menu.
- **footer_menu** is the front-end menu in the footer of your site.

When you click on the green **Builder** button you will be taken to the builder page for that menu.

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-menu-builder-1491485191.png" alt="Admin Menu Builder" />

In the Menu Builder section you can drag and drop current menu items to the position you would like them to appear. You can also Add, Edit, or Delete menu items from that particular menu.

#### Database

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2010%20-%20database-1491441478.png" alt="Admin Database" />

In the database section of the site you can see all the tables associated with your application.

> If you are not a developer it might be a good idea to leave this section alone unless you know what you are doing.

In the database section you can also change the way your Browse, Read, Edit, Add, and Delete functionality works throughout your site. You can learn more about the BREAD system here [https://the-control-group.github.io/voyager/docs/](https://the-control-group.github.io/voyager/docs/)

#### Settings

<img src="https://devdojo.com/uploads/products/pixel/documentation/admin-%2011%20-%20settings-1491441478.png" alt="Admin Settings" />

The settings section allows you to customize different aspects of your site including the logo and themes. Continue reading more below to learn how to configure and customize your site.

## Configuration

There are many configurations or customizations you can change on your site. To change these customizations you will want to visit `yoursite.com/admin/settings` and you will be able to modify the current configurations.

**Site Title**
This is the title of your site and this will show up in the header title of your homepage.

**Site Description**
This is a description of your site and this will be used as the meta description for your site homepage.

**Site Logo**
You can upload your own logo to show up on the front-end of the site. For best results upload a PNG image with the dimensions around 760x280 or 380x140 pixels. This will gaurantee that your logo will look nice on HD devices as well.

**Admin Title**
This is the title that will be used in the top left of your Admin Panel when the menu is expanded. It will also be used on the admin login page.

**Admin Description** 
This is the description that will be shown on the admin login screen.

**Admin Loader**
You may wish to customize your admin with a custom loader image. You can upload a new image to use as your spinning loader.

**Admin Icon Image**
The admin icon image is the image that you see on your admin login page and you also see at the top left of your admin dashboard.

**Admin Background Image**
This is the background image that will be shown on the admin login screen.

**Favicon**
This is the small logo that will be shown at the top left of the browser tab. Typically you will upload a small image that is 16x16 pixels 32x32 pixels or 48x48 pixels. Either one should work.

**Google Analytics Client ID**
This is where you will add your google analytics client ID so that way you can see your Google Analytics Data in the dashboard of your site. You can read more about how to do this here [https://webman.io/blog/post/setup-google-analytics-for-laravel-voyager](https://webman.io/blog/post/setup-google-analytics-for-laravel-voyager)

**Homepage Headline**
This is the headline text that will show up on your homepage right below your menu.

**Homepage Subheadline**
This is the subheadline text that will show below your homepage headline.

**Disqus Comments Website Name (ex. website.disqus.com)**
When you sign up for Disqus you will be given a short name to recognize your site. Learn more about [Disqus Here](https://disqus.com).

**How long should the user wait before the download begins (in seconds)**
You can specify how long you would like the user to wait before their download begins on the download page.

**SEO keywords for your site (comma separated)**
These keywords will be used for your site meta keywords on your site homepage.

**Social Share Image**
This is the image that will be shown on social networks when your homepage is shared.

**Social Share Image Width**
Specify the width of your social share images in pixels.

**Social Share Image Height**
Specify the height of your social share images in pixels.

**Demo Mode**
This setting is only used if your site is in demo mode.

**Theme**
You can choose which theme you would like to use. Currently you may only have the default theme; however, if you unlock the bonus content on the product page you can download the `material` theme.

> To install a theme you will simply drag and drop the theme folder into the `resources/views/themes` folder of your website. Then visit your settings page and you will see that theme in the theme dropdown.

**Color Scheme**
Most themes for Pixel have a Dark and Light Color scheme, you can chose which scheme you want to use with this option.

**Theme Material (Header Image Background)**
This image is only relevant if you are using the Material Theme. This is the main image that is shown in the header of your site.

**Facebook page**
The name of your facebook page, your site will have a link to your facebook page in the top bar of your site.

**Twitter username**
Your twitter username, your site will have a link to your twitter page in the top bar of your site.

**Google Plus page**
Your Google Plus page, your site will have a link to your Google Plus page in the top bar of your site.

## Troubleshooting

If you are having any troubles with your site please try the following commands to see if it will resolve any of them.

**Make sure your storage link is linked correctly**
If you are not seeing images on your site you may need to run the following command from the root folder of your app.

```
php artisan storage:link
```

**Make sure your system meets the minimum requirements**
You can check the system requirements above against the software you have on your server.

**Still having an issue or a problem?**
Visit our product support forum section at [https://devdojo.com/forums/category/product-support](https://devdojo.com/forums/category/product-support)
