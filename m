Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5093415E69
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 09:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYcpEQGC7HWHUHGOlBqLDr+Cckv96Pz2elBmerWfuJ0=; b=JdBXjrjp7j2KCY
	nTwiR0Zh9F/ktUqmvShJ/x9ltBafZ/jo2VKB30Yi5V9dhz1SiTYCKCOBhDisgm7lk7HLuLqA4FOQk
	K8kKZvPxyJV3d1CuZBGTAzuTGJItiQoLnn3FVAZUnZ0+VF4EZxJiQKslBD+t9yNymeAa8j+dw6SUJ
	GEmt2cDR+TOsG64KdvUI6Fr0fNZSGqKVUMj6rEJa9RpNmYA30APYIV/YdYBHVFtF71urEn0aB84Yg
	FsBho7dbWuSdQSjiKMC0QgXof0T32++lpd9FGLqfJGmuPfZdzcDryzDtHkImMJ/NRB/wvGabX+cjT
	Tno/K3K4YrMToDUxjeBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNujL-0002ae-Qe; Tue, 07 May 2019 07:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNujB-0002T4-W1; Tue, 07 May 2019 07:41:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9115620989;
 Tue,  7 May 2019 07:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557214889;
 bh=bn9LxTz5PdUe1/eUSoWy21rExjTBSKgzZqLiQHJSJt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G9IZEx4Ac6qG5IHydgnkSVdU2W3m3DzHUL1a8UNorDAR3bT8YrmdfqPbnGovYAZqT
 gJPg1s4gm5MefjSAlyiTpxSL25/qZyI2uPZLngg5B69pvF4BDdV4Ro6afM2qi/0H5h
 BBPj0fkQFaLnYMa/n4Ir+xUQmGDzRY/bniniJQGg=
Date: Tue, 7 May 2019 09:41:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Message-ID: <20190507074126.GA26478@kroah.com>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <20190507071914.GJ2269@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507071914.GJ2269@kadam>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_004130_045414_A147C015 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMTA6MTk6MTRBTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAxMToyNDo0M1BNICswMjAwLCBQZXRyIMWg
dGV0aWFyIHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+IHRoaXMgcGF0Y2ggc2VyaWVzIGlzIGFuIGF0
dGVtcHQgdG8gZml4IHRoZSBtZXNzLCBJJ3ZlIHNvbWVob3cgbWFuYWdlZCB0bwo+ID4gaW50cm9k
dWNlLgo+ID4gCj4gPiBGaXJzdCBwYXRjaCBpbiB0aGlzIHNlcmllcyBpcyBkZWZhY3RvIHY1IG9m
IHRoZSBwcmV2aW91cyAwNS8xMCBwYXRjaCBpbiB0aGUKPiA+IHNlcmllcywgYnV0IHNpbmNlIHRo
ZSB2NCBvZiB0aGlzIDA1LzEwIHBhdGNoIHdhc24ndCBwaWNrZWQgdXAgYnkgdGhlCj4gPiBwYXRj
aHdvcmsgZm9yIHNvbWUgdW5rbm93biByZWFzb24sIHRoaXMgcGF0Y2ggd2Fzbid0IGFwcGxpZWQg
d2l0aCB0aGUgb3RoZXIKPiA+IDkgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzLCBzbyBJJ20gcmVzZW5k
aW5nIGl0IGFzIGEgc2VwYXJhdGUgcGF0Y2ggb2YgdGhpcwo+ID4gZml4dXAgc2VyaWVzIGFnYWlu
Lgo+IAo+IEkgZmVlbCBzb3J0IG9mIHJpZGljdWxvdXMgYXNraW5nIHRoaXMgb3ZlciBhbmQgb3Zl
ci4uLiAgTWF5YmUgeW91ciBzcGFtCj4gZmlsdGVyIGlzIGVhdGluZyBteSBlbWFpbHM/Cj4gCj4g
VGhpcyBidWcgd2FzIGludHJvZHVjZWQgaW4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9w
YXRjaC8xMDk0OTE2Lwo+ICJbdjQsMDEvMTBdIG9mX25ldDogYWRkIE5WTUVNIHN1cHBvcnQgdG8g
b2ZfZ2V0X21hY19hZGRyZXNzIiBidXQgaXQKPiBsb29rcyBsaWtlIG5vIG9uZSBhcHBsaWVkIGl0
Lgo+IAo+IFlvdSdyZSBhY3RpbmcgYXMgaWYgaXQgKndhcyogYXBwbGllZCBidXQgeW91IHJlZnVz
ZSB0byBhbnN3ZXIgbXkKPiBxdWVzdGlvbiB3aG8gYXBwbGllZCBpdCBhbmQgd2hpY2ggdG8gd2hp
Y2ggdHJlZSBzbyBJIGNhbiBmaWd1cmUgb3V0IHdoYXQKPiB3ZW50IHdyb25nLgo+IAo+IEkgb25s
eSBzZWUgY29tbWVudHMgZnJvbSBsYXN0IEZyaWRheSB0aGF0IGl0IHNob3VsZG4ndCBiZSBhcHBs
aWVkLi4uICBJCj4gYWxzbyB0b2xkIHlvdSBvbiBGcmlkYXkgaW4gYSBkaWZmZXJlbnQgdGhyZWFk
IHRoYXQgdGhhdCBwYXRjaCBzaG91bGRuJ3QKPiBiZSBhcHBsaWVkLiAgQnJlYWtpbmcgZ2l0IGJp
c2VjdCBpcyBhIGJ1ZywgYW5kIHdlIG5ldmVyIGRvIHRoYXQuICBJJ20KPiBqdXN0IHZlcnkgY29u
ZnVzZWQgcmlnaHQgbm93Li4uICBXaGF0IEknbSB0cnlpbmcgdG8gZG8gaXMgZmlndXJlIG91dCBp
bgo+IG15IGhlYWQgaG93IHRoaXMgcHJvY2VzcyBmYWlsZWQgc28gd2UgY2FuIGRvIGJldHRlciBu
ZXh0IHRpbWUuCgpKdXN0IHRvIHJlc2VuZCB0aGlzLCBzbyB0aGF0IGl0IGhvcGVmdWxseSBkb2Vz
IF9ub3RfIGdldCBzdHVjayBpbiBhIHNwYW0KZmlsdGVyLgoKUGV0ciwgcGxlYXNlIGFkZHJlc3Mg
RGFuJ3MgY29tbWVudHMsIGRvIG5vdCBpZ25vcmUgdGhlbS4KCmdyZWcgay1oCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
