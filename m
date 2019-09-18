Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88446B6033
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 11:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpE72fxjAW1LrqrPwIwVDQQX9zZoS9JxrpM6rEGEwyo=; b=l02ZYBAuq0zxAs
	1Su6ZBfR+NqWZvQ40FKXhhRlSU9svMyTZsqj4hlMf/DZqbRLYbILja2jKIOpbOM/UXS18IHEhIWo4
	u1mCbrO8PA94lfSOWrEERLGa8YeMoVhrCfcJ/SPiDXMktlyIXV2arEJWMcPKe6IgEHmQLBS0Evwif
	Iilcz/0tAeI9ze2ZudY/fCdwQfz9PGWZZFMue6dGBsulKMY6S32wUcfHLvE6zxaRhUA8kOByhT8yg
	tSz0dB/e+RekUKPwpwYfWoZp9aEdSiuExkQUCI2sfxdRYdX5WoYf++RK5GRb7n6TDGrYQB+jlSp7r
	kIvCOtKZ6ZmXu1tKbnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWHr-0005F8-S4; Wed, 18 Sep 2019 09:30:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWHp-0004dr-45
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 09:30:10 +0000
X-UUID: 4adf51ce99274af095a03553f4219164-20190918
X-UUID: 4adf51ce99274af095a03553f4219164-20190918
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2118671641; Wed, 18 Sep 2019 01:29:56 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 02:29:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 17:29:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 17:29:55 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v8 01/11] pwm: mediatek: add a property "num-pwms"
Date: Wed, 18 Sep 2019 17:28:49 +0800
Message-ID: <1568798939-16038-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568798939-16038-1-git-send-email-sam.shih@mediatek.com>
References: <1568798939-16038-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_023009_174198_2778D426 
X-CRM114-Status: GOOD (  13.34  )
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

RnJvbTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgoKVGhpcyBhZGRzIGEgcHJv
cGVydHkgIm51bS1wd21zIiB0byBhdm9pZCBoYXZpbmcgYW4gZW5kbGVzcwpsaXN0IG9mIGNvbXBh
dGlibGVzIHdpdGggbm8gZGlmZmVyZW5jZXMgZm9yIHRoZSBzYW1lIGRyaXZlci4KClNpZ25lZC1v
ZmYtYnk6IFJ5ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KU2lnbmVkLW9mZi1ieTog
U2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVrLmNvbT4KUmV2aWV3ZWQtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpDaGFuZ2VzIHNpbmNl
IHY2OgpBZGQgYSBSZXZpZXdlZC1ieSB0YWcKCkNoYW5nZXMgc2luY2UgdjU6CkNoZWNrIG51bS1w
d21zIHZhbHVlIGlzIG5vIG1vcmUgdGhhbiBNVEtfQ0xLX01BWCAtIDIgKE1BSU4gKyBUT1ApCgpD
aGFuZ2VzIHNpbmNlIHY0OgpGb2xsb3cgcmV2aWV3ZXIncyBjb21tZW50czoKTW92ZSB0aGUgY2hh
bmdlcyBvZiBkcm9waW5nIHRoZSBjaGVjayBmb3Igb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhIHJl
dHVybmluZyBub24tTlVMTCB0byBuZXh0IHBhdGNoCgoKLS0tCiBkcml2ZXJzL3B3bS9wd20tbWVk
aWF0ZWsuYyB8IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYwpp
bmRleCBlYjY2NzRjZTk5NWYuLmUyMTRmNGY1NzEwNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20v
cHdtLW1lZGlhdGVrLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMKQEAgLTU1LDcg
KzU1LDcgQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBtdGtfcHdtX2Nsa19uYW1lW01US19D
TEtfTUFYXSA9IHsKIH07CiAKIHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgewotCXVuc2ln
bmVkIGludCBudW1fcHdtczsKKwl1bnNpZ25lZCBpbnQgZmFsbGJhY2tfbnB3bXM7CiAJYm9vbCBw
d200NV9maXh1cDsKIAlib29sIGhhc19jbGtzOwogfTsKQEAgLTIyNyw5ICsyMjcsMTAgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwd21fb3BzIG10a19wd21fb3BzID0gewogc3RhdGljIGludCBtdGtf
cHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJY29uc3Qgc3RydWN0
IG10a19wd21fcGxhdGZvcm1fZGF0YSAqZGF0YTsKKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0g
cGRldi0+ZGV2Lm9mX25vZGU7CiAJc3RydWN0IG10a19wd21fY2hpcCAqcGM7CiAJc3RydWN0IHJl
c291cmNlICpyZXM7Ci0JdW5zaWduZWQgaW50IGk7CisJdW5zaWduZWQgaW50IGksIG5wd21zOwog
CWludCByZXQ7CiAKIAlwYyA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2YoKnBjKSwg
R0ZQX0tFUk5FTCk7CkBAIC0yNDYsNyArMjQ3LDI2IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChJU19FUlIocGMtPnJlZ3MpKQog
CQlyZXR1cm4gUFRSX0VSUihwYy0+cmVncyk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgZGF0YS0+bnVt
X3B3bXMgKyAyICYmIHBjLT5zb2MtPmhhc19jbGtzOyBpKyspIHsKKwlyZXQgPSBvZl9wcm9wZXJ0
eV9yZWFkX3UzMihucCwgIm51bS1wd21zIiwgJm5wd21zKTsKKwlpZiAocmV0IDwgMCkgeworCQkv
KiBJdCdzIGRlcHJlY2F0ZWQsIHdlIHNob3VsZCBzcGVjaWZ5IG51bV9wd21zIHZpYSBEVCBub3cu
ICovCisJCWlmIChwYy0+c29jLT5mYWxsYmFja19ucHdtcykgeworCQkJbnB3bXMgPSBwYy0+c29j
LT5mYWxsYmFja19ucHdtczsKKwkJCWRldl93YXJuKCZwZGV2LT5kZXYsICJEVCBpcyBvdXRkYXRl
ZCwgcGxlYXNlIHVwZGF0ZSBpdFxuIik7CisJCX0gZWxzZSB7CisJCQlkZXZfZXJyKCZwZGV2LT5k
ZXYsICJmYWlsZWQgdG8gZ2V0IG51bWJlciBvZiBQV01zXG4iKTsKKwkJCXJldHVybiByZXQ7CisJ
CX0KKwl9CisKKwkvKiBNQUlOICsgVE9QICsgTlBXTSA8IE1US19DTEtfTUFYICovCisJaWYgKChu
cHdtcyArIDIpID4gTVRLX0NMS19NQVgpIHsKKwkJZGV2X3dhcm4oJnBkZXYtPmRldiwgIm51bWJl
ciBvZiBQV01zIGlzIGxhcmdlciB0aGFuICVkXG4iLAorCQkJIE1US19DTEtfTUFYIC0gMik7CisJ
CW5wd21zID0gTVRLX0NMS19NQVggLSAyOworCX0KKworCWZvciAoaSA9IDA7IGkgPCBucHdtcyAr
IDIgJiYgcGMtPnNvYy0+aGFzX2Nsa3M7IGkrKykgewogCQlwYy0+Y2xrc1tpXSA9IGRldm1fY2xr
X2dldCgmcGRldi0+ZGV2LCBtdGtfcHdtX2Nsa19uYW1lW2ldKTsKIAkJaWYgKElTX0VSUihwYy0+
Y2xrc1tpXSkpIHsKIAkJCWRldl9lcnIoJnBkZXYtPmRldiwgImNsb2NrOiAlcyBmYWlsOiAlbGRc
biIsCkBAIC0yNjAsNyArMjgwLDcgQEAgc3RhdGljIGludCBtdGtfcHdtX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcGMtPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKIAlwYy0+
Y2hpcC5vcHMgPSAmbXRrX3B3bV9vcHM7CiAJcGMtPmNoaXAuYmFzZSA9IC0xOwotCXBjLT5jaGlw
Lm5wd20gPSBkYXRhLT5udW1fcHdtczsKKwlwYy0+Y2hpcC5ucHdtID0gbnB3bXM7CiAKIAlyZXQg
PSBwd21jaGlwX2FkZCgmcGMtPmNoaXApOwogCWlmIChyZXQgPCAwKSB7CkBAIC0yNzksMjUgKzI5
OSwyNSBAQCBzdGF0aWMgaW50IG10a19wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhIG10
MjcxMl9wd21fZGF0YSA9IHsKLQkubnVtX3B3bXMgPSA4LAorCS5mYWxsYmFja19ucHdtcyA9IDgs
CiAJLnB3bTQ1X2ZpeHVwID0gZmFsc2UsCiAJLmhhc19jbGtzID0gdHJ1ZSwKIH07CiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhIG10NzYyMl9wd21fZGF0YSA9IHsK
LQkubnVtX3B3bXMgPSA2LAorCS5mYWxsYmFja19ucHdtcyA9IDYsCiAJLnB3bTQ1X2ZpeHVwID0g
ZmFsc2UsCiAJLmhhc19jbGtzID0gdHJ1ZSwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRr
X3B3bV9wbGF0Zm9ybV9kYXRhIG10NzYyM19wd21fZGF0YSA9IHsKLQkubnVtX3B3bXMgPSA1LAor
CS5mYWxsYmFja19ucHdtcyA9IDUsCiAJLnB3bTQ1X2ZpeHVwID0gdHJ1ZSwKIAkuaGFzX2Nsa3Mg
PSB0cnVlLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEg
bXQ3NjI4X3B3bV9kYXRhID0gewotCS5udW1fcHdtcyA9IDQsCisJLmZhbGxiYWNrX25wd21zID0g
NCwKIAkucHdtNDVfZml4dXAgPSB0cnVlLAogCS5oYXNfY2xrcyA9IGZhbHNlLAogfTsKLS0gCjIu
MTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVk
aWF0ZWsK
