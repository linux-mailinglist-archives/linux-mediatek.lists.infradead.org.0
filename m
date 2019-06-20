Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8A04CE24
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 15:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC/VvwnDpO5BNCnayjNLHJGNGfY7oghkpoJRoLuCFtI=; b=l7pR/4wRGXBDvW
	jTqY0gi7mXXcQiYoqaUSDzmbaxSCiF8f7loQGblg98nOjW4io+1ZLOGMU5shszf88VP7MzuI0EtuM
	ttFJyxJrNBaYAWtr4Ffrhyfi9O5jeRsnqxLNSlvAK1ic+Oi1nWLvD6dJuT7ak29TB/NMltXCem1TZ
	xKSlpV4owaQlkbiqPtqLdZv5rsdRzz2fMhqzOm4PQel3ycGyRspNSwZ1lG7OcmZPtGgML19W6TGIX
	NOVMTCk5+Z8wpMNThOMdGvAHv6S+wh/zPf6wpAkSjYfNVZ19ZKNCIlv/luOBdnnJjW+yYqRCv33n7
	hL5/WezGCgHivwRf0WVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwiB-0003rk-Mg; Thu, 20 Jun 2019 13:02:43 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwi7-0003rF-HS
 for linux-mediatek@lists.infradead.org; Thu, 20 Jun 2019 13:02:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561035730;
 bh=+afkOThX5iGh2rB1ktgwAzNdjRHJupZfIJ7drdFwZgo=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=TC6fSpvQ6YnvG0rajSAOfWrG2Mb3JxwuuxBAF0IkUB1Y1BYY0nugbPs/eJFg7b+yw
 iaajMPYRVNVAbl0qqnxHvTAFv20Ja1sZgUDeDyI7i6gZnE2G1hNcRWdtG0p5JYeouy
 VPm4A9AbzbPWQR77dXmhxz8OoqhRIqjTr+dCp95A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.218.201.144] ([88.128.80.145]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MbOoG-1hwiXe0qhA-00Illb; Thu, 20
 Jun 2019 15:02:10 +0200
Date: Thu, 20 Jun 2019 15:02:04 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190620122155.32078-1-opensource@vdorst.com>
References: <20190620122155.32078-1-opensource@vdorst.com>
MIME-Version: 1.0
Subject: Re: [PATCH v2 net-next 0/2] net: mediatek: Add MT7621 TRGMII mode
 support
To: =?ISO-8859-1?Q?Ren=E9_van_Dorst?= <opensource@vdorst.com>,
 sean.wang@mediatek.com, f.fainelli@gmail.com, davem@davemloft.net,
 matthias.bgg@gmail.com, andrew@lunn.ch, vivien.didelot@gmail.com
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <74C80E79-877C-4DEC-BC82-1195C3D0981F@public-files.de>
X-Provags-ID: V03:K1:xIO+yH9i6OHFj2f10Rv4UCkFlBt3qm7Dlkf80DSU+4Hpi3dZzfR
 X2JpvTbtZM7DauCbrwia3F9oqlqikYHqEb1eHHiCmXGxbY+Wk6sXXVfcy7Qkk98dOvvBKTJ
 hfIBxOf2QVeHwX3zEHsgf4F/dS/QKHaFp0uT5lOFoJAK94yHJOnnCi39AnzjtWiMGHfMU1/
 NDOIhG+ZNQHIyBIPIyzUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gLuq2wC3/5I=:8NE4223G084VtT9X+ICDmP
 +EYJ6KJjR+o1VJHowytLI7SHiRVkjpLGZcnhHD8Opk9tPxtmsAXMjnRxHqVcslTw+WvhREoob
 s6IYBbOHnZwRTON6fDr0YKCfBDxuVd/zxOv9hqlzB45cA/3kGSvd6I2WdsjRr1gNO7zPpGOL9
 OrZWraERWMDznpDAlWoRCTGLSpt+1P6XaWsWCdzcAInXmXZUPG2Dn7v80YkT1ibteOJOtJfc9
 G4UD8CHN3vvDk0+OFWGaBEVXliS5dLqZGyAu+6Le+mmaQM2262OR7lhShMPDeD+dCWpifhHIx
 cuL8rn8WIY3rdR2Os0EOBwxiDSZYV8Hzrnk2D8zai5VlxknekjU1i2XXIh/kDDcOylgDftADg
 YCQbm/YLB5MBVbypGSHdW8SZM6IfDf2ys/8ve964Ah2IR3IkgGY1YxZ5nu7jLauMiYT8WIDZl
 /Zhz1LZpQa9yeaTkoeH/eU3TSVxbVWVyHcK2+emENJMc1YHw9tB1A8J46K9tX3kb9sR45oXDb
 2R0K6wupIdi3246GKxU8xApf/wxL/MSNVxE8OgmH9DbZt7tzSAQRY8vGmPVTYRM37ZcafeBjn
 flT+hLmqupzTz+zS9eZrIL8J5U4VVNF89G6IXTRvjklnv7cPGFwN2ZiJb3/6C69L1il+wa4pl
 LdGAxK62hyKIboRTO6wnw8rtvPLNjUvHU/oH9q94QUTEDfc3/UeU1VvDTRDnhjnqqidKADE86
 zpQF+122RTNZATc+3LSzA4I0RkeTxrNKh9NgRUYgqrI3C5oz2BxovjlaGyquucBB5MHKPp8w9
 kuyQgsc0PyHEbDGuFx6FK0LiV6r0gO2Zba0OkVRocxKH05w98Gcj/3ejoOVSn1M4ATYd/WCoH
 8IKqvnaK2pFQNq9SaAB5NCXQEww9lFlgDDPZyY7c8ToaXC35/NQZ56Kb+cl2DccCdWS4KaDg3
 2GWXN4ZJv6pkn5vKWmn7tT30R8rCHteg0J00M6jxYB67azbua8cKA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060239_913687_67B082E6 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: frank-w@public-files.de
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VGVzdGVkIG9uIEJhbmFuYXBpIFIyIChtdDc2MjMpCgpUZXN0ZWQtYnk6ICJGcmFuayBXdW5kZXJs
aWNoIiA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+CgpBbSAyMC4gSnVuaSAyMDE5IDE0OjIxOjUz
IE1FU1ogc2NocmllYiAiUmVuw6kgdmFuIERvcnN0IiA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPjoK
Pkxpa2UgbWFueSBvdGhlciBtZWRpYXRlayBTT0NzLCB0aGUgTVQ3NjIxIFNPQyBhbmQgdGhlIGlu
dGVybmFsIE1UNzUzMAo+c3dpdGNoIGJvdGggc3VwcG9ydHMgVFJHTUlJIG1vZGUuIE1UNzYyMSBU
UkdNSUkgc3BlZWQgaXMgZml4IDEyMDBNQml0Lgo+Cj52MS0+djI6IAo+IC0gRml4IGJyZWFrYWdl
IG9uIG5vbiBNVDc2MjEgU09DCj4gLSBTdXBwb3J0IDI1TUh6IGFuZCA0ME1IeiBYVEFMIGFzIE1U
NzUzMCBjbG9ja3NvdXJjZQo+Cj5SZW7DqSB2YW4gRG9yc3QgKDIpOgo+ICBuZXQ6IGV0aGVybmV0
OiBtZWRpYXRlazogQWRkIE1UNzYyMSBUUkdNSUkgbW9kZSBzdXBwb3J0Cj4gIG5ldDogZHNhOiBt
dDc1MzA6IEFkZCBNVDc2MjEgVFJHTUlJIG1vZGUgc3VwcG9ydAo+Cj4gZHJpdmVycy9uZXQvZHNh
L210NzUzMC5jICAgICAgICAgICAgICAgICAgICB8IDQ2ICsrKysrKysrKysrKysrKystLS0tLQo+
IGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaCAgICAgICAgICAgICAgICAgICAgfCAgNCArKwo+IGRy
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgfCAzOCArKysrKysrKysr
KysrKystLQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggfCAx
MSArKysrKwo+IDQgZmlsZXMgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25z
KC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlh
dGVrCg==
