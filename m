Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4546550F3D
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 16:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6KoGfCQPJTnC/pg3B5TrqjgJ6SJGMZrETHv0tqlX3c=; b=RDY9asFGqAOtnS
	WKkzpDY5G72TVRRqbvAvzzwhw3jgPG0WNXEoeq2E09YgsQBY/A8USsxZW4z7qEeQ116kZ6nW9NgFO
	TpwxGFtfg05InSBBqEZNfXouCimeVkrlcVX9DxPHdGyMk2aguvXq4yUBKU/shoU/tUkUJhuAItcuJ
	dCz6QHzcXzSnM3V2KOef46k48grOiudJlXWEr9CIuuHU2A+4mQt2iAfteFTZdHHVBK+aQ5eQlbD5G
	9zDqk3fvjcERXZ391JY/MRq/RK6GYxhXScc61o2WBwPiVpd4hAdbL1mtnpUqjOyHXijIZpxmXkECX
	7oWC5d8lU0OdjwZYBIuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQLi-0004jW-VG; Mon, 24 Jun 2019 14:53:39 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQLQ-0004Xl-QW
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 14:53:23 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 775D55FEAA;
 Mon, 24 Jun 2019 16:53:19 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="GL9iPASw"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 41A5D1CC6F11;
 Mon, 24 Jun 2019 16:53:19 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 41A5D1CC6F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561387999;
 bh=XQGc2L2tciEqhY0p8FDpM7GmACEvSx7FvJD+Y7Cy7oM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GL9iPASwY4YHDdgaltRtMfUc6NFKBnvaQ5z3/gDvHCuSnGsy4+jwDeJ2KY9nlBBoq
 alpgYLUVqQ6nCUatu4CYCL60Wdmn/8mbM4C26pUq7zkkn/rtj6emfqct2h8gB1jABw
 GnaiNDAaSNY0hk66FWFPjV25D7fEyqFJzcnc2cnuMEqmEKF2mGQMxjmcZ6aR7PKRso
 l5MLyGHChYBUbqMVHMk9Ycf2Ydh44Kef6/j40NNYXcuwLvxKrHiOUiY0bjy1qr0tfs
 iRW6HLLgdl3aF4uln2yzFDMIbCNNVub9cxWwIl6KU8gdQEr4Usi4ier7ss4ypkCt0M
 Uk/Qisf3oyRDQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH RFC net-next 2/5] dt-bindings: net: dsa: mt7530: Add support
 for port 5
Date: Mon, 24 Jun 2019 16:52:48 +0200
Message-Id: <20190624145251.4849-3-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624145251.4849-1-opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_075321_153861_A207AC7A 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: devicetree@vger.kernel.org, frank-w@public-files.de, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TVQ3NTMwIHBvcnQgNSBoYXMgbWFueSBtb2Rlcy9jb25maWd1cmF0aW9ucy4KVXBkYXRlIHRoZSBk
b2N1bWVudGF0aW9uIGhvdyB0byB1c2UgcG9ydCA1LgoKU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFu
IERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CkNDOiBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZwotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3NTMwLnR4dCAgICB8
IDIxNSArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMTUgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNh
L210NzUzMC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9t
dDc1MzAudHh0CmluZGV4IDQ3YWEyMDVlZTBiZC4uZjM0ODY3ODBmMmMyIDEwMDY0NAotLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0CisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL210NzUzMC50eHQKQEAg
LTM1LDYgKzM1LDM5IEBAIFJlcXVpcmVkIHByb3BlcnRpZXMgZm9yIHRoZSBjaGlsZCBub2RlcyB3
aXRoaW4gcG9ydHMgY29udGFpbmVyOgogLSBwaHktbW9kZTogU3RyaW5nLCBtdXN0IGJlIGVpdGhl
ciAidHJnbWlpIiBvciAicmdtaWkiIGZvciBwb3J0IGxhYmVsZWQKIAkgImNwdSIuCiAKK1BvcnQg
NSBvZiB0aGUgc3dpdGNoIGlzIG11eGVkIGJldHdlZW46CisxLiBHTUFDNTogR01BQzUgY2FuIGlu
dGVyZmFjZSB3aXRoIGFub3RoZXIgZXh0ZXJuYWwgTUFDIG9yIFBIWS4KKzIuIFBIWSBvZiBwb3J0
IDAgb3IgcG9ydCA0OiBQSFkgaW50ZXJmYWNlcyB3aXRoIGFuIGV4dGVybmFsIE1BQyBsaWtlIDJu
ZCBHTUFDCisgICBvZiB0aGUgU09DLiBVc2VkIGluIG1hbnkgc2V0dXBzIHdoZXJlIHBvcnQgMC80
IGJlY29tZXMgdGhlIFdBTiBwb3J0LgorCitQb3J0IDUgbW9kZXMvY29uZmlndXJhdGlvbnM6Cisx
LiBQb3J0IDUgaXMgZGlzYWJsZWQgYW5kIGlzb2xhdGVkOiBBbiBleHRlcm5hbCBwaHkgY2FuIGlu
dGVyZmFjZSB0byB0aGUgMm5kCisgICBHTUFDIG9mIHRoZSBTT0MuCisgICBJbiB0aGUgY2FzZSBv
ZiBhIGJ1aWxkLWluIE1UNzUzMCBzd2l0Y2gsIHBvcnQgNSBzaGFyZXMgdGhlIFJHTUlJIGJ1cyB3
aXRoIDJuZAorICAgR01BQyBhbmQgYW4gb3B0aW9uYWwgZXh0ZXJuYWwgcGh5LiBNaW5kIHRoZSBH
UElPL3BpbmN0bCBzZXR0aW5ncyBvZiB0aGUgU09DIQorMi4gUG9ydCA1IGlzIG11eGVkIHRvIFBI
WSBvZiBwb3J0IDAvNDogUG9ydCAwLzQgaW50ZXJmYWNlcyB3aXRoIDJuZCBHTUFDLgorICAgSXQg
aXMgYSBzaW1wbGUgTUFDIHRvIFBIWSBpbnRlcmZhY2UsIHBvcnQgNSBuZWVkcyB0byBiZSBzZXR1
cCBmb3IgeE1JSSBtb2RlCisgICBhbmQgUkdNSUkgZGVsYXkuCiszLiBQb3J0IDUgaXMgbXV4ZWQg
dG8gR01BQzUgYW5kIGNhbiBpbnRlcmZhY2UgdG8gYW4gZXh0ZXJuYWwgcGh5LgorICAgUG9ydCA1
IGJlY29tZXMgYW4gZXh0cmEgc3dpdGNoIHBvcnQuCisgICBPbmx5IHdvcmtzIG9uIHBsYXRmb3Jt
IHdoZXJlIGV4dGVybmFsIHBoeSBUWDwtPlJYIGxpbmVzIGFyZSBzd2FwcGVkLgorICAgTGlrZSBp
biB0aGUgVWJpcXVpdGkgRVItWC1TRlAuCis0LiBQb3J0IDUgaXMgbXV4ZWQgdG8gR01BQzUgYW5k
IGludGVyZmFjZXMgd2l0aCB0aGUgMm5kIEdBTUMgYXMgMm5kIENQVSBwb3J0LgorICAgQ3VycmVu
dGx5IGEgMm5kIENQVSBwb3J0IGlzIG5vdCBzdXBwb3J0ZWQgYnkgRFNBIGNvZGUuCisKK0RlcGVu
ZGluZyBvbiBob3cgdGhlIGV4dGVybmFsIFBIWSBpcyB3aXJlZDoKKzEuIG5vcm1hbDogVGhlIFBI
WSBjYW4gb25seSBjb25uZWN0IHRvIDJuZCBHTUFDIGJ1dCBub3QgdG8gdGhlIHN3aXRjaAorMi4g
c3dhcHBlZDogUkdNSUkgVFgsIFJYIGFyZSBzd2FwcGVkOyBleHRlcm5hbCBwaHkgaW50ZXJmYWNl
IHdpdGggdGhlIHN3aXRjaCBhcworICAgYSBldGhlcm5ldCBwb3J0LiBCdXQgY2FuJ3QgaW50ZXJm
YWNlIHRvIHRoZSAybmQgR01BQy4KKworQmFzZWQgb24gdGhlIERUIHRoZSBwb3J0IDUgbW9kZSBp
cyBjb25maWd1cmVkLgorCitEcml2ZXIgdHJpZXMgdG8gbG9va3VwIHRoZSBwaHktaGFuZGxlIG9m
IHRoZSAybmQgR01BQyBvZiB0aGUgbWFzdGVyIGRldmljZS4KK1doZW4gcGh5LWhhbmRsZSBtYXRj
aGVzIFBIWSBvZiBwb3J0IDAgb3IgNCB0aGVuIHBvcnQgNSBzZXQtdXAgYXMgbW9kZSAyLgorcGh5
LW1vZGUgbXVzdCBiZSBzZXQsIHNlZSBhbHNvIGV4YW1wbGUgMiBiZWxvdyEKKyAqIG10NzYyMTog
cGh5LW1vZGUgPSAicmdtaWktdHhpZCI7CisgKiBtdDc2MjM6IHBoeS1tb2RlID0gInJnbWlpIjsK
KwogU2VlIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL2RzYS50eHQg
Zm9yIGEgbGlzdCBvZiBhZGRpdGlvbmFsCiByZXF1aXJlZCwgb3B0aW9uYWwgcHJvcGVydGllcyBh
bmQgaG93IHRoZSBpbnRlZ3JhdGVkIHN3aXRjaCBzdWJub2RlcyBtdXN0CiBiZSBzcGVjaWZpZWQu
CkBAIC05NCwzICsxMjcsMTg1IEBAIEV4YW1wbGU6CiAJCQl9OwogCQl9OwogCX07CisKK0V4YW1w
bGUgMjogTVQ3NjIxOiBQb3J0IDQgaXMgV0FOIHBvcnQ6IDJuZCBHTUFDIC0+IFBvcnQgNSAtPiBQ
SFkgcG9ydCA0LgorCismZXRoIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwlnbWFjMDogbWFjQDAg
eworCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MD47CisJCXBo
eS1tb2RlID0gInJnbWlpIjsKKworCQlmaXhlZC1saW5rIHsKKwkJCXNwZWVkID0gPDEwMDA+Owor
CQkJZnVsbC1kdXBsZXg7CisJCQlwYXVzZTsKKwkJfTsKKwl9OworCisJZ21hYzE6IG1hY0AxIHsK
KwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKKwkJcmVnID0gPDE+OworCQlwaHkt
bW9kZSA9ICJyZ21paS10eGlkIjsKKwkJcGh5LWhhbmRsZSA9IDwmcGh5ND47CisJfTsKKworCW1k
aW86IG1kaW8tYnVzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNzaXplLWNlbGxzID0g
PDA+OworCisJCS8qIEludGVybmFsIHBoeSAqLworCQlwaHk0OiBldGhlcm5ldC1waHlANCB7CisJ
CQlyZWcgPSA8ND47CisJCX07CisKKwkJbXQ3NTMwOiBzd2l0Y2hAMWYgeworCQkJY29tcGF0aWJs
ZSA9ICJtZWRpYXRlayxtdDc2MjEiOworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6
ZS1jZWxscyA9IDwwPjsKKwkJCXJlZyA9IDwweDFmPjsKKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7CisJCQltZWRpYXRlayxtY207CisKKwkJCXJlc2V0cyA9IDwmcnN0Y3RybCAyPjsKKwkJ
CXJlc2V0LW5hbWVzID0gIm1jbSI7CisKKwkJCXBvcnRzIHsKKwkJCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQkJCXBvcnRAMCB7CisJCQkJCXJlZyA9
IDwwPjsKKwkJCQkJbGFiZWwgPSAibGFuMCI7CisJCQkJfTsKKworCQkJCXBvcnRAMSB7CisJCQkJ
CXJlZyA9IDwxPjsKKwkJCQkJbGFiZWwgPSAibGFuMSI7CisJCQkJfTsKKworCQkJCXBvcnRAMiB7
CisJCQkJCXJlZyA9IDwyPjsKKwkJCQkJbGFiZWwgPSAibGFuMiI7CisJCQkJfTsKKworCQkJCXBv
cnRAMyB7CisJCQkJCXJlZyA9IDwzPjsKKwkJCQkJbGFiZWwgPSAibGFuMyI7CisJCQkJfTsKKwor
LyogQ29tbWVudGVkIG91dC4gUG9ydCA0IGlzIGhhbmRsZWQgYnkgMm5kIEdNQUMuCisJCQkJcG9y
dEA0IHsKKwkJCQkJcmVnID0gPDQ+OworCQkJCQlsYWJlbCA9ICJsYW40IjsKKwkJCQl9OworKi8K
KworCQkJCWNwdV9wb3J0MDogcG9ydEA2IHsKKwkJCQkJcmVnID0gPDY+OworCQkJCQlsYWJlbCA9
ICJjcHUiOworCQkJCQlldGhlcm5ldCA9IDwmZ21hYzA+OworCQkJCQlwaHktbW9kZSA9ICJyZ21p
aSI7CisKKwkJCQkJZml4ZWQtbGluayB7CisJCQkJCQlzcGVlZCA9IDwxMDAwPjsKKwkJCQkJCWZ1
bGwtZHVwbGV4OworCQkJCQkJcGF1c2U7CisJCQkJCX07CisJCQkJfTsKKwkJCX07CisJCX07CisJ
fTsKK307CisKK0V4YW1wbGUgMzogTVQ3NjIxOiBQb3J0IDUgaXMgY29ubmVjdGVkIHRvIGV4dGVy
bmFsIFBIWTogUG9ydCA1IC0+IGV4dGVybmFsIFBIWS4KKworJmV0aCB7CisJc3RhdHVzID0gIm9r
YXkiOworCisJZ21hYzA6IG1hY0AwIHsKKwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFj
IjsKKwkJcmVnID0gPDA+OworCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJZml4ZWQtbGluayB7
CisJCQlzcGVlZCA9IDwxMDAwPjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7CisJCX07CisJ
fTsKKworCW1kaW86IG1kaW8tYnVzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNzaXpl
LWNlbGxzID0gPDA+OworCisJCS8qIEV4dGVybmFsIHBoeSAqLworCQllcGh5NTogZXRoZXJuZXQt
cGh5QDcgeworCQkJcmVnID0gPDc+OworCQl9OworCisJCW10NzUzMDogc3dpdGNoQDFmIHsKKwkJ
CWNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ3NjIxIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OworCQkJI3NpemUtY2VsbHMgPSA8MD47CisJCQlyZWcgPSA8MHgxZj47CisJCQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOworCQkJbWVkaWF0ZWssbWNtOworCisJCQlyZXNldHMgPSA8JnJzdGN0
cmwgMj47CisJCQlyZXNldC1uYW1lcyA9ICJtY20iOworCisJCQlwb3J0cyB7CisJCQkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJCQlwb3J0QDAgewor
CQkJCQlyZWcgPSA8MD47CisJCQkJCWxhYmVsID0gImxhbjAiOworCQkJCX07CisKKwkJCQlwb3J0
QDEgeworCQkJCQlyZWcgPSA8MT47CisJCQkJCWxhYmVsID0gImxhbjEiOworCQkJCX07CisKKwkJ
CQlwb3J0QDIgeworCQkJCQlyZWcgPSA8Mj47CisJCQkJCWxhYmVsID0gImxhbjIiOworCQkJCX07
CisKKwkJCQlwb3J0QDMgeworCQkJCQlyZWcgPSA8Mz47CisJCQkJCWxhYmVsID0gImxhbjMiOwor
CQkJCX07CisKKwkJCQlwb3J0QDQgeworCQkJCQlyZWcgPSA8ND47CisJCQkJCWxhYmVsID0gImxh
bjQiOworCQkJCX07CisKKwkJCQlwb3J0QDUgeworCQkJCQlyZWcgPSA8NT47CisJCQkJCWxhYmVs
ID0gImxhbjUiOworCQkJCQlwaHktbW9kZSA9ICJyZ21paSI7CisJCQkJCXBoeS1oYW5kbGUgPSA8
JmVwaHk1PjsKKwkJCQl9OworCisJCQkJY3B1X3BvcnQwOiBwb3J0QDYgeworCQkJCQlyZWcgPSA8
Nj47CisJCQkJCWxhYmVsID0gImNwdSI7CisJCQkJCWV0aGVybmV0ID0gPCZnbWFjMD47CisJCQkJ
CXBoeS1tb2RlID0gInJnbWlpIjsKKworCQkJCQlmaXhlZC1saW5rIHsKKwkJCQkJCXNwZWVkID0g
PDEwMDA+OworCQkJCQkJZnVsbC1kdXBsZXg7CisJCQkJCQlwYXVzZTsKKwkJCQkJfTsKKwkJCQl9
OworCQkJfTsKKwkJfTsKKwl9OworfTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApM
aW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
