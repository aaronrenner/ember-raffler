# http://emberjs.com/guides/models/defining-a-store/

EmberRaffler.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

