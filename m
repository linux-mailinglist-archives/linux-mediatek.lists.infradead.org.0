Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBF419CECA
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Apr 2020 05:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=janJHlNQaLsHx/t9rpUcd1Lj0Ijz6GBxQ1IDWZqQaxA=; b=FPD9odmhGnviMk
	Kwg0RfG9viiwR9Ar8pLqoxnvH+4wX0fNhTWZI66dXhcOM/PH+kusYdl0EZn9jRG3vu6TcMytNns65
	+cADt2DUshVxUwT1xos8S3tocOw3TILCHhZbUnMhnd6t7JckjbXaeenQYtyF+ECiNS0F2xq7UA83X
	rHi6rvPF5sC4vl1mQaB2i+cLbgSTzAcb8+NlUBMOBxDPdhbOOp9s7m1H55cGkvDZMUyV7/IRC3Vwf
	FeC5FWB2rkd0E6P1FJJyFBdJKpcG3triGITJbyfJKW+G03C8aVcdhVrJXClWQ6q0Ll1xzeb9V4bpt
	WeacMlSigpjfDcheXCHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKCiH-0004ym-JC; Fri, 03 Apr 2020 03:09:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKCiD-0004gI-GA
 for linux-mediatek@lists.infradead.org; Fri, 03 Apr 2020 03:09:43 +0000
X-UUID: 1c98a34804904c33a71fb6078b4b28e7-20200402
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=DJTWNCanyhjtJLd8oMpwvSiCfRyj+EyKiHaVDaZuJyA=; 
 b=Yi0OTTmWapulmmDw+dfs1fj56GM77Px+FM+B1SKsVVyyNsufAzDUbIspripSJzXjjouvLXYQQMA0V4PktIb3fBDQvkztXxkpKxlyroigcj3/2ZftrjoSS1EksTehpUt2YuevYUx7KQLbeOOWGtkyDyoHPHpREHVN0JFSDWzmStU=;
X-UUID: 1c98a34804904c33a71fb6078b4b28e7-20200402
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1140337050; Thu, 02 Apr 2020 19:09:32 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Apr 2020 19:59:32 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 3 Apr 2020 10:59:31 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Apr 2020 10:59:29 +0800
Message-ID: <1585882773.28772.7.camel@mhfsdcap03>
Subject: Re: [PATCH v3 1/4] drm/mediatek: Move tz_disabled from mtk_hdmi_phy
 to mtk_hdmi driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 3 Apr 2020 10:59:33 +0800
In-Reply-To: <CAAOTY_8EScidYVri=fn+sdteyD1TGSZ4AnYkp7kz2RozriSk=A@mail.gmail.com>
References: <20200331155728.18032-1-chunkuang.hu@kernel.org>
 <20200331155728.18032-2-chunkuang.hu@kernel.org>
 <1585707361.28859.19.camel@mhfsdcap03>
 <ceae861b-b5ee-1d33-67dd-0a2ff4af2816@gmail.com>
 <CAAOTY_8EScidYVri=fn+sdteyD1TGSZ4AnYkp7kz2RozriSk=A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_200941_552677_9F53F52D 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, CK
 Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTA0LTAyIGF0IDIwOjQ5ICswODAwLCBDaHVuLUt1YW5nIEh1IHdyb3RlOg0K
PiBIaSwgTWF0dGhpYXM6DQo+IA0KPiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21h
aWwuY29tPiDmlrwgMjAyMOW5tDTmnIgx5pelIOmAseS4iSDkuIvljYgxMTo1M+Wvq+mBk++8mg0K
PiA+DQo+ID4NCj4gPg0KPiA+IE9uIDAxLzA0LzIwMjAgMDQ6MTYsIENodW5mZW5nIFl1biB3cm90
ZToNCj4gPiA+IE9uIFR1ZSwgMjAyMC0wMy0zMSBhdCAyMzo1NyArMDgwMCwgQ2h1bi1LdWFuZyBI
dSB3cm90ZToNCj4gPiA+PiBGcm9tOiBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29tPg0KPiA+ID4+
DQo+ID4gPj4gdHpfZGlzYWJsZWQgaXMgdXNlZCB0byBjb250cm9sIG10a19oZG1pIG91dHB1dCBz
aWduYWwsIGJ1dCB0aGlzIHZhcmlhYmxlDQo+ID4gPj4gaXMgc3RvcmVkIGluIG10a19oZG1pX3Bo
eSBhbmQgbXRrX2hkbWlfcGh5IGRvZXMgbm90IHVzZSBpdC4gU28gbW92ZQ0KPiA+ID4+IHR6X2Rp
c2FibGVkIHRvIG10a19oZG1pIHdoZXJlIGl0J3MgdXNlZC4NCj4gPiA+Pg0KPiA+ID4+IFNpZ25l
ZC1vZmYtYnk6IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+DQo+ID4gPj4gU2lnbmVkLW9mZi1i
eTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+DQo+ID4gPj4gLS0tDQo+
ID4gPj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jICAgICAgICAgICB8IDIy
ICsrKysrKysrKysrKysrKystLS0NCj4gPiA+PiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19oZG1pX3BoeS5oICAgICAgIHwgIDEgLQ0KPiA+ID4+ICAuLi4vZ3B1L2RybS9tZWRpYXRlay9t
dGtfbXQyNzAxX2hkbWlfcGh5LmMgICAgfCAgMSAtDQo+ID4gPj4gIDMgZmlsZXMgY2hhbmdlZCwg
MTkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiA+Pg0KPiA+ID4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfaGRtaS5jDQo+ID4gPj4gaW5kZXggNWU0YTRkYmRhNDQzLi44Nzg0MzNj
MDljOWIgMTAwNjQ0DQo+ID4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19o
ZG1pLmMNCj4gPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYw0K
PiA+ID4+IEBAIC0xNDQsMTEgKzE0NCwxNiBAQCBzdHJ1Y3QgaGRtaV9hdWRpb19wYXJhbSB7DQo+
ID4gPj4gICAgICBzdHJ1Y3QgaGRtaV9jb2RlY19wYXJhbXMgY29kZWNfcGFyYW1zOw0KPiA+ID4+
ICB9Ow0KPiA+ID4+DQo+ID4gPj4gK3N0cnVjdCBtdGtfaGRtaV9jb25mIHsNCj4gPiA+PiArICAg
IGJvb2wgdHpfZGlzYWJsZWQ7DQo+ID4gPj4gK307DQo+ID4gPj4gKw0KPiA+ID4+ICBzdHJ1Y3Qg
bXRrX2hkbWkgew0KPiA+ID4+ICAgICAgc3RydWN0IGRybV9icmlkZ2UgYnJpZGdlOw0KPiA+ID4+
ICAgICAgc3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOw0KPiA+ID4+ICAgICAgc3RydWN0
IGRybV9jb25uZWN0b3IgY29ubjsNCj4gPiA+PiAgICAgIHN0cnVjdCBkZXZpY2UgKmRldjsNCj4g
PiA+PiArICAgIGNvbnN0IHN0cnVjdCBtdGtfaGRtaV9jb25mICpjb25mOw0KPiA+ID4+ICAgICAg
c3RydWN0IHBoeSAqcGh5Ow0KPiA+ID4+ICAgICAgc3RydWN0IGRldmljZSAqY2VjX2RldjsNCj4g
PiA+PiAgICAgIHN0cnVjdCBpMmNfYWRhcHRlciAqZGRjX2FkcHQ7DQo+ID4gPj4gQEAgLTIzMCw3
ICsyMzUsNiBAQCBzdGF0aWMgdm9pZCBtdGtfaGRtaV9od192aWRfYmxhY2soc3RydWN0IG10a19o
ZG1pICpoZG1pLCBib29sIGJsYWNrKQ0KPiA+ID4+ICBzdGF0aWMgdm9pZCBtdGtfaGRtaV9od19t
YWtlX3JlZ193cml0YWJsZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWksIGJvb2wgZW5hYmxlKQ0KPiA+
ID4+ICB7DQo+ID4gPj4gICAgICBzdHJ1Y3QgYXJtX3NtY2NjX3JlcyByZXM7DQo+ID4gPj4gLSAg
ICBzdHJ1Y3QgbXRrX2hkbWlfcGh5ICpoZG1pX3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShoZG1pLT5w
aHkpOw0KPiA+ID4+DQo+ID4gPj4gICAgICAvKg0KPiA+ID4+ICAgICAgICogTVQ4MTczIEhETUkg
aGFyZHdhcmUgaGFzIGFuIG91dHB1dCBjb250cm9sIGJpdCB0byBlbmFibGUvZGlzYWJsZSBIRE1J
DQo+ID4gPj4gQEAgLTIzOCw3ICsyNDIsNyBAQCBzdGF0aWMgdm9pZCBtdGtfaGRtaV9od19tYWtl
X3JlZ193cml0YWJsZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWksIGJvb2wgZW5hYmxlKQ0KPiA+ID4+
ICAgICAgICogVGhlIEFSTSB0cnVzdGVkIGZpcm13YXJlIHByb3ZpZGVzIGFuIEFQSSBmb3IgdGhl
IEhETUkgZHJpdmVyIHRvIHNldA0KPiA+ID4+ICAgICAgICogdGhpcyBjb250cm9sIGJpdCB0byBl
bmFibGUgSERNSSBvdXRwdXQgaW4gc3VwZXJ2aXNvciBtb2RlLg0KPiA+ID4+ICAgICAgICovDQo+
ID4gPj4gLSAgICBpZiAoaGRtaV9waHktPmNvbmYgJiYgaGRtaV9waHktPmNvbmYtPnR6X2Rpc2Fi
bGVkKQ0KPiA+ID4+ICsgICAgaWYgKGhkbWktPmNvbmYtPnR6X2Rpc2FibGVkKQ0KPiA+DQo+ID4g
V291bGRuJ3Qgd2UgbmVlZCB0byBjaGVjazoNCj4gPiBpZiAoaGRtaS0+Y29uZiAmJiBoZG1pLT5j
b25mLT50el9kaXNhYmxlZCkNCj4gDQo+IE15IGRlc2lnbiBpczogaGRtaS0+Y29uZiB3b3VsZCBu
b3QgYmUgTlVMTC4NCj4gDQo+ID4NCj4gPiA+PiAgICAgICAgICAgICAgcmVnbWFwX3VwZGF0ZV9i
aXRzKGhkbWktPnN5c19yZWdtYXAsDQo+ID4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBoZG1pLT5zeXNfb2Zmc2V0ICsgSERNSV9TWVNfQ0ZHMjAsDQo+ID4gPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAweDgwMDA4MDA1LCBlbmFibGUgPyAweDgwMDAwMDA1IDog
MHg4MDAwKTsNCj4gPiA+PiBAQCAtMTY4OCw2ICsxNjkyLDcgQEAgc3RhdGljIGludCBtdGtfZHJt
X2hkbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gPiA+PiAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gPj4NCj4gPiA+PiAgICAgIGhkbWktPmRldiA9IGRl
djsNCj4gPiA+PiArICAgIGhkbWktPmNvbmYgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2
KTsNCj4gPiA+Pg0KPiA+ID4+ICAgICAgcmV0ID0gbXRrX2hkbWlfZHRfcGFyc2VfcGRhdGEoaGRt
aSwgcGRldik7DQo+ID4gPj4gICAgICBpZiAocmV0KQ0KPiA+ID4+IEBAIC0xNzY1LDggKzE3NzAs
MTkgQEAgc3RhdGljIGludCBtdGtfaGRtaV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQ0KPiA+
ID4+ICBzdGF0aWMgU0lNUExFX0RFVl9QTV9PUFMobXRrX2hkbWlfcG1fb3BzLA0KPiA+ID4+ICAg
ICAgICAgICAgICAgICAgICAgICBtdGtfaGRtaV9zdXNwZW5kLCBtdGtfaGRtaV9yZXN1bWUpOw0K
PiA+ID4+DQo+ID4gPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2hkbWlfY29uZiBtdGtfaGRt
aV9jb25mX210MjcwMSA9IHsNCj4gPiA+PiArICAgIC50el9kaXNhYmxlZCA9IHRydWUsDQo+ID4g
Pj4gK307DQo+ID4gPj4gKw0KPiA+ID4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG10a19oZG1pX2Nv
bmYgbXRrX2hkbWlfY29uZl9tdDgxNzM7DQo+ID4gPj4gKw0KPiA+ID4+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBtdGtfZHJtX2hkbWlfb2ZfaWRzW10gPSB7DQo+ID4gPj4gLSAg
ICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE3My1oZG1pIiwgfSwNCj4gPiA+PiArICAg
IHsgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQyNzAxLWhkbWkiLA0KPiA+ID4+ICsgICAgICAu
ZGF0YSA9ICZtdGtfaGRtaV9jb25mX210MjcwMSwNCj4gPiA+PiArICAgIH0sDQo+ID4gPj4gKyAg
ICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE3My1oZG1pIiwNCj4gPiA+PiArICAgICAg
LmRhdGEgPSAmbXRrX2hkbWlfY29uZl9tdDgxNzMsDQo+ID4NCj4gPiBXZSBkb24ndCBoYXZlIGFu
eSBkYXRhPyBUaGVuIHdlIHNob3VsZCBzZXQgZGF0YSB0byBOVUxMIGluc3RlYWQuDQo+IA0KPiBN
eSBkZXNpZ24gaXMgZGF0YSB3b3VsZCBub3QgYmUgTlVMTCwgc28gSSBuZWVkIG5vdCB0byBjaGVj
ayB3aGV0aGVyIGl0DQo+IGlzIE5VTEwgaW4gZHJpdmVyLg0KQnV0IHdlIGRvbid0IG5lZWQgLmRh
dGEgZm9yIG10ODE3MywgaXQncyBiZXR0ZXIgdG8gc2V0IGl0IHRvIE5VTEwuDQoNCj4gDQo+IFJl
Z2FyZHMsDQo+IENLDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBNYXR0aGlhcw0KPiA+DQo+
ID4gPj4gKyAgICB9LA0KPiA+ID4+ICAgICAge30NCj4gPiA+PiAgfTsNCj4gPiA+Pg0KPiA+ID4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWlfcGh5LmggYi9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWlfcGh5LmgNCj4gPiA+PiBpbmRleCAyZDhi
MzE4MjQ3MGQuLmZjMWMyZWZkMTEyOCAxMDA2NDQNCj4gPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2hkbWlfcGh5LmgNCj4gPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2hkbWlfcGh5LmgNCj4gPiA+PiBAQCAtMjAsNyArMjAsNiBAQA0KPiA+ID4+
ICBzdHJ1Y3QgbXRrX2hkbWlfcGh5Ow0KPiA+ID4+DQo+ID4gPj4gIHN0cnVjdCBtdGtfaGRtaV9w
aHlfY29uZiB7DQo+ID4gPj4gLSAgICBib29sIHR6X2Rpc2FibGVkOw0KPiA+ID4+ICAgICAgdW5z
aWduZWQgbG9uZyBmbGFnczsNCj4gPiA+PiAgICAgIGNvbnN0IHN0cnVjdCBjbGtfb3BzICpoZG1p
X3BoeV9jbGtfb3BzOw0KPiA+ID4+ICAgICAgdm9pZCAoKmhkbWlfcGh5X2VuYWJsZV90bWRzKShz
dHJ1Y3QgbXRrX2hkbWlfcGh5ICpoZG1pX3BoeSk7DQo+ID4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbXQyNzAxX2hkbWlfcGh5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX210MjcwMV9oZG1pX3BoeS5jDQo+ID4gPj4gaW5kZXggZDNjYzQwMjJl
OTg4Li45OWZlMDVjZDM1OTggMTAwNjQ0DQo+ID4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19tdDI3MDFfaGRtaV9waHkuYw0KPiA+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfbXQyNzAxX2hkbWlfcGh5LmMNCj4gPiA+PiBAQCAtMjM3LDcgKzIzNyw2
IEBAIHN0YXRpYyB2b2lkIG10a19oZG1pX3BoeV9kaXNhYmxlX3RtZHMoc3RydWN0IG10a19oZG1p
X3BoeSAqaGRtaV9waHkpDQo+ID4gPj4gIH0NCj4gPiA+Pg0KPiA+ID4+ICBzdHJ1Y3QgbXRrX2hk
bWlfcGh5X2NvbmYgbXRrX2hkbWlfcGh5XzI3MDFfY29uZiA9IHsNCj4gPiA+PiAtICAgIC50el9k
aXNhYmxlZCA9IHRydWUsDQo+ID4gPj4gICAgICAuZmxhZ3MgPSBDTEtfU0VUX1JBVEVfR0FURSwN
Cj4gPiA+PiAgICAgIC5oZG1pX3BoeV9jbGtfb3BzID0gJm10a19oZG1pX3BoeV9wbGxfb3BzLA0K
PiA+ID4+ICAgICAgLmhkbWlfcGh5X2VuYWJsZV90bWRzID0gbXRrX2hkbWlfcGh5X2VuYWJsZV90
bWRzLA0KPiA+ID4NCj4gPiA+IFJldmlld2VkLWJ5OiBDaHVuZmVuZyBZdW4gPGNodW5mZW5nLnl1
bkBtZWRpYXRlay5jb20+DQo+ID4gPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0
ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
