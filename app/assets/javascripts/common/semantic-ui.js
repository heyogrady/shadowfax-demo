document.addEventListener("turbolinks:load", function() {
  // Initialize Semantic UI dropdowns
  $("[data-ui-behavior=dropdown]").dropdown();

  // Initialize Semantic UI calendar component for date selection
  $("[data-ui-behavior=calendar_date]")
    .calendar(
      {
        type: "date",
        today: true,
      }
    );

  // Initialize Semantic UI calendar component for time selection
  $("[data-ui-behavior=calendar_time]")
    .calendar(
      {
        type: "time",
      }
    );

  // Initialize Semantic UI tabs
  $('[data-ui-behavior=tab]').tab();

  // Initialize Semantic UI checkboxes
  $('[data-ui-behavior=checkbox]').checkbox();
});

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
      silent: true,
      context: $fullHeightContainer
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
