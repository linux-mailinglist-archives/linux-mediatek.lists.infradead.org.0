Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C481F75F96
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 09:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6kgy4n659SrX9zVqw2EQ+hxYe2Z3k2QISL1H6uagTWw=; b=fGK80ZrlaM29Zp7ox/us2v8aQ
	EgPswA/Racllo54M5A4xeNtaV26ehr5QlpmXjyqlxarG39vDoMWTQd5L09FV5l3QADITr3Xs6dBzO
	r4nUIaFf1P5UjHDvN0JJh/bo8/qfAtEUvJ3pOWHOPhNdoTxX6inyHH/ch9JQcasBBspyvLztK/2Td
	mHFZgn2gbsoz0OW25D5HcO5Li2GiIt3TSPVBSmEF7y0ePVZ21Pp0Eu+Y22D7lTpQUm0xTN2XktFEu
	aSamwsSUJh5rVANRWUDWrdZs+XuxF46fTQEPl18Ro2eHViIHtMaWHKGF/m1Y0Ds35jUeHY93SPuWY
	V823mhHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquWM-0007Hh-Aa; Fri, 26 Jul 2019 07:20:06 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hquWI-0006o4-BI
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 07:20:04 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id CEE665FB2B;
 Fri, 26 Jul 2019 09:19:56 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="R+SjCCX3"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 895E21D28756;
 Fri, 26 Jul 2019 09:19:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 895E21D28756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1564125596;
 bh=+Hr304FY5Zea1KSklbNGrmwPH40tCpigRiaIOPfi1RQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R+SjCCX3t+stiSOsHLt+RuKxZavYZr5Nma3Z+T79/74SyqB1MfgGWveqiesV40IYS
 ElsHum7l9RTHy7CxUKVvWANJ7AtTThK48tui/25wjevLDn1Nuhvt6DO9NzzXqhu7yr
 Z/IKbzuLRR1V2xHdEN5sD9B48Mk2wRBF0XUAFd0+iU3UWDddaTdioFn0fq7CXEGe5N
 pxu19y0Er8Peo1tOTfkyHsf4UtsIAPa4tkTVLUfrR+i3Bw33V+6lEFA77VkyR7aLgI
 L+aMyTahXnv2g9eVEdraRm6nbA81YDxHIjBOgyGhzTXNXeWDyQdFyK/EiLSoj6eLH2
 vtWCg/nad6Zyw==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Fri, 26 Jul 2019 07:19:56 +0000
Date: Fri, 26 Jul 2019 07:19:56 +0000
Message-ID: <20190726071956.Horde.s4rfuzovwXB-d3LnV0PLRc8@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
References: <20190724192411.20639-1-opensource@vdorst.com>
 <20190725193123.GA32542@lunn.ch>
In-Reply-To: <20190725193123.GA32542@lunn.ch>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_002002_542167_CF14FB6F 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
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
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 vivien.didelot@gmail.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+OgoKPj4gKwlnbWFjMDogbWFjQDAg
ewo+PiArCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOwo+PiArCQlyZWcgPSA8MD47
Cj4+ICsJCXBoeS1tb2RlID0gInNnbWlpIjsKPj4gKwo+PiArCQlmaXhlZC1saW5rIHsKPj4gKwkJ
CXNwZWVkID0gPDI1MDA+Owo+PiArCQkJZnVsbC1kdXBsZXg7Cj4+ICsJCQlwYXVzZTsKPj4gKwkJ
fTsKPj4gKwl9Owo+Cj4gSGkgUmVuw6kKPgoKSGkgQW5kcmV3LAoKPiBTR01JSSBhbmQgZml4ZWQt
bGluayBpcyByYXRoZXIgb2RkLiBXaHkgZG8geW91IG5lZWQgdGhpcyBjb21iaW5hdGlvbj8KCkJh
bmFuYVBpIFI2NCBoYXMgYSBSVEw4MzY3UyA1KzItcG9ydCBzd2l0Y2gsIHN3aXRjaCBpbnRlcmZh
Y2VzIHdpdGggIAp0aGUgU09DIGJ5IGEKKEgpU0dNSUkgYW5kL29yIFJHTUlJIGludGVyZmFjZS4g
U0dNSUkgaXMgbWFpbmx5IHVzZWQgZm9yIHRoZSBMQU4gcG9ydHMgYW5kClJHTUlJIGZvciB0aGUg
V0FOIHBvcnQuCgpJIG1pbWljIHRoZSBTREsgc29mdHdhcmUgd2hpY2ggcHV0cyBTR01JSSBpbnRl
cmZhY2UgaW4gMi41R0JpdCAgCmZpeGVkLWxpbmsgbW9kZS4KVGhlIFJUTDgzNjdTIHN3aXRjaCBj
b2RlIGFsc28gcHV0IHN3aXRjaCBtYWMgaW4gZm9yZ2UgMi41R0JpdCBtb2RlLgoKU28gdGhpcyBp
cyB0aGUgcmVhc29uIHdoeSBJIHB1dCBhIGZpeGVkLWxpbmsgbW9kZSBoZXJlLgoKR3JlYXRzLAoK
UmVuw6kKCj4gICAgICAgQW5kcmV3CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0
ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
