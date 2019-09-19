Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E6BB87AF
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 00:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yN/Me2kVrga2XUBqqhiPDYZRKEIY9LZq2w+GCLZ/huE=; b=cx4S0EeuN696NX
	8/vDD8nQMq3mQg/z+OFIEVpSSdickSWP4Wdfxus1TQqZMmGvo1uNBLxmAZROlLgpAnsV57XhKjg6n
	1rhGbyA8IXM4NEWGrMNdOYwccHxcPxIP4YsHd5czK1v75i7EVaHkLaPc2bBcQNCHHx4fYmDgiGoV4
	pEVE4D+Bo8zrA9Stb32DoUZnxF57Ie7nPO0rgfwBp2/qCCHlBHknDCOY1PSXojqieP4LHKneRjQl7
	2q7T7XzwopTsN15VGCxldDZMISJKmNE/sIS+8yr8Okl9fQgFQ/2Oac4Ed1OgTsrqTmNN/8ItpDFFw
	GD9Hkt/gY1SCnrF63UYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB5GJ-0004W9-U7; Thu, 19 Sep 2019 22:50:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB5GE-0004Se-Tl
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 22:50:52 +0000
X-UUID: f6668938bb96449daba006257ebac584-20190919
X-UUID: f6668938bb96449daba006257ebac584-20190919
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1765767610; Thu, 19 Sep 2019 14:50:46 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 15:50:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Sep 2019 06:50:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Sep 2019 06:50:39 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v9 03/11] pwm: mediatek: remove a property "has-clks"
Date: Fri, 20 Sep 2019 06:49:03 +0800
Message-ID: <1568933351-8584-4-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6995D0CD1E89DD8C55A65645E857674A0AC324C17485BA14F03EFFC00924B0E02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_155050_961625_D4E7551C 
X-CRM114-Status: GOOD (  12.92  )
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

V2UgY2FuIHVzZSBmaXhlZC1jbG9jayB0byByZXBhaXIgbXQ3NjI4IHB3bSBkdXJpbmcgY29uZmln
dXJlIGZyb20KdXNlcnNwYWNlLiBUaGUgU29DIGlzIGxlZ2FjeSBNSVBTIGFuZCBoYXMgbm8gY29t
cGxleCBjbG9jayB0cmVlLgpEdWUgdG8gd2UgY2FuIGdldCBjbG9jayBmcmVxdWVuY3kgZm9yIHBl
cmlvZCBjYWxjdWxhdGlvbiBmcm9tIERUCmZpeGVkLWNsb2NrLCBzbyB3ZSBjYW4gcmVtb3ZlIGhh
cy1jbG9jayBwcm9wZXJ0eSwgYW5kIGRpcmVjdGx5CnVzZSBkZXZtX2Nsa19nZXQgYW5kIGNsa19n
ZXRfcmF0ZS4KClNpZ25lZC1vZmYtYnk6IFJ5ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNv
bT4KU2lnbmVkLW9mZi1ieTogU2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVrLmNvbT4KQWNrZWQt
Ynk6IFV3ZSBLbGVpbmUtS8O2IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpD
aGFuZ2VzIHNpbmNlIHY5OgpBZGRlZCBhbiBBY2tlZC1ieSB0YWcKCkNoYW5nZXMgc2luY2UgdjY6
CkJhc2VkIG9uIGZpeGVkLWNsb2NrIGluIERULCB3ZSBjYW4gcmVtb3ZlIGhhcy1jbGtzIHByb3Bl
cnR5CgpDaGFuZ2VzIHNpbmNlIHY1OgoxLiBGb2xsb3cgcmV2aWV3ZXIncyBjb21tZW50cwpNYWtl
IHRoZSBjaGFuZ2VzIG9mIGZpeCBtdDc2MjggcHdtIGFzIGEgc2luZ2xlIHBhdGNoCgpDaGFuZ2Vz
IHNpbmNlIHY0OgotIEZvbGxvdyByZXZpZXdlcnMncyBjb21tZW50cwoxLiB1c2UgcGMtPnNvYy0+
aGFzX2Nsa3MgdG8gY2hlY2sgY2xvY2tzIGV4aXN0IG9yIG5vdC4KMi4gQWRkIGVycm9yIG1lc3Nh
Z2Ugd2hlbiBwcm9iZSgpIHVuYWJsZSB0byBnZXQgY2xrcwotIEZpeGVzIGJ1ZyB3aGVuIFNvQyBp
cyBvbGQgbWlwcyB3aGljaCBoYXMgbm8gY29tcGxleCBjbG9jayB0cmVlLgppZiBjbG9ja3Mgbm90
IGV4aXN0LCB1c2UgdGhlIG5ldyBwcm9wZXJ0eSBmcm9tIERUIHRvIGFwcGx5IHBlcmlvZCBjYWN1
bGF0aW9uOwpvdGhlcndpc2UsIHVzZSBjbGtfZ2V0X3JhdGUgdG8gZ2V0IGNsb2NrIGZyZXF1ZW5j
eSBhbmQgYXBwbHkgcGVyaW9kIGNhY3VsYXRpb24uCi0tLQogZHJpdmVycy9wd20vcHdtLW1lZGlh
dGVrLmMgfCAxOSArKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tbWVk
aWF0ZWsuYyBiL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCmluZGV4IGViZDYyNjI5ZTNmZS4u
MDdlODQzYWVkZGIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYworKysg
Yi9kcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYwpAQCAtNTcsNyArNTcsNiBAQCBzdGF0aWMgY29u
c3QgY2hhciAqIGNvbnN0IG10a19wd21fY2xrX25hbWVbTVRLX0NMS19NQVhdID0gewogc3RydWN0
IG10a19wd21fcGxhdGZvcm1fZGF0YSB7CiAJdW5zaWduZWQgaW50IGZhbGxiYWNrX25wd21zOwog
CWJvb2wgcHdtNDVfZml4dXA7Ci0JYm9vbCBoYXNfY2xrczsKIH07CiAKIC8qKgpAQCAtODcsOSAr
ODYsNiBAQCBzdGF0aWMgaW50IG10a19wd21fY2xrX2VuYWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNo
aXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20pCiAJc3RydWN0IG10a19wd21fY2hpcCAqcGMgPSB0
b19tdGtfcHdtX2NoaXAoY2hpcCk7CiAJaW50IHJldDsKIAotCWlmICghcGMtPnNvYy0+aGFzX2Ns
a3MpCi0JCXJldHVybiAwOwotCiAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBjLT5jbGtzW01U
S19DTEtfVE9QXSk7CiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CkBAIC0xMTYsOSArMTEy
LDYgQEAgc3RhdGljIHZvaWQgbXRrX3B3bV9jbGtfZGlzYWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNo
aXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20pCiB7CiAJc3RydWN0IG10a19wd21fY2hpcCAqcGMg
PSB0b19tdGtfcHdtX2NoaXAoY2hpcCk7CiAKLQlpZiAoIXBjLT5zb2MtPmhhc19jbGtzKQotCQly
ZXR1cm47Ci0KIAljbGtfZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa3NbTVRLX0NMS19QV00xICsg
cHdtLT5od3B3bV0pOwogCWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrc1tNVEtfQ0xLX01B
SU5dKTsKIAljbGtfZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa3NbTVRLX0NMS19UT1BdKTsKQEAg
LTI2MiwxMSArMjU1LDEzIEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCQlucHdtcyA9IE1US19DTEtfTUFYIC0gMjsKIAl9CiAKLQlmb3Ig
KGkgPSAwOyBpIDwgbnB3bXMgKyAyICYmIHBjLT5zb2MtPmhhc19jbGtzOyBpKyspIHsKLQkJcGMt
PmNsa3NbaV0gPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgbXRrX3B3bV9jbGtfbmFtZVtpXSk7
CisJZm9yIChpID0gMDsgaSA8IG5wd21zICsgMiA7IGkrKykgeworCQlwYy0+Y2xrc1tpXSA9IGRl
dm1fY2xrX2dldCgmcGRldi0+ZGV2LAorCQkJCQkgIG10a19wd21fY2xrX25hbWVbaV0pOwogCQlp
ZiAoSVNfRVJSKHBjLT5jbGtzW2ldKSkgewogCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiY2xvY2s6
ICVzIGZhaWw6ICVsZFxuIiwKLQkJCQltdGtfcHdtX2Nsa19uYW1lW2ldLCBQVFJfRVJSKHBjLT5j
bGtzW2ldKSk7CisJCQkJbXRrX3B3bV9jbGtfbmFtZVtpXSwKKwkJCQlQVFJfRVJSKHBjLT5jbGtz
W2ldKSk7CiAJCQlyZXR1cm4gUFRSX0VSUihwYy0+Y2xrc1tpXSk7CiAJCX0KIAl9CkBAIC0yOTcs
MjUgKzI5MiwyMSBAQCBzdGF0aWMgaW50IG10a19wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSBt
dDI3MTJfcHdtX2RhdGEgPSB7CiAJLmZhbGxiYWNrX25wd21zID0gOCwKIAkucHdtNDVfZml4dXAg
PSBmYWxzZSwKLQkuaGFzX2Nsa3MgPSB0cnVlLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBt
dGtfcHdtX3BsYXRmb3JtX2RhdGEgbXQ3NjIyX3B3bV9kYXRhID0gewogCS5mYWxsYmFja19ucHdt
cyA9IDYsCiAJLnB3bTQ1X2ZpeHVwID0gZmFsc2UsCi0JLmhhc19jbGtzID0gdHJ1ZSwKIH07CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhIG10NzYyM19wd21fZGF0
YSA9IHsKIAkuZmFsbGJhY2tfbnB3bXMgPSA1LAogCS5wd200NV9maXh1cCA9IHRydWUsCi0JLmhh
c19jbGtzID0gdHJ1ZSwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9y
bV9kYXRhIG10NzYyOF9wd21fZGF0YSA9IHsKIAkuZmFsbGJhY2tfbnB3bXMgPSA0LAogCS5wd200
NV9maXh1cCA9IHRydWUsCi0JLmhhc19jbGtzID0gZmFsc2UsCiB9OwogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBtdGtfcHdtX29mX21hdGNoW10gPSB7Ci0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRp
YXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
