$("#lifestream").lifestream({
  limit: 10,
  feedloaded: truncate_streams,
  list:[
    {
      service: "tumblr",
      user: "thesprouts",
      template: { posted: "<div class='icon web-tumblr-small'></div> <div class='elsewhere-story'>posted a ${type} <a href='${url}'>${title}</a></div>"}
    },
    {
      service: "twitter",
      user: "sprouts",
      template: { posted: "<div class='icon web-twitter-small'></div> <div class='elsewhere-story'><a href='${complete_url}'>tweeted</a> {{html tweet}}</div>" }
    },
    {
      service: "facebook",
      user: "somesprouts",
      template: { wall_post: "<div class='icon web-facebook-small'></div> <div class='elsewhere-story'>posted on sprout's wall: <a href='${link}'>${title}</a></div>"}
    },
    {
      service: "rss",
      user: "http://alecresnick.tumblr.com/feed",
      template: { posted: "<div class='icon web-feed-small'></div> <div class='elsewhere-story'>posted <a href='${link}'>${title}</a></div>" }
    }
  ]
});

$.fn.cutOverflow = function() {
    var children = $(this).find('> *');

    var maxHeight = $(this).height();
    var childrenHeight = 0;

    var cutline = null;

    children.each(
      function(index) {
        child = $(this);

        if (childrenHeight + child.height() > maxHeight) {
          cutline = child;
          return false;
        }
        else{
          childrenHeight += child.outerHeight(true);
        }
      });

      if (cutline) {
        cutline.nextAll().remove();
        cutline.remove();
      }
    };

$(window).load( function() {
  $("#lifestream > ul").cutOverflow()
});

function truncate_streams() {
$("#lifestream ul li").ellipsis();
}