Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650B94CDA7
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 14:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGtYHRdSt4ITDZwIEy0AgDvQqjvK/ebeEkcfdgb+hqY=; b=dn67wCm2yAMB4i
	mxT3fbtYQKQo1FM19e3G6pRBCIC+XUaeEFF4MCq/gT8jA9d0bCOqZ33OXEoVBLH6j0u4xyAPFZvlE
	2zkbP/+Z3TOEzhSE1ZKgrlElNjCkSlC08dB/QNopmVFT6p7V6jJ4HcHHjHuUoFE03Z5pY7AWy/TS5
	B3DoCbFo0JHgAHxgSbrdm0QzYbpIo5ERv75V/5mBunXucssKiRMZW8JMchoIGNG5bPR4wwf8MulHI
	KYlkYKZWeucjur9AGo8iWMv4cmX7wMCdTqw7ZJ0kj6835td+lzHMvorcKikCfDY2e4zSBThNZ7ffO
	2jHz7DDtxybcCyCoDywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdw69-0007MQ-BY; Thu, 20 Jun 2019 12:23:25 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdw61-0007Is-M8
 for linux-mediatek@lists.infradead.org; Thu, 20 Jun 2019 12:23:20 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 2B26E5FEA5;
 Thu, 20 Jun 2019 14:23:12 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="GZQTCvCo"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id D9B1C1CB7227;
 Thu, 20 Jun 2019 14:23:11 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com D9B1C1CB7227
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561033391;
 bh=sWaETIGykh20OLdc6TDZc2DkdMJJZTMSUT4mTh+FG9g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GZQTCvComuttNcdNwsmuknmfdxnT7xxm7MuX9DG6Dn/MRYZ9Mdd0/OSVsaDaVCC8D
 VRouGoWGVrV+KsStCOWtEMMx74nPNxxBrj/Zh0uogYsMIlmr6peSyMiPXn1livIi9z
 /x1+Ubk4iJ9nzli2tCMYxdCAkv+32/UwKy19QmbUClo1ZlPV6Q6aI2Qqp2dXDZHrHM
 GJH3Rs4DW6CnuKDTsVz5SN+Ic0A9ciYAHYdhdpUoZbNDWqkhfRSq1zZYcgY+09XG14
 sTqawHOOJpiINs0v54g2ZmZredlRtawbcswwE5H83p811Ep1g49h8KnMHvQBI7/kT1
 0CYedXS52G9aw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: frank-w@public-files.de, sean.wang@mediatek.com, f.fainelli@gmail.com,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH v2 net-next 2/2] net: dsa: mt7530: Add MT7621 TRGMII mode
 support
Date: Thu, 20 Jun 2019 14:21:55 +0200
Message-Id: <20190620122155.32078-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620122155.32078-1-opensource@vdorst.com>
References: <20190620122155.32078-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_052318_009713_93583E0C 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

VGhpcyBwYXRjaCBhZGQgc3VwcG9ydCBUUkdNSUkgbW9kZSBmb3IgTVQ3NjIxIGludGVybmFsIE1U
NzUzMCBzd2l0Y2guCk1UNzYyMSBUUkdNSUkgaGFzIG9ubHkgb25lIGZpeCBzcGVlZCBtb2RlIG9m
IDEyMDBNQml0LgoKQWxzbyBhZGRpbmcgc3VwcG9ydCBmb3IgbXQ3NTMwIDI1TUh6IGFuZCA0ME1I
eiBjcnlzdGFsIGNsb2Nrc291cmNlLgpWYWx1ZXMgYXJlIGJhc2VkIG9uIEJhbmFuYSBQaSBSMiBi
c3AgWzFdLgoKRG9uJ3QgY2hhbmdlIE1UNzYyMyByZWdpc3RlcnMgb24gYSBNVDc2MjEgZGV2aWNl
LgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZPSVAvQlBJLVIyLWJzcC9ibG9iL21h
c3Rlci9saW51eC1tdC9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9nc3dfbXQ3NjIzLmMj
TDc2OQoKU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5j
b20+Ci0tLQogZHJpdmVycy9uZXQvZHNhL210NzUzMC5jIHwgNDYgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9uZXQvZHNhL210NzUzMC5oIHwgIDQgKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgYi9kcml2ZXJzL25ldC9kc2EvbXQ3
NTMwLmMKaW5kZXggYzdkMzUyZGE1NDQ4Li4zMTgxZTk1NTg2ZDYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2RzYS9tdDc1MzAuYworKysgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKQEAgLTQy
OCwyNCArNDI4LDQ4IEBAIHN0YXRpYyBpbnQKIG10NzUzMF9wYWRfY2xrX3NldHVwKHN0cnVjdCBk
c2Ffc3dpdGNoICpkcywgaW50IG1vZGUpCiB7CiAJc3RydWN0IG10NzUzMF9wcml2ICpwcml2ID0g
ZHMtPnByaXY7Ci0JdTMyIG5jcG8xLCBzc2NfZGVsdGEsIHRyZ2ludCwgaTsKKwl1MzIgbmNwbzEs
IHNzY19kZWx0YSwgdHJnaW50LCBpLCB4dGFsOworCisJeHRhbCA9IG10NzUzMF9yZWFkKHByaXYs
IE1UNzUzMF9NSFdUUkFQKSAmIEhXVFJBUF9YVEFMX01BU0s7CisKKwlpZiAoeHRhbCA9PSBIV1RS
QVBfWFRBTF8yME1IWikgeworCQlkZXZfZXJyKHByaXYtPmRldiwKKwkJCSIlczogTVQ3NTMwIHdp
dGggYSAyME1IeiBYVEFMIGlzIG5vdCBzdXBwb3J0ZWQhXG4iLAorCQkJX19mdW5jX18pOworCQly
ZXR1cm4gLUVJTlZBTDsKKwl9CiAKIAlzd2l0Y2ggKG1vZGUpIHsKIAljYXNlIFBIWV9JTlRFUkZB
Q0VfTU9ERV9SR01JSToKIAkJdHJnaW50ID0gMDsKKwkJLyogUExMIGZyZXF1ZW5jeTogMTI1TUh6
ICovCiAJCW5jcG8xID0gMHgwYzgwOwotCQlzc2NfZGVsdGEgPSAweDg3OwogCQlicmVhazsKIAlj
YXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUk6CiAJCXRyZ2ludCA9IDE7Ci0JCW5jcG8xID0g
MHgxNDAwOwotCQlzc2NfZGVsdGEgPSAweDU3OworCQlpZiAocHJpdi0+aWQgPT0gSURfTVQ3NjIx
KSB7CisJCQkvKiBQTEwgZnJlcXVlbmN5OiAxNTBNSHo6IDEuMkdCaXQgKi8KKwkJCWlmICh4dGFs
ID09IEhXVFJBUF9YVEFMXzQwTUhaKQorCQkJCW5jcG8xID0gMHgwNzgwOworCQkJaWYgKHh0YWwg
PT0gSFdUUkFQX1hUQUxfMjVNSFopCisJCQkJbmNwbzEgPSAweDBhMDA7CisJCX0gZWxzZSB7IC8q
IFBMTCBmcmVxdWVuY3k6IDI1ME1IejogMi4wR2JpdCAqLworCQkJaWYgKHh0YWwgPT0gSFdUUkFQ
X1hUQUxfNDBNSFopCisJCQkJbmNwbzEgPSAweDBjODA7CisJCQlpZiAoeHRhbCA9PSBIV1RSQVBf
WFRBTF8yNU1IWikKKwkJCQluY3BvMSA9IDB4MTQwMDsKKwkJfQogCQlicmVhazsKIAlkZWZhdWx0
OgogCQlkZXZfZXJyKHByaXYtPmRldiwgInhNSUkgbW9kZSAlZCBub3Qgc3VwcG9ydGVkXG4iLCBt
b2RlKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCisJaWYgKHh0YWwgPT0gSFdUUkFQX1hUQUxf
MjVNSFopCisJCXNzY19kZWx0YSA9IDB4NTc7CisJZWxzZQorCQlzc2NfZGVsdGEgPSAweDg3Owor
CiAJbXQ3NTMwX3Jtdyhwcml2LCBNVDc1MzBfUDZFQ1IsIFA2X0lOVEZfTU9ERV9NQVNLLAogCQkg
ICBQNl9JTlRGX01PREUodHJnaW50KSk7CiAKQEAgLTUwNyw3ICs1MzEsOSBAQCBtdDc1MzBfcGFk
X2Nsa19zZXR1cChzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBtb2RlKQogCQkJbXQ3NTMwX3Jt
dyhwcml2LCBNVDc1MzBfVFJHTUlJX1JEKGkpLAogCQkJCSAgIFJEX1RBUF9NQVNLLCBSRF9UQVAo
MTYpKTsKIAllbHNlCi0JCW10NzYyM190cmdtaWlfc2V0KHByaXYsIEdTV19JTlRGX01PREUsIElO
VEZfTU9ERV9UUkdNSUkpOworCQlpZiAocHJpdi0+aWQgIT0gSURfTVQ3NjIxKQorCQkJbXQ3NjIz
X3RyZ21paV9zZXQocHJpdiwgR1NXX0lOVEZfTU9ERSwKKwkJCQkJICBJTlRGX01PREVfVFJHTUlJ
KTsKIAogCXJldHVybiAwOwogfQpAQCAtNjEzLDEzICs2MzksMTMgQEAgc3RhdGljIHZvaWQgbXQ3
NTMwX2FkanVzdF9saW5rKHN0cnVjdCBkc2Ffc3dpdGNoICpkcywgaW50IHBvcnQsCiAJc3RydWN0
IG10NzUzMF9wcml2ICpwcml2ID0gZHMtPnByaXY7CiAKIAlpZiAocGh5X2lzX3BzZXVkb19maXhl
ZF9saW5rKHBoeWRldikpIHsKLQkJaWYgKHByaXYtPmlkID09IElEX01UNzUzMCkgewotCQkJZGV2
X2RiZyhwcml2LT5kZXYsICJwaHktbW9kZSBmb3IgbWFzdGVyIGRldmljZSA9ICV4XG4iLAotCQkJ
CXBoeWRldi0+aW50ZXJmYWNlKTsKKwkJZGV2X2RiZyhwcml2LT5kZXYsICJwaHktbW9kZSBmb3Ig
bWFzdGVyIGRldmljZSA9ICV4XG4iLAorCQkJcGh5ZGV2LT5pbnRlcmZhY2UpOwogCi0JCQkvKiBT
ZXR1cCBUWCBjaXJjdWl0IGluY2x1aW5nIHJlbGV2YW50IFBBRCBhbmQgZHJpdmluZyAqLwotCQkJ
bXQ3NTMwX3BhZF9jbGtfc2V0dXAoZHMsIHBoeWRldi0+aW50ZXJmYWNlKTsKKwkJLyogU2V0dXAg
VFggY2lyY3VpdCBpbmNsdWluZyByZWxldmFudCBQQUQgYW5kIGRyaXZpbmcgKi8KKwkJbXQ3NTMw
X3BhZF9jbGtfc2V0dXAoZHMsIHBoeWRldi0+aW50ZXJmYWNlKTsKIAorCQlpZiAocHJpdi0+aWQg
PT0gSURfTVQ3NTMwKSB7CiAJCQkvKiBTZXR1cCBSWCBjaXJjdWl0LCByZWxldmFudCBQQUQgYW5k
IGRyaXZpbmcgb24gdGhlCiAJCQkgKiBob3N0IHdoaWNoIG11c3QgYmUgcGxhY2VkIGFmdGVyIHRo
ZSBzZXR1cCBvbiB0aGUKIAkJCSAqIGRldmljZSBzaWRlIGlzIGFsbCBmaW5pc2hlZC4KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaCBiL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAu
aAppbmRleCA0MzMxNDI5OTY5ZmEuLmJmYWM5MGY0ODEwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
ZXQvZHNhL210NzUzMC5oCisrKyBiL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaApAQCAtMjQ0LDYg
KzI0NCwxMCBAQCBlbnVtIG10NzUzMF92bGFuX3BvcnRfYXR0ciB7CiAKIC8qIFJlZ2lzdGVyIGZv
ciBodyB0cmFwIHN0YXR1cyAqLwogI2RlZmluZSBNVDc1MzBfSFdUUkFQCQkJMHg3ODAwCisjZGVm
aW5lICBIV1RSQVBfWFRBTF9NQVNLCQkoQklUKDEwKSB8IEJJVCg5KSkKKyNkZWZpbmUgIEhXVFJB
UF9YVEFMXzI1TUhaCQkoQklUKDEwKSB8IEJJVCg5KSkKKyNkZWZpbmUgIEhXVFJBUF9YVEFMXzQw
TUhaCQkoQklUKDEwKSkKKyNkZWZpbmUgIEhXVFJBUF9YVEFMXzIwTUhaCQkoQklUKDkpKQogCiAv
KiBSZWdpc3RlciBmb3IgaHcgdHJhcCBtb2RpZmljYXRpb24gKi8KICNkZWZpbmUgTVQ3NTMwX01I
V1RSQVAJCQkweDc4MDQKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRp
YXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
