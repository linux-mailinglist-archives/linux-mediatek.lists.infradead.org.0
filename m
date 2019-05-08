Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFF41751F
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 11:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jd/5FQoDURwcXwGDhUKfqdQo5B/YhFLATbwycCJ47ew=; b=tkkxTyDyOnTOKd
	/fIH1QCaK1WwfKVs1OGPL56lqCjuRdAfHswIXgCCDE9+QMimE1mslhlplm1jX4POxp6mOel4hmhRi
	0CKx6yqVG7jw73iC0WPem5C4SK/ZWiZIcG8baMN6Yg2V2mj0DQZDpTxq9FZMdzWoo91P3jWyBtVjW
	pbsgVrxijkjBZNGXvFKRGJW/y1dimkmspPPx9CI+k0AISAwOvt9JzKYOHPIL4qkfuzDRT7xiXoU5l
	X1xVVcWbJwf5lgU43jyxMgmQnru6ZEClEbbJyS7At8EqZMi/t9mBaOAWDlZoSWDtoUpGOlQdXhXNT
	OissppLHBrfijLAhRnDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIs0-0000Gj-UC; Wed, 08 May 2019 09:28:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIrw-0000GM-JO; Wed, 08 May 2019 09:28:10 +0000
X-UUID: a97f1ce11f194c39b5799837d6a3805d-20190508
X-UUID: a97f1ce11f194c39b5799837d6a3805d-20190508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 745304140; Wed, 08 May 2019 01:28:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 02:28:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 17:27:56 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 17:27:56 +0800
Message-ID: <1557307676.27568.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 3/4] dt-bindings: devfreq: add compatible for mt8183
 cci devfreq
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Date: Wed, 8 May 2019 17:27:56 +0800
In-Reply-To: <28f2c90a-9588-3afa-193d-2572c9cc9bf5@samsung.com>
References: <1553841972-19737-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <CGME20190329064630epcas5p216f8d9263dc6fea26bb71165b5673111@epcas5p2.samsung.com>
 <1553841972-19737-4-git-send-email-andrew-sh.cheng@mediatek.com>
 <28f2c90a-9588-3afa-193d-2572c9cc9bf5@samsung.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_022808_644763_5F9DD486 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, fan.chen@mediatek.com,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA0LTE2IGF0IDE4OjA4ICswOTAwLCBDaGFud29vIENob2kgd3JvdGU6Cj4g
SGksCj4gCj4gSSBhbHJlYWR5IHJldmlld2VkIHRoaXMgcGF0Y2ggb24gdjFbMV0uCj4gWzFdIGh0
dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzIvMTEvMjIyOAo+IAo+IEJ1dCwgdGhlIHNlY29uZCB2
ZXJzaW9uIHBhdGNoIGRvZXNuJ3QgaW5jbHVkZSB0aGUgYW55dGhpbmcKPiBhYm91dCByZXZpZXcu
IFBsZWFzZSBjaGVjayBpdFsxXS4KSEkgQ2hhbndvbywKU29ycnkgZm9yIHRoaXMgY2x1bXN5IG1p
c3Rha2UuCkkgd2lsbCB1cGRhdGUgYXQgcGF0Y2ggdjMKPiAKPiBPbiAxOS4gMy4gMjkuIOyYpO2b
hCAzOjQ2LCBBbmRyZXctc2guQ2hlbmcgd3JvdGU6Cj4gPiBUaGlzIGFkZHMgZHQtYmluZGluZyBk
b2N1bWVudGF0aW9uIG9mIGNjaSBkZXZmcmVxCj4gPiBmb3IgTWVkaWF0ZWsgTVQ4MTgzIFNvQyBw
bGF0Zm9ybS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQW5kcmV3LXNoLkNoZW5nIDxhbmRyZXct
c2guY2hlbmdAbWVkaWF0ZWsuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL2RldmZyZXEv
bXQ4MTgzLWNjaS1kZXZmcmVxLnR4dCAgICAgICAgICAgfCAxOSArKysrKysrKysrKysrKysrKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvbXQ4MTgzLWNj
aS1kZXZmcmVxLnR4dAo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2RldmZyZXEvbXQ4MTgzLWNjaS1kZXZmcmVxLnR4dCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL210ODE4My1jY2ktZGV2ZnJlcS50eHQKPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwLi5lMmI2MWNmCj4gPiAtLS0g
L2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2
ZnJlcS9tdDgxODMtY2NpLWRldmZyZXEudHh0Cj4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiArKiBN
ZWRpYXRlayBDQ0kgZnJlcXVlbmN5IGRldmljZQo+ID4gKwo+ID4gK1JlcXVpcmVkIHByb3BlcnRp
ZXM6Cj4gPiArLSBjb21wYXRpYmxlOiBzaG91bGQgY29udGFpbiAibWVkaWF0ZWssbXQ4MTgzLWNj
aSIgZm9yIGNjaSBkZXZmcmVxCj4gPiArCj4gPiArLSBjbG9ja3M6IGZvciBjY2kgZGV2ZnJlcQo+
ID4gKwo+ID4gKy0gY2xvY2stbmFtZXM6IGZvciBjY2kgZGV2ZnJlcSBkcml2ZXIgdG8gcmVmZXJl
bmNlCj4gPiArCj4gPiArLSBvcGVyYXRpbmctcG9pbnRzLXYyOiBmb3IgY2NpIGRldmZyZXEgb3Bw
IHRhYmxlCj4gPiArCj4gPiArRXhhbXBsZToKPiA+ICsJY2NpOiBjY2kgewo+ID4gKwkJY29tcGF0
aWJsZSA9ICJtZWRpYXRlayxjY2kiOwo+ID4gKwkJY2xvY2tzID0gPCZhcG1peGVkc3lzIENMS19B
UE1JWEVEX0NDSVBMTD47Cj4gPiArCQljbG9jay1uYW1lcyA9ICJjY2lfY2xvY2siOwo+ID4gKwkJ
b3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY2NpX29wcD47Cj4gPiArCX07Cj4gPiArCj4gPiAKPiAK
PiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRp
YXRlawo=
