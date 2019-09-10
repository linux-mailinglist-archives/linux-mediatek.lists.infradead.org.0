Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662D3AE45C
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Sep 2019 09:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kvXqhB5j83g6FdY8qfiV8VEdmlPCg883V5TW3lzH2AU=; b=ozXdl+bebh9b2K
	2BkDc8MyQzAlD74PLMsci1M1hDJakK22LDWh0z7h+7vDO1iiBW6ov2R5ITEDoMCtClE+YJnVxqyAX
	Z+6A0HnTnkpAp0Bcn+ImgZXN7dTqc7z285khpxZTTBqwAlpk52GyPmaQXyvDtfyiRkSKBmmsK7TCK
	e36kbHyWhnCxbWBLSPQp45ImAyWYd+Bz6xduOFQDml4IQ9kH+k4CltKfWNoqXTSaDhLHNJ/ccrYXa
	LJ/n2x/8frVZ2VM059pKvW88rIX0XC+XRF/RGrB5Md0WhcYJituMgFpp4H1P8pXrXZHe9ZtDbwQHv
	OfQ28mJ3uImOpS+ZRbiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aLx-0003li-Eo; Tue, 10 Sep 2019 07:14:17 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aDL-0007rG-EZ; Tue, 10 Sep 2019 07:05:25 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id A088C962BA;
 Tue, 10 Sep 2019 07:05:11 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id ED6A343E8B;
 Tue, 10 Sep 2019 07:05:11 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.75.73.135.bambit.de
 [185.75.73.135])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id C3943100B88;
 Tue, 10 Sep 2019 07:05:10 +0000 (UTC)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v7 0/7] implement poweroff for mt6323 / bpi-r2
Date: Tue, 10 Sep 2019 09:04:39 +0200
Message-Id: <20190910070446.639-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_000524_375572_2EA4FAF6 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>, Alessandro Zummo <a.zummo@towertech.it>,
 linux-pm@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

bWFpbmxpbmUtZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgbXQ2MzIzCgp0aGlzIHNlcmllcyBtYWtl
cyBzb21lIGNsZWFudXAgdG8gbXQ2Mzk3LXJ0Yy1kcml2ZXIsIGFkZHMgbXQ2MzIzIGFuZAppbXBs
ZW1lbnQgcG93ZXItY29udHJvbGxlciBvbiBpdC4KCnRlc3RlZCBvbiBiYW5hbmFwaS1yMgoKT3Jp
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCmNoYW5nZXMgc2luY2UgdjY6CgktIHJlYmFz
ZWQgb24gNS4zLXJjOAoJLSBwb3N0IG9ubHkgNyBQYXRjaGVzIGJlY2F1c2UgNiBhcmUgYWxyZWFk
eSBhcHBsaWVkIHRvIG5leHQKCS0gdXBkYXRlIGNvcHlyaWdodCBpbiAibW92ZSBzb21lIGNvbW1v
biBkZWZpbml0aW9ucyBpbnRvIHJ0Yy5oIgpjaGFuZ2VzIHNpbmNlIHY1OgoJLSBzcGxpdHRlZCBw
YXJ0IDEgdG8gc2VwYXJhdGUgY2hhbmdlcyBhbmQgYWRkaXRpb25zIG5vdCByZWxhdGVkIHRvIHB3
cmMKCS0gbW92ZSBtZmQvbXQ2Mzk3L2NvcmUuaCBmcm9tIHY0LjggaW4gc2VwYXJhdGUgcGF0Y2gg
ImFkZCBtdXRleCBpbmNsdWRlIgoJLSBjaGFuZ2VkIHJlY2lwaWVudHMgKG1vdmVkIGZyb20gVG8g
dG8gQ2MsIHJlbW92ZWQgY29tbWl0dGVycykKY2hhbmdlcyBzaW5jZSB2NDoKCS0gcmVsYXRpdmUg
cGF0aCBpbiBwYXJ0IDErMgoJLSBkcm9wIGNoYW5nZSBvZiBjb3B5cmlnaHQteWVhciBpbiBwYXJ0
IDUKY2hhbmdlcyBzaW5jZSB2MzoKCS0gbW92ZWQgU09CIGluIDIvMTAgYW5kIDkvMTAKCS0gbW92
ZWQgcGFydCA1IHRvIDYgdG8gYmUgbmVhciBkcml2ZXItY2hhbmdlCgktIGNoYW5nZWhpc3Rvcnkg
b2YgcGF0Y2hlcyBiZWxvdyAtLS0KY2hhbmdlcyBzaW5jZSB2MjoKCS0gU3BsaXR0ZWQgc29tZSBw
YXJ0cyBhbmQgcmViYXNlZCBvbiA1LjMtcmMyOgoKCXYyLjEgZHQtYmluZGluZ3M6IGFkZCBwb3dl
cmNvbnRyb2xsZXIg4oCTIHRyeSB0byBtYWtlIGJldHRlciBzdWJqZWN0Cgl2Mi4yIHNlcGFyYXRl
IHJ0Yy1tdDYzOTcudHh0IChzdWdnZXN0ZWQgYnkgQWxleGFuZHJlIEJlbGxvbmkpCgkgICAgIGFk
ZCBtaXNzaW5nIGNvbW1pdC1tZXNzYWdlIChzdWdnZXN0ZWQgYnkgTWF0dGhpYXMgQnJ1Z2dlcikK
CXYyLjMgZml4IGFsbG9jIGFmdGVyIElSUSAoc3VnZ2VzdGVkIGJ5IEFsZXhhbmRyZSBCZWxsb25p
KQoJICAgICBuZXcgY29tcGF0aWJsZSAoc3BsaXR0aW5nIHN1Z2dlc3RlZCBieSBBbGV4YW5kcmUg
QmVsbG9uaSkKCSAgICAgbmVlZGVkIGR1ZSB0byBkaWZmZXJlbnQgcnRjLWJhc2Uvc2l6ZSBzZWUg
IzcKCXYyLjQgc2ltcGxpZmljYXRpb25zIChEZWZpbmUtcmVzLW1hY3JvcykKCSAgICAgYWRkIG10
NjMyMyBydGMrcHdyYwoJdjIuNSBhZGQgcG93ZXJvZmYtZHJpdmVyIChubyBjaGFuZ2UpCgl2Mi42
IE1BSU5UQUlORVJTIChubyBjaGFuZ2UpCgl2Mi43IERUUy1DaGFuZ2VzIChubyBjaGFuZ2UpCgpK
b3NlZiBGcmllZGwgKDcpOgogIGR0LWJpbmRpbmdzOiBydGM6IG1lZGlhdGVrOiBhZGQgbWlzc2lu
ZyBtdDYzOTcgcnRjCiAgcnRjOiBtdDYzOTc6IG1vdmUgc29tZSBjb21tb24gZGVmaW5pdGlvbnMg
aW50byBydGMuaAogIHJ0YzogbXQ2Mzk3OiBpbXByb3ZlbWVudHMgb2YgcnRjIGRyaXZlcgogIHJ0
YzogbXQ2Mzk3OiBhZGQgY29tcGF0aWJsZSBmb3IgbXQ2MzIzCiAgcG93ZXI6IHJlc2V0OiBhZGQg
ZHJpdmVyIGZvciBtdDYzMjMgcG93ZXJvZmYKICBNQUlOVEFJTkVSUzogYWRkIE1lZGlhdGVrIHNo
dXRkb3duIGRyaXZlcnMKICBhcm06IGR0czogbXQ2MzIzOiBhZGQga2V5cywgcG93ZXItY29udHJv
bGxlciwgcnRjIGFuZCBjb2RlYwoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9ydGMtbXQ2
Mzk3LnR4dCAgICB8ICAyOSArKysrKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA3ICsrCiBhcmNoL2FybS9ib290L2R0cy9tdDYzMjMuZHRzaSAgICAg
ICAgICAgICAgICAgfCAgMjcgKysrKysKIGRyaXZlcnMvcG93ZXIvcmVzZXQvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICB8ICAxMCArKwogZHJpdmVycy9wb3dlci9yZXNldC9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2Zm
LmMgICAgICAgICB8ICA5NyArKysrKysrKysrKysrKysrCiBkcml2ZXJzL3J0Yy9ydGMtbXQ2Mzk3
LmMgICAgICAgICAgICAgICAgICAgICAgfCAxMDcgKysrKy0tLS0tLS0tLS0tLS0tCiBpbmNsdWRl
L2xpbnV4L21mZC9tdDYzOTcvcnRjLmggICAgICAgICAgICAgICAgfCAgNzEgKysrKysrKysrKysr
CiA4IGZpbGVzIGNoYW5nZWQsIDI2MyBpbnNlcnRpb25zKCspLCA4NiBkZWxldGlvbnMoLSkKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3J0
Yy1tdDYzOTcudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wb3dlci9yZXNldC9tdDYz
MjMtcG93ZXJvZmYuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM5
Ny9ydGMuaAoKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbWVkaWF0ZWsK
