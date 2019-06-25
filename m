Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91921559AF
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 23:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ac/RC6FOOIsTGoZoTNZYRtQ7nzbKHReHgtgPwj8DHaM=; b=rMJ7E8RTWAcfHNIrY0mYGurZj
	BkV698byRsYybpi4b0khFqshdMhaLsuGH2nQcvr44zFfBhtYQd99BP+j9iTeEa4pTzJGtEenNC7pL
	4selRrwNXP4ItB016Ww0IV2cyaVhP4VWbEvOKVS8OgdO0xrj/ORqeg+NsQWP9eq/JC6Wg8KPs7GZc
	0D4vjeNqduBLtJ4mBa59CAMWmAdEcMZ2tuxUsrTtSRZu+Y11aTsuAnXfNfpAdsd0WZNfLuB8oiq93
	E0yJ9+waPYwhbRSR0JoA7FJIu7gMNtQ3FRc3p+Fb0dNcQGpXqfIBrrrf8ZEbMOKndd1ogQt6A3s6b
	/bOR3SFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsfR-00035s-Rl; Tue, 25 Jun 2019 21:07:53 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsfN-000359-1U
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 21:07:51 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id F13985FD5A;
 Tue, 25 Jun 2019 23:07:44 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="HByB3laP"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id B31961CCC22B;
 Tue, 25 Jun 2019 23:07:44 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com B31961CCC22B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561496864;
 bh=4vo7rFhxCAiafA3iOtxWYUzE7WodARfguy9JW2N4n2k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HByB3laPSE/v50IOHIvi2geXczr1w/oFwXCBck+y5+s675ecMUY2kNs4KcF8dc2sZ
 mLj2CD7aTwq4KeJUZ2IBHahVs88b1wU9LD2mYe11b+OS3yt3UG5usHlxAfhNSnHJQB
 5TZtAX8yBnV0w/5TF74giM1UDhnOonCeLAHWwlv1t/dmgSjkf5Aa5h77feL1KVZdX3
 GgIeaVA4wQVLYfPDVupnyJmcrd6QbsOgbmITtkpcJMHyzi+DSchpiVo25jLa09Osjw
 Hv+X8XE7TUJD3IkOrZDEvKsqAx9+0vhpH5Rx/y0zpBmbV9omfloWTTz797jRYvTnhc
 coQZIfSDEyiaA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 25 Jun 2019 21:07:44 +0000
Date: Tue, 25 Jun 2019 21:07:44 +0000
Message-ID: <20190625210744.Horde.ByA3LNQBeBbFGQf62NKQDXs@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
 <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
 <20190625204148.GB27733@lunn.ch>
In-Reply-To: <20190625204148.GB27733@lunn.ch>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_140749_783024_91E0EF8F 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 vivien.didelot@gmail.com, Daniel Santos <daniel.santos@pobox.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+OgoKSGkgQW5kcmV3LAoKPiBPbiBU
dWUsIEp1biAyNSwgMjAxOSBhdCAwMjoyNzo1NVBNIC0wNTAwLCBEYW5pZWwgU2FudG9zIHdyb3Rl
Ogo+PiBPbiA2LzI1LzE5IDI6MDIgUE0sIEFuZHJldyBMdW5uIHdyb3RlOgo+PiA+PiBCdXQgd2ls
bCB0aGVyZSBzdGlsbCBiZSBhIG1lY2hhbmlzbSB0byBpZ25vcmUgbGluayBwYXJ0bmVyJ3MgYWR2
ZXJ0aXNpbmcKPj4gPj4gYW5kIGZvcmNlIHRoZXNlIHBhcmFtZXRlcnM/Cj4+ID4gPkZyb20gbWFu
IDEgZXRodG9vbDoKPj4gPgo+PiA+ICAgICAgICAtYSAtLXNob3ctcGF1c2UKPj4gPiAgICAgICAg
ICAgICAgIFF1ZXJpZXMgdGhlIHNwZWNpZmllZCBFdGhlcm5ldCBkZXZpY2UgZm9yIHBhdXNlICAK
Pj4gcGFyYW1ldGVyIGluZm9ybWF0aW9uLgo+PiA+Cj4+ID4gICAgICAgIC1BIC0tcGF1c2UKPj4g
PiAgICAgICAgICAgICAgIENoYW5nZXMgdGhlIHBhdXNlIHBhcmFtZXRlcnMgb2YgdGhlIHNwZWNp
ZmllZCAgCj4+IEV0aGVybmV0IGRldmljZS4KPj4gPgo+PiA+ICAgICAgICAgICAgYXV0b25lZyBv
bnxvZmYKPj4gPiAgICAgICAgICAgICAgICAgICBTcGVjaWZpZXMgd2hldGhlciBwYXVzZSBhdXRv
bmVnb3RpYXRpb24gc2hvdWxkICAKPj4gYmUgZW5hYmxlZC4KPj4gPgo+PiA+ICAgICAgICAgICAg
cnggb258b2ZmCj4+ID4gICAgICAgICAgICAgICAgICAgU3BlY2lmaWVzIHdoZXRoZXIgUlggcGF1
c2Ugc2hvdWxkIGJlIGVuYWJsZWQuCj4+ID4KPj4gPiAgICAgICAgICAgIHR4IG9ufG9mZgo+PiA+
ICAgICAgICAgICAgICAgICAgIFNwZWNpZmllcyB3aGV0aGVyIFRYIHBhdXNlIHNob3VsZCBiZSBl
bmFibGVkLgo+PiA+Cj4+ID4gWW91IG5lZWQgdG8gY2hlY2sgdGhlIGRyaXZlciB0byBzZWUgaWYg
aXQgYWN0dWFsbHkgaW1wbGVtZW50cyB0aGlzCj4+ID4gZXRodG9vbCBjYWxsLCBidXQgdGhhdCBp
cyBob3cgaXQgc2hvdWxkIGJlIGNvbmZpZ3VyZWQuCj4+ID4KPj4gPiAJQW5kcmV3Cj4+ID4KPj4g
VGhhbmsgeW91IEFuZHJldywKPj4KPj4gU28gaW4gdGhpcyBjb250ZXh0LCBteSBxdWVzdGlvbiBp
cyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuICJlbmFibGluZyIgYW5kCj4+ICJmb3JjaW5nIi4gIEhl
cmUncyB0aGF0IHJlZ2lzdGVyIGZvciB0aGUgbXQ3NjIwICh3aGljaCBoYXMgYW4gbXQ3NTMwIG9u
Cj4+IGl0cyBkaWUpOiBodHRwczovL2ltZ3VyLmNvbS9hL3BUazA2NjggIEkgYmVsaWV2ZSB0aGlz
IGlzIGFsc28gd2hhdCBSZW7DqQo+PiBpcyBzZWVraW5nIGNsYXJpdHkgb24/Cj4KPiBMZXRzIHN0
YXJ0IHdpdGggbm9ybWFsIG9wZXJhdGlvbi4gSWYgdGhlIE1BQyBzdXBwb3J0cyBwYXVzZSBvciBh
c3ltCj4gcGF1c2UsIGl0IGNhbGxzIHBoeV9zdXBwb3J0X3N5bV9wYXVzZSgpIG9yIHBoeV9zdXBw
b3J0X2FzeW1fcGF1c2UoKS4KPiBwaHlsaWIgd2lsbCB0aGVuIGNvbmZpZ3VyZSB0aGUgUEhZIHRv
IGFkdmVydGlzZSBwYXVzZSBhcyBhcHByb3ByaWF0ZS4KPiBPbmNlIGF1dG8tbmVnIGhhcyBjb21w
bGV0ZWQsIHRoZSByZXN1bHRzIG9mIHRoZSBuZWdvdGlhdGlvbiBhcmUgc2V0IGluCj4gcGh5ZGV2
LiBTbyBwaGRldi0+cGF1c2UgYW5kIHBoeWRldi0+YXN5bV9wYXVzZS4gVGhlIE1BQyBjYWxsYmFj
ayBpcwo+IHRoZW4gdXNlZCB0byB0ZWxsIHRoZSBNQUMgYWJvdXQgdGhlIGF1dG9uZWcgcmVzdWx0
cy4gVGhlIE1BQyBzaG91bGQgYmUKPiBwcm9ncmFtbWVkIHVzaW5nIHRoZSB2YWx1ZXMgaW4gcGhk
ZXYtPnBhdXNlIGFuZCBwaHlkZXYtPmFzeW1fcGF1c2UuCj4KPiBGb3IgZXRodG9vbCwgdGhlIE1B
QyBkcml2ZXIgbmVlZHMgdG8gaW1wbGVtZW50IC5nZXRfcGF1c2VwYXJhbSBhbmQKPiAuc2V0X3Bh
dXNlcGFyYW0uIFRoZSBzZXRfcGF1c2VwYXJhbSBuZWVkcyB0byB2YWxpZGF0ZSB0aGUgc2V0dGlu
Z3MsCj4gdXNpbmcgcGh5X3ZhbGlkYXRlX3BhdXNlKCkuIElmIHZhbGlkLCBwaHlfc2V0X2FzeW1f
cGF1c2UoKSBpcyB1c2VkIHRvCj4gdGVsbCB0aGUgUEhZIGFib3V0IHRoZSBuZXcgY29uZmlndXJh
dGlvbi4gVGhpcyB3aWxsIHRyaWdnZXIgYSBuZXcKPiBhdXRvLW5lZyBpZiBhdXRvLW5lZyBpcyBl
bmFibGVkLCBhbmQgdGhlIHJlc3VsdHMgd2lsbCBiZSBwYXNzZWQgYmFjawo+IGluIHRoZSB1c3Vh
bCB3YXkuIElmIGF1dG8tbmVnIGlzIGRpc2FibGVkLCBvciBwYXVzZSBhdXRvLW5lZyBpcwo+IGRp
c2FibGVkLCB0aGUgTUFDIHNob3VsZCBjb25maWd1cmUgcGF1c2UgZGlyZWN0bHkgYmFzZWQgb24g
dGhlCj4gc2V0dGluZ3MgcGFzc2VkLgo+Cj4gTG9va2luZyBhdCB0aGUgZGF0YSBzaGVldCBwYWdl
LCB5b3Ugd2FudCBGT1JDRV9NT0RFX1BuIHNldC4gWW91IG5ldmVyCj4gd2FudCB0aGUgTUFDIGRp
cmVjdGx5IHRhbGtpbmcgdG8gdGhlIFBIWS4gQmFkIHRoaW5ncyB3aWxsIGhhcHBlbi4KPiBUaGVu
IHVzZSBGT1JDRV9SWF9GQ19QbiBhbmQgRk9SQ0VfVFhfUG4gdG8gcmVmbGVjdCBwaHlkZXYtPnBh
dXNlIGFuZAo+IHBoeWRldi0+YXN5bV9wYXVzZS4KPgo+IFRoZSBzYW1lIGlkZWEgYXBwbGllcyB3
aGVuIHVzaW5nIHBoeWxpbmsuCgpUaGFua3MgZm9yIHRoaXMgaW5mb3JtYXRpb24uCgoKSSB1cGRh
dGVkIG10NzUzMF9waHlsaW5rX21hY19jb25maWcoKSwgSSB0aGluayBJIGRvbmUgaXQgcmlnaHQg
dGhpcyB0aW1lCndpdGggdGhlIHBhdXNlIGJpdHMuCgpOb3cgbXQ3NTMwX3BoeWxpbmtfbWFjX2Nv
bmZpZygpIGxvb2tzIGxpa2UgdGhpczoKCnN0YXRpYyB2b2lkIG10NzUzMF9waHlsaW5rX21hY19j
b25maWcoc3RydWN0IGRzYV9zd2l0Y2ggKmRzLCBpbnQgcG9ydCwKCQkJCSAgICAgIHVuc2lnbmVk
IGludCBtb2RlLAoJCQkJICAgICAgY29uc3Qgc3RydWN0IHBoeWxpbmtfbGlua19zdGF0ZSAqc3Rh
dGUpCnsKCXN0cnVjdCBtdDc1MzBfcHJpdiAqcHJpdiA9IGRzLT5wcml2OwoJdTMyIG1jcl9jdXIs
IG1jcl9uZXcgPSAwOwoKCXN3aXRjaCAocG9ydCkgewoJY2FzZSAwOiAvKiBJbnRlcm5hbCBwaHkg
Ki8KCWNhc2UgMToKCWNhc2UgMjoKCWNhc2UgMzoKCWNhc2UgNDoKCQlpZiAoc3RhdGUtPmludGVy
ZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfR01JSSkKCQkJcmV0dXJuOwoJCWJyZWFrOwoJY2Fz
ZSA1OiAvKiAybmQgY3B1IHBvcnQgd2l0aCBwaHkgb2YgcG9ydCAwIG9yIDQgLyBleHRlcm5hbCBw
aHkgKi8KCQlpZiAoIXBoeV9pbnRlcmZhY2VfbW9kZV9pc19yZ21paShzdGF0ZS0+aW50ZXJmYWNl
KSAmJgoJCSAgICBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9NSUkpCgkJ
CXJldHVybjsKCQlpZiAocHJpdi0+cDVfaW50Zl9zZWwgIT0gUDVfSU5URl9TRUxfR01BQzUpIHsK
CQkJcHJpdi0+cDVfaW50Zl9zZWwgPSBQNV9JTlRGX1NFTF9HTUFDNTsKCQkJbXQ3NTMwX3NldHVw
X3BvcnQ1KGRzLCBzdGF0ZS0+aW50ZXJmYWNlKTsKCQl9CgkJLyogV2UgYXJlIGNvbm5lY3RlZCB0
byBleHRlcm5hbCBwaHkgKi8KCQlpZiAoZHNhX2lzX3VzZXJfcG9ydChkcywgNSkpCgkJCW1jcl9u
ZXcgfD0gUE1DUl9FWFRfUEhZOwoJCWJyZWFrOwoJY2FzZSA2OiAvKiAxc3QgY3B1IHBvcnQgKi8K
CQlpZiAoc3RhdGUtPmludGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUkgJiYKCQkg
ICAgc3RhdGUtPmludGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfVFJHTUlJKQoJCQlyZXR1
cm47CgoJCWlmIChwcml2LT5wNl9pbnRlcmZhY2UgPT0gc3RhdGUtPmludGVyZmFjZSkKCQkJYnJl
YWs7CgkJLyogU2V0dXAgVFggY2lyY3VpdCBpbmNsdWluZyByZWxldmFudCBQQUQgYW5kIGRyaXZp
bmcgKi8KCQltdDc1MzBfcGFkX2Nsa19zZXR1cChkcywgc3RhdGUtPmludGVyZmFjZSk7CgoJCWlm
IChwcml2LT5pZCA9PSBJRF9NVDc1MzApIHsKCQkJLyogU2V0dXAgUlggY2lyY3VpdCwgcmVsZXZh
bnQgUEFEIGFuZCBkcml2aW5nIG9uIHRoZQoJCQkgKiBob3N0IHdoaWNoIG11c3QgYmUgcGxhY2Vk
IGFmdGVyIHRoZSBzZXR1cCBvbiB0aGUKCQkJICogZGV2aWNlIHNpZGUgaXMgYWxsIGZpbmlzaGVk
LgoJCQkgKi8KCQkJbXQ3NjIzX3BhZF9jbGtfc2V0dXAoZHMpOwoJCX0KCQlwcml2LT5wNl9pbnRl
cmZhY2UgPSBzdGF0ZS0+aW50ZXJmYWNlOwoJCWJyZWFrOwoJZGVmYXVsdDoKCQlkZXZfZXJyKGRz
LT5kZXYsICIlczogdW5zdXBwb3J0ZWQgcG9ydDogJWlcbiIsIF9fZnVuY19fLCBwb3J0KTsKCQly
ZXR1cm47Cgl9CgoJbWNyX2N1ciA9IG10NzUzMF9yZWFkKHByaXYsIE1UNzUzMF9QTUNSX1AocG9y
dCkpOwoJbWNyX25ldyB8PSBtY3JfY3VyOwoJbWNyX25ldyAmPSB+KFBNQ1JfRk9SQ0VfU1BFRURf
MTAwMCB8IFBNQ1JfRk9SQ0VfU1BFRURfMTAwIHwKCQkgICAgIFBNQ1JfRk9SQ0VfRkRYIHwgUE1D
Ul9UWF9GQ19FTiB8IFBNQ1JfUlhfRkNfRU4pOwoJbWNyX25ldyB8PSBQTUNSX0lGR19YTUlUKDEp
IHwgUE1DUl9NQUNfTU9ERSB8IFBNQ1JfQkFDS09GRl9FTiB8CgkJICAgUE1DUl9CQUNLUFJfRU4g
fCBQTUNSX0ZPUkNFX01PREUgfCBQTUNSX0ZPUkNFX0xOSzsKCglzd2l0Y2ggKHN0YXRlLT5zcGVl
ZCkgewoJY2FzZSBTUEVFRF8xMDAwOgoJCW1jcl9uZXcgfD0gUE1DUl9GT1JDRV9TUEVFRF8xMDAw
OwoJCWJyZWFrOwoJY2FzZSBTUEVFRF8xMDA6CgkJbWNyX25ldyB8PSBQTUNSX0ZPUkNFX1NQRUVE
XzEwMDsKCQlicmVhazsKCX0KCWlmIChzdGF0ZS0+ZHVwbGV4ID09IERVUExFWF9GVUxMKSB7CgkJ
bWNyX25ldyB8PSBQTUNSX0ZPUkNFX0ZEWDsKCQlpZiAoc3RhdGUtPnBhdXNlICYgTUxPX1BBVVNF
X1RYKQoJCQltY3JfbmV3IHw9IFBNQ1JfVFhfRkNfRU47CgkJaWYgKHN0YXRlLT5wYXVzZSAmIE1M
T19QQVVTRV9SWCkKCQkJbWNyX25ldyB8PSBQTUNSX1JYX0ZDX0VOOwoJfQoKCWlmIChtY3JfbmV3
ICE9IG1jcl9jdXIpCgkJbXQ3NTMwX3dyaXRlKHByaXYsIE1UNzUzMF9QTUNSX1AocG9ydCksIG1j
cl9uZXcpOwp9CgpHcmVhdHMsCgpSZW7DqQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVk
aWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
