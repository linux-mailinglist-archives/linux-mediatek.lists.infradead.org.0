Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DD713022
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 16:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGtYvJPyOOWogrTJrNlOI01cT0mPd2xD9jFF8PyXnTw=; b=LTvwXSamXFrFRf
	TZe2LxF4d1+K4iXVZQgOY6ew2o5W07puVP31AU6/BkYgo/EvnTqRaoKQjga65Yq7zPfgc2rzQaGyQ
	87Aj5LuqFaFL1vMMa5mMZC/MKrerTGWMDNo7FhZEtxN7OqtooAHmS3WoWIB6VGDjY7gcZCn4cALQN
	zCUWxDsmfKbOV0/ohX5yVzoQZ5PToasmptnPGo0Wbhyysb55KJvC0eBTjv2+I/puIRazWhTzzaiyz
	pzaZTQA5SKlUYcqpknJ84HBxdFnvsFeryLpz+XBcAr1Ju0J/W69OEiPkEjTAnAlq9I6tpDzfM9DKo
	pIQgBEQTlPQbmWept7JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZAH-0000m0-2W; Fri, 03 May 2019 14:27:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZ9w-0000Ji-Bl; Fri, 03 May 2019 14:27:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6E3564AC9;
 Fri,  3 May 2019 16:27:30 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a21e6f1c;
 Fri, 3 May 2019 16:27:29 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4 02/10] dt-bindings: doc: reflect new NVMEM
 of_get_mac_address behaviour
Date: Fri,  3 May 2019 16:27:07 +0200
Message-Id: <1556893635-18549-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556893635-18549-1-git-send-email-ynezz@true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_072732_990403_AB77941E 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

QXMgb2ZfZ2V0X21hY19hZGRyZXNzIG5vdyBzdXBwb3J0cyBOVk1FTSB1bmRlciB0aGUgaG9vZCwg
d2UgbmVlZCB0byB1cGRhdGUKdGhlIGJpbmRpbmdzIGRvY3VtZW50YXRpb24gd2l0aCB0aGUgbmV3
IG52bWVtLWNlbGwqIHByb3BlcnRpZXMsIHdoaWNoIHdvdWxkCm1lYW4gY29weSZwYXN0aW5nIGEg
bG90IG9mIHJlZHVuZGFudCBpbmZvcm1hdGlvbiB0byBldmVyeSBiaW5kaW5nCmRvY3VtZW50YXRp
b24gY3VycmVudGx5IHJlZmVyZW5jaW5nIHNvbWUgb2YgdGhlIE1BQyBhZGRyZXNzIHByb3BlcnRp
ZXMuCgpTbyBJJ3ZlIGp1c3QgcmVtb3ZlZCBhbGwgdGhlIHJlZmVyZW5jZXMgdG8gdGhlIG9wdGlv
bmFsIE1BQyBhZGRyZXNzCnByb3BlcnRpZXMgYW5kIHJlcGxhY2VkIHRoZW0gd2l0aCB0aGUgc21h
bGwgbm90ZSByZWZlcmVuY2luZwpuZXQvZXRoZXJuZXQudHh0IGZpbGUuCgpTaWduZWQtb2ZmLWJ5
OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KCiBDaGFuZ2VzIHNpbmNlIHYyOgoK
ICogcmVwbGFjZWQgb25seSBNQUMgYWRkcmVzcyByZWxhdGVkIG9wdGlvbmFsIHByb3BlcnRpZXMg
d2l0aCBhIHRleHQKICAgcmVmZXJlbmNpbmcgZXRoZXJuZXQudHh0CgogRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9hbHRlcmFfdHNlLnR4dCAgICAgICAgICAgfCAgNSArKy0t
LQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9hbWQteGdiZS50eHQgICAg
ICAgICAgICAgfCAgNSArKystLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9icmNtLGFtYWMudHh0ICAgICAgICAgICAgfCAgNCArKy0tCiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L2Nwc3cudHh0ICAgICAgICAgICAgICAgICB8ICA0ICsrKy0KIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZGF2aW5jaV9lbWFjLnR4dCAgICAg
ICAgIHwgIDUgKysrLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNh
L2RzYS50eHQgICAgICAgICAgICAgIHwgIDUgKystLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQudHh0ICAgICAgICAgICAgIHwgIDYgKysrKy0tCiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2hpc2lsaWNvbi1mZW1hYy50eHQgICAg
ICB8ICA0ICsrKy0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9oaXNpbGljb24taGl4NWhk
Mi1nbWFjLnR4dCAgICAgICAgIHwgIDQgKysrLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9rZXlzdG9uZS1uZXRjcC50eHQgICAgICAgfCAxMCArKysrKy0tLS0tCiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21hY2IudHh0ICAgICAgICAgICAgICAg
ICB8ICA1ICsrLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21hcnZl
bGwtcHhhMTY4LnR4dCAgICAgICB8ICA0ICsrKy0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvbWljcm9jaGlwLGVuYzI4ajYwLnR4dCAgIHwgIDMgKystCiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21pY3JvY2hpcCxsYW43OHh4LnR4dCAgICB8ICA1
ICsrLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3FjYSxxY2E3MDAw
LnR4dCAgICAgICAgICB8ICA0ICsrKy0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvc2Ftc3VuZy1zeGdiZS50eHQgICAgICAgIHwgIDQgKysrLQogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L3NucHMsZHdjLXFvcy1ldGhlcm5ldC50eHQgICAgICAgICAgfCAgNSArKyst
LQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3NvY2lvbmV4dCx1bmlwaGllci1hdmU0LnR4
dCAgICAgICAgfCAgNCArKy0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L3NvY2lvbmV4dC1uZXRzZWMudHh0ICAgICB8ICA1ICsrKy0tCiAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWssbXQ3Ni50eHQgICAgICAgICB8ICA1ICsrKy0tCiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3FjYSxhdGg5ay50
eHQgICB8ICA0ICsrLS0KIDIxIGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDQyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvYWx0ZXJhX3RzZS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2FsdGVyYV90c2UudHh0CmluZGV4IDBlMjFkZjkuLjBiN2Q0ZDMgMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYWx0ZXJhX3RzZS50eHQKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9hbHRlcmFfdHNlLnR4dApAQCAt
NDYsOSArNDYsOCBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCS0gcmVnOiBwaHkgaWQgdXNlZCB0
byBjb21tdW5pY2F0ZSB0byBwaHkuCiAJLSBkZXZpY2VfdHlwZTogTXVzdCBiZSAiZXRoZXJuZXQt
cGh5Ii4KIAotT3B0aW9uYWwgcHJvcGVydGllczoKLS0gbG9jYWwtbWFjLWFkZHJlc3M6IFNlZSBl
dGhlcm5ldC50eHQgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LgotLSBtYXgtZnJhbWUtc2l6ZTogU2Vl
IGV0aGVybmV0LnR4dCBpbiB0aGUgc2FtZSBkaXJlY3RvcnkuCitUaGUgTUFDIGFkZHJlc3Mgd2ls
bCBiZSBkZXRlcm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzIGRlZmluZWQgaW4K
K2V0aGVybmV0LnR4dC4KIAogRXhhbXBsZToKIApkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9hbWQteGdiZS50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L2FtZC14Z2JlLnR4dAppbmRleCA5M2RjYjc5Li45YzI3ZGZjIDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2FtZC14Z2Jl
LnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2FtZC14Z2Jl
LnR4dApAQCAtMjQsOCArMjQsNiBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogLSBwaHktbW9kZTog
U2VlIGV0aGVybmV0LnR4dCBmaWxlIGluIHRoZSBzYW1lIGRpcmVjdG9yeQogCiBPcHRpb25hbCBw
cm9wZXJ0aWVzOgotLSBtYWMtYWRkcmVzczogbWFjIGFkZHJlc3MgdG8gYmUgYXNzaWduZWQgdG8g
dGhlIGRldmljZS4gQ2FuIGJlIG92ZXJyaWRkZW4KLSAgYnkgVUVGSS4KIC0gZG1hLWNvaGVyZW50
OiBQcmVzZW50IGlmIGRtYSBvcGVyYXRpb25zIGFyZSBjb2hlcmVudAogLSBhbWQscGVyLWNoYW5u
ZWwtaW50ZXJydXB0OiBJbmRpY2F0ZXMgdGhhdCBSeCBhbmQgVHggY29tcGxldGUgd2lsbCBnZW5l
cmF0ZQogICBhIHVuaXF1ZSBpbnRlcnJ1cHQgZm9yIGVhY2ggRE1BIGNoYW5uZWwgLSB0aGlzIHJl
cXVpcmVzIGFuIGFkZGl0aW9uYWwKQEAgLTM0LDYgKzMyLDkgQEAgT3B0aW9uYWwgcHJvcGVydGll
czoKICAgICAwIC0gMUdiRSBhbmQgMTBHYkUgKGRlZmF1bHQpCiAgICAgMSAtIDIuNUdiRSBhbmQg
MTBHYkUKIAorVGhlIE1BQyBhZGRyZXNzIHdpbGwgYmUgZGV0ZXJtaW5lZCB1c2luZyB0aGUgb3B0
aW9uYWwgcHJvcGVydGllcyBkZWZpbmVkIGluCitldGhlcm5ldC50eHQuCisKIFRoZSBmb2xsb3dp
bmcgb3B0aW9uYWwgcHJvcGVydGllcyBhcmUgcmVwcmVzZW50ZWQgYnkgYW4gYXJyYXkgd2l0aCBl
YWNoCiB2YWx1ZSBjb3JyZXNwb25kaW5nIHRvIGEgcGFydGljdWxhciBzcGVlZC4gVGhlIGZpcnN0
IGFycmF5IHZhbHVlIHJlcHJlc2VudHMKIHRoZSBzZXR0aW5nIGZvciB0aGUgMUdiRSBzcGVlZCwg
dGhlIHNlY29uZCB2YWx1ZSBmb3IgdGhlIDIuNUdiRSBzcGVlZCBhbmQKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnR4dAppbmRleCAwYmZh
ZDY1Li4wMTIwZWJlIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2JyY20sYW1hYy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL25ldC9icmNtLGFtYWMudHh0CkBAIC0xNiw4ICsxNiw4IEBAIFJlcXVpcmVkIHByb3BlcnRp
ZXM6CiAJCQkJcmVnaXN0ZXJzIChyZXF1aXJlZCBmb3IgTm9ydGhzdGFyMikKICAtIGludGVycnVw
dHM6CUludGVycnVwdCBudW1iZXIKIAotT3B0aW9uYWwgcHJvcGVydGllczoKLS0gbWFjLWFkZHJl
c3M6CVNlZSBldGhlcm5ldC50eHQgZmlsZSBpbiB0aGUgc2FtZSBkaXJlY3RvcnkKK1RoZSBNQUMg
YWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNpbmcgdGhlIG9wdGlvbmFsIHByb3BlcnRpZXMK
K2RlZmluZWQgaW4gZXRoZXJuZXQudHh0LgogCiBFeGFtcGxlczoKIApkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jcHN3LnR4dCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY3Bzdy50eHQKaW5kZXggMzI2NGUxOS4uN2M3YWM1
ZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jcHN3
LnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nwc3cudHh0
CkBAIC00OSwxMCArNDksMTIgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKIAogT3B0aW9uYWwgcHJv
cGVydGllczoKIC0gZHVhbF9lbWFjX3Jlc192bGFuCTogU3BlY2lmaWVzIFZJRCB0byBiZSB1c2Vk
IHRvIHNlZ3JlZ2F0ZSB0aGUgcG9ydHMKLS0gbWFjLWFkZHJlc3MJCTogU2VlIGV0aGVybmV0LnR4
dCBmaWxlIGluIHRoZSBzYW1lIGRpcmVjdG9yeQogLSBwaHlfaWQJCTogU3BlY2lmaWVzIHNsYXZl
IHBoeSBpZCAoZGVwcmVjYXRlZCwgdXNlIHBoeS1oYW5kbGUpCiAtIHBoeS1oYW5kbGUJCTogU2Vl
IGV0aGVybmV0LnR4dCBmaWxlIGluIHRoZSBzYW1lIGRpcmVjdG9yeQogCitUaGUgTUFDIGFkZHJl
c3Mgd2lsbCBiZSBkZXRlcm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzCitkZWZp
bmVkIGluIGV0aGVybmV0LnR4dC4KKwogU2xhdmUgc3ViLW5vZGVzOgogLSBmaXhlZC1saW5rCQk6
IFNlZSBmaXhlZC1saW5rLnR4dCBmaWxlIGluIHRoZSBzYW1lIGRpcmVjdG9yeQogCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RhdmluY2lfZW1hYy50
eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RhdmluY2lfZW1hYy50
eHQKaW5kZXggY2E4M2RjYy4uNWUzNTc5ZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9kYXZpbmNpX2VtYWMudHh0CisrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZGF2aW5jaV9lbWFjLnR4dApAQCAtMjAsMTEgKzIwLDEy
IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiBPcHRpb25hbCBwcm9wZXJ0aWVzOgogLSBwaHktaGFu
ZGxlOiBTZWUgZXRoZXJuZXQudHh0IGZpbGUgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LgogICAgICAg
ICAgICAgICBJZiBhYnNlbnQsIGRhdmluY2lfZW1hYyBkcml2ZXIgZGVmYXVsdHMgdG8gMTAwL0ZV
TEwuCi0tIG52bWVtLWNlbGxzOiBwaGFuZGxlLCByZWZlcmVuY2UgdG8gYW4gbnZtZW0gbm9kZSBm
b3IgdGhlIE1BQyBhZGRyZXNzCi0tIG52bWVtLWNlbGwtbmFtZXM6IHN0cmluZywgc2hvdWxkIGJl
ICJtYWMtYWRkcmVzcyIgaWYgbnZtZW0gaXMgdG8gYmUgdXNlZAogLSB0aSxkYXZpbmNpLXJtaWkt
ZW46IDEgYnl0ZSwgMSBtZWFucyB1c2UgUk1JSQogLSB0aSxkYXZpbmNpLW5vLWJkLXJhbTogYm9v
bGVhbiwgZG9lcyBFTUFDIGhhdmUgQkQgUkFNPwogCitUaGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBk
ZXRlcm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzCitkZWZpbmVkIGluIGV0aGVy
bmV0LnR4dC4KKwogRXhhbXBsZSAoZW5id19jbWMgYm9hcmQpOgogCWV0aDA6IGVtYWNAMWUyMDAw
MCB7CiAJCWNvbXBhdGlibGUgPSAidGksZGF2aW5jaS1kbTY0NjctZW1hYyI7CmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9kc2EudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvZHNhLnR4dAppbmRleCBkNjZh
NTI5Li5hMjM3NTY3IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2RzYS9kc2EudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvZHNhL2RzYS50eHQKQEAgLTcxLDkgKzcxLDggQEAgcHJvcGVydGllcywgZGVzY3JpYmVk
IGluIGJpbmRpbmcgZG9jdW1lbnRzOgogCQkJICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L2ZpeGVkLWxpbmsudHh0CiAJCQkgIGZvciBkZXRhaWxzLgogCi0tIGxvY2FsLW1h
Yy1hZGRyZXNzCTogU2VlCi0JCQkgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9u
ZXQvZXRoZXJuZXQudHh0Ci0JCQkgIGZvciBkZXRhaWxzLgorVGhlIE1BQyBhZGRyZXNzIHdpbGwg
YmUgZGV0ZXJtaW5lZCB1c2luZyB0aGUgb3B0aW9uYWwgcHJvcGVydGllcworZGVmaW5lZCBpbiBl
dGhlcm5ldC50eHQuCiAKIEV4YW1wbGUKIApkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LnR4dAppbmRleCBhNjg2MjE1Li42OTkyNDQ0IDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LnR4
dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LnR4
dApAQCAtNCwxMiArNCwxNCBAQCBOT1RFOiBBbGwgJ3BoeSonIHByb3BlcnRpZXMgZG9jdW1lbnRl
ZCBiZWxvdyBhcmUgRXRoZXJuZXQgc3BlY2lmaWMuIEZvciB0aGUKIGdlbmVyaWMgUEhZICdwaHlz
JyBwcm9wZXJ0eSwgc2VlCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Bo
eS1iaW5kaW5ncy50eHQuCiAKLS0gbG9jYWwtbWFjLWFkZHJlc3M6IGFycmF5IG9mIDYgYnl0ZXMs
IHNwZWNpZmllcyB0aGUgTUFDIGFkZHJlc3MgdGhhdCB3YXMKLSAgYXNzaWduZWQgdG8gdGhlIG5l
dHdvcmsgZGV2aWNlOwogLSBtYWMtYWRkcmVzczogYXJyYXkgb2YgNiBieXRlcywgc3BlY2lmaWVz
IHRoZSBNQUMgYWRkcmVzcyB0aGF0IHdhcyBsYXN0IHVzZWQgYnkKICAgdGhlIGJvb3QgcHJvZ3Jh
bTsgc2hvdWxkIGJlIHVzZWQgaW4gY2FzZXMgd2hlcmUgdGhlIE1BQyBhZGRyZXNzIGFzc2lnbmVk
IHRvCiAgIHRoZSBkZXZpY2UgYnkgdGhlIGJvb3QgcHJvZ3JhbSBpcyBkaWZmZXJlbnQgZnJvbSB0
aGUgImxvY2FsLW1hYy1hZGRyZXNzIgogICBwcm9wZXJ0eTsKKy0gbG9jYWwtbWFjLWFkZHJlc3M6
IGFycmF5IG9mIDYgYnl0ZXMsIHNwZWNpZmllcyB0aGUgTUFDIGFkZHJlc3MgdGhhdCB3YXMKKyAg
YXNzaWduZWQgdG8gdGhlIG5ldHdvcmsgZGV2aWNlOworLSBudm1lbS1jZWxsczogcGhhbmRsZSwg
cmVmZXJlbmNlIHRvIGFuIG52bWVtIG5vZGUgZm9yIHRoZSBNQUMgYWRkcmVzcworLSBudm1lbS1j
ZWxsLW5hbWVzOiBzdHJpbmcsIHNob3VsZCBiZSAibWFjLWFkZHJlc3MiIGlmIG52bWVtIGlzIHRv
IGJlIHVzZWQKIC0gbWF4LXNwZWVkOiBudW1iZXIsIHNwZWNpZmllcyBtYXhpbXVtIHNwZWVkIGlu
IE1iaXQvcyBzdXBwb3J0ZWQgYnkgdGhlIGRldmljZTsKIC0gbWF4LWZyYW1lLXNpemU6IG51bWJl
ciwgbWF4aW11bSB0cmFuc2ZlciB1bml0IChJRUVFIGRlZmluZWQgTVRVKSwgcmF0aGVyIHRoYW4K
ICAgdGhlIG1heGltdW0gZnJhbWUgc2l6ZSAodGhlcmUncyBjb250cmFkaWN0aW9uIGluIHRoZSBE
ZXZpY2V0cmVlCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2hpc2lsaWNvbi1mZW1hYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2hpc2lsaWNvbi1mZW1hYy50eHQKaW5kZXggZDExYWY1ZS4uNWY5Njk3NiAxMDA2NDQK
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9oaXNpbGljb24tZmVt
YWMudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvaGlzaWxp
Y29uLWZlbWFjLnR4dApAQCAtMTQsNyArMTQsNiBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCXRo
ZSBQSFkgcmVzZXQgc2lnbmFsKG9wdGlvbmFsKS4KIC0gcmVzZXQtbmFtZXM6IHNob3VsZCBjb250
YWluIHRoZSByZXNldCBzaWduYWwgbmFtZSAibWFjIihyZXF1aXJlZCkKIAlhbmQgInBoeSIob3B0
aW9uYWwpLgotLSBtYWMtYWRkcmVzczogc2VlIGV0aGVybmV0LnR4dCBbMV0uCiAtIHBoeS1tb2Rl
OiBzZWUgZXRoZXJuZXQudHh0IFsxXS4KIC0gcGh5LWhhbmRsZTogc2VlIGV0aGVybmV0LnR4dCBb
MV0uCiAtIGhpc2lsaWNvbixwaHktcmVzZXQtZGVsYXlzLXVzOiB0cmlwbGV0IG9mIGRlbGF5cyBp
ZiBQSFkgcmVzZXQgc2lnbmFsIGdpdmVuLgpAQCAtMjIsNiArMjEsOSBAQCBSZXF1aXJlZCBwcm9w
ZXJ0aWVzOgogCVRoZSAybmQgY2VsbCBpcyByZXNldCBwdWxzZSBpbiBtaWNybyBzZWNvbmRzLgog
CVRoZSAzcmQgY2VsbCBpcyByZXNldCBwb3N0LWRlbGF5IGluIG1pY3JvIHNlY29uZHMuCiAKK1Ro
ZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNpbmcgdGhlIG9wdGlvbmFsIHByb3Bl
cnRpZXMKK2RlZmluZWQgaW4gZXRoZXJuZXQudHh0WzFdLgorCiBbMV0gRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC50eHQKIAogRXhhbXBsZToKZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvaGlzaWxpY29uLWhpeDVo
ZDItZ21hYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2hpc2ls
aWNvbi1oaXg1aGQyLWdtYWMudHh0CmluZGV4IGVlYTczYWQuLmNkZGY0NmIgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvaGlzaWxpY29uLWhpeDVoZDIt
Z21hYy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9oaXNp
bGljb24taGl4NWhkMi1nbWFjLnR4dApAQCAtMTgsNyArMTgsNiBAQCBSZXF1aXJlZCBwcm9wZXJ0
aWVzOgogLSAjc2l6ZS1jZWxsczogbXVzdCBiZSA8MD4uCiAtIHBoeS1tb2RlOiBzZWUgZXRoZXJu
ZXQudHh0IFsxXS4KIC0gcGh5LWhhbmRsZTogc2VlIGV0aGVybmV0LnR4dCBbMV0uCi0tIG1hYy1h
ZGRyZXNzOiBzZWUgZXRoZXJuZXQudHh0IFsxXS4KIC0gY2xvY2tzOiBjbG9jayBwaGFuZGxlIGFu
ZCBzcGVjaWZpZXIgcGFpci4KIC0gY2xvY2stbmFtZXM6IGNvbnRhaW4gdGhlIGNsb2NrIG5hbWUg
Im1hY19jb3JlIihyZXF1aXJlZCkgYW5kICJtYWNfaWZjIihvcHRpb25hbCkuCiAtIHJlc2V0czog
c2hvdWxkIGNvbnRhaW4gdGhlIHBoYW5kbGUgdG8gdGhlIE1BQyBjb3JlIHJlc2V0IHNpZ25hbChv
cHRpb25hbCksCkBAIC0zMSw2ICszMCw5IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAJVGhlIDJu
ZCBjZWxsIGlzIHJlc2V0IHB1bHNlIGluIG1pY3JvIHNlY29uZHMuCiAJVGhlIDNyZCBjZWxsIGlz
IHJlc2V0IHBvc3QtZGVsYXkgaW4gbWljcm8gc2Vjb25kcy4KIAorVGhlIE1BQyBhZGRyZXNzIHdp
bGwgYmUgZGV0ZXJtaW5lZCB1c2luZyB0aGUgcHJvcGVydGllcyBkZWZpbmVkIGluCitldGhlcm5l
dC50eHRbMV0uCisKIC0gUEhZIHN1Ym5vZGU6IGluaGVyaXRzIGZyb20gcGh5IGJpbmRpbmcgWzJd
CiAKIFsxXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LnR4
dApkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9rZXlz
dG9uZS1uZXRjcC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tl
eXN0b25lLW5ldGNwLnR4dAppbmRleCAwNGJhMWRjLi4zYTY1YWFiIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4dAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4
dApAQCAtMTM1LDE0ICsxMzUsMTQgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKIAkJYXJlIHN3YXBw
ZWQuICBUaGUgbmV0Y3AgZHJpdmVyIHdpbGwgc3dhcCB0aGUgdHdvIERXT1JEcwogCQliYWNrIHRv
IHRoZSBwcm9wZXIgb3JkZXIgd2hlbiB0aGlzIHByb3BlcnR5IGlzIHNldCB0byAyCiAJCXdoZW4g
aXQgb2J0YWlucyB0aGUgbWFjIGFkZHJlc3MgZnJvbSBlZnVzZS4KLS0gbG9jYWwtbWFjLWFkZHJl
c3M6CXRoZSBkcml2ZXIgaXMgZGVzaWduZWQgdG8gdXNlIHRoZSBvZl9nZXRfbWFjX2FkZHJlc3Mg
YXBpCi0JCQlvbmx5IGlmIGVmdXNlLW1hYyBpcyAwLiBXaGVuIGVmdXNlLW1hYyBpcyAwLCB0aGUg
TUFDCi0JCQlhZGRyZXNzIGlzIG9idGFpbmVkIGZyb20gbG9jYWwtbWFjLWFkZHJlc3MuIElmIHRo
aXMKLQkJCWF0dHJpYnV0ZSBpcyBub3QgcHJlc2VudCwgdGhlbiB0aGUgZHJpdmVyIHdpbGwgdXNl
IGEKLQkJCXJhbmRvbSBNQUMgYWRkcmVzcy4KIC0gIm5ldGNwLWRldmljZSBsYWJlbCI6CXBoYW5k
bGUgdG8gdGhlIGRldmljZSBzcGVjaWZpY2F0aW9uIGZvciBlYWNoIG9mIE5ldENQCiAJCQlzdWIt
bW9kdWxlIGF0dGFjaGVkIHRvIHRoaXMgaW50ZXJmYWNlLgogCitUaGUgTUFDIGFkZHJlc3Mgd2ls
bCBiZSBkZXRlcm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzIGRlZmluZWQgaW4K
K2V0aGVybmV0LnR4dCwgYXMgcHJvdmlkZWQgYnkgdGhlIG9mX2dldF9tYWNfYWRkcmVzcyBBUEkg
YW5kIG9ubHkgaWYgZWZ1c2UtbWFjCitpcyBzZXQgdG8gMC4gSWYgYW55IG9mIHRoZSBvcHRpb25h
bCBNQUMgYWRkcmVzcyBwcm9wZXJ0aWVzIGFyZSBub3QgcHJlc2VudCwKK3RoZW4gdGhlIGRyaXZl
ciB3aWxsIHVzZSByYW5kb20gTUFDIGFkZHJlc3MuCisKIEV4YW1wbGUgYmluZGluZzoKIAogbmV0
Y3A6IG5ldGNwQDIwMDAwMDAgewpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9tYWNiLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvbWFjYi50eHQKaW5kZXggOGI4MDUxNS4uOWM1ZTk0NCAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tYWNiLnR4dAorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21hY2IudHh0CkBAIC0yNiw5ICsyNiw4IEBAIFJl
cXVpcmVkIHByb3BlcnRpZXM6CiAJT3B0aW9uYWwgZWxlbWVudHM6ICd0c3VfY2xrJwogLSBjbG9j
a3M6IFBoYW5kbGVzIHRvIGlucHV0IGNsb2Nrcy4KIAotT3B0aW9uYWwgcHJvcGVydGllczoKLS0g
bnZtZW0tY2VsbHM6IHBoYW5kbGUsIHJlZmVyZW5jZSB0byBhbiBudm1lbSBub2RlIGZvciB0aGUg
TUFDIGFkZHJlc3MKLS0gbnZtZW0tY2VsbC1uYW1lczogc3RyaW5nLCBzaG91bGQgYmUgIm1hYy1h
ZGRyZXNzIiBpZiBudm1lbSBpcyB0byBiZSB1c2VkCitUaGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBk
ZXRlcm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzCitkZWZpbmVkIGluIGV0aGVy
bmV0LnR4dC4KIAogT3B0aW9uYWwgcHJvcGVydGllcyBmb3IgUEhZIGNoaWxkIG5vZGU6CiAtIHJl
c2V0LWdwaW9zIDogU2hvdWxkIHNwZWNpZnkgdGhlIGdwaW8gZm9yIHBoeSByZXNldApkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tYXJ2ZWxsLXB4YTE2
OC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21hcnZlbGwtcHhh
MTY4LnR4dAppbmRleCA4NDVhMTQ4Li41NTc0YWYzIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21hcnZlbGwtcHhhMTY4LnR4dAorKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21hcnZlbGwtcHhhMTY4LnR4dApAQCAtMTEs
NyArMTEsOSBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgogLSAjYWRkcmVzcy1jZWxsczogbXVzdCBi
ZSAxIHdoZW4gdXNpbmcgc3ViLW5vZGVzLgogLSAjc2l6ZS1jZWxsczogbXVzdCBiZSAwIHdoZW4g
dXNpbmcgc3ViLW5vZGVzLgogLSBwaHktaGFuZGxlOiBzZWUgZXRoZXJuZXQudHh0IGZpbGUgaW4g
dGhlIHNhbWUgZGlyZWN0b3J5LgotLSBsb2NhbC1tYWMtYWRkcmVzczogc2VlIGV0aGVybmV0LnR4
dCBmaWxlIGluIHRoZSBzYW1lIGRpcmVjdG9yeS4KKworVGhlIE1BQyBhZGRyZXNzIHdpbGwgYmUg
ZGV0ZXJtaW5lZCB1c2luZyB0aGUgb3B0aW9uYWwgcHJvcGVydGllcworZGVmaW5lZCBpbiBldGhl
cm5ldC50eHQuCiAKIFN1Yi1ub2RlczoKIEVhY2ggUEhZIGNhbiBiZSByZXByZXNlbnRlZCBhcyBh
IHN1Yi1ub2RlLiBUaGlzIGlzIG5vdCBtYW5kYXRvcnkuCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21pY3JvY2hpcCxlbmMyOGo2MC50eHQgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21pY3JvY2hpcCxlbmMyOGo2MC50eHQK
aW5kZXggMjQ2MjZlMC4uYTgyNzU5MiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL25ldC9taWNyb2NoaXAsZW5jMjhqNjAudHh0CisrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbWljcm9jaGlwLGVuYzI4ajYwLnR4dApAQCAtMjEs
OCArMjEsOSBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgogLSBzcGktbWF4LWZyZXF1ZW5jeTogTWF4
aW11bSBmcmVxdWVuY3kgb2YgdGhlIFNQSSBidXMgd2hlbiBhY2Nlc3NpbmcgdGhlIEVOQzI4SjYw
LgogICBBY2NvcmRpbmcgdG8gdGhlIEVOQzI4SjgwIGRhdGFzaGVldCwgdGhlIGNoaXAgYWxsb3dz
IGEgbWF4aW11bSBvZiAyMCBNSHosIGhvd2V2ZXIsCiAgIGJvYXJkIGRlc2lnbnMgbWF5IG5lZWQg
dG8gbGltaXQgdGhpcyB2YWx1ZS4KLS0gbG9jYWwtbWFjLWFkZHJlc3M6IFNlZSBldGhlcm5ldC50
eHQgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LgogCitUaGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBkZXRl
cm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzCitkZWZpbmVkIGluIGV0aGVybmV0
LnR4dC4KIAogRXhhbXBsZSAoZm9yIE5YUCBpLk1YMjggd2l0aCBwaW4gY29udHJvbCBzdHVmZiBm
b3IgR1BJTyBpcnEpOgogCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L21pY3JvY2hpcCxsYW43OHh4LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvbWljcm9jaGlwLGxhbjc4eHgudHh0CmluZGV4IDc2Nzg2YTAuLjExYTY3
OTUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbWlj
cm9jaGlwLGxhbjc4eHgudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvbWljcm9jaGlwLGxhbjc4eHgudHh0CkBAIC03LDkgKzcsOCBAQCBUaGUgRGV2aWNlIFRy
ZWUgcHJvcGVydGllcywgaWYgcHJlc2VudCwgb3ZlcnJpZGUgdGhlIE9UUCBhbmQgRUVQUk9NLgog
UmVxdWlyZWQgcHJvcGVydGllczoKIC0gY29tcGF0aWJsZTogU2hvdWxkIGJlIG9uZSBvZiAidXNi
NDI0LDc4MDAiLCAidXNiNDI0LDc4MDEiIG9yICJ1c2I0MjQsNzg1MCIuCiAKLU9wdGlvbmFsIHBy
b3BlcnRpZXM6Ci0tIGxvY2FsLW1hYy1hZGRyZXNzOiAgIHNlZSBldGhlcm5ldC50eHQKLS0gbWFj
LWFkZHJlc3M6ICAgICAgICAgc2VlIGV0aGVybmV0LnR4dAorVGhlIE1BQyBhZGRyZXNzIHdpbGwg
YmUgZGV0ZXJtaW5lZCB1c2luZyB0aGUgb3B0aW9uYWwgcHJvcGVydGllcworZGVmaW5lZCBpbiBl
dGhlcm5ldC50eHQuCiAKIE9wdGlvbmFsIHByb3BlcnRpZXMgb2YgdGhlIGVtYmVkZGVkIFBIWToK
IC0gbWljcm9jaGlwLGxlZC1tb2RlczogYSAwLi40IGVsZW1lbnQgdmVjdG9yLCB3aXRoIGVhY2gg
ZWxlbWVudCBjb25maWd1cmluZwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9xY2EscWNhNzAwMC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L3FjYSxxY2E3MDAwLnR4dAppbmRleCBlNGE4YTUxLi4yMWMzNmU1IDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3FjYSxxY2E3MDAw
LnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3FjYSxxY2E3
MDAwLnR4dApAQCAtMjMsNyArMjMsNiBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgogCQkgICAgICBO
dW1iZXJzIHNtYWxsZXIgdGhhbiAxMDAwMDAwIG9yIGdyZWF0ZXIgdGhhbiAxNjAwMDAwMAogCQkg
ICAgICBhcmUgaW52YWxpZC4gTWlzc2luZyB0aGUgcHJvcGVydHkgd2lsbCBzZXQgdGhlIFNQSQog
CQkgICAgICBmcmVxdWVuY3kgdG8gODAwMDAwMCBIZXJ0ei4KLS0gbG9jYWwtbWFjLWFkZHJlc3Mg
OiBzZWUgLi9ldGhlcm5ldC50eHQKIC0gcWNhLGxlZ2FjeS1tb2RlICAgOiBTZXQgdGhlIFNQSSBk
YXRhIHRyYW5zZmVyIG9mIHRoZSBRQ0E3MDAwIHRvIGxlZ2FjeSBtb2RlLgogCQkgICAgICBJbiB0
aGlzIG1vZGUgdGhlIFNQSSBtYXN0ZXIgbXVzdCB0b2dnbGUgdGhlIGNoaXAgc2VsZWN0CiAJCSAg
ICAgIGJldHdlZW4gZWFjaCBkYXRhIHdvcmQuIEluIGJ1cnN0IG1vZGUgdGhlc2UgZ2FwcyBhcmVu
J3QKQEAgLTMxLDYgKzMwLDkgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKIAkJICAgICAgdGhlIFFD
QTcwMDAgaXMgc2V0dXAgdmlhIEdQSU8gcGluIHN0cmFwcGluZy4gSWYgdGhlCiAJCSAgICAgIHBy
b3BlcnR5IGlzIG1pc3NpbmcgdGhlIGRyaXZlciBkZWZhdWx0cyB0byBidXJzdCBtb2RlLgogCitU
aGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBkZXRlcm1pbmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9w
ZXJ0aWVzCitkZWZpbmVkIGluIGV0aGVybmV0LnR4dC4KKwogU1BJIEV4YW1wbGU6CiAKIC8qIEZy
ZWVzY2FsZSBpLk1YMjggU1BJIG1hc3RlciovCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbmV0L3NhbXN1bmctc3hnYmUudHh0IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zYW1zdW5nLXN4Z2JlLnR4dAppbmRleCA0NmU1OTExLi4y
Y2ZmNmQ4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L3NhbXN1bmctc3hnYmUudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvc2Ftc3VuZy1zeGdiZS50eHQKQEAgLTIxLDEwICsyMSwxMiBAQCBSZXF1aXJlZCBwcm9w
ZXJ0aWVzOgogICByYW5nZS4KIAogT3B0aW9uYWwgcHJvcGVydGllczoKLS0gbWFjLWFkZHJlc3M6
IDYgYnl0ZXMsIG1hYyBhZGRyZXNzCiAtIG1heC1mcmFtZS1zaXplOiBNYXhpbXVtIFRyYW5zZmVy
IFVuaXQgKElFRUUgZGVmaW5lZCBNVFUpLCByYXRoZXIKIAkJICB0aGFuIHRoZSBtYXhpbXVtIGZy
YW1lIHNpemUuCiAKK1RoZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNpbmcgdGhl
IG9wdGlvbmFsIHByb3BlcnRpZXMKK2RlZmluZWQgaW4gZXRoZXJuZXQudHh0LgorCiBFeGFtcGxl
OgogCiAJYWxpYXNlcyB7CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L3NucHMsZHdjLXFvcy1ldGhlcm5ldC50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L3NucHMsZHdjLXFvcy1ldGhlcm5ldC50eHQKaW5kZXggMzZmMWFl
Zi4uYWQzYzZlMSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9zbnBzLGR3Yy1xb3MtZXRoZXJuZXQudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvc25wcyxkd2MtcW9zLWV0aGVybmV0LnR4dApAQCAtMTAzLDggKzEw
Myw2IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAKIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAtIGRt
YS1jb2hlcmVudDogUHJlc2VudCBpZiBkbWEgb3BlcmF0aW9ucyBhcmUgY29oZXJlbnQKLS0gbWFj
LWFkZHJlc3M6IFNlZSBldGhlcm5ldC50eHQgaW4gdGhlIHNhbWUgZGlyZWN0b3J5Ci0tIGxvY2Fs
LW1hYy1hZGRyZXNzOiBTZWUgZXRoZXJuZXQudHh0IGluIHRoZSBzYW1lIGRpcmVjdG9yeQogLSBw
aHktcmVzZXQtZ3Bpb3M6IFBoYW5kbGUgYW5kIHNwZWNpZmllciBmb3IgYW55IEdQSU8gdXNlZCB0
byByZXNldCB0aGUgUEhZLgogICBTZWUgLi4vZ3Bpby9ncGlvLnR4dC4KIC0gc25wcyxlbi1scGk6
IElmIHByZXNlbnQgaXQgZW5hYmxlcyB1c2Ugb2YgdGhlIEFYSSBsb3ctcG93ZXIgaW50ZXJmYWNl
CkBAIC0xMzMsNiArMTMxLDkgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKICAgICAtIGRldmljZV90
eXBlOiBNdXN0IGJlICJldGhlcm5ldC1waHkiLgogICAgIC0gZml4ZWQtbW9kZSBkZXZpY2UgdHJl
ZSBzdWJub2RlOiBzZWUgZml4ZWQtbGluay50eHQgaW4gdGhlIHNhbWUgZGlyZWN0b3J5CiAKK1Ro
ZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNpbmcgdGhlIG9wdGlvbmFsIHByb3Bl
cnRpZXMKK2RlZmluZWQgaW4gZXRoZXJuZXQudHh0LgorCiBFeGFtcGxlczoKIGV0aGVybmV0MkA0
MDAxMDAwMCB7CiAJY2xvY2stbmFtZXMgPSAicGh5X3JlZl9jbGsiLCAiYXBiX3BjbGsiOwpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zb2Npb25leHQs
dW5pcGhpZXItYXZlNC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L3NvY2lvbmV4dCx1bmlwaGllci1hdmU0LnR4dAppbmRleCBmYzhmMDE3Li40ZTg1ZmM0IDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3NvY2lvbmV4dCx1
bmlwaGllci1hdmU0LnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L3NvY2lvbmV4dCx1bmlwaGllci1hdmU0LnR4dApAQCAtMzEsOCArMzEsOCBAQCBSZXF1aXJl
ZCBwcm9wZXJ0aWVzOgogIC0gc29jaW9uZXh0LHN5c2Nvbi1waHktbW9kZTogQSBwaGFuZGxlIHRv
IHN5c2NvbiB3aXRoIG9uZSBhcmd1bWVudAogCXRoYXQgY29uZmlndXJlcyBwaHkgbW9kZS4gVGhl
IGFyZ3VtZW50IGlzIHRoZSBJRCBvZiBNQUMgaW5zdGFuY2UuCiAKLU9wdGlvbmFsIHByb3BlcnRp
ZXM6Ci0gLSBsb2NhbC1tYWMtYWRkcmVzczogU2VlIGV0aGVybmV0LnR4dCBpbiB0aGUgc2FtZSBk
aXJlY3RvcnkuCitUaGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBkZXRlcm1pbmVkIHVzaW5nIHRoZSBv
cHRpb25hbCBwcm9wZXJ0aWVzCitkZWZpbmVkIGluIGV0aGVybmV0LnR4dC4KIAogUmVxdWlyZWQg
c3Vibm9kZToKICAtIG1kaW86IEEgY29udGFpbmVyIGZvciBjaGlsZCBub2RlcyByZXByZXNlbnRp
bmcgcGh5IG5vZGVzLgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL25ldC9zb2Npb25leHQtbmV0c2VjLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvc29jaW9uZXh0LW5ldHNlYy50eHQKaW5kZXggMGNmZjk0Zi4uOWQ2YzlmZWIg
MTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc29jaW9u
ZXh0LW5ldHNlYy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9zb2Npb25leHQtbmV0c2VjLnR4dApAQCAtMjYsMTEgKzI2LDEyIEBAIFJlcXVpcmVkIHByb3Bl
cnRpZXM6CiBPcHRpb25hbCBwcm9wZXJ0aWVzOiAoU2VlIGV0aGVybmV0LnR4dCBmaWxlIGluIHRo
ZSBzYW1lIGRpcmVjdG9yeSkKIC0gZG1hLWNvaGVyZW50OiBCb29sZWFuIHByb3BlcnR5LCBtdXN0
IG9ubHkgYmUgcHJlc2VudCBpZiBtZW1vcnkKIAlhY2Nlc3NlcyBwZXJmb3JtZWQgYnkgdGhlIGRl
dmljZSBhcmUgY2FjaGUgY29oZXJlbnQuCi0tIGxvY2FsLW1hYy1hZGRyZXNzOiBTZWUgZXRoZXJu
ZXQudHh0IGluIHRoZSBzYW1lIGRpcmVjdG9yeS4KLS0gbWFjLWFkZHJlc3M6IFNlZSBldGhlcm5l
dC50eHQgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LgogLSBtYXgtc3BlZWQ6IFNlZSBldGhlcm5ldC50
eHQgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LgogLSBtYXgtZnJhbWUtc2l6ZTogU2VlIGV0aGVybmV0
LnR4dCBpbiB0aGUgc2FtZSBkaXJlY3RvcnkuCiAKK1RoZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRl
dGVybWluZWQgdXNpbmcgdGhlIG9wdGlvbmFsIHByb3BlcnRpZXMKK2RlZmluZWQgaW4gZXRoZXJu
ZXQudHh0LgorCiBFeGFtcGxlOgogCWV0aDA6IGV0aGVybmV0QDUyMmQwMDAwIHsKIAkJY29tcGF0
aWJsZSA9ICJzb2Npb25leHQsc3lucXVhY2VyLW5ldHNlYyI7CmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL21lZGlhdGVrLG10NzYudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9tZWRpYXRl
ayxtdDc2LnR4dAppbmRleCA3YjlhNzc2Li43NDY2NTUwIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL21lZGlhdGVrLG10NzYudHh0Cisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3MvbWVkaWF0
ZWssbXQ3Ni50eHQKQEAgLTEzLDExICsxMywxMiBAQCBwcm9wZXJ0aWVzOgogCiBPcHRpb25hbCBw
cm9wZXJ0aWVzOgogCi0tIG1hYy1hZGRyZXNzOiBTZWUgZXRoZXJuZXQudHh0IGluIHRoZSBwYXJl
bnQgZGlyZWN0b3J5Ci0tIGxvY2FsLW1hYy1hZGRyZXNzOiBTZWUgZXRoZXJuZXQudHh0IGluIHRo
ZSBwYXJlbnQgZGlyZWN0b3J5CiAtIGllZWU4MDIxMS1mcmVxLWxpbWl0OiBTZWUgaWVlZTgwMjEx
LnR4dAogLSBtZWRpYXRlayxtdGQtZWVwcm9tOiBTcGVjaWZ5IGEgTVREIHBhcnRpdGlvbiArIG9m
ZnNldCBjb250YWluaW5nIEVFUFJPTSBkYXRhCiAKK1RoZSBkcml2ZXIgaXMgdXNpbmcgb2ZfZ2V0
X21hY19hZGRyZXNzIEFQSSwgc28gdGhlIE1BQyBhZGRyZXNzIGNhbiBiZSBhcyB3ZWxsCitiZSBz
ZXQgd2l0aCBjb3JyZXNwb25kaW5nIG9wdGlvbmFsIHByb3BlcnRpZXMgZGVmaW5lZCBpbiBuZXQv
ZXRoZXJuZXQudHh0LgorCiBPcHRpb25hbCBub2RlczoKIC0gbGVkOiBQcm9wZXJ0aWVzIGZvciBh
IGNvbm5lY3RlZCBMRUQKICAgT3B0aW9uYWwgcHJvcGVydGllczoKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3MvcWNhLGF0aDlrLnR4dCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3MvcWNhLGF0aDlr
LnR4dAppbmRleCBiNzM5NmM4Li5hYWFlZWI1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3FjYSxhdGg5ay50eHQKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9xY2EsYXRoOWsudHh0CkBA
IC0zNCw5ICszNCw5IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAJCQlhdGg5ayB3aXJlbGVzcyBj
aGlwIChpbiB0aGlzIGNhc2UgdGhlIGNhbGlicmF0aW9uIC8KIAkJCUVFUFJPTSBkYXRhIHdpbGwg
YmUgbG9hZGVkIGZyb20gdXNlcnNwYWNlIHVzaW5nIHRoZQogCQkJa2VybmVsIGZpcm13YXJlIGxv
YWRlcikuCi0tIG1hYy1hZGRyZXNzOiBTZWUgZXRoZXJuZXQudHh0IGluIHRoZSBwYXJlbnQgZGly
ZWN0b3J5Ci0tIGxvY2FsLW1hYy1hZGRyZXNzOiBTZWUgZXRoZXJuZXQudHh0IGluIHRoZSBwYXJl
bnQgZGlyZWN0b3J5CiAKK1RoZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNpbmcg
dGhlIG9wdGlvbmFsIHByb3BlcnRpZXMgZGVmaW5lZCBpbgorbmV0L2V0aGVybmV0LnR4dC4KIAog
SW4gdGhpcyBleGFtcGxlLCB0aGUgbm9kZSBpcyBkZWZpbmVkIGFzIGNoaWxkIG5vZGUgb2YgdGhl
IFBDSSBjb250cm9sbGVyOgogJnBjaTAgewotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QK
TGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
