Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28285EBD7
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 20:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFzF6TQZmo+zzQ+KrS5r48WAvFnKqhemS0pDnavCm3I=; b=AZDzACCpUePZrj
	mrJyD89gH6aZ/QSp1AuKS18PeX+IGP+4ilEzm6Pd5JfkFuRzaEe/c4KNGuq8aggrZjczbx3x03LWz
	mF1J3NkCdFJ124aE3iACYq/5DwxVSlz72M2iG/4b05h3RE2vImfdQOhB84rkJ+TetUbnNChn6y4qK
	HCrvz7mNsBgPwSw74jS4KcWt1gYN6OswBPbGrFtXNdHZL3jhuxeCCSXuSFvZdWNza9yksnQlIH7Rp
	oH893G6VMQ4GGMOOSBcY4jD7tdvsIVWAlIF56niSzcpK9CGGuxTpgdBDKapRVVS1vtDnFh+Zu28K+
	GrKBsgfSPgyWxVYhoNnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikFU-0006vU-Iy; Wed, 03 Jul 2019 18:44:56 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hikFO-0006qk-Ny
 for linux-mediatek@lists.infradead.org; Wed, 03 Jul 2019 18:44:53 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 80B105FFEB;
 Wed,  3 Jul 2019 20:44:46 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="RVNsqyJj"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 366EA1CF14F6;
 Wed,  3 Jul 2019 20:44:46 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 366EA1CF14F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1562179486;
 bh=hxJWsmSkxYpQJrqKnqk3u8T+dtiNZjot3SQsJMrlmjQ=;
 h=From:To:Cc:Subject:Date:From;
 b=RVNsqyJjB6oHbWrBm+q0X0ViI2UNm6oo/cQHAYS13Fgg6nc4srYMBlwfnm4alNKWb
 une7RVaOZaXuJmmtbaiR2NEzFMYWQBHRhQQpGaFYbfSVQ+Vl2nnzztJvCi3B2uWDWU
 Z8qbtUJ228xF/pKDVU29M7QShTedfFwJKtFjvUI3Cxq7ANVsxjQeIjFdbaAppr3KSI
 hcMh2xtn+GcN05wWDBoyNKRP0X+slW1T0H4xR146K62weYoca6nmQNVj4BlO6wlEV0
 Wgm9yTJFHXdDN8387HnauO9+1HenNQghlrUlyvLsU8LcYyZzheDaDiyGCBxAnaW/J6
 90th4YMf2YZwg==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH net-next v2] net: ethernet: mediatek: Fix overlapping
 capability bits.
Date: Wed,  3 Jul 2019 20:42:04 +0200
Message-Id: <20190703184203.20137-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_114451_344352_138160F0 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mips@vger.kernel.org, frank-w@public-files.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Qm90aCBNVEtfVFJHTUlJX01UNzYyMV9DTEsgYW5kIE1US19QQVRIX0JJVCBhcmUgZGVmaW5lZCBh
cyBiaXQgMTAuCgpUaGlzIGNhbiBjYXVzZXMgaXNzdWVzIG9uIG5vbi1NVDc2MjEgZGV2aWNlcyB3
aGljaCBoYXMgdGhlCk1US19QQVRIX0JJVChNVEtfRVRIX1BBVEhfR01BQzFfUkdNSUkpIGFuZCBN
VEtfVFJHTUlJIGNhcGFiaWxpdHkgc2V0LgpUaGUgd3JvbmcgVFJHTUlJIHNldHVwIGNvZGUgY2Fu
IGJlIGV4ZWN1dGVkLiBUaGUgY3VycmVudCB3cm9uZ2x5IGV4ZWN1dGVkCmNvZGUgZG9lc27igJl0
IGRvIGFueSBoYXJtIG9uIE1UNzYyMyBhbmQgdGhlIFRSR01JSSBzZXR1cCBmb3IgdGhlIE1UNzYy
MwpTT0Mgc2lkZSBpcyBkb25lIGluIE1UNzUzMCBkcml2ZXIgU28gaXQgd2FzbuKAmXQgbm90aWNl
ZCBpbiB0aGUgdGVzdC4KCk1vdmUgYWxsIGNhcGFiaWxpdHkgYml0cyBpbiBvbmUgZW51bSBzbyB0
aGF0IHRoZXkgYXJlIGFsbCB1bmlxdWUgYW5kIGVhc3kKdG8gZXhwYW5kIGluIHRoZSBmdXR1cmUu
CgpCZWNhdXNlIG10a19ldGhfcGF0aCBlbnVtIGlzIG1lcmdlZCBpbiB0byBta3RfZXRoX2NhcGFi
aWxpdGllcywgdGhlCnZhcmlhYmxlIHBhdGggdmFsdWUgaXMgbm8gbG9uZ2VyIGJldHdlZW4gMCB0
byBudW1iZXIgb2YgcGF0aHMsCm10a19ldGhfcGF0aF9uYW1lIGNhbuKAmXQgYmUgdXNlZCBhbnlt
b3JlIGluIHRoaXMgZm9ybS4gQ29udmVydCB0aGUKbXRrX2V0aF9wYXRoX25hbWUgYXJyYXkgdG8g
YSBmdW5jdGlvbiB0byBsb29rdXAgdGhlIHBhdGhuYW1lLgoKVGhlIG9sZCBjb2RlIHdhbGtlZCB0
aHJ1IHRoZSBtdGtfZXRoX3BhdGggZW51bSwgd2hpY2ggaXMgYWxzbyBtZXJnZWQKd2l0aCBta3Rf
ZXRoX2NhcGFiaWxpdGllcy4gRXhwYW5kIGFycmF5IG10a19ldGhfbXV4YyBzbyBpdCBjYW4gc3Rv
cmUgdGhlCm5hbWUgYW5kIGNhcGFiaWxpdHkgYml0IG9mIHRoZSBtdXguIENvbnZlcnQgdGhlIGNv
ZGUgc28gaXQgY2FuIHdhbGsgdGhydQp0aGUgbXRrX2V0aF9tdXhjIGFycmF5LgoKRml4ZXM6IDhl
ZmFhNjUzYThhNSAoIm5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBBZGQgTVQ3NjIxIFRSR01JSSBt
b2RlCnN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VA
dmRvcnN0LmNvbT4KCnYxLT52MjoKLSBNb3ZlIGFsbCBjYXBhYmlsaXR5IGJpdHMgaW4gb25lIGVu
dW0sIHN1Z2dlc3RlZCBieSBXaWxsZW0gZGUgQnJ1aWpuCi0gQ29udmVydCB0aGUgbXRrX2V0aF9w
YXRoX25hbWUgYXJyYXkgdG8gYSBmdW5jdGlvbiB0byBsb29rdXAgdGhlIHBhdGhuYW1lCi0gRXhw
YW5kIGFycmF5IG10a19ldGhfbXV4YyBzbyBpdCBjYW4gYWxzbyBzdG9yZSB0aGUgbmFtZSBhbmQg
Y2FwYWJpbGl0eQogIGJpdCBvZiB0aGUgbXV4Ci0gVXBkYXRlZCBjb21taXQgbWVzc2FnZQotLS0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfcGF0aC5jIHwgIDgxICsrKysr
KysrLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuaCAgfCAx
MjkgKysrKysrKysrKy0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMjUgaW5zZXJ0aW9ucygr
KSwgODUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVk
aWF0ZWsvbXRrX2V0aF9wYXRoLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtf
ZXRoX3BhdGguYwppbmRleCA2MWY3MDVkOTQ1ZTUuLjdmMDU4ODBjZjllZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9wYXRoLmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9wYXRoLmMKQEAgLTEzLDE5ICsxMywzMiBA
QAogI2luY2x1ZGUgIm10a19ldGhfc29jLmgiCiAKIHN0cnVjdCBtdGtfZXRoX211eGMgewotCWlu
dCAoKnNldF9wYXRoKShzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQgcGF0aCk7CisJY29uc3QgY2hh
cgkqbmFtZTsKKwlpbnQJCWNhcF9iaXQ7CisJaW50CQkoKnNldF9wYXRoKShzdHJ1Y3QgbXRrX2V0
aCAqZXRoLCBpbnQgcGF0aCk7CiB9OwogCi1zdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG10a19l
dGhfbXV4X25hbWVbXSA9IHsKLQkibXV4X2dkbTFfdG9fZ21hYzFfZXN3IiwgIm11eF9nbWFjMl9n
bWFjMF90b19nZXBoeSIsCi0JIm11eF91M19nbWFjMl90b19xcGh5IiwgIm11eF9nbWFjMV9nbWFj
Ml90b19zZ21paV9yZ21paSIsCi0JIm11eF9nbWFjMTJfdG9fZ2VwaHlfc2dtaWkiLAotfTsKLQot
c3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBtdGtfZXRoX3BhdGhfbmFtZVtdID0gewotCSJnbWFj
MV9yZ21paSIsICJnbWFjMV90cmdtaWkiLCAiZ21hYzFfc2dtaWkiLCAiZ21hYzJfcmdtaWkiLAot
CSJnbWFjMl9zZ21paSIsICJnbWFjMl9nZXBoeSIsICJnZG0xX2VzdyIsCi19Oworc3RhdGljIGNv
bnN0IGNoYXIgKm10a19ldGhfcGF0aF9uYW1lKGludCBwYXRoKQoreworCXN3aXRjaCAocGF0aCkg
eworCWNhc2UgTVRLX0VUSF9QQVRIX0dNQUMxX1JHTUlJOgorCQlyZXR1cm4gImdtYWMxX3JnbWlp
IjsKKwljYXNlIE1US19FVEhfUEFUSF9HTUFDMV9UUkdNSUk6CisJCXJldHVybiAiZ21hYzFfdHJn
bWlpIjsKKwljYXNlIE1US19FVEhfUEFUSF9HTUFDMV9TR01JSToKKwkJcmV0dXJuICJnbWFjMV9z
Z21paSI7CisJY2FzZSBNVEtfRVRIX1BBVEhfR01BQzJfUkdNSUk6CisJCXJldHVybiAiZ21hYzJf
cmdtaWkiOworCWNhc2UgTVRLX0VUSF9QQVRIX0dNQUMyX1NHTUlJOgorCQlyZXR1cm4gImdtYWMy
X3NnbWlpIjsKKwljYXNlIE1US19FVEhfUEFUSF9HTUFDMl9HRVBIWToKKwkJcmV0dXJuICJnbWFj
Ml9nZXBoeSI7CisJY2FzZSBNVEtfRVRIX1BBVEhfR0RNMV9FU1c6CisJCXJldHVybiAiZ2RtMV9l
c3ciOworCWRlZmF1bHQ6CisJCXJldHVybiAidW5rbm93biBwYXRoIjsKKwl9Cit9CiAKIHN0YXRp
YyBpbnQgc2V0X211eF9nZG0xX3RvX2dtYWMxX2VzdyhzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQg
cGF0aCkKIHsKQEAgLTUzLDcgKzY2LDcgQEAgc3RhdGljIGludCBzZXRfbXV4X2dkbTFfdG9fZ21h
YzFfZXN3KHN0cnVjdCBtdGtfZXRoICpldGgsIGludCBwYXRoKQogCX0KIAogCWRldl9kYmcoZXRo
LT5kZXYsICJwYXRoICVzIGluICVzIHVwZGF0ZWQgPSAlZFxuIiwKLQkJbXRrX2V0aF9wYXRoX25h
bWVbcGF0aF0sIF9fZnVuY19fLCB1cGRhdGVkKTsKKwkJbXRrX2V0aF9wYXRoX25hbWUocGF0aCks
IF9fZnVuY19fLCB1cGRhdGVkKTsKIAogCXJldHVybiAwOwogfQpAQCAtNzYsNyArODksNyBAQCBz
dGF0aWMgaW50IHNldF9tdXhfZ21hYzJfZ21hYzBfdG9fZ2VwaHkoc3RydWN0IG10a19ldGggKmV0
aCwgaW50IHBhdGgpCiAJCXJlZ21hcF91cGRhdGVfYml0cyhldGgtPmluZnJhLCBJTkZSQV9NSVND
MiwgR0VQSFlfTUFDX1NFTCwgdmFsKTsKIAogCWRldl9kYmcoZXRoLT5kZXYsICJwYXRoICVzIGlu
ICVzIHVwZGF0ZWQgPSAlZFxuIiwKLQkJbXRrX2V0aF9wYXRoX25hbWVbcGF0aF0sIF9fZnVuY19f
LCB1cGRhdGVkKTsKKwkJbXRrX2V0aF9wYXRoX25hbWUocGF0aCksIF9fZnVuY19fLCB1cGRhdGVk
KTsKIAogCXJldHVybiAwOwogfQpAQCAtOTksNyArMTEyLDcgQEAgc3RhdGljIGludCBzZXRfbXV4
X3UzX2dtYWMyX3RvX3FwaHkoc3RydWN0IG10a19ldGggKmV0aCwgaW50IHBhdGgpCiAJCXJlZ21h
cF91cGRhdGVfYml0cyhldGgtPmluZnJhLCBJTkZSQV9NSVNDMiwgQ09fUVBIWV9TRUwsIHZhbCk7
CiAKIAlkZXZfZGJnKGV0aC0+ZGV2LCAicGF0aCAlcyBpbiAlcyB1cGRhdGVkID0gJWRcbiIsCi0J
CW10a19ldGhfcGF0aF9uYW1lW3BhdGhdLCBfX2Z1bmNfXywgdXBkYXRlZCk7CisJCW10a19ldGhf
cGF0aF9uYW1lKHBhdGgpLCBfX2Z1bmNfXywgdXBkYXRlZCk7CiAKIAlyZXR1cm4gMDsKIH0KQEAg
LTEzNyw3ICsxNTAsNyBAQCBzdGF0aWMgaW50IHNldF9tdXhfZ21hYzFfZ21hYzJfdG9fc2dtaWlf
cmdtaWkoc3RydWN0IG10a19ldGggKmV0aCwgaW50IHBhdGgpCiAJCQkJICAgU1lTQ0ZHMF9TR01J
SV9NQVNLLCB2YWwpOwogCiAJZGV2X2RiZyhldGgtPmRldiwgInBhdGggJXMgaW4gJXMgdXBkYXRl
ZCA9ICVkXG4iLAotCQltdGtfZXRoX3BhdGhfbmFtZVtwYXRoXSwgX19mdW5jX18sIHVwZGF0ZWQp
OworCQltdGtfZXRoX3BhdGhfbmFtZShwYXRoKSwgX19mdW5jX18sIHVwZGF0ZWQpOwogCiAJcmV0
dXJuIDA7CiB9CkBAIC0xNjgsMjYgKzE4MSw0MiBAQCBzdGF0aWMgaW50IHNldF9tdXhfZ21hYzEy
X3RvX2dlcGh5X3NnbWlpKHN0cnVjdCBtdGtfZXRoICpldGgsIGludCBwYXRoKQogCQkJCSAgIFNZ
U0NGRzBfU0dNSUlfTUFTSywgdmFsKTsKIAogCWRldl9kYmcoZXRoLT5kZXYsICJwYXRoICVzIGlu
ICVzIHVwZGF0ZWQgPSAlZFxuIiwKLQkJbXRrX2V0aF9wYXRoX25hbWVbcGF0aF0sIF9fZnVuY19f
LCB1cGRhdGVkKTsKKwkJbXRrX2V0aF9wYXRoX25hbWUocGF0aCksIF9fZnVuY19fLCB1cGRhdGVk
KTsKIAogCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19ldGhfbXV4YyBt
dGtfZXRoX211eGNbXSA9IHsKLQl7IC5zZXRfcGF0aCA9IHNldF9tdXhfZ2RtMV90b19nbWFjMV9l
c3csIH0sCi0JeyAuc2V0X3BhdGggPSBzZXRfbXV4X2dtYWMyX2dtYWMwX3RvX2dlcGh5LCB9LAot
CXsgLnNldF9wYXRoID0gc2V0X211eF91M19nbWFjMl90b19xcGh5LCB9LAotCXsgLnNldF9wYXRo
ID0gc2V0X211eF9nbWFjMV9nbWFjMl90b19zZ21paV9yZ21paSwgfSwKLQl7IC5zZXRfcGF0aCA9
IHNldF9tdXhfZ21hYzEyX3RvX2dlcGh5X3NnbWlpLCB9CisJeworCQkubmFtZSA9ICJtdXhfZ2Rt
MV90b19nbWFjMV9lc3ciLAorCQkuY2FwX2JpdCA9IE1US19FVEhfTVVYX0dETTFfVE9fR01BQzFf
RVNXLAorCQkuc2V0X3BhdGggPSBzZXRfbXV4X2dkbTFfdG9fZ21hYzFfZXN3LAorCX0sIHsKKwkJ
Lm5hbWUgPSAibXV4X2dtYWMyX2dtYWMwX3RvX2dlcGh5IiwKKwkJLmNhcF9iaXQgPSBNVEtfRVRI
X01VWF9HTUFDMl9HTUFDMF9UT19HRVBIWSwKKwkJLnNldF9wYXRoID0gc2V0X211eF9nbWFjMl9n
bWFjMF90b19nZXBoeSwKKwl9LCB7CisJCS5uYW1lID0gIm11eF91M19nbWFjMl90b19xcGh5IiwK
KwkJLmNhcF9iaXQgPSBNVEtfRVRIX01VWF9VM19HTUFDMl9UT19RUEhZLAorCQkuc2V0X3BhdGgg
PSBzZXRfbXV4X3UzX2dtYWMyX3RvX3FwaHksCisJfSwgeworCQkubmFtZSA9ICJtdXhfZ21hYzFf
Z21hYzJfdG9fc2dtaWlfcmdtaWkiLAorCQkuY2FwX2JpdCA9IE1US19FVEhfTVVYX0dNQUMxX0dN
QUMyX1RPX1NHTUlJX1JHTUlJLAorCQkuc2V0X3BhdGggPSBzZXRfbXV4X2dtYWMxX2dtYWMyX3Rv
X3NnbWlpX3JnbWlpLAorCX0sIHsKKwkJLm5hbWUgPSAibXV4X2dtYWMxMl90b19nZXBoeV9zZ21p
aSIsCisJCS5jYXBfYml0ID0gTVRLX0VUSF9NVVhfR01BQzEyX1RPX0dFUEhZX1NHTUlJLAorCQku
c2V0X3BhdGggPSBzZXRfbXV4X2dtYWMxMl90b19nZXBoeV9zZ21paSwKKwl9LAogfTsKIAogc3Rh
dGljIGludCBtdGtfZXRoX211eF9zZXR1cChzdHJ1Y3QgbXRrX2V0aCAqZXRoLCBpbnQgcGF0aCkK
IHsKIAlpbnQgaSwgZXJyID0gMDsKIAotCWlmICghTVRLX0hBU19DQVBTKGV0aC0+c29jLT5jYXBz
LCBNVEtfUEFUSF9CSVQocGF0aCkpKSB7CisJaWYgKCFNVEtfSEFTX0NBUFMoZXRoLT5zb2MtPmNh
cHMsIHBhdGgpKSB7CiAJCWRldl9lcnIoZXRoLT5kZXYsICJwYXRoICVzIGlzbid0IHN1cHBvcnQg
b24gdGhlIFNvQ1xuIiwKLQkJCW10a19ldGhfcGF0aF9uYW1lW3BhdGhdKTsKKwkJCW10a19ldGhf
cGF0aF9uYW1lKHBhdGgpKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCkBAIC0xOTUsMTQgKzIy
NCwxNCBAQCBzdGF0aWMgaW50IG10a19ldGhfbXV4X3NldHVwKHN0cnVjdCBtdGtfZXRoICpldGgs
IGludCBwYXRoKQogCQlyZXR1cm4gMDsKIAogCS8qIFNldHVwIE1VWCBpbiBwYXRoIGZhYnJpYyAq
LwotCWZvciAoaSA9IDA7IGkgPCBNVEtfRVRIX01VWF9NQVg7IGkrKykgewotCQlpZiAoTVRLX0hB
U19DQVBTKGV0aC0+c29jLT5jYXBzLCBNVEtfTVVYX0JJVChpKSkpIHsKKwlmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRShtdGtfZXRoX211eGMpOyBpKyspIHsKKwkJaWYgKE1US19IQVNfQ0FQUyhl
dGgtPnNvYy0+Y2FwcywgbXRrX2V0aF9tdXhjW2ldLmNhcF9iaXQpKSB7CiAJCQllcnIgPSBtdGtf
ZXRoX211eGNbaV0uc2V0X3BhdGgoZXRoLCBwYXRoKTsKIAkJCWlmIChlcnIpCiAJCQkJZ290byBv
dXQ7CiAJCX0gZWxzZSB7CiAJCQlkZXZfZGJnKGV0aC0+ZGV2LCAibXV4ICVzIGlzbid0IHByZXNl
bnQgb24gdGhlIFNvQ1xuIiwKLQkJCQltdGtfZXRoX211eF9uYW1lW2ldKTsKKwkJCQltdGtfZXRo
X211eGNbaV0ubmFtZSk7CiAJCX0KIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L21lZGlhdGVrL210a19ldGhfc29jLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfZXRoX3NvYy5oCmluZGV4IDg3NmNlNjc5ODcwOS4uYzZiZTU5OWVkOTRkIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oCisrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKQEAgLTU5Miw4NiArNTky
LDk3IEBAIHN0cnVjdCBtdGtfcnhfcmluZyB7CiAJdTMyIGNyeF9pZHhfcmVnOwogfTsKIAotZW51
bSBtdGtfZXRoX211eCB7Ci0JTVRLX0VUSF9NVVhfR0RNMV9UT19HTUFDMV9FU1csCi0JTVRLX0VU
SF9NVVhfR01BQzJfR01BQzBfVE9fR0VQSFksCi0JTVRLX0VUSF9NVVhfVTNfR01BQzJfVE9fUVBI
WSwKLQlNVEtfRVRIX01VWF9HTUFDMV9HTUFDMl9UT19TR01JSV9SR01JSSwKLQlNVEtfRVRIX01V
WF9HTUFDMTJfVE9fR0VQSFlfU0dNSUksCi0JTVRLX0VUSF9NVVhfTUFYLAotfTsKLQotZW51bSBt
dGtfZXRoX3BhdGggewotCU1US19FVEhfUEFUSF9HTUFDMV9SR01JSSwKLQlNVEtfRVRIX1BBVEhf
R01BQzFfVFJHTUlJLAotCU1US19FVEhfUEFUSF9HTUFDMV9TR01JSSwKLQlNVEtfRVRIX1BBVEhf
R01BQzJfUkdNSUksCi0JTVRLX0VUSF9QQVRIX0dNQUMyX1NHTUlJLAotCU1US19FVEhfUEFUSF9H
TUFDMl9HRVBIWSwKLQlNVEtfRVRIX1BBVEhfR0RNMV9FU1csCi0JTVRLX0VUSF9QQVRIX01BWCwK
K2VudW0gbWt0X2V0aF9jYXBhYmlsaXRpZXMgeworCU1US19SR01JSV9CSVQgPSAwLAorCU1US19U
UkdNSUlfQklULAorCU1US19TR01JSV9CSVQsCisJTVRLX0VTV19CSVQsCisJTVRLX0dFUEhZX0JJ
VCwKKwlNVEtfTVVYX0JJVCwKKwlNVEtfSU5GUkFfQklULAorCU1US19TSEFSRURfU0dNSUlfQklU
LAorCU1US19IV0xST19CSVQsCisJTVRLX1NIQVJFRF9JTlRfQklULAorCU1US19UUkdNSUlfTVQ3
NjIxX0NMS19CSVQsCisKKwkvKiBNVVggQklUUyovCisJTVRLX0VUSF9NVVhfR0RNMV9UT19HTUFD
MV9FU1dfQklULAorCU1US19FVEhfTVVYX0dNQUMyX0dNQUMwX1RPX0dFUEhZX0JJVCwKKwlNVEtf
RVRIX01VWF9VM19HTUFDMl9UT19RUEhZX0JJVCwKKwlNVEtfRVRIX01VWF9HTUFDMV9HTUFDMl9U
T19TR01JSV9SR01JSV9CSVQsCisJTVRLX0VUSF9NVVhfR01BQzEyX1RPX0dFUEhZX1NHTUlJX0JJ
VCwKKworCS8qIFBBVEggQklUUyAqLworCU1US19FVEhfUEFUSF9HTUFDMV9SR01JSV9CSVQsCisJ
TVRLX0VUSF9QQVRIX0dNQUMxX1RSR01JSV9CSVQsCisJTVRLX0VUSF9QQVRIX0dNQUMxX1NHTUlJ
X0JJVCwKKwlNVEtfRVRIX1BBVEhfR01BQzJfUkdNSUlfQklULAorCU1US19FVEhfUEFUSF9HTUFD
Ml9TR01JSV9CSVQsCisJTVRLX0VUSF9QQVRIX0dNQUMyX0dFUEhZX0JJVCwKKwlNVEtfRVRIX1BB
VEhfR0RNMV9FU1dfQklULAogfTsKIAogLyogU3VwcG9ydGVkIGhhcmR3YXJlIGdyb3VwIG9uIFNv
Q3MgKi8KLSNkZWZpbmUgTVRLX1JHTUlJCQkJQklUKDApCi0jZGVmaW5lIE1US19UUkdNSUkJCQlC
SVQoMSkKLSNkZWZpbmUgTVRLX1NHTUlJCQkJQklUKDIpCi0jZGVmaW5lIE1US19FU1cJCQkJQklU
KDMpCi0jZGVmaW5lIE1US19HRVBIWQkJCUJJVCg0KQotI2RlZmluZSBNVEtfTVVYCQkJCUJJVCg1
KQotI2RlZmluZSBNVEtfSU5GUkEJCQlCSVQoNikKLSNkZWZpbmUgTVRLX1NIQVJFRF9TR01JSQkJ
QklUKDcpCi0jZGVmaW5lIE1US19IV0xSTwkJCUJJVCg4KQotI2RlZmluZSBNVEtfU0hBUkVEX0lO
VAkJCUJJVCg5KQotI2RlZmluZSBNVEtfVFJHTUlJX01UNzYyMV9DTEsJCUJJVCgxMCkKKyNkZWZp
bmUgTVRLX1JHTUlJCQlCSVQoTVRLX1JHTUlJX0JJVCkKKyNkZWZpbmUgTVRLX1RSR01JSQkJQklU
KE1US19UUkdNSUlfQklUKQorI2RlZmluZSBNVEtfU0dNSUkJCUJJVChNVEtfU0dNSUlfQklUKQor
I2RlZmluZSBNVEtfRVNXCQkJQklUKE1US19FU1dfQklUKQorI2RlZmluZSBNVEtfR0VQSFkJCUJJ
VChNVEtfR0VQSFlfQklUKQorI2RlZmluZSBNVEtfTVVYCQkJQklUKE1US19NVVhfQklUKQorI2Rl
ZmluZSBNVEtfSU5GUkEJCUJJVChNVEtfSU5GUkFfQklUKQorI2RlZmluZSBNVEtfU0hBUkVEX1NH
TUlJCUJJVChNVEtfU0hBUkVEX1NHTUlJX0JJVCkKKyNkZWZpbmUgTVRLX0hXTFJPCQlCSVQoTVRL
X0hXTFJPX0JJVCkKKyNkZWZpbmUgTVRLX1NIQVJFRF9JTlQJCUJJVChNVEtfU0hBUkVEX0lOVF9C
SVQpCisjZGVmaW5lIE1US19UUkdNSUlfTVQ3NjIxX0NMSwlCSVQoTVRLX1RSR01JSV9NVDc2MjFf
Q0xLX0JJVCkKKworI2RlZmluZSBNVEtfRVRIX01VWF9HRE0xX1RPX0dNQUMxX0VTVwkJXAorCUJJ
VChNVEtfRVRIX01VWF9HRE0xX1RPX0dNQUMxX0VTV19CSVQpCisjZGVmaW5lIE1US19FVEhfTVVY
X0dNQUMyX0dNQUMwX1RPX0dFUEhZCVwKKwlCSVQoTVRLX0VUSF9NVVhfR01BQzJfR01BQzBfVE9f
R0VQSFlfQklUKQorI2RlZmluZSBNVEtfRVRIX01VWF9VM19HTUFDMl9UT19RUEhZCQlcCisJQklU
KE1US19FVEhfTVVYX1UzX0dNQUMyX1RPX1FQSFlfQklUKQorI2RlZmluZSBNVEtfRVRIX01VWF9H
TUFDMV9HTUFDMl9UT19TR01JSV9SR01JSQlcCisJQklUKE1US19FVEhfTVVYX0dNQUMxX0dNQUMy
X1RPX1NHTUlJX1JHTUlJX0JJVCkKKyNkZWZpbmUgTVRLX0VUSF9NVVhfR01BQzEyX1RPX0dFUEhZ
X1NHTUlJCVwKKwlCSVQoTVRLX0VUSF9NVVhfR01BQzEyX1RPX0dFUEhZX1NHTUlJX0JJVCkKIAog
LyogU3VwcG9ydGVkIHBhdGggcHJlc2VudCBvbiBTb0NzICovCi0jZGVmaW5lIE1US19QQVRIX0JJ
VCh4KSAgICAgICAgIEJJVCgoeCkgKyAxMCkKLQotI2RlZmluZSBNVEtfR01BQzFfUkdNSUkgXAot
CShNVEtfUEFUSF9CSVQoTVRLX0VUSF9QQVRIX0dNQUMxX1JHTUlJKSB8IE1US19SR01JSSkKLQot
I2RlZmluZSBNVEtfR01BQzFfVFJHTUlJIFwKLQkoTVRLX1BBVEhfQklUKE1US19FVEhfUEFUSF9H
TUFDMV9UUkdNSUkpIHwgTVRLX1RSR01JSSkKLQotI2RlZmluZSBNVEtfR01BQzFfU0dNSUkgXAot
CShNVEtfUEFUSF9CSVQoTVRLX0VUSF9QQVRIX0dNQUMxX1NHTUlJKSB8IE1US19TR01JSSkKLQot
I2RlZmluZSBNVEtfR01BQzJfUkdNSUkgXAotCShNVEtfUEFUSF9CSVQoTVRLX0VUSF9QQVRIX0dN
QUMyX1JHTUlJKSB8IE1US19SR01JSSkKLQotI2RlZmluZSBNVEtfR01BQzJfU0dNSUkgXAotCShN
VEtfUEFUSF9CSVQoTVRLX0VUSF9QQVRIX0dNQUMyX1NHTUlJKSB8IE1US19TR01JSSkKLQotI2Rl
ZmluZSBNVEtfR01BQzJfR0VQSFkgXAotCShNVEtfUEFUSF9CSVQoTVRLX0VUSF9QQVRIX0dNQUMy
X0dFUEhZKSB8IE1US19HRVBIWSkKLQotI2RlZmluZSBNVEtfR0RNMV9FU1cgXAotCShNVEtfUEFU
SF9CSVQoTVRLX0VUSF9QQVRIX0dETTFfRVNXKSB8IE1US19FU1cpCi0KLSNkZWZpbmUgTVRLX01V
WF9CSVQoeCkgICAgICAgICAgQklUKCh4KSArIDIwKQorI2RlZmluZSBNVEtfRVRIX1BBVEhfR01B
QzFfUkdNSUkJQklUKE1US19FVEhfUEFUSF9HTUFDMV9SR01JSV9CSVQpCisjZGVmaW5lIE1US19F
VEhfUEFUSF9HTUFDMV9UUkdNSUkJQklUKE1US19FVEhfUEFUSF9HTUFDMV9UUkdNSUlfQklUKQor
I2RlZmluZSBNVEtfRVRIX1BBVEhfR01BQzFfU0dNSUkJQklUKE1US19FVEhfUEFUSF9HTUFDMV9T
R01JSV9CSVQpCisjZGVmaW5lIE1US19FVEhfUEFUSF9HTUFDMl9SR01JSQlCSVQoTVRLX0VUSF9Q
QVRIX0dNQUMyX1JHTUlJX0JJVCkKKyNkZWZpbmUgTVRLX0VUSF9QQVRIX0dNQUMyX1NHTUlJCUJJ
VChNVEtfRVRIX1BBVEhfR01BQzJfU0dNSUlfQklUKQorI2RlZmluZSBNVEtfRVRIX1BBVEhfR01B
QzJfR0VQSFkJQklUKE1US19FVEhfUEFUSF9HTUFDMl9HRVBIWV9CSVQpCisjZGVmaW5lIE1US19F
VEhfUEFUSF9HRE0xX0VTVwkJQklUKE1US19FVEhfUEFUSF9HRE0xX0VTV19CSVQpCisKKyNkZWZp
bmUgTVRLX0dNQUMxX1JHTUlJCQkoTVRLX0VUSF9QQVRIX0dNQUMxX1JHTUlJIHwgTVRLX1JHTUlJ
KQorI2RlZmluZSBNVEtfR01BQzFfVFJHTUlJCShNVEtfRVRIX1BBVEhfR01BQzFfVFJHTUlJIHwg
TVRLX1RSR01JSSkKKyNkZWZpbmUgTVRLX0dNQUMxX1NHTUlJCQkoTVRLX0VUSF9QQVRIX0dNQUMx
X1NHTUlJIHwgTVRLX1NHTUlJKQorI2RlZmluZSBNVEtfR01BQzJfUkdNSUkJCShNVEtfRVRIX1BB
VEhfR01BQzJfUkdNSUkgfCBNVEtfUkdNSUkpCisjZGVmaW5lIE1US19HTUFDMl9TR01JSQkJKE1U
S19FVEhfUEFUSF9HTUFDMl9TR01JSSB8IE1US19TR01JSSkKKyNkZWZpbmUgTVRLX0dNQUMyX0dF
UEhZCQkoTVRLX0VUSF9QQVRIX0dNQUMyX0dFUEhZIHwgTVRLX0dFUEhZKQorI2RlZmluZSBNVEtf
R0RNMV9FU1cJCShNVEtfRVRIX1BBVEhfR0RNMV9FU1cgfCBNVEtfRVNXKQogCiAvKiBNVVhlcyBw
cmVzZW50IG9uIFNvQ3MgKi8KIC8qIDA6IEdETTEgLT4gR01BQzEsIDE6IEdETTEgLT4gRVNXICov
Ci0jZGVmaW5lIE1US19NVVhfR0RNMV9UT19HTUFDMV9FU1cgICAgICAgXAotCShNVEtfTVVYX0JJ
VChNVEtfRVRIX01VWF9HRE0xX1RPX0dNQUMxX0VTVykgfCBNVEtfTVVYKQorI2RlZmluZSBNVEtf
TVVYX0dETTFfVE9fR01BQzFfRVNXIChNVEtfRVRIX01VWF9HRE0xX1RPX0dNQUMxX0VTVyB8IE1U
S19NVVgpCiAKIC8qIDA6IEdNQUMyIC0+IEdFUEhZLCAxOiBHTUFDMCAtPiBHZVBIWSAqLwogI2Rl
ZmluZSBNVEtfTVVYX0dNQUMyX0dNQUMwX1RPX0dFUEhZICAgIFwKLQkoTVRLX01VWF9CSVQoTVRL
X0VUSF9NVVhfR01BQzJfR01BQzBfVE9fR0VQSFkpIHwgTVRLX01VWCB8IE1US19JTkZSQSkKKwko
TVRLX0VUSF9NVVhfR01BQzJfR01BQzBfVE9fR0VQSFkgfCBNVEtfTVVYIHwgTVRLX0lORlJBKQog
CiAvKiAwOiBVMyAtPiBRUEhZLCAxOiBHTUFDMiAtPiBRUEhZICovCiAjZGVmaW5lIE1US19NVVhf
VTNfR01BQzJfVE9fUVBIWSAgICAgICAgXAotCShNVEtfTVVYX0JJVChNVEtfRVRIX01VWF9VM19H
TUFDMl9UT19RUEhZKSB8IE1US19NVVggfCBNVEtfSU5GUkEpCisJKE1US19FVEhfTVVYX1UzX0dN
QUMyX1RPX1FQSFkgfCBNVEtfTVVYIHwgTVRLX0lORlJBKQogCiAvKiAyOiBHTUFDMSAtPiBTR01J
SSwgMzogR01BQzIgLT4gU0dNSUkgKi8KICNkZWZpbmUgTVRLX01VWF9HTUFDMV9HTUFDMl9UT19T
R01JSV9SR01JSSAgICAgIFwKLQkoTVRLX01VWF9CSVQoTVRLX0VUSF9NVVhfR01BQzFfR01BQzJf
VE9fU0dNSUlfUkdNSUkpIHwgTVRLX01VWCB8IFwKKwkoTVRLX0VUSF9NVVhfR01BQzFfR01BQzJf
VE9fU0dNSUlfUkdNSUkgfCBNVEtfTVVYIHwgXAogCU1US19TSEFSRURfU0dNSUkpCiAKIC8qIDA6
IEdNQUN4IC0+IEdFUEhZLCAxOiBHTUFDeCAtPiBTR01JSSB3aGVyZSB4IGlzIDEgb3IgMiAqLwog
I2RlZmluZSBNVEtfTVVYX0dNQUMxMl9UT19HRVBIWV9TR01JSSAgIFwKLQkoTVRLX01VWF9CSVQo
TVRLX0VUSF9NVVhfR01BQzEyX1RPX0dFUEhZX1NHTUlJKSB8IE1US19NVVgpCisJKE1US19FVEhf
TVVYX0dNQUMxMl9UT19HRVBIWV9TR01JSSB8IE1US19NVVgpCiAKICNkZWZpbmUgTVRLX0hBU19D
QVBTKGNhcHMsIF94KQkJKCgoY2FwcykgJiAoX3gpKSA9PSAoX3gpKQogCi0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRp
YXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
