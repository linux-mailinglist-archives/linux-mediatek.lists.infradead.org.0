Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19500B5B2B
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 07:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwdKoQKHVZXWKTW15kZM1AvmymFKsiiVBeO9XHOh8h4=; b=AlvfaDUi2dxgw4
	teipuxraDSb1YxXpUTYC4v1ISITpDlrnMPr+Ejj9uVDXygT09VDRUTO1Al3P9azK3adXLzF6Jqgyi
	JMLNAhzK/8ZQ72eLrHI293pzxef3KaC0nWGjGC0WheOlWeR4I+Szp2pSte9QF6RUCQJLMfusw3aa3
	nCWw+NG91N/LAXUfyyQRKmp2swYMZEWu4CQApYhZxDUe455ldMeQHF4Q+VCMZXb7ZKJLe8IXfRHQK
	OiehV/vGLa4xhozDXFaYpgWPQ80U/oycA83+qoX4qFZL7+N2V8srE+O81PtHt6FANtBVpTG7DkVz3
	39oSDjbDOAJpzilGlk2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASsE-0001yj-4h; Wed, 18 Sep 2019 05:51:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASs4-0001qR-KN
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 05:51:22 +0000
X-UUID: 29051451802f4b85a2be0dbc4e9c0692-20190917
X-UUID: 29051451802f4b85a2be0dbc4e9c0692-20190917
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 483828805; Tue, 17 Sep 2019 21:51:11 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 22:51:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 13:51:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 13:51:09 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [RESEND,
 PATCH v7 05/11] pwm: mediatek: use pwm_mediatek as common prefix
Date: Wed, 18 Sep 2019 13:50:05 +0800
Message-ID: <1568785811-9577-6-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
References: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_225120_675565_E711A8B6 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VXNlIHB3bV9tZWRpYXRlayBhcyBjb21tb24gcHJlZml4IHRvIG1hdGNoIHRoZSBmaWxlbmFtZS4K
Tm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCgpTaWduZWQtb2ZmLWJ5OiBSeWRlciBMZWUg
PHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+ClNpZ25lZC1vZmYtYnk6IFNhbSBTaGloIDxzYW0uc2hp
aEBtZWRpYXRlay5jb20+CkFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlPgotLS0KQ2hhbmdlcyBzaW5jZSB2NjoKQWRkIGFuIEFja2VkLWJ5
IHRhZwoKQ2hhbmdlcyBzaW5jZSB2NToKLSBGb2xsb3cgcmV2aWV3ZXJzJ3MgY29tbWVudHMKVGhl
IGxpY2Vuc2Ugc3R1ZmYgaXMgYSBzZXBhcmF0ZSBjaGFuZ2UKCi0tLQogZHJpdmVycy9wd20vcHdt
LW1lZGlhdGVrLmMgfCAxMTYgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDU3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jIGIvZHJpdmVycy9wd20vcHdtLW1lZGlh
dGVrLmMKaW5kZXggNzFiZmFiN2UyZTE5Li4xMWY5Y2M0NDZmMTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcHdtL3B3bS1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCkBA
IC0zNCwxNCArMzQsMTMgQEAKICNkZWZpbmUgUFdNNDVUSFJFU19GSVhVUAkweDM0CiAKICNkZWZp
bmUgUFdNX0NMS19ESVZfTUFYCQk3Ci0KLXN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgewor
c3RydWN0IHB3bV9tZWRpYXRla19vZl9kYXRhIHsKIAl1bnNpZ25lZCBpbnQgZmFsbGJhY2tfbnB3
bXM7CiAJYm9vbCBwd200NV9maXh1cDsKIH07CiAKIC8qKgotICogc3RydWN0IG10a19wd21fY2hp
cCAtIHN0cnVjdCByZXByZXNlbnRpbmcgUFdNIGNoaXAKKyAqIHN0cnVjdCBwd21fbWVkaWF0ZWtf
Y2hpcCAtIHN0cnVjdCByZXByZXNlbnRpbmcgUFdNIGNoaXAKICAqIEBjaGlwOiBsaW51eCBQV00g
Y2hpcCByZXByZXNlbnRhdGlvbgogICogQHJlZ3M6IGJhc2UgYWRkcmVzcyBvZiBQV00gY2hpcAog
ICogQGNsa190b3A6IHRoZSB0b3AgY2xvY2sgZ2VuZXJhdG9yCkBAIC00OSwyNyArNDgsMjkgQEAg
c3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSB7CiAgKiBAY2xrX3B3bXM6IHRoZSBjbG9jayB1
c2VkIGJ5IGVhY2ggUFdNIGNoYW5uZWwKICAqIEBjbGtfZnJlcTogdGhlIGZpeCBjbG9jayBmcmVx
dWVuY3kgb2YgbGVnYWN5IE1JUFMgU29DCiAgKi8KLXN0cnVjdCBtdGtfcHdtX2NoaXAgeworc3Ry
dWN0IHB3bV9tZWRpYXRla19jaGlwIHsKIAlzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKIAl2b2lkIF9f
aW9tZW0gKnJlZ3M7CiAJc3RydWN0IGNsayAqY2xrX3RvcDsKIAlzdHJ1Y3QgY2xrICpjbGtfbWFp
bjsKIAlzdHJ1Y3QgY2xrICoqY2xrX3B3bXM7Ci0JY29uc3Qgc3RydWN0IG10a19wd21fcGxhdGZv
cm1fZGF0YSAqc29jOworCWNvbnN0IHN0cnVjdCBwd21fbWVkaWF0ZWtfb2ZfZGF0YSAqc29jOwog
fTsKIAotc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBtdGtfcHdtX3JlZ19vZmZzZXRbXSA9IHsK
K3N0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcHdtX21lZGlhdGVrX3JlZ19vZmZzZXRbXSA9IHsK
IAkweDAwMTAsIDB4MDA1MCwgMHgwMDkwLCAweDAwZDAsIDB4MDExMCwgMHgwMTUwLCAweDAxOTAs
IDB4MDIyMAogfTsKIAotc3RhdGljIGlubGluZSBzdHJ1Y3QgbXRrX3B3bV9jaGlwICp0b19tdGtf
cHdtX2NoaXAoc3RydWN0IHB3bV9jaGlwICpjaGlwKQorc3RhdGljIGlubGluZSBzdHJ1Y3QgcHdt
X21lZGlhdGVrX2NoaXAgKgordG9fcHdtX21lZGlhdGVrX2NoaXAoc3RydWN0IHB3bV9jaGlwICpj
aGlwKQogewotCXJldHVybiBjb250YWluZXJfb2YoY2hpcCwgc3RydWN0IG10a19wd21fY2hpcCwg
Y2hpcCk7CisJcmV0dXJuIGNvbnRhaW5lcl9vZihjaGlwLCBzdHJ1Y3QgcHdtX21lZGlhdGVrX2No
aXAsIGNoaXApOwogfQogCi1zdGF0aWMgaW50IG10a19wd21fY2xrX2VuYWJsZShzdHJ1Y3QgcHdt
X2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20pCitzdGF0aWMgaW50IHB3bV9tZWRp
YXRla19jbGtfZW5hYmxlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKKwkJCQkgICBzdHJ1Y3QgcHdt
X2RldmljZSAqcHdtKQogewotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjID0gdG9fbXRrX3B3bV9j
aGlwKGNoaXApOworCXN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAqcGMgPSB0b19wd21fbWVkaWF0
ZWtfY2hpcChjaGlwKTsKIAlpbnQgcmV0OwogCiAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBj
LT5jbGtfdG9wKTsKQEAgLTk0LDQ1ICs5NSw0NiBAQCBzdGF0aWMgaW50IG10a19wd21fY2xrX2Vu
YWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20pCiAJcmV0
dXJuIHJldDsKIH0KIAotc3RhdGljIHZvaWQgbXRrX3B3bV9jbGtfZGlzYWJsZShzdHJ1Y3QgcHdt
X2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20pCitzdGF0aWMgdm9pZCBwd21fbWVk
aWF0ZWtfY2xrX2Rpc2FibGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAorCQkJCSAgICAgc3RydWN0
IHB3bV9kZXZpY2UgKnB3bSkKIHsKLQlzdHJ1Y3QgbXRrX3B3bV9jaGlwICpwYyA9IHRvX210a19w
d21fY2hpcChjaGlwKTsKKwlzdHJ1Y3QgcHdtX21lZGlhdGVrX2NoaXAgKnBjID0gdG9fcHdtX21l
ZGlhdGVrX2NoaXAoY2hpcCk7CiAKIAljbGtfZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa19wd21z
W3B3bS0+aHdwd21dKTsKIAljbGtfZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa19tYWluKTsKIAlj
bGtfZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa190b3ApOwogfQogCi1zdGF0aWMgaW5saW5lIHUz
MiBtdGtfcHdtX3JlYWRsKHN0cnVjdCBtdGtfcHdtX2NoaXAgKmNoaXAsIHVuc2lnbmVkIGludCBu
dW0sCi0JCQkJdW5zaWduZWQgaW50IG9mZnNldCkKK3N0YXRpYyBpbmxpbmUgdTMyIHB3bV9tZWRp
YXRla19yZWFkbChzdHJ1Y3QgcHdtX21lZGlhdGVrX2NoaXAgKmNoaXAsCisJCQkJICAgICB1bnNp
Z25lZCBpbnQgbnVtLCB1bnNpZ25lZCBpbnQgb2Zmc2V0KQogewotCXJldHVybiByZWFkbChjaGlw
LT5yZWdzICsgbXRrX3B3bV9yZWdfb2Zmc2V0W251bV0gKyBvZmZzZXQpOworCXJldHVybiByZWFk
bChjaGlwLT5yZWdzICsgcHdtX21lZGlhdGVrX3JlZ19vZmZzZXRbbnVtXSArIG9mZnNldCk7CiB9
CiAKLXN0YXRpYyBpbmxpbmUgdm9pZCBtdGtfcHdtX3dyaXRlbChzdHJ1Y3QgbXRrX3B3bV9jaGlw
ICpjaGlwLAotCQkJCSAgdW5zaWduZWQgaW50IG51bSwgdW5zaWduZWQgaW50IG9mZnNldCwKLQkJ
CQkgIHUzMiB2YWx1ZSkKK3N0YXRpYyBpbmxpbmUgdm9pZCBwd21fbWVkaWF0ZWtfd3JpdGVsKHN0
cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAqY2hpcCwKKwkJCQkgICAgICAgdW5zaWduZWQgaW50IG51
bSwgdW5zaWduZWQgaW50IG9mZnNldCwKKwkJCQkgICAgICAgdTMyIHZhbHVlKQogewotCXdyaXRl
bCh2YWx1ZSwgY2hpcC0+cmVncyArIG10a19wd21fcmVnX29mZnNldFtudW1dICsgb2Zmc2V0KTsK
Kwl3cml0ZWwodmFsdWUsIGNoaXAtPnJlZ3MgKyBwd21fbWVkaWF0ZWtfcmVnX29mZnNldFtudW1d
ICsgb2Zmc2V0KTsKIH0KIAotc3RhdGljIGludCBtdGtfcHdtX2NvbmZpZyhzdHJ1Y3QgcHdtX2No
aXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCi0JCQkgIGludCBkdXR5X25zLCBpbnQg
cGVyaW9kX25zKQorc3RhdGljIGludCBwd21fbWVkaWF0ZWtfY29uZmlnKHN0cnVjdCBwd21fY2hp
cCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKKwkJCSAgICAgICBpbnQgZHV0eV9ucywg
aW50IHBlcmlvZF9ucykKIHsKLQlzdHJ1Y3QgbXRrX3B3bV9jaGlwICpwYyA9IHRvX210a19wd21f
Y2hpcChjaGlwKTsKLQlzdHJ1Y3QgY2xrICpjbGsgPSBwYy0+Y2xrc1tNVEtfQ0xLX1BXTTEgKyBw
d20tPmh3cHdtXTsKKwlzdHJ1Y3QgcHdtX21lZGlhdGVrX2NoaXAgKnBjID0gdG9fcHdtX21lZGlh
dGVrX2NoaXAoY2hpcCk7CiAJdTMyIGNsa2RpdiA9IDAsIGNudF9wZXJpb2QsIGNudF9kdXR5LCBy
ZWdfd2lkdGggPSBQV01EV0lEVEgsCiAJICAgIHJlZ190aHJlcyA9IFBXTVRIUkVTOwogCXU2NCBy
ZXNvbHV0aW9uOwogCWludCByZXQ7CiAKLQlyZXQgPSBtdGtfcHdtX2Nsa19lbmFibGUoY2hpcCwg
cHdtKTsKKwlyZXQgPSBwd21fbWVkaWF0ZWtfY2xrX2VuYWJsZShjaGlwLCBwd20pOworCiAJaWYg
KHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKIAkvKiBVc2luZyByZXNvbHV0aW9uIGluIHBpY29z
ZWNvbmQgZ2V0cyBhY2N1cmFjeSBoaWdoZXIgKi8KIAlyZXNvbHV0aW9uID0gKHU2NClOU0VDX1BF
Ul9TRUMgKiAxMDAwOwotCWRvX2RpdihyZXNvbHV0aW9uLCBjbGtfZ2V0X3JhdGUoY2xrKSk7CisJ
ZG9fZGl2KHJlc29sdXRpb24sIGNsa19nZXRfcmF0ZShwYy0+Y2xrX3B3bXNbcHdtLT5od3B3bV0p
KTsKIAogCWNudF9wZXJpb2QgPSBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoKHU2NClwZXJpb2RfbnMg
KiAxMDAwLCByZXNvbHV0aW9uKTsKIAl3aGlsZSAoY250X3BlcmlvZCA+IDgxOTEpIHsKQEAgLTE0
Myw3ICsxNDUsNyBAQCBzdGF0aWMgaW50IG10a19wd21fY29uZmlnKHN0cnVjdCBwd21fY2hpcCAq
Y2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKIAl9CiAKIAlpZiAoY2xrZGl2ID4gUFdNX0NM
S19ESVZfTUFYKSB7Ci0JCW10a19wd21fY2xrX2Rpc2FibGUoY2hpcCwgcHdtKTsKKwkJcHdtX21l
ZGlhdGVrX2Nsa19kaXNhYmxlKGNoaXAsIHB3bSk7CiAJCWRldl9lcnIoY2hpcC0+ZGV2LCAicGVy
aW9kICVkIG5vdCBzdXBwb3J0ZWRcbiIsIHBlcmlvZF9ucyk7CiAJCXJldHVybiAtRUlOVkFMOwog
CX0KQEAgLTE1OCwyMiArMTYwLDIyIEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9jb25maWcoc3RydWN0
IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCX0KIAogCWNudF9kdXR5
ID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKCh1NjQpZHV0eV9ucyAqIDEwMDAsIHJlc29sdXRpb24p
OwotCW10a19wd21fd3JpdGVsKHBjLCBwd20tPmh3cHdtLCBQV01DT04sIEJJVCgxNSkgfCBjbGtk
aXYpOwotCW10a19wd21fd3JpdGVsKHBjLCBwd20tPmh3cHdtLCByZWdfd2lkdGgsIGNudF9wZXJp
b2QpOwotCW10a19wd21fd3JpdGVsKHBjLCBwd20tPmh3cHdtLCByZWdfdGhyZXMsIGNudF9kdXR5
KTsKKwlwd21fbWVkaWF0ZWtfd3JpdGVsKHBjLCBwd20tPmh3cHdtLCBQV01DT04sIEJJVCgxNSkg
fCBjbGtkaXYpOworCXB3bV9tZWRpYXRla193cml0ZWwocGMsIHB3bS0+aHdwd20sIHJlZ193aWR0
aCwgY250X3BlcmlvZCk7CisJcHdtX21lZGlhdGVrX3dyaXRlbChwYywgcHdtLT5od3B3bSwgcmVn
X3RocmVzLCBjbnRfZHV0eSk7CiAKLQltdGtfcHdtX2Nsa19kaXNhYmxlKGNoaXAsIHB3bSk7CisJ
cHdtX21lZGlhdGVrX2Nsa19kaXNhYmxlKGNoaXAsIHB3bSk7CiAKIAlyZXR1cm4gMDsKIH0KIAot
c3RhdGljIGludCBtdGtfcHdtX2VuYWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBw
d21fZGV2aWNlICpwd20pCitzdGF0aWMgaW50IHB3bV9tZWRpYXRla19lbmFibGUoc3RydWN0IHB3
bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogewotCXN0cnVjdCBtdGtfcHdt
X2NoaXAgKnBjID0gdG9fbXRrX3B3bV9jaGlwKGNoaXApOworCXN0cnVjdCBwd21fbWVkaWF0ZWtf
Y2hpcCAqcGMgPSB0b19wd21fbWVkaWF0ZWtfY2hpcChjaGlwKTsKIAl1MzIgdmFsdWU7CiAJaW50
IHJldDsKIAotCXJldCA9IG10a19wd21fY2xrX2VuYWJsZShjaGlwLCBwd20pOworCXJldCA9IHB3
bV9tZWRpYXRla19jbGtfZW5hYmxlKGNoaXAsIHB3bSk7CiAJaWYgKHJldCA8IDApCiAJCXJldHVy
biByZXQ7CiAKQEAgLTE4NCwyOSArMTg2LDI5IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9lbmFibGUo
c3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogCXJldHVybiAw
OwogfQogCi1zdGF0aWMgdm9pZCBtdGtfcHdtX2Rpc2FibGUoc3RydWN0IHB3bV9jaGlwICpjaGlw
LCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQorc3RhdGljIHZvaWQgcHdtX21lZGlhdGVrX2Rpc2Fi
bGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogewotCXN0
cnVjdCBtdGtfcHdtX2NoaXAgKnBjID0gdG9fbXRrX3B3bV9jaGlwKGNoaXApOworCXN0cnVjdCBw
d21fbWVkaWF0ZWtfY2hpcCAqcGMgPSB0b19wd21fbWVkaWF0ZWtfY2hpcChjaGlwKTsKIAl1MzIg
dmFsdWU7CiAKIAl2YWx1ZSA9IHJlYWRsKHBjLT5yZWdzKTsKIAl2YWx1ZSAmPSB+QklUKHB3bS0+
aHdwd20pOwogCXdyaXRlbCh2YWx1ZSwgcGMtPnJlZ3MpOwogCi0JbXRrX3B3bV9jbGtfZGlzYWJs
ZShjaGlwLCBwd20pOworCXB3bV9tZWRpYXRla19jbGtfZGlzYWJsZShjaGlwLCBwd20pOwogfQog
Ci1zdGF0aWMgY29uc3Qgc3RydWN0IHB3bV9vcHMgbXRrX3B3bV9vcHMgPSB7Ci0JLmNvbmZpZyA9
IG10a19wd21fY29uZmlnLAotCS5lbmFibGUgPSBtdGtfcHdtX2VuYWJsZSwKLQkuZGlzYWJsZSA9
IG10a19wd21fZGlzYWJsZSwKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcHdtX29wcyBwd21fbWVkaWF0
ZWtfb3BzID0geworCS5jb25maWcgPSBwd21fbWVkaWF0ZWtfY29uZmlnLAorCS5lbmFibGUgPSBw
d21fbWVkaWF0ZWtfZW5hYmxlLAorCS5kaXNhYmxlID0gcHdtX21lZGlhdGVrX2Rpc2FibGUsCiAJ
Lm93bmVyID0gVEhJU19NT0RVTEUsCiB9OwogCi1zdGF0aWMgaW50IG10a19wd21fcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyBpbnQgcHdtX21lZGlhdGVrX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IGRldmljZV9ub2RlICpu
cCA9IHBkZXYtPmRldi5vZl9ub2RlOwotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjOworCXN0cnVj
dCBwd21fbWVkaWF0ZWtfY2hpcCAqcGM7CiAJc3RydWN0IHJlc291cmNlICpyZXM7CiAJdW5zaWdu
ZWQgaW50IG5wd21zOwogCWludCByZXQ7CkBAIC0yNjksNyArMjcxLDcgQEAgc3RhdGljIGludCBt
dGtfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcGxhdGZvcm1fc2V0
X2RydmRhdGEocGRldiwgcGMpOwogCiAJcGMtPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKLQlwYy0+
Y2hpcC5vcHMgPSAmbXRrX3B3bV9vcHM7CisJcGMtPmNoaXAub3BzID0gJnB3bV9tZWRpYXRla19v
cHM7CiAJcGMtPmNoaXAuYmFzZSA9IC0xOwogCXBjLT5jaGlwLm5wd20gPSBucHdtczsKIApAQCAt
MjgyLDUxICsyODQsNTEgQEAgc3RhdGljIGludCBtdGtfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgbXRrX3B3bV9yZW1v
dmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyBpbnQgcHdtX21lZGlhdGVr
X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewotCXN0cnVjdCBtdGtfcHdt
X2NoaXAgKnBjID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CisJc3RydWN0IHB3bV9tZWRp
YXRla19jaGlwICpwYyA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwogCiAJcmV0dXJuIHB3
bWNoaXBfcmVtb3ZlKCZwYy0+Y2hpcCk7CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3B3
bV9wbGF0Zm9ybV9kYXRhIG10MjcxMl9wd21fZGF0YSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
cHdtX21lZGlhdGVrX29mX2RhdGEgbXQyNzEyX3B3bV9kYXRhID0gewogCS5mYWxsYmFja19ucHdt
cyA9IDgsCiAJLnB3bTQ1X2ZpeHVwID0gZmFsc2UsCiB9OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0
IG10a19wd21fcGxhdGZvcm1fZGF0YSBtdDc2MjJfcHdtX2RhdGEgPSB7CitzdGF0aWMgY29uc3Qg
c3RydWN0IHB3bV9tZWRpYXRla19vZl9kYXRhIG10NzYyMl9wd21fZGF0YSA9IHsKIAkuZmFsbGJh
Y2tfbnB3bXMgPSA2LAogCS5wd200NV9maXh1cCA9IGZhbHNlLAogfTsKIAotc3RhdGljIGNvbnN0
IHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgbXQ3NjIzX3B3bV9kYXRhID0geworc3RhdGlj
IGNvbnN0IHN0cnVjdCBwd21fbWVkaWF0ZWtfb2ZfZGF0YSBtdDc2MjNfcHdtX2RhdGEgPSB7CiAJ
LmZhbGxiYWNrX25wd21zID0gNSwKIAkucHdtNDVfZml4dXAgPSB0cnVlLAogfTsKIAotc3RhdGlj
IGNvbnN0IHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgbXQ3NjI4X3B3bV9kYXRhID0gewor
c3RhdGljIGNvbnN0IHN0cnVjdCBwd21fbWVkaWF0ZWtfb2ZfZGF0YSBtdDc2MjhfcHdtX2RhdGEg
PSB7CiAJLmZhbGxiYWNrX25wd21zID0gNCwKIAkucHdtNDVfZml4dXAgPSB0cnVlLAogfTsKIAot
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbXRrX3B3bV9vZl9tYXRjaFtdID0gewor
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcHdtX21lZGlhdGVrX29mX21hdGNoW10g
PSB7CiAJeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDI3MTItcHdtIiwgLmRhdGEgPSAmbXQy
NzEyX3B3bV9kYXRhIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2MjItcHdtIiwg
LmRhdGEgPSAmbXQ3NjIyX3B3bV9kYXRhIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxt
dDc2MjMtcHdtIiwgLmRhdGEgPSAmbXQ3NjIzX3B3bV9kYXRhIH0sCiAJeyAuY29tcGF0aWJsZSA9
ICJtZWRpYXRlayxtdDc2MjgtcHdtIiwgLmRhdGEgPSAmbXQ3NjI4X3B3bV9kYXRhIH0sCiAJeyB9
LAogfTsKLU1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIG10a19wd21fb2ZfbWF0Y2gpOworTU9EVUxF
X0RFVklDRV9UQUJMRShvZiwgcHdtX21lZGlhdGVrX29mX21hdGNoKTsKIAotc3RhdGljIHN0cnVj
dCBwbGF0Zm9ybV9kcml2ZXIgbXRrX3B3bV9kcml2ZXIgPSB7CitzdGF0aWMgc3RydWN0IHBsYXRm
b3JtX2RyaXZlciBwd21fbWVkaWF0ZWtfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7Ci0JCS5uYW1l
ID0gIm10ay1wd20iLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBtdGtfcHdtX29mX21hdGNoLAorCQku
bmFtZSA9ICJwd20tbWVkaWF0ZWsiLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBwd21fbWVkaWF0ZWtf
b2ZfbWF0Y2gsCiAJfSwKLQkucHJvYmUgPSBtdGtfcHdtX3Byb2JlLAotCS5yZW1vdmUgPSBtdGtf
cHdtX3JlbW92ZSwKKwkucHJvYmUgPSBwd21fbWVkaWF0ZWtfcHJvYmUsCisJLnJlbW92ZSA9IHB3
bV9tZWRpYXRla19yZW1vdmUsCiB9OwotbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihtdGtfcHdtX2Ry
aXZlcik7Cittb2R1bGVfcGxhdGZvcm1fZHJpdmVyKHB3bV9tZWRpYXRla19kcml2ZXIpOwogCiBN
T0RVTEVfQVVUSE9SKCJKb2huIENyaXNwaW4gPGJsb2dpY0BvcGVud3J0Lm9yZz4iKTsKIE1PRFVM
RV9MSUNFTlNFKCJHUEwiKTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
