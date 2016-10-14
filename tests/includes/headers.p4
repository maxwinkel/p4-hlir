header_type ethernet_t {
    fields {
        bit<48> dstAddr;
        bit<48> srcAddr;
        bit<16> etherType;
    }
}

header_type vlan_tag_t {
    fields {
        bit<3> pcp;
        bit<1> cfi;
        bit<12> vid;
        bit<16> etherType;
    }
}

header_type ipv4_t {
    fields {
        bit<4> version;
        bit<4> ihl;
        bit<8> diffserv;
        bit<16> totalLen;
        bit<16> identification;
        bit<3> flags;
        bit<13> fragOffset;
        bit<8> ttl;
        bit<8> protocol;
        bit<16> hdrChecksum;
        bit<32> srcAddr;
        bit<32> dstAddr;
    }
}

header_type ipv6_t {
    fields {
        bit<4> version;
        bit<8> trafficClass;
        bit<20> flowLabel;
        bit<16> payloadLen;
        bit<8> nextHdr;
        bit<8> hopLimit;
        bit<128> srcAddr;
        bit<128> dstAddr;
    }
}

header_type icmp_t {
    fields {
        bit<8> hdr_type;
        bit<8> code;
        bit<16> hdrChecksum;
    }
}

header_type icmpv6_t {
    fields {
        bit<8> hdr_type;
        bit<8> code;
        bit<16> hdrChecksum;
    }
}

header_type tcp_t {
    fields {
        bit<16> srcPort;
        bit<16> dstPort;
        bit<32> seqNo;
        bit<32> ackNo;
        bit<4> dataOffset;
        bit<3> res;
        bit<3> ecn;
        bit<6> ctrl;
        bit<16> window;
        bit<16> checksum;
        bit<16> urgentPtr;
    }
}

header_type udp_t {
    fields {
        bit<16> srcPort;
        bit<16> dstPort;
        bit<16> hdr_length;
        bit<16> checksum;
    }
}

header_type routing_metadata_t {
    fields {
        bit<1> drop;
    }
}
