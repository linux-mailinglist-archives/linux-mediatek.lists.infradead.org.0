Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD0977B20
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 20:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qNio/IuyIxamTfbJ0klYRw0GuBtVe7SuR/XTaOd3QbY=; b=g0BBXbGg52f5VG7jReQys2tBF
	/YaDWLWV+miEMV0bT2sFrhMJRgMTkhsY0YrwsLMbq6UmKO06seDULrQTSLevANcHlf9IDm4TAiFWH
	9rRifFaDEGBySRD0kk6K/8KiPM0oqUiZfWrDqSne7O8jDgSnB+2T6/TL4u69Qv2p3aflcXtdEn+3H
	RtgmJD5BoP8iav436Ojx0bmNf1gNv+VO8DHuxOfu9+j+pd2c7pzvwD2pjJfuQ5bBLRvnlbPzfRdk7
	d4V9QD/snFDbShzbx1YsBlPex10Sb/TFvJ54AWvrOJoONmldRDikjnZpQSBig2q5O9ig6/bP38jxC
	/aebQyI4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRah-0001xE-HJ; Sat, 27 Jul 2019 18:38:47 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRaa-0001wf-GN
 for linux-mediatek@lists.infradead.org; Sat, 27 Jul 2019 18:38:43 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 8BE265FCC5;
 Sat, 27 Jul 2019 20:38:36 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="Pfh1mqLo"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 46EE61D2CA51;
 Sat, 27 Jul 2019 20:38:36 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 46EE61D2CA51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1564252716;
 bh=gZ0/qGKKB7Oj35mAvspuVpFyZiLKrE/dJBM6qWu6lTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pfh1mqLoft7Tkp4ukhQLHMSSOsPuq2FZtVk1ARp8mdO3r3rhAYbDQqwTyIIhyeLO6
 WpPCX2DGepVG9eOHWAUJ59K/0d3CA2MGuQ+FSgBUylphkU+zrN/q0OZ4jVjD8SZHXc
 2ESiKmEctrqvLs0qTkUBIrwR10canWBb2RX2AWwSvmLDW8xBk19e+Mp9ZGQB6auSQ0
 RGb3FeRTwIS9KCphHGMyHSgeutYqKqsycXVzf0/XUnofqynh9/AjOrxjxFNmxCQUsL
 6Au3D8Ym+Rce30MxMo4t4FNfvZzeBufcvkHCWk/7TRsdF9kSkPSCHnUH9d+zL7zLjO
 LhzHl1nDBA1EQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 27 Jul 2019 18:38:36 +0000
Date: Sat, 27 Jul 2019 18:38:36 +0000
Message-ID: <20190727183836.Horde.B4Y-dcWu5sojGbybcU-O1Qc@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net-next 3/3] net: dsa: mt7530: Add support for port 5
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-4-opensource@vdorst.com>
 <f4a9e219-cd03-1512-874d-925c43e3c44f@gmail.com>
In-Reply-To: <f4a9e219-cd03-1512-874d-925c43e3c44f@gmail.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_113841_236873_F91D87CF 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux@armlinux.org.uk, vivien.didelot@gmail.com,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT46Cgo+IE9uIDcv
MjQvMjAxOSA5OjI1IFBNLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+IEFkZGluZyBzdXBwb3J0
IGZvciBwb3J0IDUuCj4+Cj4+IFBvcnQgNSBjYW4gbXV4ZWQvaW50ZXJmYWNlIHRvOgo+PiAtIGlu
dGVybmFsIDV0aCBHTUFDIG9mIHRoZSBzd2l0Y2g7IGNhbiBiZSB1c2VkIGFzIDJuZCBDUFUgcG9y
dCBvciBhcwo+PiAgIGV4dHJhIHBvcnQgd2l0aCBhbiBleHRlcm5hbCBwaHkgZm9yIGEgNnRoIGV0
aGVybmV0IHBvcnQuCj4+IC0gaW50ZXJuYWwgUEhZIG9mIHBvcnQgMCBvciA0OyBVc2VkIGluIG1v
c3QgYXBwbGljYXRpb25zIHNvIHRoYXQgcG9ydCAwCj4+ICAgb3IgNCBpcyB0aGUgV0FOIHBvcnQg
YW5kIGludGVyZmFjZXMgd2l0aCB0aGUgMm5kIEdNQUMgb2YgdGhlIFNPQy4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+Cj4KPiBbc25p
cF0KPgo+PiArCS8qIFNldHVwIHBvcnQgNSAqLwo+PiArCXByaXYtPnA1X2ludGZfc2VsID0gUDVf
RElTQUJMRUQ7Cj4+ICsJaW50ZXJmYWNlID0gUEhZX0lOVEVSRkFDRV9NT0RFX05BOwo+PiArCj4+
ICsJaWYgKCFkc2FfaXNfdW51c2VkX3BvcnQoZHMsIDUpKSB7Cj4+ICsJCXByaXYtPnA1X2ludGZf
c2VsID0gUDVfSU5URl9TRUxfR01BQzU7Cj4+ICsJCWludGVyZmFjZSA9IG9mX2dldF9waHlfbW9k
ZShkcy0+cG9ydHNbNV0uZG4pOwo+PiArCX0gZWxzZSB7Cj4+ICsJCS8qIFNjYW4gdGhlIGV0aGVy
bmV0IG5vZGVzLiBMb29rIGZvciBHTUFDMSwgTG9va3VwIHVzZWQgcGh5ICovCj4+ICsJCWZvcl9l
YWNoX2NoaWxkX29mX25vZGUoZG4sIG1hY19ucCkgewo+PiArCQkJaWYgKCFvZl9kZXZpY2VfaXNf
Y29tcGF0aWJsZShtYWNfbnAsCj4+ICsJCQkJCQkgICAgICJtZWRpYXRlayxldGgtbWFjIikpCj4+
ICsJCQkJY29udGludWU7Cj4+ICsJCQlfaWQgPSBvZl9nZXRfcHJvcGVydHkobWFjX25wLCAicmVn
IiwgTlVMTCk7Cj4+ICsJCQlpZiAoYmUzMl90b19jcHVwKF9pZCkgICE9IDEpCj4+ICsJCQkJY29u
dGludWU7Cj4+ICsKPj4gKwkJCWludGVyZmFjZSA9IG9mX2dldF9waHlfbW9kZShtYWNfbnApOwo+
PiArCQkJcGh5X25vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG1hY19ucCwgInBoeS1oYW5kbGUiLCAw
KTsKPj4gKwo+PiArCQkJaWYgKHBoeV9ub2RlLT5wYXJlbnQgPT0gcHJpdi0+ZGV2LT5vZl9ub2Rl
LT5wYXJlbnQpIHsKPj4gKwkJCQlfaWQgPSBvZl9nZXRfcHJvcGVydHkocGh5X25vZGUsICJyZWci
LCBOVUxMKTsKPj4gKwkJCQlpZCA9IGJlMzJfdG9fY3B1cChfaWQpOwo+PiArCQkJCWlmIChpZCA9
PSAwKQo+PiArCQkJCQlwcml2LT5wNV9pbnRmX3NlbCA9IFA1X0lOVEZfU0VMX1BIWV9QMDsKPj4g
KwkJCQlpZiAoaWQgPT0gNCkKPj4gKwkJCQkJcHJpdi0+cDVfaW50Zl9zZWwgPSBQNV9JTlRGX1NF
TF9QSFlfUDQ7Cj4KCkhpIEZsb3JpYW4sCgo+IENhbiB5b3UgdXNlIG9mX21kaW9fcGFyc2VfYWRk
cigpIGhlcmU/CgpZZXMgdGhhdCBmdW5jdGlvbiBiZSB1c2VkLgoKVGhhbmtzIGZvciBtZW50aW9u
IHRoaXMgZnVuY3Rpb24uCgpJIHNlZSB0aGF0IEkgY2FuIHJlZmFjdG9yIHRoaXMgc2NhbiByb3V0
aW5lIGEgYml0IG1vcmUuCkFsc28gSSBtaXNzaW5nIGEgb2Zfbm9kZV9wdXQocGh5X25vZGUpIGF0
IHRoZSBlbmQuCgo+IC0tCj4gRmxvcmlhbgoKR3JlYXRzLAoKUmVuw6kKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
