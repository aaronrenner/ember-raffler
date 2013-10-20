# For more information see: http://emberjs.com/guides/routing/

EmberRaffler.Router.map ()->
  @route 'entries', path: '/'

EmberRaffler.EntriesRoute = Ember.Route.extend
  setupController: (controller) -> controller.set('content',[])
