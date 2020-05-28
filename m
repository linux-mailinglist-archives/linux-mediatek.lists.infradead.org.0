Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473511E6259
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 15:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gs36WbbetopVJBlqBjzAtxPRyfufEPXsLBSq7FhQ7Y0=; b=r7AEKlUTBzdKKG
	eVxjs9Gsc7ifhuxFdb1CW1zYHc1vOqBidBa2RqZyEC/xtqTCK3gkL59j7QN6jh280ITXwDngW0c44
	z9vsGFAZxZaXLt7++ESGpc7liNrpzF2hoYu8TDa52ZNcnYkYPctzVTzeSmvzMbQyC4oZbc881Y5F2
	4S5cY0XXXTWGqDYClB5bt7QWBFe+ze/nq+fee4nxzOSdEmZX3+t8hqGLNdD50xmhdYriiEPJv2nS+
	Jbb1MGWPQdmXGfcMf4CZMEKbiZ0ZefG9zr8uP7SphIpgFWH9ggdpodZzstd5xdPxo6E9tbBYcHi8b
	YZcb6VoeiCbSpRFAAT5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIeV-0004Tp-A6; Thu, 28 May 2020 13:32:55 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIeS-0004TF-7i
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 13:32:53 +0000
Received: by mail-io1-xd42.google.com with SMTP id q8so28544584iow.7
 for <linux-mediatek@lists.infradead.org>; Thu, 28 May 2020 06:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=W6Ng+4krUrmarKse2LeV5TbqCd00mWN+CVVq8JMM5SE=;
 b=NJ0ybiSwbgGo1ahGYgAEwAdeEVE39Up4uZ5A1HFgeBFSeLdYyEjBoxzLaGany3U5qV
 tjyrvq25hqP+szOxI6JhW3xweR3C+uklX69AslmSgzZCTItj/lE1GwHfTH3xcf08EAt3
 mIwE34/rwjc7maTJJIaEZzx9+zgsTJyg16wtDEVvAZDos92VaeKTKyLujiHiG6B1cOYc
 KIuFtxHGqOtrjVeCdhdPy1poHODMArChjps6RUTUQ889ANVor3RtIvsULAyoI9a8m+lM
 yGQ/vmJQnyAURdQlFeawVfHk0vmYbLrVgpgL5isYwZKpihaGQitPE1wijKFtYBpDmHAO
 jbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=W6Ng+4krUrmarKse2LeV5TbqCd00mWN+CVVq8JMM5SE=;
 b=AYWW9OpcLiWmDQK5a/9isTfxzLCD5vyw7X6T+BKzzto58ZiU2k4LFOiYTQHT2i8iOm
 oYxQlKAJtggLzdelsA4eh8KHBCWK+h916fQpygDJXeDWJujHCxV0l+iiVG33rCPbEera
 GkzTmqZXwDuM90dscx7boPm7TxRPdxfauUq6807y42tZzae2FmKtKWoa6Ty0pXyMi/91
 AHd8BcLLXxFcD7dpd5D7EraYR8AcaUXFq9xB52TwvgnDw0Na9ZeHEvmDT8COL/nMlZal
 zdo8B/opuw57DDaQQs5EsVbyzzjaYCVF+2wkouYNGZJ3EMO2ji0XmJcckgDbNhMv4J/O
 JGOw==
X-Gm-Message-State: AOAM531OeYkXHkfz6w34zmMFpbNYa6Vp0stzHfWjv2xnzG8nFxZ/g9qi
 GDJL8JVGDelvwo4BQKp9pKV0fgtjUNMFthp/Px+ryg==
X-Google-Smtp-Source: ABdhPJzo7KSXJqLmG4j0rLnWfVnluS/E9w7gshGux7pMtHXApV9skQgthF60OVdfNho6c1thzgPYEEykEs0OHoviWNw=
X-Received: by 2002:a5e:981a:: with SMTP id s26mr2322972ioj.131.1590672771135; 
 Thu, 28 May 2020 06:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200528123459.21168-1-brgl@bgdev.pl>
 <20200528123459.21168-2-brgl@bgdev.pl>
 <20200528132938.GC3606@sirena.org.uk>
In-Reply-To: <20200528132938.GC3606@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 28 May 2020 15:32:40 +0200
Message-ID: <CAMRc=MejeXv6vd5iRW_EB3XqBtdCWDcV=4BOCDDFd4D0-y9LUA@mail.gmail.com>
Subject: Re: [PATCH 1/2] regmap: provide helpers for simple bit operations
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_063252_281880_5CC2724B 
X-CRM114-Status: UNSURE (   7.61  )
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Y3p3LiwgMjggbWFqIDIwMjAgbyAxNToyOSBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDI6MzQ6NThQTSArMDIw
MCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPgo+ID4gVGhpcyBhZGRzIHRocmVlIG5ldyBt
YWNyb3MgZm9yIHNpbXBsZSBiaXQgb3BlcmF0aW9uczogc2V0X2JpdHMsCj4gPiBjbGVhcl9iaXRz
IGFuZCB0ZXN0X2JpdHMuCj4KPiBXaHkgbWFjcm9zIGFuZCBub3Qgc3RhdGljIGlubGluZXM/CgpU
aGUgZXhpc3RpbmcgcmVnbWFwX3VwZGF0ZV9iaXRzXyooKSBoZWxwZXJzIGFyZSBtYWNyb3MgdG9v
LCBzbyBJIHRyaWVkCnRvIHN0YXkgY29uc2lzdGVudC4gQW55IHJlYXNvbiB3aHkgdGhleSBhcmUg
bWFjcm9zIGFuZCBub3Qgc3RhdGljCmlubGluZXM/IElmIHRoZXJlJ3Mgbm9uZSwgdGhlbiB3aHkg
bm90IGNvbnZlcnQgdGhlbSB0b28/IE90aGVyd2lzZQp3ZSdkIGhhdmUgYSBzdGF0aWMgaW5saW5l
IGV4cGFuZGluZyBhIG1hY3JvIHdoaWNoIGluIHR1cm4gaXMgY2FsbGluZyBhCmZ1bmN0aW9uIChy
ZWdtYXBfdXBkYXRlX2JpdHNfYmFzZSgpKS4KCkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApM
aW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
