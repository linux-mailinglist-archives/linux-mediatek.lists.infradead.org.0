Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A865BE027
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 16:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ljp8MmFWRt01CkFvaWgww82ZIE9juO5vQZ3WrksU88=; b=PWBqC0kvmsmFXb
	aUUtFl6rtL/Bbim75VKNuka5d//NqbjFKwTPp/dH99bZ2EW/S7YBkgo2gP7Zj0ZKMvR72YQo4Byld
	ElZVSfsjbuVL/PR8g1rVGP/p9ZbNCUb/GeoyuwT2tpZK/wxGggoHJ+Pm/S3C0bPkOkthc2H1Culls
	AjtbULBUa3LLTnNTbuuRfiSWNCZE38X2yx8VeSBramOsHAyGbEfWUMWs1HfTmhkq326c9KkW7A7mr
	1Kan6PZL/WlUdqAdIlJhAwkKjHBuFOPyIvK3wWTxo9z7QtbDd+KLD3at5aapefJ+O3B9RbuLghwzJ
	9Xawa4ZgdmcFe4TRQCnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8Mo-0001FD-Tz; Wed, 25 Sep 2019 14:34:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8Ml-0001Ep-Jw
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 14:34:05 +0000
X-UUID: dfd40d1a624c44a7bfecb37902a93374-20190925
X-UUID: dfd40d1a624c44a7bfecb37902a93374-20190925
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 465201972; Wed, 25 Sep 2019 06:34:01 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 07:34:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 22:33:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Sep 2019 22:33:46 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v10 03/12] pwm: mediatek: remove a property "has-clks"
Date: Wed, 25 Sep 2019 22:32:28 +0800
Message-ID: <1569421957-20765-4-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_073403_657466_14458F80 
X-CRM114-Status: GOOD (  13.65  )
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

V2UgY2FuIHVzZSBmaXhlZC1jbG9jayB0byByZXBhaXIgbXQ3NjI4IHB3bSBkdXJpbmcgY29uZmln
dXJlIGZyb20KdXNlcnNwYWNlLiBUaGUgU29DIGlzIGxlZ2FjeSBNSVBTIGFuZCBoYXMgbm8gY29t
cGxleCBjbG9jayB0cmVlLgpEdWUgdG8gd2UgY2FuIGdldCBjbG9jayBmcmVxdWVuY3kgZm9yIHBl
cmlvZCBjYWxjdWxhdGlvbiBmcm9tIERUCmZpeGVkLWNsb2NrLCBzbyB3ZSBjYW4gcmVtb3ZlIGhh
cy1jbG9jayBwcm9wZXJ0eSwgYW5kIGRpcmVjdGx5CnVzZSBkZXZtX2Nsa19nZXQgYW5kIGNsa19n
ZXRfcmF0ZS4KClNpZ25lZC1vZmYtYnk6IFJ5ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNv
bT4KU2lnbmVkLW9mZi1ieTogU2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVrLmNvbT4KQWNrZWQt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQpDaGFuZ2VzIHNpbmNlIHY5OgpBZGRlZCBhbiBBY2tlZC1ieSB0YWcKCkNoYW5nZXMgc2luY2Ug
djY6CkJhc2VkIG9uIGZpeGVkLWNsb2NrIGluIERULCB3ZSBjYW4gcmVtb3ZlIGhhcy1jbGtzIHBy
b3BlcnR5CgpDaGFuZ2VzIHNpbmNlIHY1OgoxLiBGb2xsb3cgcmV2aWV3ZXIncyBjb21tZW50cwpN
YWtlIHRoZSBjaGFuZ2VzIG9mIGZpeCBtdDc2MjggcHdtIGFzIGEgc2luZ2xlIHBhdGNoCgpDaGFu
Z2VzIHNpbmNlIHY0OgotIEZvbGxvdyByZXZpZXdlcnMncyBjb21tZW50cwoxLiB1c2UgcGMtPnNv
Yy0+aGFzX2Nsa3MgdG8gY2hlY2sgY2xvY2tzIGV4aXN0IG9yIG5vdC4KMi4gQWRkIGVycm9yIG1l
c3NhZ2Ugd2hlbiBwcm9iZSgpIHVuYWJsZSB0byBnZXQgY2xrcwotIEZpeGVzIGJ1ZyB3aGVuIFNv
QyBpcyBvbGQgbWlwcyB3aGljaCBoYXMgbm8gY29tcGxleCBjbG9jayB0cmVlLgppZiBjbG9ja3Mg
bm90IGV4aXN0LCB1c2UgdGhlIG5ldyBwcm9wZXJ0eSBmcm9tIERUIHRvIGFwcGx5IHBlcmlvZCBj
YWN1bGF0aW9uOwpvdGhlcndpc2UsIHVzZSBjbGtfZ2V0X3JhdGUgdG8gZ2V0IGNsb2NrIGZyZXF1
ZW5jeSBhbmQgYXBwbHkgcGVyaW9kIGNhY3VsYXRpb24uCgotLS0KIGRyaXZlcnMvcHdtL3B3bS1t
ZWRpYXRlay5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdt
LW1lZGlhdGVrLmMgYi9kcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYwppbmRleCBlYmQ2MjYyOWUz
ZmUuLjA3ZTg0M2FlZGRiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMK
KysrIGIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMKQEAgLTU3LDcgKzU3LDYgQEAgc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCBtdGtfcHdtX2Nsa19uYW1lW01US19DTEtfTUFYXSA9IHsKIHN0
cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgewogCXVuc2lnbmVkIGludCBmYWxsYmFja19ucHdt
czsKIAlib29sIHB3bTQ1X2ZpeHVwOwotCWJvb2wgaGFzX2Nsa3M7CiB9OwogCiAvKioKQEAgLTg3
LDkgKzg2LDYgQEAgc3RhdGljIGludCBtdGtfcHdtX2Nsa19lbmFibGUoc3RydWN0IHB3bV9jaGlw
ICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogCXN0cnVjdCBtdGtfcHdtX2NoaXAgKnBj
ID0gdG9fbXRrX3B3bV9jaGlwKGNoaXApOwogCWludCByZXQ7CiAKLQlpZiAoIXBjLT5zb2MtPmhh
c19jbGtzKQotCQlyZXR1cm4gMDsKLQogCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwYy0+Y2xr
c1tNVEtfQ0xLX1RPUF0pOwogCWlmIChyZXQgPCAwKQogCQlyZXR1cm4gcmV0OwpAQCAtMTE2LDkg
KzExMiw2IEBAIHN0YXRpYyB2b2lkIG10a19wd21fY2xrX2Rpc2FibGUoc3RydWN0IHB3bV9jaGlw
ICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogewogCXN0cnVjdCBtdGtfcHdtX2NoaXAg
KnBjID0gdG9fbXRrX3B3bV9jaGlwKGNoaXApOwogCi0JaWYgKCFwYy0+c29jLT5oYXNfY2xrcykK
LQkJcmV0dXJuOwotCiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBjLT5jbGtzW01US19DTEtfUFdN
MSArIHB3bS0+aHdwd21dKTsKIAljbGtfZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa3NbTVRLX0NM
S19NQUlOXSk7CiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBjLT5jbGtzW01US19DTEtfVE9QXSk7
CkBAIC0yNjIsMTEgKzI1NSwxMyBAQCBzdGF0aWMgaW50IG10a19wd21fcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAkJbnB3bXMgPSBNVEtfQ0xLX01BWCAtIDI7CiAJfQogCi0J
Zm9yIChpID0gMDsgaSA8IG5wd21zICsgMiAmJiBwYy0+c29jLT5oYXNfY2xrczsgaSsrKSB7Ci0J
CXBjLT5jbGtzW2ldID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIG10a19wd21fY2xrX25hbWVb
aV0pOworCWZvciAoaSA9IDA7IGkgPCBucHdtcyArIDIgOyBpKyspIHsKKwkJcGMtPmNsa3NbaV0g
PSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwKKwkJCQkJICBtdGtfcHdtX2Nsa19uYW1lW2ldKTsK
IAkJaWYgKElTX0VSUihwYy0+Y2xrc1tpXSkpIHsKIAkJCWRldl9lcnIoJnBkZXYtPmRldiwgImNs
b2NrOiAlcyBmYWlsOiAlbGRcbiIsCi0JCQkJbXRrX3B3bV9jbGtfbmFtZVtpXSwgUFRSX0VSUihw
Yy0+Y2xrc1tpXSkpOworCQkJCW10a19wd21fY2xrX25hbWVbaV0sCisJCQkJUFRSX0VSUihwYy0+
Y2xrc1tpXSkpOwogCQkJcmV0dXJuIFBUUl9FUlIocGMtPmNsa3NbaV0pOwogCQl9CiAJfQpAQCAt
Mjk3LDI1ICsyOTIsMjEgQEAgc3RhdGljIGludCBtdGtfcHdtX3JlbW92ZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2Rh
dGEgbXQyNzEyX3B3bV9kYXRhID0gewogCS5mYWxsYmFja19ucHdtcyA9IDgsCiAJLnB3bTQ1X2Zp
eHVwID0gZmFsc2UsCi0JLmhhc19jbGtzID0gdHJ1ZSwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhIG10NzYyMl9wd21fZGF0YSA9IHsKIAkuZmFsbGJhY2tf
bnB3bXMgPSA2LAogCS5wd200NV9maXh1cCA9IGZhbHNlLAotCS5oYXNfY2xrcyA9IHRydWUsCiB9
OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSBtdDc2MjNfcHdt
X2RhdGEgPSB7CiAJLmZhbGxiYWNrX25wd21zID0gNSwKIAkucHdtNDVfZml4dXAgPSB0cnVlLAot
CS5oYXNfY2xrcyA9IHRydWUsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19wd21fcGxh
dGZvcm1fZGF0YSBtdDc2MjhfcHdtX2RhdGEgPSB7CiAJLmZhbGxiYWNrX25wd21zID0gNCwKIAku
cHdtNDVfZml4dXAgPSB0cnVlLAotCS5oYXNfY2xrcyA9IGZhbHNlLAogfTsKIAogc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbXRrX3B3bV9vZl9tYXRjaFtdID0gewotLSAKMi4xNy4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRl
awo=
