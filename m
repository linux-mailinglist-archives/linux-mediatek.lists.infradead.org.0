Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5007916E1
	for <lists+linux-mediatek@lfdr.de>; Sun, 18 Aug 2019 15:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z3KANiOTjCLs1e4tPyMBO9KYrS0nFZadL6seHBkuW6U=; b=UxHwcmRW8TPLSS
	9AVjDo7w2ZvMK/Bf2ZkIIizva92B1/IPy131vuWpCEUredAjsaaAN6Hk9FH3tnCVX4z99WVLLndUQ
	Uq4MBt4ZI16kZqBmFkIE9t6oikxn3/1BrsWNpaT4tDdTivm7rx00T7KkecdkORnggSNJ8nx6+spBI
	++zUcTTR6FhVgc61qGU+aHKLMi94tUD3TjFZHLtedlFfox8vEEKBjP6l/tVZjT7uDf45VfDYmi9L4
	VDPBr37M0yxShAj2vBh1wM+4Pe2EwXAvVerFjlRp41DlRK/iUS/1QpkarLRc7YvaQdOAHi+dStnRX
	bqcYfNW7C5aFrBr8PwrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzLgI-0006RV-8o; Sun, 18 Aug 2019 13:57:14 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzLfa-0005vy-Cp; Sun, 18 Aug 2019 13:56:32 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 09B50965DB;
 Sun, 18 Aug 2019 13:56:21 +0000 (UTC)
Received: from mxbox3.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id 50D3843D5A;
 Sun, 18 Aug 2019 13:56:21 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.53.43.183.bambit.de
 [185.53.43.183])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 5A90D36043A;
 Sun, 18 Aug 2019 15:56:20 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v6 00/13] implement poweroff for mt6323 / bpi-r2
Date: Sun, 18 Aug 2019 15:55:58 +0200
Message-Id: <20190818135611.7776-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_065630_729532_6C6F4C6E 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
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
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
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
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCmNoYW5nZXMgc2luY2UgdjU6CgktIHNwbGl0
dGVkIHBhcnQgMSB0byBzZXBhcmF0ZSBjaGFuZ2VzIGFuZCBhZGRpdGlvbnMgbm90IHJlbGF0ZWQg
dG8gcHdyYwoJLSBtb3ZlIG1mZC9tdDYzOTcvY29yZS5oIGZyb20gdjQuOCBpbiBzZXBhcmF0ZSBw
YXRjaCAiYWRkIG11dGV4IGluY2x1ZGUiCgktIGNoYW5nZWQgcmVjaXBpZW50cyAobW92ZWQgZnJv
bSBUbyB0byBDYywgcmVtb3ZlZCBjb21taXR0ZXJzKQpjaGFuZ2VzIHNpbmNlIHY0OgoJLSByZWxh
dGl2ZSBwYXRoIGluIHBhcnQgMSsyCgktIGRyb3AgY2hhbmdlIG9mIGNvcHlyaWdodC15ZWFyIGlu
IHBhcnQgNQpjaGFuZ2VzIHNpbmNlIHYzOgoJLSBtb3ZlZCBTT0IgaW4gMi8xMCBhbmQgOS8xMAoJ
LSBtb3ZlZCBwYXJ0IDUgdG8gNiB0byBiZSBuZWFyIGRyaXZlci1jaGFuZ2UKCS0gY2hhbmdlaGlz
dG9yeSBvZiBwYXRjaGVzIGJlbG93IC0tLQoKY2hhbmdlcyBzaW5jZSB2MjoKCS0gU3BsaXR0ZWQg
c29tZSBwYXJ0cyBhbmQgcmViYXNlZCBvbiA1LjMtcmMyOgoKCXYyLjEgZHQtYmluZGluZ3M6IGFk
ZCBwb3dlcmNvbnRyb2xsZXIg4oCTIHRyeSB0byBtYWtlIGJldHRlciBzdWJqZWN0Cgl2Mi4yIHNl
cGFyYXRlIHJ0Yy1tdDYzOTcudHh0IChzdWdnZXN0ZWQgYnkgQWxleGFuZHJlIEJlbGxvbmkpCgkg
ICAgIGFkZCBtaXNzaW5nIGNvbW1pdC1tZXNzYWdlIChzdWdnZXN0ZWQgYnkgTWF0dGhpYXMgQnJ1
Z2dlcikKCXYyLjMgZml4IGFsbG9jIGFmdGVyIElSUSAoc3VnZ2VzdGVkIGJ5IEFsZXhhbmRyZSBC
ZWxsb25pKQoJICAgICBuZXcgY29tcGF0aWJsZSAoc3BsaXR0aW5nIHN1Z2dlc3RlZCBieSBBbGV4
YW5kcmUgQmVsbG9uaSkKCSAgICAgbmVlZGVkIGR1ZSB0byBkaWZmZXJlbnQgcnRjLWJhc2Uvc2l6
ZSBzZWUgIzcKCXYyLjQgc2ltcGxpZmljYXRpb25zIChEZWZpbmUtcmVzLW1hY3JvcykKCSAgICAg
YWRkIG10NjMyMyBydGMrcHdyYwoJdjIuNSBhZGQgcG93ZXJvZmYtZHJpdmVyIChubyBjaGFuZ2Up
Cgl2Mi42IE1BSU5UQUlORVJTIChubyBjaGFuZ2UpCgl2Mi43IERUUy1DaGFuZ2VzIChubyBjaGFu
Z2UpCgoKRnJhbmsgV3VuZGVybGljaCAoMSk6CiAgZHQtYmluZGluZ3M6IG1mZDogbWVkaWF0ZWs6
IG10NjM5NzogY2hhbmdlIHRvIHJlbGF0aXZlIHBhdGhzCgpKb3NlZiBGcmllZGwgKDEyKToKICBk
dC1iaW5kaW5nczogbWZkOiBtZWRpYXRlazogdXBkYXRlIHJ0YyB0byBpbmNsdWRlIG10NjMyMwog
IGR0LWJpbmRpbmdzOiBtZmQ6IG1lZGlhdGVrOiBhZGQgbXQ2MzIzIHBvd2VyLWNvbnRyb2xsZXIK
ICBkdC1iaW5kaW5nczogcnRjOiBtZWRpYXRlazogYWRkIG1pc3NpbmcgbXQ2Mzk3IHJ0YwogIHJ0
YzogbXQ2Mzk3OiBtb3ZlIHNvbWUgY29tbW9uIGRlZmluaXRpb25zIGludG8gcnRjLmgKICBtZmQ6
IG10NjM5NzogYWRkIG11dGV4IGluY2x1ZGUKICBydGM6IG10NjM5NzogaW1wcm92ZW1lbnRzIG9m
IHJ0YyBkcml2ZXIKICBtZmQ6IG10NjMyMzogc29tZSBpbXByb3ZlbWVudHMgb2YgbXQ2Mzk3LWNv
cmUKICBydGM6IG10NjM5NzogYWRkIGNvbXBhdGlibGUgZm9yIG10NjMyMwogIG1mZDogbXQ2MzIz
OiBhZGQgbXQ2MzIzIHJ0Yytwd3JjCiAgcG93ZXI6IHJlc2V0OiBhZGQgZHJpdmVyIGZvciBtdDYz
MjMgcG93ZXJvZmYKICBNQUlOVEFJTkVSUzogYWRkIE1lZGlhdGVrIHNodXRkb3duIGRyaXZlcnMK
ICBhcm06IGR0czogbXQ2MzIzOiBhZGQga2V5cywgcG93ZXItY29udHJvbGxlciwgcnRjIGFuZCBj
b2RlYwoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0ICAgICAgICB8ICAy
MCArKystCiAuLi4vYmluZGluZ3MvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLnR4dCAgfCAg
MjAgKysrKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3J0Yy1tdDYzOTcudHh0ICAgIHwg
IDI5ICsrKysrCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDcgKysKIGFyY2gvYXJtL2Jvb3QvZHRzL210NjMyMy5kdHNpICAgICAgICAgICAgICAgICB8
ICAyNyArKysrKwogZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYyAgICAgICAgICAgICAgICAgICAg
IHwgIDM4ICsrKysrLS0KIGRyaXZlcnMvcG93ZXIvcmVzZXQvS2NvbmZpZyAgICAgICAgICAgICAg
ICAgICB8ICAxMCArKwogZHJpdmVycy9wb3dlci9yZXNldC9NYWtlZmlsZSAgICAgICAgICAgICAg
ICAgIHwgICAxICsKIGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLmMgICAgICAg
ICB8ICA5NyArKysrKysrKysrKysrKysrCiBkcml2ZXJzL3J0Yy9ydGMtbXQ2Mzk3LmMgICAgICAg
ICAgICAgICAgICAgICAgfCAxMDcgKysrKy0tLS0tLS0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L21m
ZC9tdDYzOTcvY29yZS5oICAgICAgICAgICAgICAgfCAgIDIgKwogaW5jbHVkZS9saW51eC9tZmQv
bXQ2Mzk3L3J0Yy5oICAgICAgICAgICAgICAgIHwgIDcxICsrKysrKysrKysrKwogMTIgZmlsZXMg
Y2hhbmdlZCwgMzI3IGluc2VydGlvbnMoKyksIDEwMiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcmVzZXQvbXQ2
MzIzLXBvd2Vyb2ZmLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9ydGMvcnRjLW10NjM5Ny50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5oCgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
