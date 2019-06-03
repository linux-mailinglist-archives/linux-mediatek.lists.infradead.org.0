Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2CF32853
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 08:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxEN/ciYkuW5iOWjRLq8+GuyArYTrZnmt99jR/rpv6Y=; b=XOD9TjIHz8xoMK
	7xSW1J0xGWlQJgLV+fmzU+kVYuxwTBB3Doh8DpOGe092QvRlnmheQWL+BrjJJMHMWdPnPfouNj9uK
	174upmw3ZirjvIR7y1etpnkeyRzkeSuvceMjj/XmEyRkhQrr7OOmvdPue81kKTCLMUXYkhUmxWXU9
	KAEbte2qecAeHSXuszF7vPCIEAICDyR5NeYUZsmJmhSn30kfyZSghzmVO+SZXqDbnHWdDToo6/PzL
	ReI47z83XSD7wsJsReC9dPJZLD/Gl4Bccf+Ug136wIMjhgrqsXLagOEnYA6uOATy3vfcMPmyTAd2d
	sC4dBTp5qZ9K4yGVrmtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXg9n-0007uH-Dw; Mon, 03 Jun 2019 06:09:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXg9j-0007tF-EM
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 06:09:17 +0000
X-UUID: e151d72dec3d4b1783af4b15eafb9516-20190602
X-UUID: e151d72dec3d4b1783af4b15eafb9516-20190602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 392628621; Sun, 02 Jun 2019 22:09:06 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 23:09:05 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 14:09:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 3 Jun 2019 14:09:03 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v3 2/2] mt76: mt7615: fix slow performance when enable
 encryption
Date: Mon, 3 Jun 2019 14:08:44 +0800
Message-ID: <429cf8c1421017b4030b8b6e4fa9e5cbea953d3c.1559541944.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <a1ff446dfc06e2443552e7ec2d754099aacce7df.1559541944.git.ryder.lee@mediatek.com>
References: <a1ff446dfc06e2443552e7ec2d754099aacce7df.1559541944.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_230915_691318_62292F61 
X-CRM114-Status: GOOD (  11.16  )
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
ZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KLS0tCkNoYW5nZXMgc2luY2UgdjMgLSBub25lCkNo
YW5nZXMgc2luY2UgdjIgLSBub25lCi0tLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsv
bXQ3Ni9tdDc2MTUvaW5pdC5jIHwgMTYgKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9uZXQvd2ly
ZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWFpbi5jIHwgIDIgKy0KIGRyaXZlcnMvbmV0L3dp
cmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21jdS5jICB8ICAxICsKIDMgZmlsZXMgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9pbml0LmMgYi9kcml2ZXJzL25ldC93
aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9pbml0LmMKaW5kZXggZjg2MGFmNmE0MmRhLi5i
M2UwODE1NGNjYmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210
NzYvbXQ3NjE1L2luaXQuYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2
L210NzYxNS9pbml0LmMKQEAgLTYyLDE2ICs2MiwxMSBAQCBzdGF0aWMgdm9pZCBtdDc2MTVfbWFj
X2luaXQoc3RydWN0IG10NzYxNV9kZXYgKmRldikKIAkJIE1UX0FHR19BUkNSX1JBVEVfRE9XTl9S
QVRJT19FTiB8CiAJCSBGSUVMRF9QUkVQKE1UX0FHR19BUkNSX1JBVEVfRE9XTl9SQVRJTywgMSkg
fAogCQkgRklFTERfUFJFUChNVF9BR0dfQVJDUl9SQVRFX1VQX0VYVFJBX1RILCA0KSkpOwotCi0J
ZGV2LT5tdDc2Lmdsb2JhbF93Y2lkLmlkeCA9IE1UNzYxNV9XVEJMX1JFU0VSVkVEOwotCWRldi0+
bXQ3Ni5nbG9iYWxfd2NpZC5od19rZXlfaWR4ID0gLTE7Ci0JcmN1X2Fzc2lnbl9wb2ludGVyKGRl
di0+bXQ3Ni53Y2lkW01UNzYxNV9XVEJMX1JFU0VSVkVEXSwKLQkJCSAgICZkZXYtPm10NzYuZ2xv
YmFsX3djaWQpOwogfQogCiBzdGF0aWMgaW50IG10NzYxNV9pbml0X2hhcmR3YXJlKHN0cnVjdCBt
dDc2MTVfZGV2ICpkZXYpCiB7Ci0JaW50IHJldDsKKwlpbnQgcmV0LCBpZHg7CiAKIAltdDc2X3dy
KGRldiwgTVRfSU5UX1NPVVJDRV9DU1IsIH4wKTsKIApAQCAtOTgsNiArOTMsMTUgQEAgc3RhdGlj
IGludCBtdDc2MTVfaW5pdF9oYXJkd2FyZShzdHJ1Y3QgbXQ3NjE1X2RldiAqZGV2KQogCW10NzYx
NV9tY3VfY3RybF9wbV9zdGF0ZShkZXYsIDApOwogCW10NzYxNV9tY3VfZGVsX3d0YmxfYWxsKGRl
dik7CiAKKwkvKiBCZWFjb24gYW5kIG1nbXQgZnJhbWVzIHNob3VsZCBvY2N1cHkgd2NpZCAwICov
CisJaWR4ID0gbXQ3Nl93Y2lkX2FsbG9jKGRldi0+bXQ3Ni53Y2lkX21hc2ssIE1UNzYxNV9XVEJM
X1NUQSAtIDEpOworCWlmIChpZHgpCisJCXJldHVybiAtRU5PU1BDOworCisJZGV2LT5tdDc2Lmds
b2JhbF93Y2lkLmlkeCA9IGlkeDsKKwlkZXYtPm10NzYuZ2xvYmFsX3djaWQuaHdfa2V5X2lkeCA9
IC0xOworCXJjdV9hc3NpZ25fcG9pbnRlcihkZXYtPm10NzYud2NpZFtpZHhdLCAmZGV2LT5tdDc2
Lmdsb2JhbF93Y2lkKTsKKwogCXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tYWluLmMgYi9kcml2ZXJzL25ldC93aXJl
bGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tYWluLmMKaW5kZXggNTg1ZTY3ZmEyNzI4Li4yY2Rk
MzM5NDUzYzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYv
bXQ3NjE1L21haW4uYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210
NzYxNS9tYWluLmMKQEAgLTk1LDcgKzk1LDcgQEAgc3RhdGljIGludCBtdDc2MTVfYWRkX2ludGVy
ZmFjZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAogCWRldi0+dmlmX21hc2sgfD0gQklUKG12
aWYtPmlkeCk7CiAJZGV2LT5vbWFjX21hc2sgfD0gQklUKG12aWYtPm9tYWNfaWR4KTsKLQlpZHgg
PSBNVDc2MTVfV1RCTF9SRVNFUlZFRCAtIDEgLSBtdmlmLT5pZHg7CisJaWR4ID0gTVQ3NjE1X1dU
QkxfUkVTRVJWRUQgLSBtdmlmLT5pZHg7CiAJbXZpZi0+c3RhLndjaWQuaWR4ID0gaWR4OwogCW12
aWYtPnN0YS53Y2lkLmh3X2tleV9pZHggPSAtMTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1LmMgYi9kcml2ZXJzL25ldC93aXJlbGVz
cy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3UuYwppbmRleCBlODIyOTcwNDg0NDkuLmIzODAyZjE4
YjM3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2
MTUvbWN1LmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUv
bWN1LmMKQEAgLTg4Miw2ICs4ODIsNyBAQCBpbnQgbXQ3NjE1X21jdV9zZXRfd3RibF9rZXkoc3Ry
dWN0IG10NzYxNV9kZXYgKmRldiwgaW50IHdjaWQsCiAJCWlmIChjaXBoZXIgPT0gTVRfQ0lQSEVS
X05PTkUgJiYga2V5KQogCQkJcmV0dXJuIC1FT1BOT1RTVVBQOwogCisJCXJlcS5rZXkucmt2ID0g
MTsKIAkJcmVxLmtleS5jaXBoZXJfaWQgPSBjaXBoZXI7CiAJCXJlcS5rZXkua2V5X2lkID0ga2V5
LT5rZXlpZHg7CiAJCXJlcS5rZXkua2V5X2xlbiA9IGtleS0+a2V5bGVuOwotLSAKMi4xOC4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVk
aWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
