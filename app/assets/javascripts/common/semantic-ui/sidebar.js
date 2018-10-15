// The sidebar menu

// namespace
window.semantic = {
  handler: {}
};

// ready event
semantic.ready = function() {

  // selector cache
  var
    $document             = $(document),
    $visibleSidebarSticky = $('[data-ui-behavior=visible-sidebar-sticky]'),

    $menu                 = $('#hidden-sidebar-menu'),
    $hideMenu             = $('#hidden-sidebar-menu .hide.item'),

    $fullHeightContainer  = $('.pusher > .full.height'),
    $container            = $('.main.container'),

    $footer               = $('.page > .footer'),

    // alias
    handler
  ;

  // event handlers
  handler = {

  };

  semantic.handler = handler;

  // create sidebar sticky
  $visibleSidebarSticky
    .sticky({
      context: $fullHeightContainer,
      onBottom: function() {
        $(this).sticky('refresh')
      }
    })
  ;

  // main sidebar
  $menu
    .sidebar({
      dimPage          : true,
      transition       : 'overlay',
      mobileTransition : 'uncover'
    })
  ;

  // launch buttons
  $menu
    .sidebar('attach events', '.js-open-sidebar.item')
  ;

}

// attach ready event
document.addEventListener("turbolinks:load", function() {
  semantic.ready();
});
