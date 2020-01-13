Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D46A138E1C
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Jan 2020 10:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aQ318OXh1IBVSXyxr7hsTHXYvVGxXU40qa5lF68QX+U=; b=NuqkboJcuaZ5kFCXmcq8FIAti
	bA7mgm36UUbVU2OlJnD9XCPIStDgRQ81gvQVhsQEznV9gp+m2cwLE4mebL629WZks+C9dL7J2zSV5
	NWkMoaMeNYiTHcGRXbewMWW2wrvIHOTFvIGf/NJOYUaSQ64xxdq6tKYjPVf6GGJNJy1NjMTGj6me4
	ecYwbQTVsaOQ7+B44pXDuU8UY63IgmMLmuKBxirQLEFOZQviJDnJVqHozFD9UDQSvd3T2Clr84FNz
	V1Whr6CuzV1x/29jAaRHIH836nvatwPRJp7Ecpjr7tgtvugqGqLKjrT9DOFhVTsN2g71CU9V5B0L6
	gze9BkFOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwIx-0002Wm-Qo; Mon, 13 Jan 2020 09:46:39 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwIk-0002Op-US; Mon, 13 Jan 2020 09:46:28 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 99E031B2106E; Mon, 13 Jan 2020 12:46:25 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 99E031B2106E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1578908785; bh=mHvumthM4kqA6nZVMBkNipV495noJBzqsUxcFANvR+c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=hfLyTf3xSyNoxIIT481x14LwyHM7eYyCAci8Di7elz3YMGPPtwb3pr+eJhcPlOOiN
 kyoURwrWQOwnQHCsjEy0CbuanQaAmUenCc6dQKkNuBELbyFhwDfy2xx6QhTMneST8L
 fv2tOftpc0WC8u/kSEtDuOpCm9JgSixLWVaTdU3g=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 466E51B201E9;
 Mon, 13 Jan 2020 12:46:14 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 466E51B201E9
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id D30BE1B20320;
 Mon, 13 Jan 2020 12:46:13 +0300 (MSK)
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 13 Jan 2020 12:46:13 +0300 (MSK)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 12:46:13 +0300
From: Alexander Lobakin <alobakin@dlink.ru>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
In-Reply-To: <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
 <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
 <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.0
Message-ID: <0002a7388dfd5fb70db4b43a6c521c52@dlink.ru>
X-Sender: alobakin@dlink.ru
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014627_165594_B9983390 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Edward Cree <ecree@solarflare.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VmxhZGltaXIgT2x0ZWFuIHdyb3RlIDEzLjAxLjIwMjAgMTI6NDI6Cj4gSGkgQWxleGFuZGVyLAo+
IAo+IE9uIE1vbiwgMTMgSmFuIDIwMjAgYXQgMTE6MjIsIEFsZXhhbmRlciBMb2Jha2luIDxhbG9i
YWtpbkBkbGluay5ydT4gCj4gd3JvdGU6Cj4+IAo+PiBDUFUgcG9ydHMgY2FuJ3QgYmUgYnJpZGdl
ZCBhbnl3YXkKPj4gCj4+IFJlZ2FyZHMsCj4+IOGatyDhm5Yg4ZqiIOGapiDhmqAg4ZqxCj4gCj4g
VGhlIGZhY3QgdGhhdCBDUFUgcG9ydHMgY2FuJ3QgYmUgYnJpZGdlZCBpcyBhbHJlYWR5IG5vdCBp
ZGVhbC4KPiBPbmUgY2FuIGhhdmUgYSBEU0Egc3dpdGNoIHdpdGggY2FzY2FkZWQgc3dpdGNoZXMg
b24gZWFjaCBwb3J0LCBzbyBpdAo+IGFjdHMgbGlrZSBOIERTQSBtYXN0ZXJzIChub3QgYXMgRFNB
IGxpbmtzLCBzaW5jZSB0aGUgdGFnZ2VycyBhcmUKPiBpbmNvbXBhdGlibGUpLCB3aXRoIGVhY2gg
c3dpdGNoIGZvcm1pbmcgaXRzIG93biB0cmVlLiBJdCBpcyBkZXNpcmFibGUKPiB0aGF0IHRoZSBw
b3J0cyBvZiB0aGUgRFNBIHN3aXRjaCBvbiB0b3AgYXJlIGJyaWRnZWQsIHNvIHRoYXQKPiBmb3J3
YXJkaW5nIGJldHdlZW4gY2FzY2FkZWQgc3dpdGNoZXMgZG9lcyBub3QgcGFzcyB0aHJvdWdoIHRo
ZSBDUFUuCgpPaCwgSSBzZWUuIEJ1dCBjdXJyZW50bHkgRFNBIGluZnJhIGZvcmJpZHMgdGhlIGFk
ZGluZyBEU0EgbWFzdGVycyB0bwpicmlkZ2VzIElJUkMuIENhbid0IG5hbWUgaXQgZ29vZCBvciBi
YWQgZGVjaXNpb24sIGJ1dCB3YXMgaW50cm9kdWNlZAp0byBwcmV2ZW50IGFjY2lkZW50YWwgcGFj
a2V0IGZsb3cgYnJlYWtpbmcgb24gRFNBIHNldHVwcy4KCj4gLVZsYWRpbWlyCgpSZWdhcmRzLArh
mrcg4ZuWIOGaoiDhmqYg4ZqgIOGasQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tZWRpYXRlawo=
