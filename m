Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833DBBE034
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 16:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHVsBuqGIPSM5DGN7rBHzmjPnJwUDmdEpyByacUIPjY=; b=lCkAUZKTlnuKQd
	lVp19p7gyWCehqG+YXsVZ7iVZh1SpRSyVLWqiVI1pdaR+2jafoiEGWCCkzFHG+RnroSD0qFipMeWb
	sEZdMXypfxe7y6pG0naiaC11scyCFG5jycFfeXjQ9oUcYgT21H+e2q5xCX2fZlmwGeRDwwLiwBhSs
	5fPxzPdB2hVyLRPSq7H7GQyJVP7aGhca7Dm16rZU5roR6NLMQ3RnH6CsrRoCtV6ogFisvWi4Mvg2R
	gwX6mum4PHqSyHUktXys9QMLLEL9gAt/o39GRfFO5qawG2NwhNcLGw/+HPhLLXVMJduAGmCW2yfxh
	n3ZT/fj3dKN4pm3fQgjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8N3-0001L3-JJ; Wed, 25 Sep 2019 14:34:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8Mx-0001HE-FV
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 14:34:17 +0000
X-UUID: 5421f033307c4428985414b2abc30d45-20190925
X-UUID: 5421f033307c4428985414b2abc30d45-20190925
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1328213637; Wed, 25 Sep 2019 06:34:11 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 07:34:10 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 22:34:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Sep 2019 22:34:09 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v10 05/12] pwm: mediatek: use pwm_mediatek as common prefix
Date: Wed, 25 Sep 2019 22:32:30 +0800
Message-ID: <1569421957-20765-6-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_073415_524558_095787A6 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
dGVrLmMKaW5kZXggZGNjODVkMDcxNTZmLi4yZGIxN2Q2YjZhZTEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcHdtL3B3bS1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCkBA
IC0zNCw0MSArMzQsNDIgQEAKICNkZWZpbmUgUFdNNDVUSFJFU19GSVhVUAkweDM0CiAKICNkZWZp
bmUgUFdNX0NMS19ESVZfTUFYCQk3Ci0KLXN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgewor
c3RydWN0IHB3bV9tZWRpYXRla19vZl9kYXRhIHsKIAl1bnNpZ25lZCBpbnQgZmFsbGJhY2tfbnB3
bXM7CiAJYm9vbCBwd200NV9maXh1cDsKIH07CiAKIC8qKgotICogc3RydWN0IG10a19wd21fY2hp
cCAtIHN0cnVjdCByZXByZXNlbnRpbmcgUFdNIGNoaXAKKyAqIHN0cnVjdCBwd21fbWVkaWF0ZWtf
Y2hpcCAtIHN0cnVjdCByZXByZXNlbnRpbmcgUFdNIGNoaXAKICAqIEBjaGlwOiBsaW51eCBQV00g
Y2hpcCByZXByZXNlbnRhdGlvbgogICogQHJlZ3M6IGJhc2UgYWRkcmVzcyBvZiBQV00gY2hpcAog
ICogQGNsa190b3A6IHRoZSB0b3AgY2xvY2sgZ2VuZXJhdG9yCiAgKiBAY2xrX21haW46IHRoZSBj
bG9jayB1c2VkIGJ5IFBXTSBjb3JlCiAgKiBAY2xrX3B3bXM6IHRoZSBjbG9jayB1c2VkIGJ5IGVh
Y2ggUFdNIGNoYW5uZWwKICAqLwotc3RydWN0IG10a19wd21fY2hpcCB7CitzdHJ1Y3QgcHdtX21l
ZGlhdGVrX2NoaXAgewogCXN0cnVjdCBwd21fY2hpcCBjaGlwOwogCXZvaWQgX19pb21lbSAqcmVn
czsKIAlzdHJ1Y3QgY2xrICpjbGtfdG9wOwogCXN0cnVjdCBjbGsgKmNsa19tYWluOwogCXN0cnVj
dCBjbGsgKipjbGtfcHdtczsKLQljb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhICpz
b2M7CisJY29uc3Qgc3RydWN0IHB3bV9tZWRpYXRla19vZl9kYXRhICpzb2M7CiB9OwogCi1zdGF0
aWMgY29uc3QgdW5zaWduZWQgaW50IG10a19wd21fcmVnX29mZnNldFtdID0geworc3RhdGljIGNv
bnN0IHVuc2lnbmVkIGludCBwd21fbWVkaWF0ZWtfcmVnX29mZnNldFtdID0gewogCTB4MDAxMCwg
MHgwMDUwLCAweDAwOTAsIDB4MDBkMCwgMHgwMTEwLCAweDAxNTAsIDB4MDE5MCwgMHgwMjIwCiB9
OwogCi1zdGF0aWMgaW5saW5lIHN0cnVjdCBtdGtfcHdtX2NoaXAgKnRvX210a19wd21fY2hpcChz
dHJ1Y3QgcHdtX2NoaXAgKmNoaXApCitzdGF0aWMgaW5saW5lIHN0cnVjdCBwd21fbWVkaWF0ZWtf
Y2hpcCAqCit0b19wd21fbWVkaWF0ZWtfY2hpcChzdHJ1Y3QgcHdtX2NoaXAgKmNoaXApCiB7Ci0J
cmV0dXJuIGNvbnRhaW5lcl9vZihjaGlwLCBzdHJ1Y3QgbXRrX3B3bV9jaGlwLCBjaGlwKTsKKwly
ZXR1cm4gY29udGFpbmVyX29mKGNoaXAsIHN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCwgY2hpcCk7
CiB9CiAKLXN0YXRpYyBpbnQgbXRrX3B3bV9jbGtfZW5hYmxlKHN0cnVjdCBwd21fY2hpcCAqY2hp
cCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSkKK3N0YXRpYyBpbnQgcHdtX21lZGlhdGVrX2Nsa19l
bmFibGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAorCQkJCSAgIHN0cnVjdCBwd21fZGV2aWNlICpw
d20pCiB7Ci0Jc3RydWN0IG10a19wd21fY2hpcCAqcGMgPSB0b19tdGtfcHdtX2NoaXAoY2hpcCk7
CisJc3RydWN0IHB3bV9tZWRpYXRla19jaGlwICpwYyA9IHRvX3B3bV9tZWRpYXRla19jaGlwKGNo
aXApOwogCWludCByZXQ7CiAKIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPmNsa190b3Ap
OwpAQCAtOTMsNDUgKzk0LDQ2IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9jbGtfZW5hYmxlKHN0cnVj
dCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSkKIAlyZXR1cm4gcmV0Owog
fQogCi1zdGF0aWMgdm9pZCBtdGtfcHdtX2Nsa19kaXNhYmxlKHN0cnVjdCBwd21fY2hpcCAqY2hp
cCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSkKK3N0YXRpYyB2b2lkIHB3bV9tZWRpYXRla19jbGtf
ZGlzYWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCisJCQkJICAgICBzdHJ1Y3QgcHdtX2Rldmlj
ZSAqcHdtKQogewotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjID0gdG9fbXRrX3B3bV9jaGlwKGNo
aXApOworCXN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAqcGMgPSB0b19wd21fbWVkaWF0ZWtfY2hp
cChjaGlwKTsKIAogCWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrX3B3bXNbcHdtLT5od3B3
bV0pOwogCWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrX21haW4pOwogCWNsa19kaXNhYmxl
X3VucHJlcGFyZShwYy0+Y2xrX3RvcCk7CiB9CiAKLXN0YXRpYyBpbmxpbmUgdTMyIG10a19wd21f
cmVhZGwoc3RydWN0IG10a19wd21fY2hpcCAqY2hpcCwgdW5zaWduZWQgaW50IG51bSwKLQkJCQl1
bnNpZ25lZCBpbnQgb2Zmc2V0KQorc3RhdGljIGlubGluZSB1MzIgcHdtX21lZGlhdGVrX3JlYWRs
KHN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAqY2hpcCwKKwkJCQkgICAgIHVuc2lnbmVkIGludCBu
dW0sIHVuc2lnbmVkIGludCBvZmZzZXQpCiB7Ci0JcmV0dXJuIHJlYWRsKGNoaXAtPnJlZ3MgKyBt
dGtfcHdtX3JlZ19vZmZzZXRbbnVtXSArIG9mZnNldCk7CisJcmV0dXJuIHJlYWRsKGNoaXAtPnJl
Z3MgKyBwd21fbWVkaWF0ZWtfcmVnX29mZnNldFtudW1dICsgb2Zmc2V0KTsKIH0KIAotc3RhdGlj
IGlubGluZSB2b2lkIG10a19wd21fd3JpdGVsKHN0cnVjdCBtdGtfcHdtX2NoaXAgKmNoaXAsCi0J
CQkJICB1bnNpZ25lZCBpbnQgbnVtLCB1bnNpZ25lZCBpbnQgb2Zmc2V0LAotCQkJCSAgdTMyIHZh
bHVlKQorc3RhdGljIGlubGluZSB2b2lkIHB3bV9tZWRpYXRla193cml0ZWwoc3RydWN0IHB3bV9t
ZWRpYXRla19jaGlwICpjaGlwLAorCQkJCSAgICAgICB1bnNpZ25lZCBpbnQgbnVtLCB1bnNpZ25l
ZCBpbnQgb2Zmc2V0LAorCQkJCSAgICAgICB1MzIgdmFsdWUpCiB7Ci0Jd3JpdGVsKHZhbHVlLCBj
aGlwLT5yZWdzICsgbXRrX3B3bV9yZWdfb2Zmc2V0W251bV0gKyBvZmZzZXQpOworCXdyaXRlbCh2
YWx1ZSwgY2hpcC0+cmVncyArIHB3bV9tZWRpYXRla19yZWdfb2Zmc2V0W251bV0gKyBvZmZzZXQp
OwogfQogCi1zdGF0aWMgaW50IG10a19wd21fY29uZmlnKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwg
c3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKLQkJCSAgaW50IGR1dHlfbnMsIGludCBwZXJpb2RfbnMp
CitzdGF0aWMgaW50IHB3bV9tZWRpYXRla19jb25maWcoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBz
dHJ1Y3QgcHdtX2RldmljZSAqcHdtLAorCQkJICAgICAgIGludCBkdXR5X25zLCBpbnQgcGVyaW9k
X25zKQogewotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjID0gdG9fbXRrX3B3bV9jaGlwKGNoaXAp
OwotCXN0cnVjdCBjbGsgKmNsayA9IHBjLT5jbGtfcHdtc1twd20tPmh3cHdtXTsKKwlzdHJ1Y3Qg
cHdtX21lZGlhdGVrX2NoaXAgKnBjID0gdG9fcHdtX21lZGlhdGVrX2NoaXAoY2hpcCk7CiAJdTMy
IGNsa2RpdiA9IDAsIGNudF9wZXJpb2QsIGNudF9kdXR5LCByZWdfd2lkdGggPSBQV01EV0lEVEgs
CiAJICAgIHJlZ190aHJlcyA9IFBXTVRIUkVTOwogCXU2NCByZXNvbHV0aW9uOwogCWludCByZXQ7
CiAKLQlyZXQgPSBtdGtfcHdtX2Nsa19lbmFibGUoY2hpcCwgcHdtKTsKKwlyZXQgPSBwd21fbWVk
aWF0ZWtfY2xrX2VuYWJsZShjaGlwLCBwd20pOworCiAJaWYgKHJldCA8IDApCiAJCXJldHVybiBy
ZXQ7CiAKIAkvKiBVc2luZyByZXNvbHV0aW9uIGluIHBpY29zZWNvbmQgZ2V0cyBhY2N1cmFjeSBo
aWdoZXIgKi8KIAlyZXNvbHV0aW9uID0gKHU2NClOU0VDX1BFUl9TRUMgKiAxMDAwOwotCWRvX2Rp
dihyZXNvbHV0aW9uLCBjbGtfZ2V0X3JhdGUoY2xrKSk7CisJZG9fZGl2KHJlc29sdXRpb24sIGNs
a19nZXRfcmF0ZShwYy0+Y2xrX3B3bXNbcHdtLT5od3B3bV0pKTsKIAogCWNudF9wZXJpb2QgPSBE
SVZfUk9VTkRfQ0xPU0VTVF9VTEwoKHU2NClwZXJpb2RfbnMgKiAxMDAwLCByZXNvbHV0aW9uKTsK
IAl3aGlsZSAoY250X3BlcmlvZCA+IDgxOTEpIHsKQEAgLTE0Miw3ICsxNDQsNyBAQCBzdGF0aWMg
aW50IG10a19wd21fY29uZmlnKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZp
Y2UgKnB3bSwKIAl9CiAKIAlpZiAoY2xrZGl2ID4gUFdNX0NMS19ESVZfTUFYKSB7Ci0JCW10a19w
d21fY2xrX2Rpc2FibGUoY2hpcCwgcHdtKTsKKwkJcHdtX21lZGlhdGVrX2Nsa19kaXNhYmxlKGNo
aXAsIHB3bSk7CiAJCWRldl9lcnIoY2hpcC0+ZGV2LCAicGVyaW9kICVkIG5vdCBzdXBwb3J0ZWRc
biIsIHBlcmlvZF9ucyk7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KQEAgLTE1NywyMiArMTU5LDIy
IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9jb25maWcoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1
Y3QgcHdtX2RldmljZSAqcHdtLAogCX0KIAogCWNudF9kdXR5ID0gRElWX1JPVU5EX0NMT1NFU1Rf
VUxMKCh1NjQpZHV0eV9ucyAqIDEwMDAsIHJlc29sdXRpb24pOwotCW10a19wd21fd3JpdGVsKHBj
LCBwd20tPmh3cHdtLCBQV01DT04sIEJJVCgxNSkgfCBjbGtkaXYpOwotCW10a19wd21fd3JpdGVs
KHBjLCBwd20tPmh3cHdtLCByZWdfd2lkdGgsIGNudF9wZXJpb2QpOwotCW10a19wd21fd3JpdGVs
KHBjLCBwd20tPmh3cHdtLCByZWdfdGhyZXMsIGNudF9kdXR5KTsKKwlwd21fbWVkaWF0ZWtfd3Jp
dGVsKHBjLCBwd20tPmh3cHdtLCBQV01DT04sIEJJVCgxNSkgfCBjbGtkaXYpOworCXB3bV9tZWRp
YXRla193cml0ZWwocGMsIHB3bS0+aHdwd20sIHJlZ193aWR0aCwgY250X3BlcmlvZCk7CisJcHdt
X21lZGlhdGVrX3dyaXRlbChwYywgcHdtLT5od3B3bSwgcmVnX3RocmVzLCBjbnRfZHV0eSk7CiAK
LQltdGtfcHdtX2Nsa19kaXNhYmxlKGNoaXAsIHB3bSk7CisJcHdtX21lZGlhdGVrX2Nsa19kaXNh
YmxlKGNoaXAsIHB3bSk7CiAKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBtdGtfcHdtX2Vu
YWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20pCitzdGF0
aWMgaW50IHB3bV9tZWRpYXRla19lbmFibGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3Qg
cHdtX2RldmljZSAqcHdtKQogewotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjID0gdG9fbXRrX3B3
bV9jaGlwKGNoaXApOworCXN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAqcGMgPSB0b19wd21fbWVk
aWF0ZWtfY2hpcChjaGlwKTsKIAl1MzIgdmFsdWU7CiAJaW50IHJldDsKIAotCXJldCA9IG10a19w
d21fY2xrX2VuYWJsZShjaGlwLCBwd20pOworCXJldCA9IHB3bV9tZWRpYXRla19jbGtfZW5hYmxl
KGNoaXAsIHB3bSk7CiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKQEAgLTE4MywyOSAr
MTg1LDI5IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9lbmFibGUoc3RydWN0IHB3bV9jaGlwICpjaGlw
LCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgdm9pZCBt
dGtfcHdtX2Rpc2FibGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAq
cHdtKQorc3RhdGljIHZvaWQgcHdtX21lZGlhdGVrX2Rpc2FibGUoc3RydWN0IHB3bV9jaGlwICpj
aGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogewotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBj
ID0gdG9fbXRrX3B3bV9jaGlwKGNoaXApOworCXN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAqcGMg
PSB0b19wd21fbWVkaWF0ZWtfY2hpcChjaGlwKTsKIAl1MzIgdmFsdWU7CiAKIAl2YWx1ZSA9IHJl
YWRsKHBjLT5yZWdzKTsKIAl2YWx1ZSAmPSB+QklUKHB3bS0+aHdwd20pOwogCXdyaXRlbCh2YWx1
ZSwgcGMtPnJlZ3MpOwogCi0JbXRrX3B3bV9jbGtfZGlzYWJsZShjaGlwLCBwd20pOworCXB3bV9t
ZWRpYXRla19jbGtfZGlzYWJsZShjaGlwLCBwd20pOwogfQogCi1zdGF0aWMgY29uc3Qgc3RydWN0
IHB3bV9vcHMgbXRrX3B3bV9vcHMgPSB7Ci0JLmNvbmZpZyA9IG10a19wd21fY29uZmlnLAotCS5l
bmFibGUgPSBtdGtfcHdtX2VuYWJsZSwKLQkuZGlzYWJsZSA9IG10a19wd21fZGlzYWJsZSwKK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgcHdtX29wcyBwd21fbWVkaWF0ZWtfb3BzID0geworCS5jb25maWcg
PSBwd21fbWVkaWF0ZWtfY29uZmlnLAorCS5lbmFibGUgPSBwd21fbWVkaWF0ZWtfZW5hYmxlLAor
CS5kaXNhYmxlID0gcHdtX21lZGlhdGVrX2Rpc2FibGUsCiAJLm93bmVyID0gVEhJU19NT0RVTEUs
CiB9OwogCi1zdGF0aWMgaW50IG10a19wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKK3N0YXRpYyBpbnQgcHdtX21lZGlhdGVrX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiB7CiAJc3RydWN0IGRldmljZV9ub2RlICpucCA9IHBkZXYtPmRldi5vZl9ub2Rl
OwotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjOworCXN0cnVjdCBwd21fbWVkaWF0ZWtfY2hpcCAq
cGM7CiAJc3RydWN0IHJlc291cmNlICpyZXM7CiAJdW5zaWduZWQgaW50IG5wd21zOwogCWludCBy
ZXQ7CkBAIC0yNjcsNyArMjY5LDcgQEAgc3RhdGljIGludCBtdGtfcHdtX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcGMpOwog
CiAJcGMtPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKLQlwYy0+Y2hpcC5vcHMgPSAmbXRrX3B3bV9v
cHM7CisJcGMtPmNoaXAub3BzID0gJnB3bV9tZWRpYXRla19vcHM7CiAJcGMtPmNoaXAuYmFzZSA9
IC0xOwogCXBjLT5jaGlwLm5wd20gPSBucHdtczsKIApAQCAtMjgwLDUxICsyODIsNTEgQEAgc3Rh
dGljIGludCBtdGtfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0
dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgbXRrX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKK3N0YXRpYyBpbnQgcHdtX21lZGlhdGVrX3JlbW92ZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogewotCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBjID0gcGxhdGZvcm1f
Z2V0X2RydmRhdGEocGRldik7CisJc3RydWN0IHB3bV9tZWRpYXRla19jaGlwICpwYyA9IHBsYXRm
b3JtX2dldF9kcnZkYXRhKHBkZXYpOwogCiAJcmV0dXJuIHB3bWNoaXBfcmVtb3ZlKCZwYy0+Y2hp
cCk7CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhIG10Mjcx
Ml9wd21fZGF0YSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcHdtX21lZGlhdGVrX29mX2RhdGEg
bXQyNzEyX3B3bV9kYXRhID0gewogCS5mYWxsYmFja19ucHdtcyA9IDgsCiAJLnB3bTQ1X2ZpeHVw
ID0gZmFsc2UsCiB9OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0
YSBtdDc2MjJfcHdtX2RhdGEgPSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IHB3bV9tZWRpYXRla19v
Zl9kYXRhIG10NzYyMl9wd21fZGF0YSA9IHsKIAkuZmFsbGJhY2tfbnB3bXMgPSA2LAogCS5wd200
NV9maXh1cCA9IGZhbHNlLAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfcHdtX3BsYXRm
b3JtX2RhdGEgbXQ3NjIzX3B3bV9kYXRhID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBwd21fbWVk
aWF0ZWtfb2ZfZGF0YSBtdDc2MjNfcHdtX2RhdGEgPSB7CiAJLmZhbGxiYWNrX25wd21zID0gNSwK
IAkucHdtNDVfZml4dXAgPSB0cnVlLAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfcHdt
X3BsYXRmb3JtX2RhdGEgbXQ3NjI4X3B3bV9kYXRhID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBw
d21fbWVkaWF0ZWtfb2ZfZGF0YSBtdDc2MjhfcHdtX2RhdGEgPSB7CiAJLmZhbGxiYWNrX25wd21z
ID0gNCwKIAkucHdtNDVfZml4dXAgPSB0cnVlLAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgbXRrX3B3bV9vZl9tYXRjaFtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgcHdtX21lZGlhdGVrX29mX21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9
ICJtZWRpYXRlayxtdDI3MTItcHdtIiwgLmRhdGEgPSAmbXQyNzEyX3B3bV9kYXRhIH0sCiAJeyAu
Y29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2MjItcHdtIiwgLmRhdGEgPSAmbXQ3NjIyX3B3bV9k
YXRhIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2MjMtcHdtIiwgLmRhdGEgPSAm
bXQ3NjIzX3B3bV9kYXRhIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2MjgtcHdt
IiwgLmRhdGEgPSAmbXQ3NjI4X3B3bV9kYXRhIH0sCiAJeyB9LAogfTsKLU1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIG10a19wd21fb2ZfbWF0Y2gpOworTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgcHdt
X21lZGlhdGVrX29mX21hdGNoKTsKIAotc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgbXRr
X3B3bV9kcml2ZXIgPSB7CitzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBwd21fbWVkaWF0
ZWtfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7Ci0JCS5uYW1lID0gIm10ay1wd20iLAotCQkub2Zf
bWF0Y2hfdGFibGUgPSBtdGtfcHdtX29mX21hdGNoLAorCQkubmFtZSA9ICJwd20tbWVkaWF0ZWsi
LAorCQkub2ZfbWF0Y2hfdGFibGUgPSBwd21fbWVkaWF0ZWtfb2ZfbWF0Y2gsCiAJfSwKLQkucHJv
YmUgPSBtdGtfcHdtX3Byb2JlLAotCS5yZW1vdmUgPSBtdGtfcHdtX3JlbW92ZSwKKwkucHJvYmUg
PSBwd21fbWVkaWF0ZWtfcHJvYmUsCisJLnJlbW92ZSA9IHB3bV9tZWRpYXRla19yZW1vdmUsCiB9
OwotbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihtdGtfcHdtX2RyaXZlcik7Cittb2R1bGVfcGxhdGZv
cm1fZHJpdmVyKHB3bV9tZWRpYXRla19kcml2ZXIpOwogCiBNT0RVTEVfQVVUSE9SKCJKb2huIENy
aXNwaW4gPGJsb2dpY0BvcGVud3J0Lm9yZz4iKTsKIE1PRFVMRV9MSUNFTlNFKCJHUEwiKTsKLS0g
CjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bWVkaWF0ZWsK
