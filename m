Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C9E50F41
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 16:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47CjeohYutMvCiKiHNv+pIboTAGeMYJuydaZthV2Qqs=; b=RN+Qbo8lbYgttb
	hvYyEDRFkhYZ++fugbgQLsoV4OV8Bb2yaaXlzGgImCJcqWRxvovM1V2wWtjt7xXfvL7bMESWVPJIQ
	HO/L2v7lYnSQNM2ii+yg9UhsUGZqAfvUfPClibOwOlvzGBc+wyoQACLRO2EamWXp81PEMIviTyML0
	c7Vjt+s1CuMkoGBHbrMzVGvyj1l2rp7+DzQxK6AM/2vxUq7Bv3fu89GOmpql2hDNrWbIyT+T4bZHx
	T4626bPwPHXpQC99zLZTROzf2iXEQnF5IPHPxVoJgl/MVC60JejRz/HIRk5soFEQmMfh8hixSj0ju
	6Ptb3/JDo4h0fS2kkP8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQLq-0004rm-Ue; Mon, 24 Jun 2019 14:53:46 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQLc-0004hI-2I
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 14:53:35 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 61D4A5FAF1;
 Mon, 24 Jun 2019 16:53:31 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="aHJxS3uu"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 2E4551CC6F1E;
 Mon, 24 Jun 2019 16:53:31 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 2E4551CC6F1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561388011;
 bh=Rc7laVn7CqDBL7FM7QjwXQ1rHS2zM32M0Cm10zc19Gk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aHJxS3uu1+92MqYd/r/xagYnsN0+KSH5+4ViLZ/CmvCWR2ca8v/Apd26181O2MVA5
 bV/qnuUxIF9s07xlB92277nGONGZ8q8Fu3xRLzJoceo8JeIZUzLfhs1sW6BYwIPyft
 sVlTE9wyHiJwr8/OD8XVR+HpHbxM2WMkytfHZA6VhUOU+ZxEIRzsUmU27CJLi3OU3s
 yL+9liUBUSxFMON6aGHhVH/iEDMzTd9bFjEsx5+Py/iierirZQY+eC0vLvnqsIcFCR
 cDaIFSwz/ACf8f9Hkn+79xlS/U8xQENIhm3AxEKXG405RxGcSw48kW6LouYbjfI8ZV
 +k1SPpC44mWHw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH RFC net-next 4/5] dt-bindings: net: dsa: mt7530: Add mediatek,
 ephy-handle to isolate ext. phy
Date: Mon, 24 Jun 2019 16:52:50 +0200
Message-Id: <20190624145251.4849-5-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624145251.4849-1-opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_075332_444407_5BD82E97 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gc29tZSBwbGF0Zm9ydW0gdGhlIGV4dGVybmFsIHBoeSBjYW4gb25seSBpbnRlcmZhY2UgdG8g
dGhlIHBvcnQgNSBvZiB0aGUKc3dpdGNoIGJlY2F1c2UgdGhlIFJHTUlJIFRYIGFuZCBSWCBsaW5l
cyBhcmUgc3dhcHBlZC4gQnV0IGl0IHN0aWxsIGNhbiBiZQp1c2VmdWwgdG8gdXNlIHRoZSBpbnRl
cm5hbCBwaHkgb2YgdGhlIHN3aXRjaCB0byBhY3QgYXMgYSBXQU4gcG9ydCB3aGljaApjb25uZWN0
ZXMgdG8gdGhlIDJuZCBHTUFDLiBUaGlzIGdpdmVzIFdBTiBwb3J0IGRlZGljYXRlZCBiYW5kd2lk
dGggdG8KdGhlIFNPQy4gVGhpcyBpbmNyZWFzZXMgdGhlIExBTiBhbmQgV0FOIHJvdXRpbmcuCgpC
eSBhZGRpbmcgdGhlIG9wdGlvbmFsIHByb3BlcnR5IG1lZGlhdGVrLGVwaHktaGFuZGxlLCB0aGUg
ZXh0ZXJuYWwgcGh5CmlzIHB1dCBpbiBpc29sYXRpb24gbW9kZSB3aGVuIGludGVybmFsIHBoeSBp
cyBjb25uZWN0ZWQgdG8gMm5kIEdNQUMgdmlhCnBoeS1oYW5kbGUgcHJvcGVydHkuCgpTaWduZWQt
b2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4KLS0tCiAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUzMC50eHQgICAgfCAxMTYgKysrKysrKysr
KysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Rz
YS9tdDc1MzAudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2Ev
bXQ3NTMwLnR4dAppbmRleCBmMzQ4Njc4MGYyYzIuLjFlNzlmYmE1YTc3NCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3NTMwLnR4dAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0CkBA
IC02MCwxMCArNjAsMjAgQEAgRGVwZW5kaW5nIG9uIGhvdyB0aGUgZXh0ZXJuYWwgUEhZIGlzIHdp
cmVkOgogMi4gc3dhcHBlZDogUkdNSUkgVFgsIFJYIGFyZSBzd2FwcGVkOyBleHRlcm5hbCBwaHkg
aW50ZXJmYWNlIHdpdGggdGhlIHN3aXRjaCBhcwogICAgYSBldGhlcm5ldCBwb3J0LiBCdXQgY2Fu
J3QgaW50ZXJmYWNlIHRvIHRoZSAybmQgR01BQy4KIAorT3B0aW9uYWwgcHJvcGVydHk6CisKKy0g
bWVkaWF0ZWssZXBoeS1oYW5kbGU6IFBoYW5kbGUgb2YgdGhlIGV4dGVybmFsIHBoeS4gSW4gY2Fz
ZSB5b3Ugd2FudCB0byB1c2UKKwkJCVAwLzQgYXMgV0FOIHBvcnQgYW5kIGhhdmUgYW4gZXh0ZXJu
YWwgcGh5IGF0dGFjaGVkLgorCQkJV2l0aCB0aGlzIHByb3BlcnR5IHRoZSBleHRlcm5hbCBwaHkg
aXMgcHV0IGluIGlzb2xhdGlvbgorCQkJYW5kIHBvd2VyZG93biBtb2RlIGluIG1vZGUgMi4KKwog
QmFzZWQgb24gdGhlIERUIHRoZSBwb3J0IDUgbW9kZSBpcyBjb25maWd1cmVkLgogCiBEcml2ZXIg
dHJpZXMgdG8gbG9va3VwIHRoZSBwaHktaGFuZGxlIG9mIHRoZSAybmQgR01BQyBvZiB0aGUgbWFz
dGVyIGRldmljZS4KLVdoZW4gcGh5LWhhbmRsZSBtYXRjaGVzIFBIWSBvZiBwb3J0IDAgb3IgNCB0
aGVuIHBvcnQgNSBzZXQtdXAgYXMgbW9kZSAyLgorV2hlbiBwaHktaGFuZGxlIG1hdGNoZXMgUEhZ
IG9mIHBvcnQgMCBvciA0IHRoZW4gcG9ydCA1IHNldC11cCBhcyBtb2RlIDIgYW5kIHdoZW4KK3By
b3BlcnRseSAibWVkaWF0ZWssZXBoeS1oYW5kbGUiIGlzIHZhbGlkIGl0IHB1dHMgdGhlIGV4dGVy
bmVsIHBoeSBpbiBpc29sYXRpb24KK21vZGUuCisKIHBoeS1tb2RlIG11c3QgYmUgc2V0LCBzZWUg
YWxzbyBleGFtcGxlIDIgYmVsb3chCiAgKiBtdDc2MjE6IHBoeS1tb2RlID0gInJnbWlpLXR4aWQi
OwogICogbXQ3NjIzOiBwaHktbW9kZSA9ICJyZ21paSI7CkBAIC0zMDksMyArMzE5LDEwNyBAQCBF
eGFtcGxlIDM6IE1UNzYyMTogUG9ydCA1IGlzIGNvbm5lY3RlZCB0byBleHRlcm5hbCBQSFk6IFBv
cnQgNSAtPiBleHRlcm5hbCBQSFkuCiAJCX07CiAJfTsKIH07CisKK0V4YW1wbGUgNDogTVQ3NjIx
OiBQb3J0IDQgaXMgV0FOIHBvcnQ6IDJuZCBHTUFDIC0+IFA1IC0+IFBIWSBQNAorCQkgICB3aXRo
IGFuIGV4dGVybmFsIHBoeS4KKworJmV0aCB7CisJc3RhdHVzID0gIm9rYXkiOworCisJZ21hYzA6
IG1hY0AwIHsKKwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKKwkJcmVnID0gPDA+
OworCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJZml4ZWQtbGluayB7CisJCQlzcGVlZCA9IDwx
MDAwPjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7CisJCX07CisJfTsKKworCWdtYWMxOiBt
YWNAMSB7CisJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRoLW1hYyI7CisJCXJlZyA9IDwxPjsK
KwkJcGh5LW1vZGUgPSAicmdtaWktdHhpZCI7CisJCXBoeS1oYW5kbGUgPSA8JnBoeTQ+OworCX07
CisKKwltZGlvOiBtZGlvLWJ1cyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1j
ZWxscyA9IDwwPjsKKworCQkvKiBJbnRlcm5hbCBwaHkgNCAqLworCQlwaHk0OiBldGhlcm5ldC1w
aHlANCB7CisJCQlyZWcgPSA8ND47CisJCX07CisKKwkJLyogZXh0ZXJuYWwgcGh5IGFkZHIgMHgw
NyAqLworCQllcGh5NTogZXRoZXJuZXQtcGh5QDcgeworCQkJcmVnID0gPDc+OworCQl9OworCisJ
CW10NzUzMDogc3dpdGNoQDFmIHsKKwkJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ3NjIxIjsK
KwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MD47CisJCQlyZWcg
PSA8MHgxZj47CisJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQkJbWVkaWF0ZWssbWNt
OworCisJCQkvKiBQdXQgdGhpcyBleHRlcm5hbCBwaHkgaW4gcG93ZXItZG93biBhbmQgaXNvbGF0
aW9uCisJCQkgKiB3aGVuIHBvcnQgNSBpcyB1c2VkIGluIFBIWSBQMC9QNCBvciBEU0EgbW9kZS4g
QmVjYXVzZQorCQkJICogZXh0ZXJuYWwgcGh5IGFuZCBwb3J0IDUgc2hhcmUgc2FtZSBidXMgdG8g
Mm5kIEdNQUMuCisJCQkgKi8KKwkJCW1lZGlhdGVrLGVwaHktaGFuZGxlID0gPCZlcGh5NT47CisK
KwkJCXJlc2V0cyA9IDwmcnN0Y3RybCAyPjsKKwkJCXJlc2V0LW5hbWVzID0gIm1jbSI7CisKKwkJ
CXBvcnRzIHsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDww
PjsKKworCQkJCXBvcnRAMCB7CisJCQkJCXJlZyA9IDwwPjsKKwkJCQkJbGFiZWwgPSAibGFuMCI7
CisJCQkJfTsKKworCQkJCXBvcnRAMSB7CisJCQkJCXJlZyA9IDwxPjsKKwkJCQkJbGFiZWwgPSAi
bGFuMSI7CisJCQkJfTsKKworCQkJCXBvcnRAMiB7CisJCQkJCXJlZyA9IDwyPjsKKwkJCQkJbGFi
ZWwgPSAibGFuMiI7CisJCQkJfTsKKworCQkJCXBvcnRAMyB7CisJCQkJCXJlZyA9IDwzPjsKKwkJ
CQkJbGFiZWwgPSAibGFuMyI7CisJCQkJfTsKKworLyogQ29tbWVudGVkIG91dC4gUG9ydCA0IGlz
IGhhbmRsZWQgYnkgMm5kIEdNQUMuCisJCQkJcG9ydEA0IHsKKwkJCQkJcmVnID0gPDQ+OworCQkJ
CQlsYWJlbCA9ICJsYW40IjsKKwkJCQl9OworKi8KKworCQkJCWNwdV9wb3J0MDogcG9ydEA2IHsK
KwkJCQkJcmVnID0gPDY+OworCQkJCQlsYWJlbCA9ICJjcHUiOworCQkJCQlldGhlcm5ldCA9IDwm
Z21hYzA+OworCQkJCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJCQkJZml4ZWQtbGluayB7CisJ
CQkJCQlzcGVlZCA9IDwxMDAwPjsKKwkJCQkJCWZ1bGwtZHVwbGV4OworCQkJCQkJcGF1c2U7CisJ
CQkJCX07CisJCQkJfTsKKwkJCX07CisJCX07CisJfTsKK307Ci0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBt
YWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
