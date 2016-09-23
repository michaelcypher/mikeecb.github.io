---
title: "ICMP: Network or Transport Layer"
time_to_read: 4
---

I'm currently working on rewriting [ping](https://en.wikipedia.org/wiki/Ping_%28networking_utility%29) (which uses [ICMP](https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol)) in Rust (which I've adaptly named [ring](https://github.com/mikeecb/ring)). I was pretty confused about the location of ICMP on the [OSI stack](https://en.wikipedia.org/wiki/OSI_model). Specifically, is ICMP a network or transport layer protocol?

Although it depends on your definition of the OSI model, ICMP is generally considered to be a network layer protocol. Let's discuss why ICMP could be considered part of the transport layer and why it's not.

### It's a Transport Layer Protocol!

ICMP packets are encapsulated within IP packets! [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol) and [UDP](https://en.wikipedia.org/wiki/User_Datagram_Protocol) packets, two well known transport layer protocols, are also encapsulated within IP packets!

There is no (other) transport layer used with ICMP. Therefore ICMP must be on the transport layer!

### It's a Network Layer Protocol!

Unlike other transport layer protocols, ICMP assists the IP protocol. It is used to send error messages, redirect notices and other operational information between network devices. According to [RFC777](https://tools.ietf.org/html/rfc777) "ICMP, uses the basic support of IP as if it were a higher level protocol, however, ICMP is actually an integral part of IP, and must be implemented by every IP module."

Apart from programs like `ping` or `traceroute`, ICMP is not generally used by user network applications (You can see my confusion when rewriting `ping`). It's also not typically used to send data.

ICMP also has no concept of ports! You can consider transport layer protocols as establishing connections between applications and network layer protocols as sending messages between network devices. ICMP obviously belongs to the latter here. 

ICMP is not alone! [IGMP](https://en.wikipedia.org/wiki/Internet_Group_Management_Protocol) is also considered to be part of the network layer despite its packets being encapsulated within IP packets. Many of the points made previously also apply to IGMP!
