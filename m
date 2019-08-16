Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25DF902DF
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 15:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYR5zQ9CIkd8XY0YErTDxp2B6UG61Ujmi/ud37LTEhA=; b=KBxGUlx8AVET3x
	fiMlMroNLIBlCIHVilW9s14AB7gPd7NTvFgu26X4j3ZxdzjMFk7bPxQQMZK9SzJhYY7CsetS4G3A2
	hNyFjVhaJYrcivBNIGyZeVQ8QHaovKXKJaW1MoYhMC6N2W23wwwdIyHaonRQTi+4MCev41PFC0E7u
	Xsn15JJTb39XcGo1EVN8FbFcQHSiziBD1aPg+gQOHjm0I9VLziQDLkeparcKovKcMvECX87ssSW9O
	vzZazYwFi7Wdkb0jdy26xILuW74CF5NTvskUi0L5r6ySTEWbrtFHEz7+pZ7o5KYNm29wd63T3ji3N
	xnzuM/rOFU/EVJ0AJm5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycCo-0000V8-DD; Fri, 16 Aug 2019 13:23:46 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hycCg-0000SA-5f
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 13:23:41 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id F1CFDA0462;
 Fri, 16 Aug 2019 15:23:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id PHw5EQY0IY8n; Fri, 16 Aug 2019 15:23:28 +0200 (CEST)
From: Stefan Roese <sr@denx.de>
To: netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH net-next 3/4 v3] net: ethernet: mediatek: Rename
 NEXT_RX_DESP_IDX to NEXT_DESP_IDX
Date: Fri, 16 Aug 2019 15:23:24 +0200
Message-Id: <20190816132325.28426-3-sr@denx.de>
In-Reply-To: <20190816132325.28426-1-sr@denx.de>
References: <20190816132325.28426-1-sr@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_062338_370408_19F8F0F8 
X-CRM114-Status: GOOD (  13.51  )
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

UmVuYW1lIHRoZSBORVhUX1JYX0RFU1BfSURYIG1hY3JvIHRvIE5FWFRfREVTUF9JRFgsIHNvIHRo
YXQgaXQgYmV0dGVyCmNhbiBiZSB1c2VkIGZvciBUWCBvcHMgYXMgd2VsbC4gVGhpcyB3aWxsIGJl
IHVzZWQgaW4gdGhlIHVwY29taW5nCk1UNzYyOC84OCBzdXBwb3J0IChzYW1lIGZ1bmN0aW9uYWxp
dHkgZm9yIFJYIGFuZCBUWCBpbiB0aGlzIG1hY3JvKS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBS
b2VzZSA8c3JAZGVueC5kZT4KQ2M6IFJlbsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJjZUB2ZG9yc3Qu
Y29tPgpDYzogRGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+CkNjOiBTZWFuIFdh
bmcgPHNlYW4ud2FuZ0BtZWRpYXRlay5jb20+CkNjOiBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3pl
bi5vcmc+Ci0tLQp2MzoKLSBObyBjaGFuZ2UKCnYyOgotIE5ldyBwYXRjaAoKIGRyaXZlcnMvbmV0
L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgfCA0ICsrLS0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVk
aWF0ZWsvbXRrX2V0aF9zb2MuYwppbmRleCBiZWUyY2RjYTY2ZTcuLmQ5OTc4MTc0Yjk2YSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYworKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCkBAIC05MDMsNyAr
OTAzLDcgQEAgc3RhdGljIHN0cnVjdCBtdGtfcnhfcmluZyAqbXRrX2dldF9yeF9yaW5nKHN0cnVj
dCBtdGtfZXRoICpldGgpCiAKIAlmb3IgKGkgPSAwOyBpIDwgTVRLX01BWF9SWF9SSU5HX05VTTsg
aSsrKSB7CiAJCXJpbmcgPSAmZXRoLT5yeF9yaW5nW2ldOwotCQlpZHggPSBORVhUX1JYX0RFU1Bf
SURYKHJpbmctPmNhbGNfaWR4LCByaW5nLT5kbWFfc2l6ZSk7CisJCWlkeCA9IE5FWFRfREVTUF9J
RFgocmluZy0+Y2FsY19pZHgsIHJpbmctPmRtYV9zaXplKTsKIAkJaWYgKHJpbmctPmRtYVtpZHhd
LnJ4ZDIgJiBSWF9ETUFfRE9ORSkgewogCQkJcmluZy0+Y2FsY19pZHhfdXBkYXRlID0gdHJ1ZTsK
IAkJCXJldHVybiByaW5nOwpAQCAtOTUyLDcgKzk1Miw3IEBAIHN0YXRpYyBpbnQgbXRrX3BvbGxf
cngoc3RydWN0IG5hcGlfc3RydWN0ICpuYXBpLCBpbnQgYnVkZ2V0LAogCQlpZiAodW5saWtlbHko
IXJpbmcpKQogCQkJZ290byByeF9kb25lOwogCi0JCWlkeCA9IE5FWFRfUlhfREVTUF9JRFgocmlu
Zy0+Y2FsY19pZHgsIHJpbmctPmRtYV9zaXplKTsKKwkJaWR4ID0gTkVYVF9ERVNQX0lEWChyaW5n
LT5jYWxjX2lkeCwgcmluZy0+ZG1hX3NpemUpOwogCQlyeGQgPSAmcmluZy0+ZG1hW2lkeF07CiAJ
CWRhdGEgPSByaW5nLT5kYXRhW2lkeF07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L21lZGlhdGVrL210a19ldGhfc29jLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfZXRoX3NvYy5oCmluZGV4IDA4OGUyYmM2MjFmNy4uNTU2NjQ0ZjI4ZWFlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oCisrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKQEAgLTM5LDcgKzM5LDcg
QEAKIAkJCQkgTkVUSUZfRl9TRyB8IE5FVElGX0ZfVFNPIHwgXAogCQkJCSBORVRJRl9GX1RTTzYg
fCBcCiAJCQkJIE5FVElGX0ZfSVBWNl9DU1VNKQotI2RlZmluZSBORVhUX1JYX0RFU1BfSURYKFgs
IFkpCSgoKFgpICsgMSkgJiAoKFkpIC0gMSkpCisjZGVmaW5lIE5FWFRfREVTUF9JRFgoWCwgWSkJ
KCgoWCkgKyAxKSAmICgoWSkgLSAxKSkKIAogI2RlZmluZSBNVEtfTUFYX1JYX1JJTkdfTlVNCTQK
ICNkZWZpbmUgTVRLX0hXX0xST19ETUFfU0laRQk4Ci0tIAoyLjIyLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5n
IGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
