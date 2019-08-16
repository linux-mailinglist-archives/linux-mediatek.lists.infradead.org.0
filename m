Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9C1902E1
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 15:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+L9gaBJzRw2C5yp5ITjmYXamVomyG7MtkawCE0ynxE=; b=NRxrMiUBcij5gC
	lnRB5hsbWoGQjAUJ48ZpznUrwmrRM2TeNQ3L3SQE1bfBeyr0dzf7LUj8qTlkbRtr+kiWPToPlUlVU
	Zh6+AQ2duEyOdiGaQeSD0qx5Fbb9BYRrV2ELJejQcmJgpaS7Wt2y34PA/zFkzvNpxcQ7KxV6gXxf9
	N4yVO9LE+/42OdR6O/Iroq+VciUnbiaXHIohVDdvc05xEQ7NEbXn1/db/OEpmohEwTuuAPt9KM+GG
	phFUBCNpoqDD3/7G2mogaXUoCwLUMkaUoZVNZaRJS4XqbaQfzDWZSq02Lg+RGYCru4YGRgdsEeeFn
	5qkieSt+nDmkUYRyC9dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycCp-0000W4-Bf; Fri, 16 Aug 2019 13:23:47 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hycCg-0000S9-5m
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 13:23:42 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id D3FA2A166E;
 Fri, 16 Aug 2019 15:23:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id ZylTTHPGOGlm; Fri, 16 Aug 2019 15:23:27 +0200 (CEST)
From: Stefan Roese <sr@denx.de>
To: netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH net-next 2/4 v3] net: ethernet: mediatek: Rename
 MTK_QMTK_INT_STATUS to MTK_QDMA_INT_STATUS
Date: Fri, 16 Aug 2019 15:23:23 +0200
Message-Id: <20190816132325.28426-2-sr@denx.de>
In-Reply-To: <20190816132325.28426-1-sr@denx.de>
References: <20190816132325.28426-1-sr@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_062338_373460_3B8E99AC 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 Sean Wang <sean.wang@mediatek.com>, Daniel Golle <daniel@makrotopia.org>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Q3VycmVudGx5IGFsbCBRRE1BIHJlZ2lzdGVycyBhcmUgbmFtZWQgIk1US19RRE1BX2ZvbyIgaW4g
dGhpcyBkcml2ZXIKd2l0aCBvbmUgZXhjZXB0aW9uOiBNVEtfUU1US19JTlRfU1RBVFVTLiBUaGlz
IHBhdGNoIHJlbmFtZXMKTVRLX1FNVEtfSU5UX1NUQVRVUyB0byBNVEtfUURNQV9JTlRfU1RBVFVT
IHNvIHRoYXQgYWxsIG1hY3JvcyBmb2xsb3cKdGhpcyBydWxlLgoKU2lnbmVkLW9mZi1ieTogU3Rl
ZmFuIFJvZXNlIDxzckBkZW54LmRlPgpDYzogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZk
b3JzdC5jb20+CkNjOiBEYW5pZWwgR29sbGUgPGRhbmllbEBtYWtyb3RvcGlhLm9yZz4KQ2M6IFNl
YW4gV2FuZyA8c2Vhbi53YW5nQG1lZGlhdGVrLmNvbT4KQ2M6IEpvaG4gQ3Jpc3BpbiA8am9obkBw
aHJvemVuLm9yZz4KLS0tCnYzOgotIE5vIGNoYW5nZQoKdjI6Ci0gTmV3IHBhdGNoCgogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyB8IDggKysrKy0tLS0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggfCAyICstCiAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYwppbmRleCBkZGJmZmViNTcwMWIuLmJlZTJjZGNh
NjZlNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9z
b2MuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCkBA
IC0xMTIyLDExICsxMTIyLDExIEBAIHN0YXRpYyBpbnQgbXRrX25hcGlfdHgoc3RydWN0IG5hcGlf
c3RydWN0ICpuYXBpLCBpbnQgYnVkZ2V0KQogCWludCB0eF9kb25lID0gMDsKIAogCW10a19oYW5k
bGVfc3RhdHVzX2lycShldGgpOwotCW10a193MzIoZXRoLCBNVEtfVFhfRE9ORV9JTlQsIE1US19R
TVRLX0lOVF9TVEFUVVMpOworCW10a193MzIoZXRoLCBNVEtfVFhfRE9ORV9JTlQsIE1US19RRE1B
X0lOVF9TVEFUVVMpOwogCXR4X2RvbmUgPSBtdGtfcG9sbF90eChldGgsIGJ1ZGdldCk7CiAKIAlp
ZiAodW5saWtlbHkobmV0aWZfbXNnX2ludHIoZXRoKSkpIHsKLQkJc3RhdHVzID0gbXRrX3IzMihl
dGgsIE1US19RTVRLX0lOVF9TVEFUVVMpOworCQlzdGF0dXMgPSBtdGtfcjMyKGV0aCwgTVRLX1FE
TUFfSU5UX1NUQVRVUyk7CiAJCW1hc2sgPSBtdGtfcjMyKGV0aCwgTVRLX1FETUFfSU5UX01BU0sp
OwogCQlkZXZfaW5mbyhldGgtPmRldiwKIAkJCSAiZG9uZSB0eCAlZCwgaW50ciAweCUwOHgvMHgl
eFxuIiwKQEAgLTExMzYsNyArMTEzNiw3IEBAIHN0YXRpYyBpbnQgbXRrX25hcGlfdHgoc3RydWN0
IG5hcGlfc3RydWN0ICpuYXBpLCBpbnQgYnVkZ2V0KQogCWlmICh0eF9kb25lID09IGJ1ZGdldCkK
IAkJcmV0dXJuIGJ1ZGdldDsKIAotCXN0YXR1cyA9IG10a19yMzIoZXRoLCBNVEtfUU1US19JTlRf
U1RBVFVTKTsKKwlzdGF0dXMgPSBtdGtfcjMyKGV0aCwgTVRLX1FETUFfSU5UX1NUQVRVUyk7CiAJ
aWYgKHN0YXR1cyAmIE1US19UWF9ET05FX0lOVCkKIAkJcmV0dXJuIGJ1ZGdldDsKIApAQCAtMTc0
Nyw3ICsxNzQ3LDcgQEAgc3RhdGljIGlycXJldHVybl90IG10a19oYW5kbGVfaXJxKGludCBpcnEs
IHZvaWQgKl9ldGgpCiAJCQltdGtfaGFuZGxlX2lycV9yeChpcnEsIF9ldGgpOwogCX0KIAlpZiAo
bXRrX3IzMihldGgsIE1US19RRE1BX0lOVF9NQVNLKSAmIE1US19UWF9ET05FX0lOVCkgewotCQlp
ZiAobXRrX3IzMihldGgsIE1US19RTVRLX0lOVF9TVEFUVVMpICYgTVRLX1RYX0RPTkVfSU5UKQor
CQlpZiAobXRrX3IzMihldGgsIE1US19RRE1BX0lOVF9TVEFUVVMpICYgTVRLX1RYX0RPTkVfSU5U
KQogCQkJbXRrX2hhbmRsZV9pcnFfdHgoaXJxLCBfZXRoKTsKIAl9CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oCmluZGV4IGJhYjk0Zjc2M2UyYy4uMDg4ZTJi
YzYyMWY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRo
X3NvYy5oCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgK
QEAgLTIxMiw3ICsyMTIsNyBAQAogI2RlZmluZSBGQ19USFJFU19NSU4JCTB4NDQ0NAogCiAvKiBR
RE1BIEludGVycnVwdCBTdGF0dXMgUmVnaXN0ZXIgKi8KLSNkZWZpbmUgTVRLX1FNVEtfSU5UX1NU
QVRVUwkweDFBMTgKKyNkZWZpbmUgTVRLX1FETUFfSU5UX1NUQVRVUwkweDFBMTgKICNkZWZpbmUg
TVRLX1JYX0RPTkVfRExZCQlCSVQoMzApCiAjZGVmaW5lIE1US19SWF9ET05FX0lOVDMJQklUKDE5
KQogI2RlZmluZSBNVEtfUlhfRE9ORV9JTlQyCUJJVCgxOCkKLS0gCjIuMjIuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1h
aWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
