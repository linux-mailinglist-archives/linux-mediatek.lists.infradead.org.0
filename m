Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403831E4064
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 May 2020 13:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LEnqdmgZdQ3OxVaxNRclMKvx7T7FTcQf5nK3iKndyo=; b=ll9ClOCWGAsGgk
	6bZmp0dNtAxiMDTOr5HMwUi0QlBGynssshQYd9PU4eUms0VHK9XiklpxR6HkHX9Sgo6xQ+fXPsndj
	n9xgTI98WSTbQnNNgMUUpst0stkIifiG0/DRmFPcqr84x31G+5DrsLTZYEt/NtpE5lWOtzEw0uZTz
	7Fft9GuwETuI/pEWR+nrbUUfF1+t92t5VU5SXWua+2N/EW6JrIq0SxE93wp7wKQ+KtRJYJYO93bbv
	YubXxaDpY3Wm2lc3KF6IDLGB5GW+zIJEovj7t7r+kBUSAsa+aBT9oPnxRLET46OC0X+vyFdeYPHKk
	WVnHFCRavI2wFhBXI6gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduYg-0002YJ-6W; Wed, 27 May 2020 11:49:18 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduYc-0002WW-Bq
 for linux-mediatek@lists.infradead.org; Wed, 27 May 2020 11:49:15 +0000
Received: by mail-il1-x142.google.com with SMTP id j3so23596527ilk.11
 for <linux-mediatek@lists.infradead.org>; Wed, 27 May 2020 04:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P8PTwzFzeBrMUylfPlK6w5QdgJqQqN0ShMTZV+S777s=;
 b=idCOZA7Jer7/khj6oT5n+RXA3MUeC4xabBa2DnpNqo4bRw4q5FfizSKagPdtLXaGt2
 +cLFBmH6D73ncH5MHDbLo7dLii+KP9GYujT8xVp+8Qtf+Q+43pOg1Kpk5JlqGNGFFOK3
 Or8Ok8yZ5v53V2VrvqfyG3Zvf9UlXR7742SY0ob9QdAZ6WAvxD6qJQ4sgwlRrL5wM+Gk
 WrbeD47V5MtrNgv1E0hgvh0Bo6zbre9MXmdv8fPgr3I+v/D3R0Un0MmKj+nw73OgONnv
 uOhkecfpiu8P+4anG7oFMWDnDG9C3C0Ccod44fhP+jaMXsL9zDvmvftECD8HlNht6Gr2
 V7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P8PTwzFzeBrMUylfPlK6w5QdgJqQqN0ShMTZV+S777s=;
 b=dBTdko/QwLwVkpDGOpHCnYOk9utdGVd5k4XBouaQfsjdses6aABjbEEUBEX+U+hSdb
 UMh7UtL9hIqRUQe7eXUqV9g1BGtRja7xD5uwA6DIsV4ohuJs14g46BzMcgJuUBnuMMTv
 giVSXdY1AdNgkxCsrs7+SFTRJUUOykBs1DkxcKjIIvnLni0hPSvnU9ofTRDX3K7KIjMj
 v1FWzz8Ec66qoVULVA3CTO8uFq0f+CRWa8H9s4TAkCT/AOpdLyBHEGmmkZO5UlhjjTe5
 KM/v9lEq8rtO4HTKGlVdnfpIEwM3zeLEw3vBW6AZh8GLCUztpciQhyaGoKjBNLEm9ZOz
 o4bA==
X-Gm-Message-State: AOAM533geoFzJ349/BiJibeA35P4R95FFRghiXMLnzKAhO3ITpPhespx
 65/a2JVyXpGUnuto+Ne6gaqh/Y3Tj/a2Xmf8cIM5TQ==
X-Google-Smtp-Source: ABdhPJzOr8AK3ftkfELinUKS0OcMPJwZ5irSDBy6AtSymxKhk9eJ8/5fPkT1KSwP9yyzC0KfwMBGAIvKmGDKk2XSqvw=
X-Received: by 2002:a92:de10:: with SMTP id x16mr2425173ilm.6.1590580148751;
 Wed, 27 May 2020 04:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
 <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
 <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
In-Reply-To: <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 May 2020 13:48:57 +0200
Message-ID: <CAMRc=Md1w_6+dU9gCwiiB5R+dMcYMPFLPrA++RBkKp5zaY6Riw@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_044914_408096_E6A0F28F 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

xZtyLiwgMjcgbWFqIDIwMjAgbyAxMzozMyBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiBu
YXBpc2HFgihhKToKPgo+IE9uIFdlZCwgTWF5IDI3LCAyMDIwIGF0IDEwOjQ2IEFNIEJhcnRvc3og
R29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gPiA+IEkgZG9uJ3Qga25vdyBp
ZiB0aGVyZSBzaG91bGQgYmUgYSBuZXcgbGFiZWwgdGhhdCBleGNsdWRlcyB0aGF0Cj4gPiA+IGFz
c2lnbm1lbnQgZm9yIHRob3NlIHBhcnRpY3VsYXIgZ290b3Mgb3IgaWYgbmV3X2RtYV9hZGRyIHNo
b3VsZAo+ID4gPiBiZSBpbml0aWFsaXplZCB0byBzb21ldGhpbmcgYXQgdGhlIHRvcC4gUGxlYXNl
IHRha2UgYSBsb29rIGF0Cj4gPiA+IGFkZHJlc3NpbmcgdGhpcyB3aGVuIHlvdSBnZXQgYSBjaGFu
Y2UuCj4gPiA+Cj4gPiA+IENoZWVycywKPiA+ID4gTmF0aGFuCj4gPgo+ID4gSGkgTmF0aGFuLAo+
ID4KPiA+IFRoYW5rcyBmb3IgcmVwb3J0aW5nIHRoaXMhIEkgaGF2ZSBhIGZpeCByZWFkeSBhbmQg
d2lsbCBzZW5kIGl0IHNob3J0bHkuCj4KPiBJIGFscmVhZHkgaGF2ZSBhIHdvcmthcm91bmQgZm9y
IHRoaXMgYnVnIGFzIHdlbGwgYXMgYW5vdGhlciBvbmUKPiBpbiBteSB0cmVlIHRoYXQgSSdsbCBz
ZW5kIGxhdGVyIHRvZGF5IGFmdGVyIHNvbWUgbW9yZSB0ZXN0aW5nLgo+Cj4gRmVlbCBmcmVlIHRv
IHdhaXQgZm9yIHRoYXQsIG9yIGp1c3QgaWdub3JlIG1pbmUgaWYgeW91IGFscmVhZHkgaGF2ZSBh
IGZpeC4KPgo+ICAgICAgICBBcm5kCgpIaSBBcm5kIQoKSSBhbHJlYWR5IHBvc3RlZCBhIGZpeFsx
XS4gU29ycnkgZm9yIG9taXR0aW5nIHlvdSwgYnV0IHNvbWVob3cgeW91cgpuYW1lIGRpZG4ndCBw
b3AgdXAgaW4gZ2V0X21haW50YWluZXJzLnBsLgoKQmFydG9zegoKWzFdIGh0dHBzOi8vbGttbC5v
cmcvbGttbC8yMDIwLzUvMjcvMzc4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
