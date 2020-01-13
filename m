Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81387138DDC
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Jan 2020 10:30:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=253thj+1AoBESKaqJ3+LCVPQGUmAbtxQ/Pn3yCbeuZw=; b=A1ASsgy0urSRDHjwIlXschsz3
	tknH7eRD3o3FTay/tV33+SEMjqMvBgFhBL87p9dS0kdj8tCIiHVMsJ+lD9OKldF87CJFm1lPWoJYL
	KoV4Iwh4d6laFOmgB/9NYr1p828Uz6HV9B0IyEFmXf7O7RizzZ5fBq7I4cf8WeQj8QajccuVBxC6x
	pveubO5a8mJcysoGtauu7bNm2EY5cvhgk2fThcJ49ASzykmxZtnyk4WtJtfFNg4iWnNpcVgFtQ35Q
	YFYD1XbXHaTssFZqy6hmntha9vr7wqpZzBOsnN8QqFbrsGCMAamk93/dQQVxfxtJXMOh3KKK7qeHK
	mYNEbFbqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqw3a-0003EL-7Z; Mon, 13 Jan 2020 09:30:46 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqw3C-0002uT-9E; Mon, 13 Jan 2020 09:30:24 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 99A3A1B201D0; Mon, 13 Jan 2020 12:30:15 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 99A3A1B201D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1578907815; bh=ay0aQdubfRd2z0EzjvG25Fck9nkLxv3o/IS7a8ekqDc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=FD+lzBYViDyUELo+wu2Dz25kt1BtrTaoYevGr/umDm0za9Z8Uc/z4QSi8y62aO8XR
 r0/J1deZIrP6Om+XuYlVeyqmJ2i39as7p3CoM7HrDDq0Hw8DDs/M3bxi4Fl6FQ/+Th
 D/7b08u0P0PBCYZ06zORiTgIXi5224hd5igU8c+A=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id CCEA41B20968;
 Mon, 13 Jan 2020 12:30:07 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru CCEA41B20968
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 2FC251B2613E;
 Mon, 13 Jan 2020 12:30:07 +0300 (MSK)
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 13 Jan 2020 12:30:07 +0300 (MSK)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 12:30:06 +0300
From: Alexander Lobakin <alobakin@dlink.ru>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 00/20] net: dsa: add GRO support
In-Reply-To: <CA+h21hq95SmS3BraUQeEytP+3Y7irmShBEwpXqqJv+xOp4ePrg@mail.gmail.com>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <CA+h21hq95SmS3BraUQeEytP+3Y7irmShBEwpXqqJv+xOp4ePrg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.0
Message-ID: <607283965483d3bc3c0e969b1fadf540@dlink.ru>
X-Sender: alobakin@dlink.ru
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_013022_532942_F58A651E 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jiri Pirko <jiri@mellanox.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VmxhZGltaXIgT2x0ZWFuIHdyb3RlIDMxLjEyLjIwMTkgMTg6MzI6Cj4gSGkgQWxleGFuZGVyLAoK
SGksCgo+IE9uIE1vbiwgMzAgRGVjIDIwMTkgYXQgMTY6MzEsIEFsZXhhbmRlciBMb2Jha2luIDxh
bG9iYWtpbkBkbGluay5ydT4gCj4gd3JvdGU6Cj4+IAo+PiBJIG1hcmsgdGhpcyBhcyBSRkMsIGFu
ZCB0aGVyZSBhcmUgdGhlIGtleSBxdWVzdGlvbnMgZm9yIG1haW50YWluZXJzLAo+PiBkZXZlbG9w
ZXJzLCB1c2VycyBldGMuOgo+PiAtIERvIHdlIG5lZWQgR1JPIHN1cHBvcnQgZm9yIERTQSBhdCBh
bGw/Cj4+IC0gV2hpY2ggdGFnZ2VyIHByb3RvY29scyByZWFsbHkgbmVlZCBpdCBhbmQgd2hpY2gg
ZG9uJ3Q/Cj4+IC0gRG9lcyB0aGlzIHNlcmllcyBicmluZyBhbnkgcGVyZm9ybWFuY2UgaW1wcm92
ZW1lbnRzIG9uIHRoZQo+PiAgIGFmZmVjdGVkIHN5c3RlbXM/Cj4gCj4gSWYgdGhlc2UgYXJlIHRo
ZXNlIHF1ZXN0aW9ucyBmb3IgbWFpbnRhaW5lcnMsIGRldmVsb3BlcnMsIHVzZXJzIGV0YywKPiB0
aGVuIHdoYXQgaGFzIGRldGVybWluZWQgeW91IHRvIG1ha2UgdGhlc2UgY2hhbmdlcz8KClRoZSBt
YWluIHJlYXNvbiB3YXMgb2J2aW91c2x5IHByZXR0eSBnb29kIHJlc3VsdHMgb24gYSBwYXJ0aWN1
bGFyCmhhcmR3YXJlIG9uIHdoaWNoIEkgZGV2ZWxvcGVkIHRoaXMgKGFuZCBvdGhlcikgc2VyaWVz
IGFuZCBhIGdlbmVyYWwKb3BpbmlvbiB0aGF0IEdSTyBpbXByb3ZlcyBvdmVyYWxsIHBlcmZvcm1h
bmNlIG9uIG1vc3Qgc3lzdGVtcy4KRFNBIGlzIGEgc3BlY2lhbCBjYXNlIHRob3VnaC4KCj4gVGhh
bmtzLAo+IC1WbGFkaW1pcgoKUmVnYXJkcywK4Zq3IOGbliDhmqIg4ZqmIOGaoCDhmrEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVr
IG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
