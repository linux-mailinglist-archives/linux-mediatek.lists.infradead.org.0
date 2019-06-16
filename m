Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C36447657
	for <lists+linux-mediatek@lfdr.de>; Sun, 16 Jun 2019 20:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0TlWoO/ZeJutWod18pdF/YNr+G3BvDT9siKLpdPKwQ=; b=g/BVmd61hjfPb7
	XFG1kkHQaafJJt1pdb5MKyDsfObVWR2UQEW9Z+hRideiyAeWb6Aycck3Wf1zTho0ZQ7bUMAXCTLX7
	1IYhLZX2rNcyg5Opkd/M4FCcuuRpDvuskHvZDTh4pCmcotINWdaYcqP7hSqu+8vZmr11yF3VHrIFW
	v2fhrf2qnbpVKcj3sNn2ZzYs0Yae5HenGe/706yrsOTJFSWCUw+O9EEa25LfJERiGSpilR8qPaukM
	tLggtL3lgO0egCzxT/tHEtzKxqO6hchUiEKtFMVOoKeu6Qd+dWYk5dwV26D7ZUUxxDrz9YYOkysa7
	j5mS1LgK1t67DXemFSUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZlf-0003qa-UC; Sun, 16 Jun 2019 18:20:39 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZlY-0003ou-U8
 for linux-mediatek@lists.infradead.org; Sun, 16 Jun 2019 18:20:34 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id F2C1160743;
 Sun, 16 Jun 2019 20:20:29 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="FN0hLvbF"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id B867D1C65C75;
 Sun, 16 Jun 2019 20:20:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com B867D1C65C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1560709229;
 bh=FVz7Hn4FLBbfcWH9mwHn/c+q2RITenYFgIKX1MKhYCQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FN0hLvbFuwlQgK6xPtWy5fqR54Ff84xdsrphIIXG+WUQ4QJW72tqJF6p8YfBf+aJ7
 3GW2x6uBRW9ejmGind7x0drMPvLDJ0NKrSbxj4svV54M9YuSeUm3pIMUjJK+J2YzCc
 1TnUt1XpdxYQworIBPiKx/+Yrm7N9t/cAHDwy5DteKdYG6VFyqHImr+By1CxmiG2Pg
 AWwkbHe7zuowI7rpLBqhGAF8c8tfoGXcbmrWcwMaXavwRp4NfUsCrV326WThnk+JH5
 LIgLQ7g6/C3PCQsdxd/Y7+AduwmUIMrs1ZiVbY+rVS5Chz0mUBTMzhKumHFBQbZVMT
 xFVogJiQQt5Ww==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [PATCH net-next 2/2] net: dsa: mt7530: Add MT7621 TRGMII mode support
Date: Sun, 16 Jun 2019 20:20:10 +0200
Message-Id: <20190616182010.18778-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190616182010.18778-1-opensource@vdorst.com>
References: <20190616182010.18778-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_112033_138185_0C89D680 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TVQ3NjIxIGludGVybmFsIE1UNzUzMCBzd2l0Y2ggYWxzbyBzdXBwb3J0cyBUUkdNSUkgbW9kZS4K
VFJHTUlJIHNwZWVkIGlzIDEyMDBNQml0LgoKU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFuIERvcnN0
IDxvcGVuc291cmNlQHZkb3JzdC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZHNhL210NzUzMC5jIHwg
MTUgKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgYi9kcml2
ZXJzL25ldC9kc2EvbXQ3NTMwLmMKaW5kZXggYzdkMzUyZGE1NDQ4Li44OGRlNGU4ODA0MTcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuYworKysgYi9kcml2ZXJzL25ldC9kc2Ev
bXQ3NTMwLmMKQEAgLTQzNSwxMSArNDM1LDIwIEBAIG10NzUzMF9wYWRfY2xrX3NldHVwKHN0cnVj
dCBkc2Ffc3dpdGNoICpkcywgaW50IG1vZGUpCiAJCXRyZ2ludCA9IDA7CiAJCW5jcG8xID0gMHgw
YzgwOwogCQlzc2NfZGVsdGEgPSAweDg3OworCisJCS8qIFBvcnQgNiBkZWxheSBzZXR0aW5ncyBS
R01JSSBjZW50cmFsIGFsaWduICovCisJCW10NzUzMF9ybXcocHJpdiwgTVQ3NTMwX1RSR01JSV9U
WENUUkwsIEJJVCgzMCkgfCBCSVQoMjgpLCAwKTsKKwkJbXQ3NTMwX3dyaXRlKHByaXYsIE1UNzUz
MF9UUkdNSUlfVENLX0NUUkwsIDB4MDg1NSk7CiAJCWJyZWFrOwogCWNhc2UgUEhZX0lOVEVSRkFD
RV9NT0RFX1RSR01JSToKIAkJdHJnaW50ID0gMTsKLQkJbmNwbzEgPSAweDE0MDA7CisJCS8qIFBM
TCBmcmVxdWVuY3k6IE1UNzYyMSAxNTBNSHosIG90aGVyIDE2Mi41TUh6ICovCisJCW5jcG8xID0g
KHByaXYtPmlkID09IElEX01UNzYyMSA/IDB4MDc4MCA6IDB4MTQwMCk7CiAJCXNzY19kZWx0YSA9
IDB4NTc7CisKKwkJLyogUG9ydCA2IGRlbGF5IHNldHRpbmdzIFRSR01JSSBjZW50cmFsIGFsaWdu
ICovCisJCW10NzUzMF9ybXcocHJpdiwgTVQ3NTMwX1RSR01JSV9UWENUUkwsIDAsIEJJVCgzMCkp
OworCQltdDc1MzBfd3JpdGUocHJpdiwgTVQ3NTMwX1RSR01JSV9UQ0tfQ1RSTCwgMHgwMDU1KTsK
IAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJZGV2X2Vycihwcml2LT5kZXYsICJ4TUlJIG1vZGUgJWQg
bm90IHN1cHBvcnRlZFxuIiwgbW9kZSk7CkBAIC01MDcsNyArNTE2LDkgQEAgbXQ3NTMwX3BhZF9j
bGtfc2V0dXAoc3RydWN0IGRzYV9zd2l0Y2ggKmRzLCBpbnQgbW9kZSkKIAkJCW10NzUzMF9ybXco
cHJpdiwgTVQ3NTMwX1RSR01JSV9SRChpKSwKIAkJCQkgICBSRF9UQVBfTUFTSywgUkRfVEFQKDE2
KSk7CiAJZWxzZQotCQltdDc2MjNfdHJnbWlpX3NldChwcml2LCBHU1dfSU5URl9NT0RFLCBJTlRG
X01PREVfVFJHTUlJKTsKKwkJaWYgKHByaXYtPmlkICE9IElEX01UNzYyMSkKKwkJCW10NzYyM190
cmdtaWlfc2V0KHByaXYsIEdTV19JTlRGX01PREUsCisJCQkJCSAgSU5URl9NT0RFX1RSR01JSSk7
CiAKIAlyZXR1cm4gMDsKIH0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
