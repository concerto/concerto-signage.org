---
layout: page
title: Deploy
permalink: /deploy
sidebar: deploy_sidebar.html
header_image: /assets/images/original_bg_deploy.jpg
---

# The Mile-High View

A typical Concerto network will include a content server and some physical displays. For this deployment overview, we focus on the Concerto Content Server (1) and the computers which power the front end displays (2). A successful deployment will include these two elements.

![](/assets/images/content_concnetwork_diagram.jpg)

<div style="float: left; width: 80px;"><img src="/assets/images/content_no1.png" /></div>

# <span style="display:block; padding-top:12px;">Concerto Content Server</span>

The Content Server must have the Concerto base software installed and configured properly so that it may control all client units on the network and distribute uploaded messages. Here's how you get started with your Content Server:

## Download and install the server-side code.

The server-side code for Concerto is distributed in several ways -- as source code for a Ruby on Rails application, as a Debian package, and as a standalone Virtual Machine with everything already installed and configured. You can read about those methods and their prerequisites over at the [installation wiki](https://github.com/concerto/concerto/wiki/Installing-Concerto-2). Once Concerto has a database, and a webserver that can serve Rails applications, it will install all the Ruby gems necessary as well as necessary tables and sample data on first startup. For the full suite image and document processing capabilities, you'll want to ensure that all the prerequisites mentioned in the wiki are fulfilled (mostly Imagemagick and the docsplit dependencies).

<div style="float: left; width: 80px;"><img src="/assets/images/content_no2.png" /></div>

# <span style="display:block; padding-top:12px;">Client Display Machines</span>

Once your Content Server is configured, you're going to want to use the Concerto client firmware with one or more client-side computers.

## What kind of client computers should I use?

Any computer and operating system capable of displaying the Concerto web application in a browser can be used -- and many users report good outcomes with Raspberry Pi's (though not for HD graphics or video) as well as the ChromeBox. Currently, we recommend a setup similiar to the following for a computer dedicated to displaying Concerto content.

<table border="1" cellpadding="1" cellspacing="1">
    <tbody>
        <tr>
            <td>
                Small Form Factor PC</td>
            <td>
                <a href="http://www.logicsupply.com/products/jbc360f33w">Jetway JBC360F33W</a></td>
            <td style="text-align: right; ">
                $229.95</td>
        </tr>
        <tr>
            <td>
                2GB RAM</td>
            <td>
                <a href="http://www.newegg.com/Product/Product.aspx?Item=N82E16820231147">G.SKILL 2GB 200-Pin DDR2 SO-DIMM</a></td>
            <td style="text-align: right; ">
                $27.99</td>
        </tr>
        <tr>
            <td>
                4GB CF Card</td>
            <td>
                <a href="http://www.newegg.com/Product/Product.aspx?Item=N82E16820208339">Transcend 4GB Compact Flash&nbsp;Card</a></td>
            <td style="text-align: right; ">
                $11.65</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: right; ">
                <strong>Total</strong></td>
            <td style="text-align: right; ">
                $269.59</td>
        </tr>
    </tbody>
</table>

_Last Updated 2015-01-16_

## What are the options for setting up the client machines?

While a Concerto "screen" could just consist of content loaded via web browser on an existing computer, we recommend using the Concerto Player for screen on/off control, reliability, and additional features. It can be downloaded either as a [raw image](http://dl.concerto-signage.org/concerto_player-0.6.0.img.zip) (for an SD or CF card) or as a [virtual machine](http://dl.concerto-signage.org/concerto_player-0.6.0.vmdk) for testing and development.

## What displays would you recommend for use with Concerto?

Depending on the location and application of a Concerto installation, anything from an old CRT monitor to a fancy projector may work well.  In terms of display build quality, aesthetic appeal, and ability to be controlled via serial port, we prefer and recommend Sharp Professional LCD displays such as the [PN-E421](http://www.sharpusa.com/ForBusiness/PresentationProducts/ProfessionalLCDMonitors/PNE421.aspx). 

We have found that Plasma displays make poor choices for digital signage applications, due to the static nature of signage content and the propensity of plasma screens to burn-in.