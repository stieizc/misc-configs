passed = ["xiami.com", "tsinghua.edu.cn"]

function FindProxyForURL(url, host) {
    /* Don't proxy local hostnames */
    if (isPlainHostName(host)) {
        return 'DIRECT';
    }

    for (var i = 0; i < passed.length; i++) {
        if (dnsDomainIs(host, passed[i]) || (host == passed[i])) {
            return 'DIRECT';
        }
    }

    return 'SOCKS5 localhost:1066';
}
