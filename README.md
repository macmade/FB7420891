FB7420891
=========

![Status](https://img.shields.io/badge/status-open-brightgreen.svg?style=flat)
[![Contact](https://img.shields.io/badge/contact-@macmade-blue.svg?style=flat)](https://twitter.com/macmade)  
[![Sponsor](https://img.shields.io/badge/sponsor-macmade-pink.svg?logo=github-sponsors&style=social)](https://github.com/sponsors/macmade)

Breaking InterfaceBuilder issue with labels centered vertically in a table view
-------------------------------------------------------------------------------

    Jean-David Gadina
    Oct 31, 2019 at 11:20 PM – FB7420891

### Basic information

#### Which area are you seeing an issue with?

Xcode

#### What type of feedback are you reporting?

Incorrect/Unexpected Behavior

### Details

#### What version of Xcode are you using?

11.2

### Description

#### Please describe the issue:

As of Xcode 11, there's a very nasty issue in InterfaceBuilder when centering a label in a table view's column view.  
At first, everything is ok, but as soon as you edit some property on the table view, such as "alternating rows", you will get endless auto-layout issues.

Trying to "fix" the issue by updating the frames will just completely break the XIB file.

Attached is a video demonstrating the issue, as well as an Xcode project to reproduce it.

#### Please list the steps you took to reproduce the issue:

In the attached example, there's a very simple window, with a title and a single-column table view.

In the table view column, there's a single label, with leading, trailing and top constraints.  
You can enable or disable the "alternating rows" on the table view, everything's fine.

Now simply delete the top constraint on the label and add a "center vertically in superview" one.  
Very basic, simply centering a label in a view.

Then if you change the "alternating rows" on the table view, the window will shrink and you will get auto-layout issues.  
Changing "alternating rows" will just continue to break the layout.

If you try to fix the auto-layout issue by updating the frames, the window will also continuously shrink...

#### What did you expect to happen?

Changing a property on the table view, such as "alternating rows" should not affect the layout of the window's content view.

#### What actually happened?

Just look at the [video](FB7420891.mov)...

Repository Infos
----------------

    Owner:          Jean-David Gadina - XS-Labs
    Web:            www.xs-labs.com
    Blog:           www.noxeos.com
    Twitter:        @macmade
    GitHub:         github.com/macmade
    LinkedIn:       ch.linkedin.com/in/macmade/
    StackOverflow:  stackoverflow.com/users/182676/macmade
