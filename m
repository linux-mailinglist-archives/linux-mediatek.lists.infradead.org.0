Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5B49BE00
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 15:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aj1VP6S91UQy2Zu09XQ++ToHvQIct3fVL6JcBMF7k3Y=; b=c6R9Mq5TO5ewiI
	2NOy0lyXfxfRGvhI6rHtXfaWvadoPvCtn5P07P6Kkr5SLq5+NuD2qd/npj4l6bBPUjo+RF4AB7ewn
	g38uBYI/TzdhO7y6fdcKdkSBT+lJuckjQE9kV0DZVRbY560PQ3MPS/gRzc21Zw9/NQ5uVvwC8XCCN
	JbrOyT1hKB7gRcHNSZSFVWtWA4Sa+JhWFXuLYju9v+mA8ybhrSo+ThwvTDRZLvs9RmkNgI5E/L4ly
	jZLrWCyIRdpkDaVXrQoGQkJphkW/CVWjeGEDcbXlDW23kUa2B4t2TZne9sBw59qqlIUsPPyY/Q5mL
	pSQLWKMd2ewCnUwBkWMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1W6o-0005tc-Ez; Sat, 24 Aug 2019 13:29:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1W6X-0005hE-5c
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 13:29:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1W6P-0006OC-4U; Sat, 24 Aug 2019 15:29:09 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1W6L-0002FN-24; Sat, 24 Aug 2019 15:29:05 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 1/2] iommu: pass cell_count = -1 to of_for_each_phandle
 with cells_name
Date: Sat, 24 Aug 2019 15:28:45 +0200
Message-Id: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_062917_213997_2C7747D5 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Q3VycmVudGx5IG9mX2Zvcl9lYWNoX3BoYW5kbGUgaWdub3JlcyB0aGUgY2VsbF9jb3VudCBwYXJh
bWV0ZXIgd2hlbiBhCmNlbGxzX25hbWUgaXMgZ2l2ZW4uIEkgaW50ZW5kIHRvIGNoYW5nZSB0aGF0
IGFuZCBsZXQgdGhlIGl0ZXJhdG9yIGZhbGwKYmFjayB0byBhIG5vbi1uZWdhdGl2ZSBjZWxsX2Nv
dW50IGlmIHRoZSBjZWxsc19uYW1lIHByb3BlcnR5IGlzIG1pc3NpbmcKaW4gdGhlIHJlZmVyZW5j
ZWQgbm9kZS4KClRvIG5vdCBjaGFuZ2UgaG93IGV4aXN0aW5nIG9mX2Zvcl9lYWNoX3BoYW5kbGUn
cyB1c2VycyBpdGVyYXRlLCBmaXggdGhlbQp0byBwYXNzIGNlbGxfY291bnQgPSAtMSB3aGVuIGFs
c28gY2VsbHNfbmFtZSBpcyBnaXZlbiB3aGljaCB5aWVsZHMgdGhlCmV4cGVjdGVkIGJlaGF2aW91
ciB3aXRoIGFuZCB3aXRob3V0IG15IGNoYW5nZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9pb21t
dS9hcm0tc21tdS5jICAgICB8IDIgKy0KIGRyaXZlcnMvaW9tbXUvbXRrX2lvbW11X3YxLmMgfCAy
ICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMgYi9kcml2ZXJzL2lvbW11L2FybS1z
bW11LmMKaW5kZXggNjQ5NzdjMTMxZWU2Li44MWI3NzM0NjU0YjMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvaW9tbXUvYXJtLXNtbXUuYworKysgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMKQEAgLTMz
Myw3ICszMzMsNyBAQCBzdGF0aWMgaW50IF9fZmluZF9sZWdhY3lfbWFzdGVyX3BoYW5kbGUoc3Ry
dWN0IGRldmljZSAqZGV2LCB2b2lkICpkYXRhKQogCWludCBlcnI7CiAKIAlvZl9mb3JfZWFjaF9w
aGFuZGxlKGl0LCBlcnIsIGRldi0+b2Zfbm9kZSwgIm1tdS1tYXN0ZXJzIiwKLQkJCSAgICAiI3N0
cmVhbS1pZC1jZWxscyIsIDApCisJCQkgICAgIiNzdHJlYW0taWQtY2VsbHMiLCAtMSkKIAkJaWYg
KGl0LT5ub2RlID09IG5wKSB7CiAJCQkqKHZvaWQgKiopZGF0YSA9IGRldjsKIAkJCXJldHVybiAx
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9tdGtfaW9tbXVfdjEuYyBiL2RyaXZlcnMvaW9t
bXUvbXRrX2lvbW11X3YxLmMKaW5kZXggYWJlZWFjNDg4MzcyLi42OGQxZGU3MGRlMGMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvaW9tbXUvbXRrX2lvbW11X3YxLmMKKysrIGIvZHJpdmVycy9pb21tdS9t
dGtfaW9tbXVfdjEuYwpAQCAtNDI2LDcgKzQyNiw3IEBAIHN0YXRpYyBpbnQgbXRrX2lvbW11X2Fk
ZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KQogCWludCBlcnI7CiAKIAlvZl9mb3JfZWFjaF9w
aGFuZGxlKCZpdCwgZXJyLCBkZXYtPm9mX25vZGUsICJpb21tdXMiLAotCQkJIiNpb21tdS1jZWxs
cyIsIDApIHsKKwkJCSIjaW9tbXUtY2VsbHMiLCAtMSkgewogCQlpbnQgY291bnQgPSBvZl9waGFu
ZGxlX2l0ZXJhdG9yX2FyZ3MoJml0LCBpb21tdV9zcGVjLmFyZ3MsCiAJCQkJCU1BWF9QSEFORExF
X0FSR1MpOwogCQlpb21tdV9zcGVjLm5wID0gb2Zfbm9kZV9nZXQoaXQubm9kZSk7Ci0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlh
dGVrCg==
