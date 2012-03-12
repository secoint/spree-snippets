Snippets - Compatible with Spree 0.30+
======================================

Admin configurable chunks of content that can be rendered in any view via the SnippetsHelper#render_snippet method.

note: the 0.11 compatible version is on the 0.11-stable branch.

Synopsis
--------
  
    <%# in a view %>
    ...
    <%= render_snippet('slug-name') %>
    ...
    <%= render_snippet(@snippet_object) %>
    ...
    <% snippet_id = 26 %>
    <%= render_snippet(snippet_id) %> 

Installation
------------

Add to Gemfile:
    gem 'spree_snippets', ">= 0.5.1"

Run:
    bundle install
    rails g spree_snippets:install

Snippet CRUD
------------

1. Login to the Administration Console
2. Click on the Configuration Tab
3. Click on the Snippets link

Snippet Settings
----------------

To enable exceptions on missing snippets, set Spree::Config.set(:spree_snippets_raise_on_missing => true)
