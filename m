Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677161B332D
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Apr 2020 01:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=221JDcOTesmnRiNrL9cTGtucSwX7cHJRCNyrvGd0JiU=; b=XsdQncbM3Byd5X
	I8LD1ks71MOGcfhcCqHviYspegaUlSk2Y/xRTvRI83QsvVnf3aX9pGmzw5tZRQwqNEzvo16HoyeoZ
	4dbo96lrf62b27xyCw/iMS/FNGSVqWvo4vzcGyyq4wJWMyadiLkmEIqjTupEefl4frELiM596+auX
	kGizJJW7HqRtMb+6HMNFdeQMcsrMpD5345tCbZX3R94uqzinjCGuvxboK1AsaIxaOt7J7Aqoi0J3A
	0E4H30hcIeyxvKaQCsTwGwuJMGWzjG7vKhuRejFMhgZ5dFVvsYBknaMtsudOrsieiqRdcr1+ooY+5
	P0AC/r2rj0U/o+bTmTAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR2Mn-0007z8-4B; Tue, 21 Apr 2020 23:31:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR2MZ-0007ov-BR; Tue, 21 Apr 2020 23:31:36 +0000
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9719120738;
 Tue, 21 Apr 2020 23:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587511894;
 bh=RPY9/TAPtMpNAGRQZw/dlkxmaqPwTqvSl3q13yOk+XI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2s72HPDDsl1QTP+FODWwiPUTuk0v4TPC/n61PVeE9RDv3L6UJIXLNfatjGwILnpao
 g7LNzo9wa6PB/uzg/ll2Epz+WWwNIrR1NrbZxUbfD+1YT6mbuMvcavfEhXqFHSS+Fk
 66OH7EL2qAF1SeLI0P8nudCKobke3dP858Nw2I+w=
Received: by mail-ed1-f44.google.com with SMTP id g16so158851eds.1;
 Tue, 21 Apr 2020 16:31:34 -0700 (PDT)
X-Gm-Message-State: AGi0PubGDr/uQJTOqI43p/3rRO2MTMz2WGOnRmAvBpJ+b+6QHajzKs3B
 HrxHBjgTf9pdNXT8jNzEnv34qHOzKcqwX2aIQw==
X-Google-Smtp-Source: APiQypJo9yp2SonxjWMw73VqqdawuFNXOhrZk2P9FYz3xedbgGtLGvC53P/2on6r1rrbXobjcKm43t2LLpC5Lt5jrNE=
X-Received: by 2002:a05:6402:1587:: with SMTP id
 c7mr20059512edv.61.1587511893020; 
 Tue, 21 Apr 2020 16:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200411074408.38090-1-jitao.shi@mediatek.com>
In-Reply-To: <20200411074408.38090-1-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 22 Apr 2020 07:31:21 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-78CsRocevQK-h-CsBZTTDpYCtpuswcL0MkNyhVvAADg@mail.gmail.com>
Message-ID: <CAAOTY_-78CsRocevQK-h-CsBZTTDpYCtpuswcL0MkNyhVvAADg@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] Config mipi tx current and impedance
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_163135_414620_7F8510ED 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKRm9yIHRoaXMgc2VyaWVzLCBhcHBsaWVkIHRvIG1lZGlhdGVrLWRybS1uZXh0
IFsxXSwgdGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVrLWRybS1uZXh0
CgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29t
PiDmlrwgMjAyMOW5tDTmnIgxMeaXpSDpgLHlha0g5LiL5Y2IMzo0NOWvq+mBk++8mgo+Cj4gQ2hh
bmdlcyBzaW5jZSB2NToKPiAgLSByZW1vdmUgbWVtc2V0KCkKPiAgLSBhZGQgcmV0dXJuIHRvIHJl
bW92ZSAiZWxzZSIKPgo+IENoYW5nZXMgc2luY2UgdjQ6Cj4gIC0gYWRkIFJldmlld2VkLWJ5Ogo+
ICAtIG1vdmUgdGhlIGdldCB0aGUgY2FsaWJyYXRpb24gZGF0YSBjb2RlIHRvIHByb2JlLgo+Cj4g
Q2hhbmdlcyBzaW5jZSB2MzoKPiAgLSByZWZpbmUgZHJpdmUtc3RyZW5ndGgtbWljcm9hbXAgYXMg
ZnJvbSAzMDAwIHRvIDYwMDAuCj4KPiBDaGFuZ2VzIHNpbmNlIHYyOgo+ICAtIGZpeCB0aGUgdGl0
bGUgb2YgY29tbWl0IG1lc3NhZ2UuCj4gIC0gcmVuYW1lIG1pcGl0eC1jdXJyZW50LWRyaXZlIHRv
IGRyaXZlLXN0cmVuZ3RoLW1pY3JvYW1wCj4KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ICAtIGZpeCBj
b2Rpbmcgc3R5bGUuCj4gIC0gY2hhbmdlIG10a19taXBpX3R4X2NvbmZpZ19jYWxpYnJhdGlvbl9k
YXRhKCkgdG8gdm9pZAo+Cj4gSml0YW8gU2hpICg0KToKPiAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5
OiBtZWRpYXRlazogYWRkIHByb3BlcnR5IHRvIGNvbnRyb2wgbWlwaSB0eCBkcml2ZQo+ICAgICBj
dXJyZW50Cj4gICBkdC1iaW5kaW5nczogZGlzcGxheTogbWVkaWF0ZWs6IGdldCBtaXBpdHggY2Fs
aWJyYXRpb24gZGF0YSBmcm9tIG52bWVtCj4gICBkcm0vbWVkaWF0ZWs6IGFkZCB0aGUgbWlwaXR4
IGRyaXZpbmcgY29udHJvbAo+ICAgZHJtL21lZGlhdGVrOiBjb25maWcgbWlwaXR4IGltcGVkYW5j
ZSB3aXRoIGNhbGlicmF0aW9uIGRhdGEKPgo+ICAuLi4vZGlzcGxheS9tZWRpYXRlay9tZWRpYXRl
ayxkc2kudHh0ICAgICAgICAgfCAxMCArKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfbWlwaV90eC5jICAgICAgICB8IDU0ICsrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19taXBpX3R4LmggICAgICAgIHwgIDQgKysKPiAgZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jIHwgMjggKysrKysrKysrKwo+ICA0
IGZpbGVzIGNoYW5nZWQsIDk2IGluc2VydGlvbnMoKykKPgo+IC0tCj4gMi4yMS4wCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
