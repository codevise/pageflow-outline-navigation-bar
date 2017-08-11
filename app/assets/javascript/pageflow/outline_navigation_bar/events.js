pageflow.outlineNavigationBar.events = (function() {
  var hasPointerEvents = window.PointerEvent || window.MSPointerEvent;

  return {
    pointerUp: hasPointerEvents ? 'MSPointerUp pointerup mouseup' : 'touchend mouseup',
    pointerDown: hasPointerEvents ? 'MSPointerDown pointerdown mousedown' : 'touchstart mousedown',

    onPointerDown: function(element, selectorOrHandler, handler) {
      var selector = handler ? selectorOrHandler : null;
      handler = handler || selectorOrHandler;

      this._onPointerDown(handler, function(event, fn) {
        element.on(event, selector, fn);
      });
    },

    _onPointerDown: function(handler, on) {
      on(this.pointerDown, function(event) {
        event.preventDefault();
        handler.call(this);
      });

      on('click', function(event) {
        event.preventDefault();
      });

      on('keypress', function(event) {
        if (event.which == 13) {
          handler.call(this);
        }
      });
    },
  };
}());