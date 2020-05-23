Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D511DF76D
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 15:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIjzJysbHfCo6H13OuQuoq/JG3f6sUvkvWt3UpD2CTg=; b=FQ7fs5GI0xvv7G
	rexogs5YRz++gk9wdheOO/5YFknLGNfFvyonnSplD4HRj5zKiDTks9gT+FrATyNj/X4Z0momfF1Yu
	vvjM6ptueNIGzGb9xJB1mnRZEa7wt+rDxdvMds3jARJ4sEeo4SFTJzBemoxKN9whjdj2V3OvNR718
	osqYXjGwyk8qMPAc7J3TM55Lyd5EatyjuvIZsrtqIAmdV5mYyGcJ1JizucHPNggP1Sa68iAMQ/J3H
	HuOTu1Y98rBQYmB+VnFpJbxvkViEVOOmN43B5uxqRY1B4t18vp7jAc2aYUJX7j32mgZph8kSVp6fJ
	fPVLWly5vM0PnZZBDTJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcTzc-000403-Fa; Sat, 23 May 2020 13:15:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcTz9-0002ni-Tp
 for linux-mediatek@lists.infradead.org; Sat, 23 May 2020 13:14:47 +0000
Received: by mail-io1-xd43.google.com with SMTP id p20so1036235iop.11
 for <linux-mediatek@lists.infradead.org>; Sat, 23 May 2020 06:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Qqk95wVsZmzmcuIGFt4zOLnbm5tsZjHScQ5kWL0ptlo=;
 b=Up30C1YRhvWB57ye1T2UrlkPecgpMbEt23MMyafxVtj4AWCFG/FP7d50A6YnKzg9yp
 G2totyxkDwGSHGb7MyOfkpg+yi5yX1RK12jEKRrBkpHP6ZfWVKTJC9sYB2brG+MairoD
 nVu7qav8lKDiem0EWG8cq+eNzX0PIUp92pXJJ05sgDL2eFgGXNL7w4o15p6olun3W+Xq
 AWP/WTLrrm5Q2J98rGCkDUk465WESwOxdkOm+R3HSYg8UezUHHjE5f7UmhvYqSJEI9jC
 dDMgCm+myuFjb6RIyGffd1PFIclibonFoPKs1bF6NUkiv9nFwsu5JVO3a0xShNsc/Nwh
 1GHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Qqk95wVsZmzmcuIGFt4zOLnbm5tsZjHScQ5kWL0ptlo=;
 b=FZA/yfFFoWgCt+ZbeRwrx07kDdzHRJDq9Wm9EhYpt1FJMCP1ofJHHQLiy3ro26Ango
 ZQAXhaFwSaq+zcqKWuGRXkqHFepKtD2IeDzlGR13ARgvRuvBrRkCIrjUi2Vg8y1yOO4g
 3bYW1+VkK8S+sDoBOymoJJvLRqUDLcITAvLxDVhIRrMTkU52YgNt9DLzF05x816A570n
 6ubJVpfapaAIKOkcIVXcUL7HsIQFF1CvuckTr+c6S69beKWKB8d/epHyLOKRNgtf4Yss
 KVFj/jEnzlwdOvy2N6+h/rEqdgAp9kn+KujhvTo7i/fYRHyfVmJ6bxY2U9KJ5aWfpu1t
 X7gg==
X-Gm-Message-State: AOAM533oiWqf0F1PZ+At874y6wojCS4ZUZXlhRIsALzf601SHxpBt5wS
 CSUd9+Fq8frpXlT9pN3ixs9ypN7dvZ4ip+Gg5sQOFQ==
X-Google-Smtp-Source: ABdhPJy3r7ROG2Dd7iXkJwzhgssNgb6WC0TdCHVJoxGhMF/mvblnvGscUx3CvN8/kuZuYuZPjaHAQSC9J4+TMor5GdA=
X-Received: by 2002:a05:6638:b:: with SMTP id
 z11mr1909060jao.114.1590239680686; 
 Sat, 23 May 2020 06:14:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200520114415.13041-1-brgl@bgdev.pl>
 <20200522.153653.998395486877096103.davem@davemloft.net>
In-Reply-To: <20200522.153653.998395486877096103.davem@davemloft.net>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 23 May 2020 15:14:29 +0200
Message-ID: <CAMRc=MdQo1faFjUzS0z5VmihZ3dfiuHiXozxQUkOhAi1n5tkcQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] net: provide a devres variant of register_netdev()
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_061443_981894_4DF099E3 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

c29iLiwgMjMgbWFqIDIwMjAgbyAwMDozNiBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+IG5hcGlzYcWCKGEpOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rl
di5wbD4KPiBEYXRlOiBXZWQsIDIwIE1heSAyMDIwIDEzOjQ0OjEwICswMjAwCj4KPiA+ICAgbmV0
OiBldGhlcm5ldDogbXRrX2V0aF9tYWM6IHVzZSBkZXZtX3JlZ2lzdGVyX25ldGRldigpCj4KPiBU
aGlzIHBhdGNoIGRvZXNuJ3QgYXBwbHkgdG8gbmV0LW5leHQuCj4KPiBOZWl0aGVyIHRoZSBzb3Vy
Y2UgZmlsZSBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX21hYy5jLAo+IG5v
ciB0aGUgZnVuY3Rpb24gbXRrX21hY19wcm9iZSgpIGV2ZW4gZXhpc3QgaW4gdGhlIG5ldC1uZXh0
IEdJVAo+IHRyZWUuCgpJbmRlZWQuIFRoZSBkcml2ZXIgZ290IHJlbmFtZWQgaW4gdjUuIEkgZGlk
bid0IHJlc2VuZCBhIG5ldyB2ZXJzaW9uIG9mCnRoaXMgc2VyaWVzIGJlY2F1c2UgSSB0aG91Z2h0
IHRoZXJlIHdvdWxkIGJlIGEgZGlzY3Vzc2lvbiBhYm91dCBpdHMKdXNlZnVsbmVzcy4gSSdsbCBz
ZW5kIGEgcmViYXNlZCB2ZXJzaW9uIHRoZW4uCgpCYXJ0b3N6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QK
TGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
