Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF5A7E0F5
	for <lists+linux-mediatek@lfdr.de>; Thu,  1 Aug 2019 19:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K+63nmYUQYelYgPM5czw/uAm1BNTQEvwovxCN4XcRJY=; b=tx8Nl/Ls5GAJ/CxaSQAqmHqQK
	b/025MUNkN7XVwQIcNUKm9ssyUUxXwIb3g4lAhhH3QcaMpbez695DWnVA/HZJvVEsWdw8PuG5l9YD
	rI8YQup+9/OE7DmYBw1rENkfwUvcP8Ln/f8oKXK229d5Q5/MjUDaJoTa/ssIg8+bw2LKHs1dkoTM6
	QFoVR0E9aRgbmQNTAdIzw6Ac9tIhoX1G5M7ieIJYkR7Qhz5RYoZWMd4w4vwoM6unF5wX+uAsRwI3v
	lZ6bVfT/jL0rTYK0C3+Nh2mZzsvc6FBJQ0eQzgSCGre33mH57JCjfFxVaBdEmcxDQExbwHCx6nCVy
	p9D/J0lPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htElN-0004nW-Mg; Thu, 01 Aug 2019 17:21:13 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htElJ-0004n1-TT
 for linux-mediatek@lists.infradead.org; Thu, 01 Aug 2019 17:21:12 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id D3FAF5FAF1;
 Thu,  1 Aug 2019 19:21:04 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="SRQ1xsxp"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 863BE1D41C1A;
 Thu,  1 Aug 2019 19:21:04 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 863BE1D41C1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1564680064;
 bh=qXhetRaPsrRE45vvWYJmuhc7HV2WP+u9zx31XLRxyyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SRQ1xsxpkO0zQvFXPsBIjpU8Zewx/BoF1vudjXCLvkpvg1pOCQ77OtXy9XvZp2uiZ
 XRlnYM6t2X2BP53Fyd//MtlrNg/WiJ2xK9OPy9Lx8jNn5w0No2ermaOalvg/P1vtp7
 nRE2EVaMqiMlqAdckg44rF0BmqrQNrnnEJ/abispHn+uduExpWCaJ87XsPbYPCp81c
 Kv1jz4zIYWLBVhWJMax1v2INmDB4m2zyHAs3K7MfyMWa4jFzCLJvyEZt5no8g/kMEv
 tgUhPKsTzzDf7texObmElR7S8Vh/XjvPgjZaOJLDYNXQTyS+2VK+ZpRX/40oqDxQQo
 hoJzMg4EQfLUw==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Thu, 01 Aug 2019 17:21:04 +0000
Date: Thu, 01 Aug 2019 17:21:04 +0000
Message-ID: <20190801172104.Horde.Cuwt4jywUX_mcO9-n8QpWTN@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: davem@davemloft.net
Subject: Re: [PATCH net-next 1/3] net: dsa: mt7530: Convert to PHYLINK API
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-2-opensource@vdorst.com>
 <20190727184828.GT1330@shell.armlinux.org.uk>
In-Reply-To: <20190727184828.GT1330@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_102110_237067_1F7D91AB 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9y
Zy51az46Cgo+IEhpLAo+Cj4gSnVzdCBhIGNvdXBsZSBvZiBtaW5vciBwb2ludHMuCj4KPiBPbiBX
ZWQsIEp1bCAyNCwgMjAxOSBhdCAwOToyNTo0N1BNICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3Jv
dGU6Cgo8c25pcD4KCj4+ICsKPj4gK3N0YXRpYyB2b2lkIG10NzUzMF9waHlsaW5rX3ZhbGlkYXRl
KHN0cnVjdCBkc2Ffc3dpdGNoICpkcywgaW50IHBvcnQsCj4+ICsJCQkJICAgIHVuc2lnbmVkIGxv
bmcgKnN1cHBvcnRlZCwKPj4gKwkJCQkgICAgc3RydWN0IHBoeWxpbmtfbGlua19zdGF0ZSAqc3Rh
dGUpCj4+ICt7Cj4+ICsJX19FVEhUT09MX0RFQ0xBUkVfTElOS19NT0RFX01BU0sobWFzaykgPSB7
IDAsIH07Cj4+ICsKPj4gKwlzd2l0Y2ggKHBvcnQpIHsKPj4gKwljYXNlIDA6IC8qIEludGVybmFs
IHBoeSAqLwo+PiArCWNhc2UgMToKPj4gKwljYXNlIDI6Cj4+ICsJY2FzZSAzOgo+PiArCWNhc2Ug
NDoKPj4gKwkJaWYgKHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZX0lOVEVSRkFDRV9NT0RFX05BICYm
Cj4+ICsJCSAgICBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9HTUlJKQo+
PiArCQkJZ290byB1bnN1cHBvcnRlZDsKPj4gKwkJYnJlYWs7Cj4+ICsJLyogY2FzZSA1OiBQb3J0
IDUgbm90IHN1cHBvcnRlZCEgKi8KPj4gKwljYXNlIDY6IC8qIDFzdCBjcHUgcG9ydCAqLwo+PiAr
CQlpZiAoc3RhdGUtPmludGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfTkEgJiYKPj4gKwkJ
ICAgIHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJICYmCj4+ICsJ
CSAgICBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUkpCj4+ICsJ
CQlnb3RvIHVuc3VwcG9ydGVkOwo+PiArCQlicmVhazsKPj4gKwlkZWZhdWx0Ogo+PiArCQlsaW5r
bW9kZV96ZXJvKHN1cHBvcnRlZCk7Cj4+ICsJCWRldl9lcnIoZHMtPmRldiwgIiVzOiB1bnN1cHBv
cnRlZCBwb3J0OiAlaVxuIiwgX19mdW5jX18sIHBvcnQpOwo+Cj4gWW91IGNvdWxkIHJlb3JkZXIg
dGhpcyBhczoKPgo+IAlkZWZhdWx0Ogo+IAkJZGV2X2Vycihkcy0+ZGV2LCAiJXM6IHVuc3VwcG9y
dGVkIHBvcnQ6ICVpXG4iLCBfX2Z1bmNfXywgcG9ydCk7Cj4gCXVuc3VwcG9ydGVkOgo+IAkJbGlu
a21vZGVfemVybyhzdXBwb3J0ZWQpOwo+CgpIaSBEYXZpZCwKCj4gYW5kIHNhdmUgaGF2aW5nIHRo
ZSAidW5zdXBwb3J0ZWQiIGF0IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLiAgTm90IHN1cmUKPiB3
aGF0IERhdmVNIHdvdWxkIHRoaW5rIG9mIGl0IHRob3VnaC4KCkNhbiB5b3UgZ2l2ZSB5b3VyIG9w
dGlvbiBhYm91dCB0aGlzPwpTbyBJIGtub3cgd2hhdCB0byBkbyB3aXRoIGl0IGFuZCBtYWtlIGEg
bmV3IHNlcmllcy4KCkdyZWF0cywKClJlbsOpCgo+Cj4KPiAtLQo+IFJNSydzIFBhdGNoIHN5c3Rl
bTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+IEZUVEMg
YnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1icHMg
ZG93biA2MjJrYnBzIHVwCj4gQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRv
d24gNTAwa2JwcyB1cAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tZWRpYXRlawo=
