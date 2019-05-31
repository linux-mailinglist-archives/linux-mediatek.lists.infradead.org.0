Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AF130FA7
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 16:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rfo6MwcJnm9G/GKT6Tn99jnZd98ck2M5g+3TPluHVRQ=; b=kfS2sR3CxEE9iO
	4VmhqZrXm6vA9HAMKU2F8fttsGF903wcJOM+W7U1TYBIGImryfl3muhJmi74A19KlfzQaWpv0vi8J
	nUz4MLfxHzatYZzckFdUTaI0NAD52cLedpDy7f4rgrr200e2RSntokt0gDlhtix8KQfK52GimSxGn
	qT1fcVr1Su3xtVba5II5jSHqn4YT+bDfw3EOe4/bvnsyKDoCNwEmcwQfdx5syvgkIdUgW8TUYm3KI
	ssClemplKXpE6lyzNmuWVQairg/gcuD3yZL09FXLcaf0Gv/laQbisPuIJUFZSTkM6aQL5NMykHpfL
	enAtQRZ7yqEod8bNvwCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWiEU-0007Dt-DV; Fri, 31 May 2019 14:10:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWiEQ-0006dI-50
 for linux-mediatek@lists.infradead.org; Fri, 31 May 2019 14:10:07 +0000
X-UUID: f99e7ff4ec8847e09a1dbc6c97005321-20190531
X-UUID: f99e7ff4ec8847e09a1dbc6c97005321-20190531
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 621341877; Fri, 31 May 2019 06:10:03 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 07:10:01 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 22:09:59 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 31 May 2019 22:09:59 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 2/2] mt76: mt7615: fix slow performance when enable
 encryption
Date: Fri, 31 May 2019 22:09:57 +0800
Message-ID: <ed4cb230af57cb8f3bbe3d1851ce7f8ab7eeb9d5.1559301203.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <e459fbc79154da9e0e6e098d2c49a9b17e842f47.1559301203.git.ryder.lee@mediatek.com>
References: <e459fbc79154da9e0e6e098d2c49a9b17e842f47.1559301203.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AD9480DA8A1DFA8B30958A0EB9B5D3731966CFCEAE90CCE5F638CB3AA38699AB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_071006_202194_5DB242C7 
X-CRM114-Status: GOOD (  11.73  )
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
ZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KLS0tCkNoYW5nZXMgc2luY2UgdjIgLSBub25lCi0t
LQogZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvaW5pdC5jIHwgMTUg
KysrKysrKysrLS0tLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYx
NS9tYWluLmMgfCAgMiArLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2
MTUvbWN1LmMgIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210
NzYvbXQ3NjE1L2luaXQuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3
NjE1L2luaXQuYwppbmRleCBmODYwYWY2YTQyZGEuLmI5NmM3NTNiNzUzMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvaW5pdC5jCisrKyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L2luaXQuYwpAQCAtNjIsMTYg
KzYyLDExIEBAIHN0YXRpYyB2b2lkIG10NzYxNV9tYWNfaW5pdChzdHJ1Y3QgbXQ3NjE1X2RldiAq
ZGV2KQogCQkgTVRfQUdHX0FSQ1JfUkFURV9ET1dOX1JBVElPX0VOIHwKIAkJIEZJRUxEX1BSRVAo
TVRfQUdHX0FSQ1JfUkFURV9ET1dOX1JBVElPLCAxKSB8CiAJCSBGSUVMRF9QUkVQKE1UX0FHR19B
UkNSX1JBVEVfVVBfRVhUUkFfVEgsIDQpKSk7Ci0KLQlkZXYtPm10NzYuZ2xvYmFsX3djaWQuaWR4
ID0gTVQ3NjE1X1dUQkxfUkVTRVJWRUQ7Ci0JZGV2LT5tdDc2Lmdsb2JhbF93Y2lkLmh3X2tleV9p
ZHggPSAtMTsKLQlyY3VfYXNzaWduX3BvaW50ZXIoZGV2LT5tdDc2LndjaWRbTVQ3NjE1X1dUQkxf
UkVTRVJWRURdLAotCQkJICAgJmRldi0+bXQ3Ni5nbG9iYWxfd2NpZCk7CiB9CiAKIHN0YXRpYyBp
bnQgbXQ3NjE1X2luaXRfaGFyZHdhcmUoc3RydWN0IG10NzYxNV9kZXYgKmRldikKIHsKLQlpbnQg
cmV0OworCWludCByZXQsIGlkeDsKIAogCW10NzZfd3IoZGV2LCBNVF9JTlRfU09VUkNFX0NTUiwg
fjApOwogCkBAIC05OCw2ICs5MywxNCBAQCBzdGF0aWMgaW50IG10NzYxNV9pbml0X2hhcmR3YXJl
KHN0cnVjdCBtdDc2MTVfZGV2ICpkZXYpCiAJbXQ3NjE1X21jdV9jdHJsX3BtX3N0YXRlKGRldiwg
MCk7CiAJbXQ3NjE1X21jdV9kZWxfd3RibF9hbGwoZGV2KTsKIAorCS8qIEJlYWNvbiBhbmQgbWdt
dCBmcmFtZXMgc2hvdWxkIG9jY3VweSB3Y2lkIDAgKi8KKwlpZHggPSBtdDc2X3djaWRfYWxsb2Mo
ZGV2LT5tdDc2LndjaWRfbWFzaywgTVQ3NjE1X1dUQkxfU1RBIC0gMSk7CisJaWYgKGlkeCkKKwkJ
cmV0dXJuIC1FTk9TUEM7CisKKwlkZXYtPm10NzYuZ2xvYmFsX3djaWQuaWR4ID0gaWR4OworCWRl
di0+bXQ3Ni5nbG9iYWxfd2NpZC5od19rZXlfaWR4ID0gLTE7CisJcmN1X2Fzc2lnbl9wb2ludGVy
KGRldi0+bXQ3Ni53Y2lkW2lkeF0sICZkZXYtPm10NzYuZ2xvYmFsX3djaWQpOwogCXJldHVybiAw
OwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210
NzYxNS9tYWluLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9t
YWluLmMKaW5kZXggNTg1ZTY3ZmEyNzI4Li4yY2RkMzM5NDUzYzggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21haW4uYworKysgYi9kcml2ZXJz
L25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tYWluLmMKQEAgLTk1LDcgKzk1LDcg
QEAgc3RhdGljIGludCBtdDc2MTVfYWRkX2ludGVyZmFjZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpo
dywKIAogCWRldi0+dmlmX21hc2sgfD0gQklUKG12aWYtPmlkeCk7CiAJZGV2LT5vbWFjX21hc2sg
fD0gQklUKG12aWYtPm9tYWNfaWR4KTsKLQlpZHggPSBNVDc2MTVfV1RCTF9SRVNFUlZFRCAtIDEg
LSBtdmlmLT5pZHg7CisJaWR4ID0gTVQ3NjE1X1dUQkxfUkVTRVJWRUQgLSBtdmlmLT5pZHg7CiAJ
bXZpZi0+c3RhLndjaWQuaWR4ID0gaWR4OwogCW12aWYtPnN0YS53Y2lkLmh3X2tleV9pZHggPSAt
MTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2
MTUvbWN1LmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3Uu
YwppbmRleCA4YjhkYjUyNmNiMTYuLjVmMzg3NDFlNzM2NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1LmMKKysrIGIvZHJpdmVycy9uZXQv
d2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1LmMKQEAgLTg4Miw2ICs4ODIsNyBAQCBp
bnQgbXQ3NjE1X21jdV9zZXRfd3RibF9rZXkoc3RydWN0IG10NzYxNV9kZXYgKmRldiwgaW50IHdj
aWQsCiAJCWlmIChjaXBoZXIgPT0gTVRfQ0lQSEVSX05PTkUgJiYga2V5KQogCQkJcmV0dXJuIC1F
T1BOT1RTVVBQOwogCisJCXJlcS5rZXkucmt2ID0gMTsKIAkJcmVxLmtleS5jaXBoZXJfaWQgPSBj
aXBoZXI7CiAJCXJlcS5rZXkua2V5X2lkID0ga2V5LT5rZXlpZHg7CiAJCXJlcS5rZXkua2V5X2xl
biA9IGtleS0+a2V5bGVuOwotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
