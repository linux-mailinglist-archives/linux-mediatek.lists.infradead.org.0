Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEE6309FB
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 10:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8XRjavJDHZISW3Do5BHu6hiM48ZXcz3TqGv5dqD8DA=; b=iLaTME8msFgMJF
	IkzJioWZ04Z4Bwd+wkjl41mDHR2JPtfEG0D/7f+j+YNxk6ultN7w36Bz+LCYjCBR2nmmasIJhNy9u
	9K2j9p2HNNHDbVSTyLo4Idb1V1oS6PayNoEVKOrvDeL7Z+9F7k28/9joUO7Fk1JZXjnkKEVRAAq7F
	kolEjDQT4PLA1o3kvyLwkKQFDcJqHcbzvkX3PaTmNg9AyTSPgtc19JsA68oXVvZAgw8CxaQQpEONR
	s2um7aH7CWXn7UrdXN2p+Jdgtm4OVliUOMthFUS9eYJMcKwWZcvcwtrlB/4LpVXYij2cJxhOlXCOX
	2w6R4BNWhpZDEBcxjM3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWchz-0004LG-6A; Fri, 31 May 2019 08:16:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWchv-0004JV-DF
 for linux-mediatek@lists.infradead.org; Fri, 31 May 2019 08:16:12 +0000
X-UUID: 27cf1f96fdab41b9a5b8c091b7deaebd-20190531
X-UUID: 27cf1f96fdab41b9a5b8c091b7deaebd-20190531
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1449068685; Fri, 31 May 2019 00:16:00 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 01:15:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 16:15:56 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 31 May 2019 16:15:56 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 2/2] mt76: mt7615: fix slow performance when enable encryption
Date: Fri, 31 May 2019 16:15:52 +0800
Message-ID: <ec57059abc83d7a73bcb4e6cd7f8eccca8d8517e.1559287432.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <7f167d09736652f81383991c971506630bbedacc.1559287432.git.ryder.lee@mediatek.com>
References: <7f167d09736652f81383991c971506630bbedacc.1559287432.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BB14C576678B5C5AE4F32363CE403502738AE4B0DBB9114DD60A2EB84725A24E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_011611_465021_BF9B0D0B 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Wang <sean.wang@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Rml4IHdyb25nIFdDSUQgYXNzaWdubWVudCBhbmQgYWRkIFJLViAoUlggS2V5IG9mIHRoaXMgZW50
cnkgaXMgdmFsaWQpCmZsYWcgdG8gY2hlY2sgaWYgcGVlciB1c2VzIHRoZSBzYW1lIGNvbmZpZ3Vy
YXRpb24gd2l0aCBwcmV2aW91cwpoYW5kc2hha2luZy4KCklmIHRoZSBjb25maWd1cmF0aW9uIGlz
IG1pc21hdGNoLCBXVEJMIGluZGljYXRlcyBhIOKAnGNpcGhlciBtaXNtYXRjaOKAnQp0byBzdG9w
IFNFQyBkZWNyeXB0aW9uIHRvIHByZXZlbnQgdGhlIHBhY2tldCBmcm9tIGRhbWFnZS4KClN1Z2dl
c3RlZC1ieTogWUYgTHVvIDx5Zi5sdW9AbWVkaWF0ZWsuY29tPgpTdWdnZXN0ZWQtYnk6IFlpd2Vp
IENodW5nIDx5aXdlaS5jaHVuZ0BtZWRpYXRlay5jb20+ClNpZ25lZC1vZmYtYnk6IFJ5ZGVyIExl
ZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRp
YXRlay9tdDc2L210NzYxNS9pbml0LmMgfCAxNSArKysrKysrKystLS0tLS0KIGRyaXZlcnMvbmV0
L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21haW4uYyB8ICAyICstCiBkcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3UuYyAgfCAgMSArCiAzIGZpbGVzIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvaW5pdC5jIGIvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvaW5pdC5jCmluZGV4IGY4NjBhZjZhNDJk
YS4uYjk2Yzc1M2I3NTMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRl
ay9tdDc2L210NzYxNS9pbml0LmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsv
bXQ3Ni9tdDc2MTUvaW5pdC5jCkBAIC02MiwxNiArNjIsMTEgQEAgc3RhdGljIHZvaWQgbXQ3NjE1
X21hY19pbml0KHN0cnVjdCBtdDc2MTVfZGV2ICpkZXYpCiAJCSBNVF9BR0dfQVJDUl9SQVRFX0RP
V05fUkFUSU9fRU4gfAogCQkgRklFTERfUFJFUChNVF9BR0dfQVJDUl9SQVRFX0RPV05fUkFUSU8s
IDEpIHwKIAkJIEZJRUxEX1BSRVAoTVRfQUdHX0FSQ1JfUkFURV9VUF9FWFRSQV9USCwgNCkpKTsK
LQotCWRldi0+bXQ3Ni5nbG9iYWxfd2NpZC5pZHggPSBNVDc2MTVfV1RCTF9SRVNFUlZFRDsKLQlk
ZXYtPm10NzYuZ2xvYmFsX3djaWQuaHdfa2V5X2lkeCA9IC0xOwotCXJjdV9hc3NpZ25fcG9pbnRl
cihkZXYtPm10NzYud2NpZFtNVDc2MTVfV1RCTF9SRVNFUlZFRF0sCi0JCQkgICAmZGV2LT5tdDc2
Lmdsb2JhbF93Y2lkKTsKIH0KIAogc3RhdGljIGludCBtdDc2MTVfaW5pdF9oYXJkd2FyZShzdHJ1
Y3QgbXQ3NjE1X2RldiAqZGV2KQogewotCWludCByZXQ7CisJaW50IHJldCwgaWR4OwogCiAJbXQ3
Nl93cihkZXYsIE1UX0lOVF9TT1VSQ0VfQ1NSLCB+MCk7CiAKQEAgLTk4LDYgKzkzLDE0IEBAIHN0
YXRpYyBpbnQgbXQ3NjE1X2luaXRfaGFyZHdhcmUoc3RydWN0IG10NzYxNV9kZXYgKmRldikKIAlt
dDc2MTVfbWN1X2N0cmxfcG1fc3RhdGUoZGV2LCAwKTsKIAltdDc2MTVfbWN1X2RlbF93dGJsX2Fs
bChkZXYpOwogCisJLyogQmVhY29uIGFuZCBtZ210IGZyYW1lcyBzaG91bGQgb2NjdXB5IHdjaWQg
MCAqLworCWlkeCA9IG10NzZfd2NpZF9hbGxvYyhkZXYtPm10NzYud2NpZF9tYXNrLCBNVDc2MTVf
V1RCTF9TVEEgLSAxKTsKKwlpZiAoaWR4KQorCQlyZXR1cm4gLUVOT1NQQzsKKworCWRldi0+bXQ3
Ni5nbG9iYWxfd2NpZC5pZHggPSBpZHg7CisJZGV2LT5tdDc2Lmdsb2JhbF93Y2lkLmh3X2tleV9p
ZHggPSAtMTsKKwlyY3VfYXNzaWduX3BvaW50ZXIoZGV2LT5tdDc2LndjaWRbaWR4XSwgJmRldi0+
bXQ3Ni5nbG9iYWxfd2NpZCk7CiAJcmV0dXJuIDA7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21haW4uYyBiL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21haW4uYwppbmRleCA1ODVlNjdmYTI3MjguLjJj
ZGQzMzk0NTNjOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3
Ni9tdDc2MTUvbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYv
bXQ3NjE1L21haW4uYwpAQCAtOTUsNyArOTUsNyBAQCBzdGF0aWMgaW50IG10NzYxNV9hZGRfaW50
ZXJmYWNlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCiAJZGV2LT52aWZfbWFzayB8PSBCSVQo
bXZpZi0+aWR4KTsKIAlkZXYtPm9tYWNfbWFzayB8PSBCSVQobXZpZi0+b21hY19pZHgpOwotCWlk
eCA9IE1UNzYxNV9XVEJMX1JFU0VSVkVEIC0gMSAtIG12aWYtPmlkeDsKKwlpZHggPSBNVDc2MTVf
V1RCTF9SRVNFUlZFRCAtIG12aWYtPmlkeDsKIAltdmlmLT5zdGEud2NpZC5pZHggPSBpZHg7CiAJ
bXZpZi0+c3RhLndjaWQuaHdfa2V5X2lkeCA9IC0xOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3UuYyBiL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21jdS5jCmluZGV4IDhiOGRiNTI2Y2IxNi4uNWYzODc0
MWU3MzY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210
NzYxNS9tY3UuYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYx
NS9tY3UuYwpAQCAtODgyLDYgKzg4Miw3IEBAIGludCBtdDc2MTVfbWN1X3NldF93dGJsX2tleShz
dHJ1Y3QgbXQ3NjE1X2RldiAqZGV2LCBpbnQgd2NpZCwKIAkJaWYgKGNpcGhlciA9PSBNVF9DSVBI
RVJfTk9ORSAmJiBrZXkpCiAJCQlyZXR1cm4gLUVPUE5PVFNVUFA7CiAKKwkJcmVxLmtleS5ya3Yg
PSAxOwogCQlyZXEua2V5LmNpcGhlcl9pZCA9IGNpcGhlcjsKIAkJcmVxLmtleS5rZXlfaWQgPSBr
ZXktPmtleWlkeDsKIAkJcmVxLmtleS5rZXlfbGVuID0ga2V5LT5rZXlsZW47Ci0tIAoyLjE4LjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1t
ZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVr
Cg==
