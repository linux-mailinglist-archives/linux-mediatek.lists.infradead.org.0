Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BE673824
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 21:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zo16Oo8y0iXM/5R3PENNJMR5pe6uzmbZzAHiWq05GNQ=; b=pSXuEpa8oDdF4o
	GD66LABHnQuDAyL5XhIx10mg9i7lozgsqjkre+/efZr3RlRT7ielLzAkZAm/W7y9178qijJWgmU5w
	QSC2iyHj3aEnImPy8h5N5K0dYT2ItBwqkKo78+r1ps++hm9icwsVGRDjR0Uv2ivWY8eueAm9ONDR/
	vul527meNrOgqGKM5EL6Sfmzy3Q2HytbE/gYKKVNVqX7vBPL3cLfnrRg4gm9VrGys2x1kTAsXGlj9
	zMHzqeEmNJNiT/4l0kw2CTbfnob3kPO/M81ID9V1xcCFRDzaBKAE+3lMqvFvWwTI3Mv8pGzjVwy1V
	wtjJOHa29j3hmzKMedwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMu8-0007gl-9B; Wed, 24 Jul 2019 19:26:24 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMu4-0007ed-3h
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 19:26:21 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 6A1725FDF7;
 Wed, 24 Jul 2019 21:26:19 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="FCedyfbr"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 1C4641D25D3C;
 Wed, 24 Jul 2019 21:26:19 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 1C4641D25D3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1563996379;
 bh=DcHx/91i6+Pd3ve7+oJz5ZrfG77cZVMraX/a4nS/HZw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FCedyfbrYbjt9TW2rCeistR5Df5zdaCnki4FehctlOVQSKFfuO4Dl2y9VggwmYnl1
 AIVXtaOesYe5eIgMgbtbxkSoOgDw8PJbS+AcFf7XbDxuOQNMMCVg+VwJifhrZ7aoRM
 uMd7+oMwlMBEqRNsbtGexH9mIdUhVmbNIjLK8EDoTyCLFmkMluOqS5bhPfhmuIRfhA
 UPZn52Chl3u4FXzWILKAPLjQBB4u4ahkK28qoP7+qTjV/XuviD2rKrPzdeVI3pUXFd
 JXM/rjVxKbvyHg15WiatxE+hzBLheNjbEPhnMXxeKwQKekHKz4aAxH/M3Yz6vSV4Xv
 f1bQZgXOStjJQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/3] dt-bindings: net: dsa: mt7530: Add support for
 port 5
Date: Wed, 24 Jul 2019 21:25:48 +0200
Message-Id: <20190724192549.24615-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724192549.24615-1-opensource@vdorst.com>
References: <20190724192549.24615-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_122620_431556_C52E39AB 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 sean.wang@mediatek.com, linux@armlinux.org.uk, vivien.didelot@gmail.com,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TVQ3NTMwIHBvcnQgNSBoYXMgbWFueSBtb2Rlcy9jb25maWd1cmF0aW9ucy4KVXBkYXRlIHRoZSBk
b2N1bWVudGF0aW9uIGhvdyB0byB1c2UgcG9ydCA1LgoKU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFu
IERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CgpyZmMtPnYxOgoqIE5vIGNoYW5nZQotLS0K
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3NTMwLnR4dCAgICB8IDIxNSArKysr
KysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUzMC50
eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0
CmluZGV4IDQ3YWEyMDVlZTBiZC4uZjM0ODY3ODBmMmMyIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0CisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUzMC50eHQKQEAgLTM1LDYgKzM1
LDM5IEBAIFJlcXVpcmVkIHByb3BlcnRpZXMgZm9yIHRoZSBjaGlsZCBub2RlcyB3aXRoaW4gcG9y
dHMgY29udGFpbmVyOgogLSBwaHktbW9kZTogU3RyaW5nLCBtdXN0IGJlIGVpdGhlciAidHJnbWlp
IiBvciAicmdtaWkiIGZvciBwb3J0IGxhYmVsZWQKIAkgImNwdSIuCiAKK1BvcnQgNSBvZiB0aGUg
c3dpdGNoIGlzIG11eGVkIGJldHdlZW46CisxLiBHTUFDNTogR01BQzUgY2FuIGludGVyZmFjZSB3
aXRoIGFub3RoZXIgZXh0ZXJuYWwgTUFDIG9yIFBIWS4KKzIuIFBIWSBvZiBwb3J0IDAgb3IgcG9y
dCA0OiBQSFkgaW50ZXJmYWNlcyB3aXRoIGFuIGV4dGVybmFsIE1BQyBsaWtlIDJuZCBHTUFDCisg
ICBvZiB0aGUgU09DLiBVc2VkIGluIG1hbnkgc2V0dXBzIHdoZXJlIHBvcnQgMC80IGJlY29tZXMg
dGhlIFdBTiBwb3J0LgorCitQb3J0IDUgbW9kZXMvY29uZmlndXJhdGlvbnM6CisxLiBQb3J0IDUg
aXMgZGlzYWJsZWQgYW5kIGlzb2xhdGVkOiBBbiBleHRlcm5hbCBwaHkgY2FuIGludGVyZmFjZSB0
byB0aGUgMm5kCisgICBHTUFDIG9mIHRoZSBTT0MuCisgICBJbiB0aGUgY2FzZSBvZiBhIGJ1aWxk
LWluIE1UNzUzMCBzd2l0Y2gsIHBvcnQgNSBzaGFyZXMgdGhlIFJHTUlJIGJ1cyB3aXRoIDJuZAor
ICAgR01BQyBhbmQgYW4gb3B0aW9uYWwgZXh0ZXJuYWwgcGh5LiBNaW5kIHRoZSBHUElPL3BpbmN0
bCBzZXR0aW5ncyBvZiB0aGUgU09DIQorMi4gUG9ydCA1IGlzIG11eGVkIHRvIFBIWSBvZiBwb3J0
IDAvNDogUG9ydCAwLzQgaW50ZXJmYWNlcyB3aXRoIDJuZCBHTUFDLgorICAgSXQgaXMgYSBzaW1w
bGUgTUFDIHRvIFBIWSBpbnRlcmZhY2UsIHBvcnQgNSBuZWVkcyB0byBiZSBzZXR1cCBmb3IgeE1J
SSBtb2RlCisgICBhbmQgUkdNSUkgZGVsYXkuCiszLiBQb3J0IDUgaXMgbXV4ZWQgdG8gR01BQzUg
YW5kIGNhbiBpbnRlcmZhY2UgdG8gYW4gZXh0ZXJuYWwgcGh5LgorICAgUG9ydCA1IGJlY29tZXMg
YW4gZXh0cmEgc3dpdGNoIHBvcnQuCisgICBPbmx5IHdvcmtzIG9uIHBsYXRmb3JtIHdoZXJlIGV4
dGVybmFsIHBoeSBUWDwtPlJYIGxpbmVzIGFyZSBzd2FwcGVkLgorICAgTGlrZSBpbiB0aGUgVWJp
cXVpdGkgRVItWC1TRlAuCis0LiBQb3J0IDUgaXMgbXV4ZWQgdG8gR01BQzUgYW5kIGludGVyZmFj
ZXMgd2l0aCB0aGUgMm5kIEdBTUMgYXMgMm5kIENQVSBwb3J0LgorICAgQ3VycmVudGx5IGEgMm5k
IENQVSBwb3J0IGlzIG5vdCBzdXBwb3J0ZWQgYnkgRFNBIGNvZGUuCisKK0RlcGVuZGluZyBvbiBo
b3cgdGhlIGV4dGVybmFsIFBIWSBpcyB3aXJlZDoKKzEuIG5vcm1hbDogVGhlIFBIWSBjYW4gb25s
eSBjb25uZWN0IHRvIDJuZCBHTUFDIGJ1dCBub3QgdG8gdGhlIHN3aXRjaAorMi4gc3dhcHBlZDog
UkdNSUkgVFgsIFJYIGFyZSBzd2FwcGVkOyBleHRlcm5hbCBwaHkgaW50ZXJmYWNlIHdpdGggdGhl
IHN3aXRjaCBhcworICAgYSBldGhlcm5ldCBwb3J0LiBCdXQgY2FuJ3QgaW50ZXJmYWNlIHRvIHRo
ZSAybmQgR01BQy4KKworQmFzZWQgb24gdGhlIERUIHRoZSBwb3J0IDUgbW9kZSBpcyBjb25maWd1
cmVkLgorCitEcml2ZXIgdHJpZXMgdG8gbG9va3VwIHRoZSBwaHktaGFuZGxlIG9mIHRoZSAybmQg
R01BQyBvZiB0aGUgbWFzdGVyIGRldmljZS4KK1doZW4gcGh5LWhhbmRsZSBtYXRjaGVzIFBIWSBv
ZiBwb3J0IDAgb3IgNCB0aGVuIHBvcnQgNSBzZXQtdXAgYXMgbW9kZSAyLgorcGh5LW1vZGUgbXVz
dCBiZSBzZXQsIHNlZSBhbHNvIGV4YW1wbGUgMiBiZWxvdyEKKyAqIG10NzYyMTogcGh5LW1vZGUg
PSAicmdtaWktdHhpZCI7CisgKiBtdDc2MjM6IHBoeS1tb2RlID0gInJnbWlpIjsKKwogU2VlIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL2RzYS50eHQgZm9yIGEgbGlz
dCBvZiBhZGRpdGlvbmFsCiByZXF1aXJlZCwgb3B0aW9uYWwgcHJvcGVydGllcyBhbmQgaG93IHRo
ZSBpbnRlZ3JhdGVkIHN3aXRjaCBzdWJub2RlcyBtdXN0CiBiZSBzcGVjaWZpZWQuCkBAIC05NCwz
ICsxMjcsMTg1IEBAIEV4YW1wbGU6CiAJCQl9OwogCQl9OwogCX07CisKK0V4YW1wbGUgMjogTVQ3
NjIxOiBQb3J0IDQgaXMgV0FOIHBvcnQ6IDJuZCBHTUFDIC0+IFBvcnQgNSAtPiBQSFkgcG9ydCA0
LgorCismZXRoIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwlnbWFjMDogbWFjQDAgeworCQljb21w
YXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MD47CisJCXBoeS1tb2RlID0g
InJnbWlpIjsKKworCQlmaXhlZC1saW5rIHsKKwkJCXNwZWVkID0gPDEwMDA+OworCQkJZnVsbC1k
dXBsZXg7CisJCQlwYXVzZTsKKwkJfTsKKwl9OworCisJZ21hYzE6IG1hY0AxIHsKKwkJY29tcGF0
aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKKwkJcmVnID0gPDE+OworCQlwaHktbW9kZSA9ICJy
Z21paS10eGlkIjsKKwkJcGh5LWhhbmRsZSA9IDwmcGh5ND47CisJfTsKKworCW1kaW86IG1kaW8t
YnVzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNzaXplLWNlbGxzID0gPDA+OworCisJ
CS8qIEludGVybmFsIHBoeSAqLworCQlwaHk0OiBldGhlcm5ldC1waHlANCB7CisJCQlyZWcgPSA8
ND47CisJCX07CisKKwkJbXQ3NTMwOiBzd2l0Y2hAMWYgeworCQkJY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxtdDc2MjEiOworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9
IDwwPjsKKwkJCXJlZyA9IDwweDFmPjsKKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJ
CQltZWRpYXRlayxtY207CisKKwkJCXJlc2V0cyA9IDwmcnN0Y3RybCAyPjsKKwkJCXJlc2V0LW5h
bWVzID0gIm1jbSI7CisKKwkJCXBvcnRzIHsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJ
CQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQkJCXBvcnRAMCB7CisJCQkJCXJlZyA9IDwwPjsKKwkJ
CQkJbGFiZWwgPSAibGFuMCI7CisJCQkJfTsKKworCQkJCXBvcnRAMSB7CisJCQkJCXJlZyA9IDwx
PjsKKwkJCQkJbGFiZWwgPSAibGFuMSI7CisJCQkJfTsKKworCQkJCXBvcnRAMiB7CisJCQkJCXJl
ZyA9IDwyPjsKKwkJCQkJbGFiZWwgPSAibGFuMiI7CisJCQkJfTsKKworCQkJCXBvcnRAMyB7CisJ
CQkJCXJlZyA9IDwzPjsKKwkJCQkJbGFiZWwgPSAibGFuMyI7CisJCQkJfTsKKworLyogQ29tbWVu
dGVkIG91dC4gUG9ydCA0IGlzIGhhbmRsZWQgYnkgMm5kIEdNQUMuCisJCQkJcG9ydEA0IHsKKwkJ
CQkJcmVnID0gPDQ+OworCQkJCQlsYWJlbCA9ICJsYW40IjsKKwkJCQl9OworKi8KKworCQkJCWNw
dV9wb3J0MDogcG9ydEA2IHsKKwkJCQkJcmVnID0gPDY+OworCQkJCQlsYWJlbCA9ICJjcHUiOwor
CQkJCQlldGhlcm5ldCA9IDwmZ21hYzA+OworCQkJCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJ
CQkJZml4ZWQtbGluayB7CisJCQkJCQlzcGVlZCA9IDwxMDAwPjsKKwkJCQkJCWZ1bGwtZHVwbGV4
OworCQkJCQkJcGF1c2U7CisJCQkJCX07CisJCQkJfTsKKwkJCX07CisJCX07CisJfTsKK307CisK
K0V4YW1wbGUgMzogTVQ3NjIxOiBQb3J0IDUgaXMgY29ubmVjdGVkIHRvIGV4dGVybmFsIFBIWTog
UG9ydCA1IC0+IGV4dGVybmFsIFBIWS4KKworJmV0aCB7CisJc3RhdHVzID0gIm9rYXkiOworCisJ
Z21hYzA6IG1hY0AwIHsKKwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKKwkJcmVn
ID0gPDA+OworCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJZml4ZWQtbGluayB7CisJCQlzcGVl
ZCA9IDwxMDAwPjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7CisJCX07CisJfTsKKworCW1k
aW86IG1kaW8tYnVzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNzaXplLWNlbGxzID0g
PDA+OworCisJCS8qIEV4dGVybmFsIHBoeSAqLworCQllcGh5NTogZXRoZXJuZXQtcGh5QDcgewor
CQkJcmVnID0gPDc+OworCQl9OworCisJCW10NzUzMDogc3dpdGNoQDFmIHsKKwkJCWNvbXBhdGli
bGUgPSAibWVkaWF0ZWssbXQ3NjIxIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3Np
emUtY2VsbHMgPSA8MD47CisJCQlyZWcgPSA8MHgxZj47CisJCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOworCQkJbWVkaWF0ZWssbWNtOworCisJCQlyZXNldHMgPSA8JnJzdGN0cmwgMj47CisJ
CQlyZXNldC1uYW1lcyA9ICJtY20iOworCisJCQlwb3J0cyB7CisJCQkJI2FkZHJlc3MtY2VsbHMg
PSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJCQlwb3J0QDAgeworCQkJCQlyZWcg
PSA8MD47CisJCQkJCWxhYmVsID0gImxhbjAiOworCQkJCX07CisKKwkJCQlwb3J0QDEgeworCQkJ
CQlyZWcgPSA8MT47CisJCQkJCWxhYmVsID0gImxhbjEiOworCQkJCX07CisKKwkJCQlwb3J0QDIg
eworCQkJCQlyZWcgPSA8Mj47CisJCQkJCWxhYmVsID0gImxhbjIiOworCQkJCX07CisKKwkJCQlw
b3J0QDMgeworCQkJCQlyZWcgPSA8Mz47CisJCQkJCWxhYmVsID0gImxhbjMiOworCQkJCX07CisK
KwkJCQlwb3J0QDQgeworCQkJCQlyZWcgPSA8ND47CisJCQkJCWxhYmVsID0gImxhbjQiOworCQkJ
CX07CisKKwkJCQlwb3J0QDUgeworCQkJCQlyZWcgPSA8NT47CisJCQkJCWxhYmVsID0gImxhbjUi
OworCQkJCQlwaHktbW9kZSA9ICJyZ21paSI7CisJCQkJCXBoeS1oYW5kbGUgPSA8JmVwaHk1PjsK
KwkJCQl9OworCisJCQkJY3B1X3BvcnQwOiBwb3J0QDYgeworCQkJCQlyZWcgPSA8Nj47CisJCQkJ
CWxhYmVsID0gImNwdSI7CisJCQkJCWV0aGVybmV0ID0gPCZnbWFjMD47CisJCQkJCXBoeS1tb2Rl
ID0gInJnbWlpIjsKKworCQkJCQlmaXhlZC1saW5rIHsKKwkJCQkJCXNwZWVkID0gPDEwMDA+Owor
CQkJCQkJZnVsbC1kdXBsZXg7CisJCQkJCQlwYXVzZTsKKwkJCQkJfTsKKwkJCQl9OworCQkJfTsK
KwkJfTsKKwl9OworfTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRp
YXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
