Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A6ADF14
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 11:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMbVIBUdwrlEjj+d5GbO26IWWt/f+B4pYPmom+fmIgM=; b=EadtEEByV0fLzQ
	70H47C+RqbimmhXFkM8Bjpyee+acm4VxtNlV2Y9pQehUQgmQ9h9js2GQP7YLnmWLuSv/BOtLZEMWs
	I2K4vPDqm2xfei3c4aPgH1+ykSw8MqFED8mr5rE1gbtRzWZGZq8g5C2/CyypPXQDYRKADIJuYuTp2
	AUhCJAmx0B0R8GKXhaD0bZFS3Vv8vA0+ZX1O5HWb88aaQNAqBvDVVN92upTP7TskorLLbUFWsrrFq
	ZZttalHFMpoZfi2EcugHYGTR9ol3IlMRLd5TLtehg6aLc7meYzg7ZSYsroHdYb/ieiiQgSvmKHWCd
	/b74cf+VeuS1JD8BzNXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2Mv-0008CB-QJ; Mon, 29 Apr 2019 09:14:37 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2Ms-0008Bk-1N; Mon, 29 Apr 2019 09:14:36 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 92D201C001E;
 Mon, 29 Apr 2019 09:14:26 +0000 (UTC)
Date: Mon, 29 Apr 2019 11:14:25 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [PATCH 4/5] mtd: rawnand: mtk: Fix wrongly assigned oob buffer
 pointer issue
Message-ID: <20190429111425.0c91c2f3@xps13>
In-Reply-To: <20190429063834.45967-5-xiaolei.li@mediatek.com>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
 <20190429063834.45967-5-xiaolei.li@mediatek.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_021434_379313_F022DD62 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgWGlhb2xlaSwKClhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBNb24sIDI5IEFwciAyMDE5IDE0OjM4OjMzCiswODAwOgoKPiBPbmUgbWFpbiBnb2FsIG9mIHRo
ZSBmdW5jdGlvbiBtdGtfbmZjX3VwZGF0ZV9lY2Nfc3RhdHMgaXMgdG8gY2hlY2sKPiB3aGV0aGVy
IHNlY3RvcnMgYXJlIGFsbCBlbXB0eS4gSWYgdGhleSBhcmUgZW1wdHksIHNldCB0aGVzZSBzZWN0
b3JzJ3MKPiBkYXRhIGJ1ZmZlciBhbmQgb29iIGJ1ZmZlciBhcyAweGZmLgo+IAo+IEJ1dCBub3cs
IHRoZSBzZWN0b3Igb29iIGJ1ZmZlciBwb2ludGVyIGlzIHdyb25nbHkgYXNzaWduZWQuIFdlIGFs
d2F5cwo+IGRvIG1lbXNldCBmcm9tIHNlY3RvciAwLgo+IAo+IFRvIGZpeCB0aGlzIGlzc3VlLCBw
YXNzIHN0YXJ0IHNlY290ciBudW1iZXIgdG8gbWFrZSBvb2IgYnVmZmVyIHBvaW50ZXIKCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc2VjdG9yCgo+IGJlIHByb3Blcmx5IGFzc2lnbmVk
LgoKUGxlYXNlIHVzZSB1cHBlciBjYXNlIGZvciBwbGFpbiBFbmdsaXNoIGFjcm9ueW1zOiBOQU5E
LCBFQ0MsIE9PQiwgZXRjLgoKPiAKPiBGaXhlczogOTNkYjQ0NmE0MjRjICgibXRkOiBuYW5kOiBt
b3ZlIHJhdyBOQU5EIHJlbGF0ZWQgY29kZSB0byB0aGUgcmF3LyBzdWJkaXIiKQoKU2FtZSBjb21t
ZW50IGFzIGJlZm9yZSwgd3JvbmcgY29tbWl0IHBvaW50ZWQgaW4gdGhlIEZpeGVzIHRhZy4KCj4g
U2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMgfCAyMSArKysrKysrKysrLS0tLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jIGIvZHJp
dmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYwo+IGluZGV4IDdhNWU4YzljZjYxYi4uY2Y1ZTUw
ZTcwNGFlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMKPiAr
KysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jCj4gQEAgLTg3MywxOSArODczLDIx
IEBAIHN0YXRpYyBpbnQgbXRrX25mY193cml0ZV9vb2Jfc3RkKHN0cnVjdCBuYW5kX2NoaXAgKmNo
aXAsIGludCBwYWdlKQo+ICAJcmV0dXJuIG10a19uZmNfd3JpdGVfcGFnZV9yYXcoY2hpcCwgTlVM
TCwgMSwgcGFnZSk7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgbXRrX25mY191cGRhdGVfZWNjX3N0
YXRzKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCB1OCAqYnVmLCB1MzIgc2VjdG9ycykKPiArc3RhdGlj
IGludCBtdGtfbmZjX3VwZGF0ZV9lY2Nfc3RhdHMoc3RydWN0IG10ZF9pbmZvICptdGQsIHU4ICpi
dWYsIHUzMiBzdGFydCwKPiArCQkJCSAgICB1MzIgc2VjdG9ycykKPiAgewo+ICAJc3RydWN0IG5h
bmRfY2hpcCAqY2hpcCA9IG10ZF90b19uYW5kKG10ZCk7Cj4gIAlzdHJ1Y3QgbXRrX25mYyAqbmZj
ID0gbmFuZF9nZXRfY29udHJvbGxlcl9kYXRhKGNoaXApOwo+ICAJc3RydWN0IG10a19uZmNfbmFu
ZF9jaGlwICptdGtfbmFuZCA9IHRvX210a19uYW5kKGNoaXApOwo+ICAJc3RydWN0IG10a19lY2Nf
c3RhdHMgc3RhdHM7Cj4gKwl1MzIgcmVnX3NpemUgPSBtdGtfbmFuZC0+ZmRtLnJlZ19zaXplOwo+
ICAJaW50IHJjLCBpOwo+ICAKPiAgCXJjID0gbmZpX3JlYWRsKG5mYywgTkZJX1NUQSkgJiBTVEFf
RU1QX1BBR0U7Cj4gIAlpZiAocmMpIHsKPiAgCQltZW1zZXQoYnVmLCAweGZmLCBzZWN0b3JzICog
Y2hpcC0+ZWNjLnNpemUpOwo+ICAJCWZvciAoaSA9IDA7IGkgPCBzZWN0b3JzOyBpKyspCj4gLQkJ
CW1lbXNldChvb2JfcHRyKGNoaXAsIGkpLCAweGZmLCBtdGtfbmFuZC0+ZmRtLnJlZ19zaXplKTsK
PiArCQkJbWVtc2V0KG9vYl9wdHIoY2hpcCwgc3RhcnQgKyBpKSwgMHhmZiwgcmVnX3NpemUpOwo+
ICAJCXJldHVybiAwOwo+ICAJfQo+ICAKPiBAQCAtOTA1LDcgKzkwNyw3IEBAIHN0YXRpYyBpbnQg
bXRrX25mY19yZWFkX3N1YnBhZ2Uoc3RydWN0IG10ZF9pbmZvICptdGQsIHN0cnVjdCBuYW5kX2No
aXAgKmNoaXAsCj4gIAl1MzIgc3BhcmUgPSBtdGtfbmFuZC0+c3BhcmVfcGVyX3NlY3RvcjsKPiAg
CXUzMiBjb2x1bW4sIHNlY3RvcnMsIHN0YXJ0LCBlbmQsIHJlZzsKPiAgCWRtYV9hZGRyX3QgYWRk
cjsKPiAtCWludCBiaXRmbGlwczsKPiArCWludCBiaXRmbGlwcyA9IDA7Cj4gIAlzaXplX3QgbGVu
Owo+ICAJdTggKmJ1ZjsKPiAgCWludCByYzsKPiBAQCAtOTcyLDE0ICs5NzQsMTEgQEAgc3RhdGlj
IGludCBtdGtfbmZjX3JlYWRfc3VicGFnZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5h
bmRfY2hpcCAqY2hpcCwKPiAgCWlmIChyYyA8IDApIHsKPiAgCQlkZXZfZXJyKG5mYy0+ZGV2LCAi
c3VicGFnZSBkb25lIHRpbWVvdXRcbiIpOwo+ICAJCWJpdGZsaXBzID0gLUVJTzsKPiAtCX0gZWxz
ZSB7Cj4gLQkJYml0ZmxpcHMgPSAwOwo+IC0JCWlmICghcmF3KSB7Cj4gLQkJCXJjID0gbXRrX2Vj
Y193YWl0X2RvbmUobmZjLT5lY2MsIEVDQ19ERUNPREUpOwo+IC0JCQliaXRmbGlwcyA9IHJjIDwg
MCA/IC1FVElNRURPVVQgOgo+IC0JCQkJbXRrX25mY191cGRhdGVfZWNjX3N0YXRzKG10ZCwgYnVm
LCBzZWN0b3JzKTsKPiAtCQkJbXRrX25mY19yZWFkX2ZkbShjaGlwLCBzdGFydCwgc2VjdG9ycyk7
Cj4gLQkJfQo+ICsJfSBlbHNlIGlmICghcmF3KSB7Cj4gKwkJcmMgPSBtdGtfZWNjX3dhaXRfZG9u
ZShuZmMtPmVjYywgRUNDX0RFQ09ERSk7Cj4gKwkJYml0ZmxpcHMgPSByYyA8IDAgPyAtRVRJTUVE
T1VUIDoKPiArCQkJbXRrX25mY191cGRhdGVfZWNjX3N0YXRzKG10ZCwgYnVmLCBzdGFydCwgc2Vj
dG9ycyk7Cj4gKwkJbXRrX25mY19yZWFkX2ZkbShjaGlwLCBzdGFydCwgc2VjdG9ycyk7Cj4gIAl9
Cj4gIAo+ICAJZG1hX3VubWFwX3NpbmdsZShuZmMtPmRldiwgYWRkciwgbGVuLCBETUFfRlJPTV9E
RVZJQ0UpOwoKV2l0aCB0aGlzIGFkZHJlc3NlZDoKClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFs
IDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFp
bGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
