{ Channel } = require 'models/channel'

getid = (nodeid) ->
    # /user/u@catz.net/posts → ["/user/u@catz.net/", "u@catz.net"]
    nodeid.match(/\/user\/([^\/]+@[^\/]+)\//)?[1] # jid # TODO compile


##
# collects model/channel by Jabber-Id
class exports.Channels extends Backbone.Collection
    sync: -> # do nothing

    model: Channel

    ##
    # @return {Bool} Whether channel is new
    update: (channel) ->
        existing_channel = @get channel.id
        if existing_channel
            existing_channel.set channel
            no
        else
            @add channel
            yes

# used in models/user
class exports.UserChannels extends exports.Channels
    constructor: ({@parent}) ->
        super()

    initialize: ->
        super
        @fetch()

    fetch: ->
        for channelid in @parent.get('channel_ids') or []
            app.channels.get channelid

    get: (id) ->
        if (channel = super)
            channel
        else
            @add id: id
            @get id

    # overriding backbone internels
    _add: ->
        channel = super
        @parent.set channel_ids: @map((channel) -> channel.get 'id')
        channel


# global channel collection store
# only one instance as app.channels
class exports.ChannelStore extends exports.Channels
    initialize: ->
        super
        @localStorage = new Store("channels")
        app.debug "nr of channels in cache: #{@localStorage.records.length}"
        @fetch()

    sync: Backbone.sync

    # returns cached channel or creates new cache entry
    get: (nodeid) ->
        id = getid nodeid or nodeid
        super(id) or @create({id, jid:id})
