Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F4D1C69BA
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 09:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZWmbJAFrAOojyvoltLHplybEurBmx9b/DtzewkSyGM=; b=p34HmXEyhLmhJf
	Tz5ae/dZTDWwbbHwOnG+xJ3AjuMZpgy43gS4SrKK4IQ5Vetujg/xX6TxQZyseAniVTJXFrNb1O9sj
	/fWZCRR47bl9sVyVy7P/NgcLbtny3uF5q56MIIdCuM67rx6MZUO4FfjJuyGd77mXnqSh6psTmgeqq
	shGfMtfW1WVOA0hK6XA/zP3HVH6Ikw5uGt2hMSJByj9ARVyNSxGHQLGj5LULAqLlUYFY41HWpRiZV
	zwoPQkdhC8zekbz9pAEb0ozpG3ONmEcg49VkVXvBenXJKnAxMrAKKnhFzcfXdBXiwRXV56qg8rm0d
	mdVOvo1XInw/AGOlpzWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWE5J-00053H-E0; Wed, 06 May 2020 07:03:13 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWE5G-00052W-09
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 07:03:11 +0000
Received: by mail-io1-xd42.google.com with SMTP id 19so1024348ioz.10
 for <linux-mediatek@lists.infradead.org>; Wed, 06 May 2020 00:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kNp8v77ILg0esKTUhtdtghBS9Oa/t4onJ0W3YRlQA2s=;
 b=FeY1euazNQf3RbKL1bjD/43J4EwwmimWuHqwEOZnwBz1hd1L/dc031nSE9oFG+Wg3T
 2MlLi4P3wjow8IWLNhEQw5wQzsUq1yR+pgmzkLdVVMq5F7acvzCJw8xt9tRwn4YzdTqI
 kq7B8RhWDy1Uvo/U/3HxmGo/XUghQ5rSkaM7QtRSng9YDN+DAZRzDNHwxdWW3bqi1RwX
 Xh5e60qZDatUFmTvM25J+WaTlWzSbN0N0nS7q/Emfd0rfMxf1322dnteGutZVlRQiV6j
 fm+T0G1XqnxcfRt5xUFvnQ+oI02GhWQhe3J5K8O2fEQKiuxWrHopugqtZsq2TI4F9eZL
 Ldxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kNp8v77ILg0esKTUhtdtghBS9Oa/t4onJ0W3YRlQA2s=;
 b=JDGmxKX2q/7GLB/jsxJSE8Fzztu83Tr0WviFsabjcsGFr94sW6Kj0fAtX7zAEGaxLo
 rpsFERac+ms0ZoJJm9Wps1JswEvIZdcdKh8RxD72F6d5LFCIrtXgk0mU6o42kaerExRy
 ZQHL4vsXZSSHjUI5ufUNhMrsdkyQzQc/Dyw/NJVYPx6hlKobZFYZp/kNIh5jmJqILTvz
 Aets+/U3fE5O1BpfchqQbI+VYOlylhdebCeufuXGmmnX2eFixIqo6VFVi7zd1XHCpb18
 Qpz90+WdBh6gKPyBiQWwzt5aGVfY5aL6yDPV6y55p+Lt8s4xKCSaIrExD18WQc5d/q+F
 ohQA==
X-Gm-Message-State: AGi0PuYeMMdVs5HEwAgiOiMo59sxZFGm/noaMjDUEPtD7mkLgSb5dv9/
 EdDDmr4jEAvyXSmhwasuBdS9/cKITOQh3r8a6xH41A==
X-Google-Smtp-Source: APiQypK484RcQGROR6N++Jsg8cJZdgh7y4enPWlVzQyBROs9NdLHKNWT34OgKh5Hlj/AoF1qRVFqfpsKTSIhrMt9Np8=
X-Received: by 2002:a6b:8bd2:: with SMTP id n201mr7159413iod.131.1588748588553; 
 Wed, 06 May 2020 00:03:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <20200505174709.GD224913@lunn.ch>
In-Reply-To: <20200505174709.GD224913@lunn.ch>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 6 May 2020 09:02:57 +0200
Message-ID: <CAMRc=Meob9VP83HiF4r2zAEXX0+1LduSrJGCXx=rKB1W701pnA@mail.gmail.com>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_000310_045856_7BE926EC 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: devicetree <devicetree@vger.kernel.org>, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgQW5kcmV3LAoKdGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKd3QuLCA1IG1haiAyMDIwIG8gMTk6
NDcgQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiBuYXBpc2HFgihhKToKPgo+ID4gK3N0YXRp
YyBzdHJ1Y3QgbmV0X2RldmljZSAqbXRrX21hY19nZXRfbmV0ZGV2KHN0cnVjdCBtdGtfbWFjX3By
aXYgKnByaXYpCj4gPiArewo+ID4gKyAgICAgY2hhciAqcHRyID0gKGNoYXIgKilwcml2Owo+ID4g
Kwo+ID4gKyAgICAgcmV0dXJuIChzdHJ1Y3QgbmV0X2RldmljZSAqKShwdHIgLSBBTElHTihzaXpl
b2Yoc3RydWN0IG5ldF9kZXZpY2UpLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBORVRERVZfQUxJR04pKTsKPiA+ICt9Cj4KPiBCaXQgb2YgYW4gb2Rk
IHdheSB0byBkbyBpdC4gSXQgaXMgbXVjaCBtb3JlIG5vcm1hbCB0byBqdXN0IGhhdmUKPgo+ICAg
ICByZXR1cm4gcHJpdi0+bmV0ZGV2Owo+CgpCdXQgdGhlbiB5b3Ugc3RvcmUgYSBwb2ludGVyIHRv
IHRoZSBzdGFydGluZyBhZGRyZXNzIG9mIHRoZSBzdHJ1Y3R1cmUKaW4gdGhhdCB2ZXJ5IHN0cnVj
dHVyZS4gVGhpcyBpcyBhY3R1YWxseSB3ZWlyZGVyIHRvIG1lLiA6KSBJJ2Qgc2F5OgpsZXQncyBn
ZW5lcmFsaXplIGl0IGFuZCBwcm92aWRlIGEgY291bnRlcnBhcnQgdG8gbmV0ZGV2X3ByaXYoKToK
cHJpdl90b19uZXRkZXYoKSwgaG93IGFib3V0IHRoYXQ/CgpGb3IgdGhlIG90aGVyIGlzc3Vlczog
SSdsbCBhZGRyZXNzIHRoZW0gaW4gdjIuCgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgt
bWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
