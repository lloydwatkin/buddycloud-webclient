describe 'legacy_connector', ->

  parse = (xml) ->
    $(xml)[0]

  it 'should get posts', ->
    xml = parse '''<iq from='pubsub-bridge@broadcaster.buddycloud.com' to='ben@diaspora-x.com/4533673491303298931936476' type='result' id='6458:sendIQ'><pubsub xmlns='http://jabber.org/protocol/pubsub'><items node='/user/ben@diaspora-x.com/channel'><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303018823207'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Zing zang!</content><published>2011-04-17T05:40:23Z</published><updated>2011-04-17T05:40:23Z</updated><id>/user/ben@diaspora-x.com/channel:1303018823207</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='null'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303019941913'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Sheezy.</content><published>2011-04-17T05:59:01Z</published><updated>2011-04-17T05:59:01Z</updated><id>/user/ben@diaspora-x.com/channel:1303019941913</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1302745752319'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303020049675'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Testing a new post with some kid cudi - http://www.youtube.com/watch?v=ICaTsTkBPV8</content><published>2011-04-17T06:00:49Z</published><updated>2011-04-17T06:00:49Z</updated><id>/user/ben@diaspora-x.com/channel:1303020049675</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='null'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303020839436'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Love it.</content><published>2011-04-17T06:13:59Z</published><updated>2011-04-17T06:13:59Z</updated><id>/user/ben@diaspora-x.com/channel:1303020839436</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303020049675'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303020955611'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Hello.</content><published>2011-04-17T06:15:55Z</published><updated>2011-04-17T06:15:55Z</updated><id>/user/ben@diaspora-x.com/channel:1303020955611</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303020049675'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303021042582'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Sheeeeezy</content><published>2011-04-17T06:17:22Z</published><updated>2011-04-17T06:17:22Z</updated><id>/user/ben@diaspora-x.com/channel:1303021042582</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1302745752319'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303021050661'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>This works though?</content><published>2011-04-17T06:17:30Z</published><updated>2011-04-17T06:17:30Z</updated><id>/user/ben@diaspora-x.com/channel:1303021050661</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303021058695'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>This works though?</content><published>2011-04-17T06:17:38Z</published><updated>2011-04-17T06:17:38Z</updated><id>/user/ben@diaspora-x.com/channel:1303021058695</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303021064869'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Test?</content><published>2011-04-17T06:17:44Z</published><updated>2011-04-17T06:17:44Z</updated><id>/user/ben@diaspora-x.com/channel:1303021064869</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303030455415'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Marijuana!</content><published>2011-04-17T08:54:15Z</published><updated>2011-04-17T08:54:15Z</updated><id>/user/ben@diaspora-x.com/channel:1303030455415</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303021064869'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303030466755'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Marijuana!</content><published>2011-04-17T08:54:26Z</published><updated>2011-04-17T08:54:26Z</updated><id>/user/ben@diaspora-x.com/channel:1303030466755</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303021064869'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303030472024'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Test?</content><published>2011-04-17T08:54:32Z</published><updated>2011-04-17T08:54:32Z</updated><id>/user/ben@diaspora-x.com/channel:1303030472024</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303020049675'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303030476400'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Heya.</content><published>2011-04-17T08:54:36Z</published><updated>2011-04-17T08:54:36Z</updated><id>/user/ben@diaspora-x.com/channel:1303030476400</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303030482610'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Smoke!</content><published>2011-04-17T08:54:42Z</published><updated>2011-04-17T08:54:42Z</updated><id>/user/ben@diaspora-x.com/channel:1303030482610</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303031200755'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>aergaerg</content><published>2011-04-17T09:06:40Z</published><updated>2011-04-17T09:06:40Z</updated><id>/user/ben@diaspora-x.com/channel:1303031200755</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303031264250'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>We skanking.</content><published>2011-04-17T09:07:44Z</published><updated>2011-04-17T09:07:44Z</updated><id>/user/ben@diaspora-x.com/channel:1303031264250</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303031274144'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Skanking we be...</content><published>2011-04-17T09:07:54Z</published><updated>2011-04-17T09:07:54Z</updated><id>/user/ben@diaspora-x.com/channel:1303031274144</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303031333887'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Agreed!</content><published>2011-04-17T09:08:53Z</published><updated>2011-04-17T09:08:53Z</updated><id>/user/ben@diaspora-x.com/channel:1303031333887</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303031369054'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Skank time!</content><published>2011-04-17T09:09:29Z</published><updated>2011-04-17T09:09:29Z</updated><id>/user/ben@diaspora-x.com/channel:1303031369054</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303031397644'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>In Russia butler welcomes you!</content><published>2011-04-17T09:09:57Z</published><updated>2011-04-17T09:09:57Z</updated><id>/user/ben@diaspora-x.com/channel:1303031397644</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303023317540'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303033824658'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>We skanking!</content><published>2011-04-17T09:50:24Z</published><updated>2011-04-17T09:50:24Z</updated><id>/user/ben@diaspora-x.com/channel:1303033824658</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303023317540'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303033853391'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Hi hi!</content><published>2011-04-17T09:50:53Z</published><updated>2011-04-17T09:50:53Z</updated><id>/user/ben@diaspora-x.com/channel:1303033853391</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1302946763884'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303033863808'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Hi2u!</content><published>2011-04-17T09:51:03Z</published><updated>2011-04-17T09:51:03Z</updated><id>/user/ben@diaspora-x.com/channel:1303033863808</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303033855851'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303033917835'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Hihi!</content><published>2011-04-17T09:51:57Z</published><updated>2011-04-17T09:51:57Z</updated><id>/user/ben@diaspora-x.com/channel:1303033917835</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303033910269'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303033928940'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Omnomnom.</content><published>2011-04-17T09:52:08Z</published><updated>2011-04-17T09:52:08Z</updated><id>/user/ben@diaspora-x.com/channel:1303033928940</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1302973130980'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303033966504'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>VROOM!</content><published>2011-04-17T09:52:46Z</published><updated>2011-04-17T09:52:46Z</updated><id>/user/ben@diaspora-x.com/channel:1303033966504</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1302850274875'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037547220'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Good. I'm having a problem subscribing to channels though - waiting for people to come online.</content><published>2011-04-17T10:52:27Z</published><updated>2011-04-17T10:52:27Z</updated><id>/user/ben@diaspora-x.com/channel:1303037547220</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303033855851'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037582364'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Good - having problems though...</content><published>2011-04-17T10:53:02Z</published><updated>2011-04-17T10:53:02Z</updated><id>/user/ben@diaspora-x.com/channel:1303037582364</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303033855851'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037591130'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>WTF?</content><published>2011-04-17T10:53:11Z</published><updated>2011-04-17T10:53:11Z</updated><id>/user/ben@diaspora-x.com/channel:1303037591130</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037600363'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Can I comment?</content><published>2011-04-17T10:53:20Z</published><updated>2011-04-17T10:53:20Z</updated><id>/user/ben@diaspora-x.com/channel:1303037600363</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303035257847'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037615174'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Hihi!</content><published>2011-04-17T10:53:35Z</published><updated>2011-04-17T10:53:35Z</updated><id>/user/ben@diaspora-x.com/channel:1303037615174</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303033910269'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037653309'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>hi hi hi hi</content><published>2011-04-17T10:54:13Z</published><updated>2011-04-17T10:54:13Z</updated><id>/user/ben@diaspora-x.com/channel:1303037653309</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303035257847'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303037862950'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Blah!</content><published>2011-04-17T10:57:42Z</published><updated>2011-04-17T10:57:42Z</updated><id>/user/ben@diaspora-x.com/channel:1303037862950</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303030476400'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041391800'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>A new post...</content><published>2011-04-17T11:56:31Z</published><updated>2011-04-17T11:56:31Z</updated><id>/user/ben@diaspora-x.com/channel:1303041391800</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041405253'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Oh sad.</content><published>2011-04-17T11:56:45Z</published><updated>2011-04-17T11:56:45Z</updated><id>/user/ben@diaspora-x.com/channel:1303041405253</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303041391800'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041558312'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Strange</content><published>2011-04-17T11:59:18Z</published><updated>2011-04-17T11:59:18Z</updated><id>/user/ben@diaspora-x.com/channel:1303041558312</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041562992'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Strange</content><published>2011-04-17T11:59:22Z</published><updated>2011-04-17T11:59:22Z</updated><id>/user/ben@diaspora-x.com/channel:1303041562992</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041570787'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Strraaaange...</content><published>2011-04-17T11:59:30Z</published><updated>2011-04-17T11:59:30Z</updated><id>/user/ben@diaspora-x.com/channel:1303041570787</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303041562992'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041641157'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>zzzzzx</content><published>2011-04-17T12:00:41Z</published><updated>2011-04-17T12:00:41Z</updated><id>/user/ben@diaspora-x.com/channel:1303041641157</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303041562992'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041644118'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Test</content><published>2011-04-17T12:00:44Z</published><updated>2011-04-17T12:00:44Z</updated><id>/user/ben@diaspora-x.com/channel:1303041644118</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041649146'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>fffffffffe</content><published>2011-04-17T12:00:49Z</published><updated>2011-04-17T12:00:49Z</updated><id>/user/ben@diaspora-x.com/channel:1303041649146</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303041644118'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041716725'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Ahah!</content><published>2011-04-17T12:01:56Z</published><updated>2011-04-17T12:01:56Z</updated><id>/user/ben@diaspora-x.com/channel:1303041716725</id></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041722435'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>sexxxx</content><published>2011-04-17T12:02:02Z</published><updated>2011-04-17T12:02:02Z</updated><id>/user/ben@diaspora-x.com/channel:1303041722435</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303041716725'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303041725828'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>weeeoo</content><published>2011-04-17T12:02:05Z</published><updated>2011-04-17T12:02:05Z</updated><id>/user/ben@diaspora-x.com/channel:1303041725828</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303041716725'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303042425478'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>fahrertuer@buddycloud.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>publisher</affiliation></author><content type='text'>/me wonders, if this works</content><published>2011-04-17T12:13:45Z</published><updated>2011-04-17T12:13:45Z</updated><id>/user/ben@diaspora-x.com/channel:1303042425478</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref=''/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303042490726'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>fahrertuer@buddycloud.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>publisher</affiliation></author><content type='text'>/me wonders, if this works</content><published>2011-04-17T12:14:50Z</published><updated>2011-04-17T12:14:50Z</updated><id>/user/ben@diaspora-x.com/channel:1303042490726</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref=''/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303042931049'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Ah yeah - it worked! I can see you.</content><published>2011-04-17T12:22:11Z</published><updated>2011-04-17T12:22:11Z</updated><id>/user/ben@diaspora-x.com/channel:1303042931049</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303042490726'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303042948771'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>It doesn't alert me though that I have a new post - got a bit to work on there...</content><published>2011-04-17T12:22:28Z</published><updated>2011-04-17T12:22:28Z</updated><id>/user/ben@diaspora-x.com/channel:1303042948771</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303042490726'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303042956258'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>It worked twice.</content><published>2011-04-17T12:22:36Z</published><updated>2011-04-17T12:22:36Z</updated><id>/user/ben@diaspora-x.com/channel:1303042956258</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303042425478'/></entry></item><item xmlns='http://jabber.org/protocol/pubsub#event' id='1303043075541'><entry xmlns='http://www.w3.org/2005/Atom' xmlns:thr='http://purl.org/syndication/thread/1.0'><author><jid xmlns='http://buddycloud.com/atom-elements-0'>ben@diaspora-x.com</jid><affiliation xmlns='http://buddycloud.com/atom-elements-0'>owner</affiliation></author><content type='text'>Wicked song.</content><published>2011-04-17T12:24:35Z</published><updated>2011-04-17T12:24:35Z</updated><id>/user/ben@diaspora-x.com/channel:1303043075541</id><in-reply-to xmlns='http://purl.org/syndication/thread/1.0' ref='1303020049675'/></entry></item></items></pubsub></iq>'''

    # Set up
    l = new LegacyConnector
    l.connection = new Strophe.Connection("")
    spyOn(l.connection, 'sendIQ').andCallFake (query, success, err) ->
      success(xml)
    c = new Channel
    p = []

    l.getChannelPosts(
      new Channel,
      (posts) ->
        p = posts
    )
    
    waits 10
    
    runs ->
      expect(p.length).toEqual(50)
  
