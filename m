Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B3E57B60
	for <lists+linux-mediatek@lfdr.de>; Thu, 27 Jun 2019 07:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WBtdv/nL1xwFxzSvmh2YODkiMqiJ8YMShHPoCU7A74=; b=lIBqO7+pkDO/7R
	Dzu5KqZFtR/A81SN2wZrQjdAgzUBjD6JEt4cOoT/hL7EBpvPacpk1Pcca7EwyDWzG4uoSTjP2zU+u
	V8lh9G5aRRrIUQAAdKWedBS3bImwFMLNhlo1GX5kwt0+toJ6Wr5f8MBKUtuJQ2ZPSztEUctJAlvpG
	nqyU+8tyEzL9tZmZuQi35sTz9s0fQhOHvbKV+1Vp2ALzxOjW7jF6TVTO1phdZ2SKyvGbwSsRVFl+S
	us6gRUKhFZnAAOmAbWqkzgtL4wQnJbWdb/wCwvMqKvttWEqjkxTfYTnoeCLbN2+wdqm+O0QpDYOVU
	BtnbxdEdcKAuJcVgk7Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMw7-00078E-V9; Thu, 27 Jun 2019 05:27:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpY-0006Q2-S9
 for linux-mediatek@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IBVpdeei62Pkg6OU9hx5jtv+/E8INHawqiXSTj0E44c=; b=VaFX6TmuyyhKc6jiltAUMkj6m
 nsoZL4GY6JvV82/mvGDCcMIlkr1TNtl3Xv3ImeB+5OevP2IgBpiqzejpj0MH4cC8zEaDe8w+dKFs9
 wWjI85PyJLtGGEvH9GPG5CltmVZAlrwQh7EXbbmqf233DcohLjOR4I0d5asO3JY6nmkmDtiCTGIlU
 hbXKWiWyKqt5/3s9kmh/0LZaYGlC8crI961OQdS/PdSQDfPZu7G/VeQf/1QFpvDxdQZuyTcLK0zIG
 K22FStx9A9tz5HVymiWoDvCprwMZ9fXK5cdaxhlAnSvgLP42mB5RZ+Ss7HflFAET+6FClXTXh0ZhC
 Pb6e/M/Rw==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFe-0003c1-O7
 for linux-mediatek@lists.infradead.org; Thu, 27 Jun 2019 02:35:08 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so618924ljc.11
 for <linux-mediatek@lists.infradead.org>; Wed, 26 Jun 2019 19:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IBVpdeei62Pkg6OU9hx5jtv+/E8INHawqiXSTj0E44c=;
 b=SjkETA5dA4Vx1NcCYSVcjS5Eo1K7O9ZFrwX8eqtlVbqefaF6xgJrye9b3noBTNBu3R
 toZP7tsNNKk9CYcK85cVrTsuppDS5tFoG4fV58JlDnE6hJFDXQZ8LZU1cIe8g2Np318K
 IUkbt55ADqjOM8llS1h3ljVkLj4SLk02VFr65h85mV6nPXywwTARwJlrZWXED/pKwBTT
 TRMmaKUtQQGiIzwlsogXr253iSN3RW8AICQ9QZ2Bl/vWVvZpoEZtDlHpUhK9ZjqvcOmq
 9uS1ge1LHLsRJlTeXkD5qQfdq38RvMYPcK708pgdek3yH4yMvfWyTa8C2hBtYE11hV7j
 pK5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IBVpdeei62Pkg6OU9hx5jtv+/E8INHawqiXSTj0E44c=;
 b=OhP/6eSqQHubR1SsRLAOONfi0KTtP/guj4GYXXpqEQu4Fn9Of4E5qXpbRYKQ7cwj2O
 hugq3KCZA/qPlhrllzVsWZb69Wo8j4XK9inqgAYBVT6J0raQQfCdG6LqAV0WdERnqueh
 AUI8CDLc2QGsCQN5JNoJdiU7NCA1sEuq4RTmadm7yFZtEYIJjCrW9V7XHC1HW2oDsOSE
 jOq6EbBN/j/Z5SMRy/fGZLGl4I9R9/UnPlDfgnlOkQMNYyW6eZn1BAbpGCFKUqtXOFn7
 +c/0M33VYHbnwiCXTArHOjgN2dQszbJcc/piUgfs9Cnwa3Z8bmYnbQdDeLJsnsyGHzrB
 b/iQ==
X-Gm-Message-State: APjAAAUYoJ9tGtCaxsqlRLgTmUts3/SWjmiCUB0WUdwalyLM3CMFb1St
 3pgbBso8UztCoNSEmAx/6BYv7Q==
X-Google-Smtp-Source: APXvYqxRzgDTg4LFmdfgeioPXrA8IbN8WGTPVFkiWp4Es5PbFqSPCa+LBp0SE15Dt0fzPgpWEtCwqw==
X-Received: by 2002:a2e:12c8:: with SMTP id 69mr840364ljs.189.1561602828305;
 Wed, 26 Jun 2019 19:33:48 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a29sm110537lfi.23.2019.06.26.19.33.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:46 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:20:05 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] arm64: dts: mediatek: updates for v5.2-next
Message-ID: <20190627022005.2ragrshoflkhlja3@localhost>
References: <aa4de43a-0871-dfb0-0ad1-46f11b254a67@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa4de43a-0871-dfb0-0ad1-46f11b254a67@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033506_804109_D2951D1D 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Zhiyong Tao <zhiyong.tao@mediatek.com>, Ben Ho <Ben.Ho@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 hsinyi@chromium.org, Erin Lo <erin.lo@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 michael.mei@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:35:27PM +0200, Matthias Brugger wrote:
> Hi Arnd and Olof,
> 
> This time we have only some DTS patches for MediaTek. Mostly it is about the new
> SoC mt8183. Several drivers where added already but the device tree was still
> missing.
> 
> Please have a look and pull :)
> 
> Regards,
> Matthias
> 
> ---
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
> tags/v5.2-next-dts64
> 
> for you to fetch changes up to de1033881e936382d67ae47073a7092554729d74:
> 
>   arm64: dts: mt8183: add efuse and Mediatek Chip id node to read (2019-06-21
> 17:50:12 +0200)
> 
> ----------------------------------------------------------------
> - convert arm boads to json-schema
> 
> mt8183:
> - add base SoC and evaluation board
> - add cpacity-dmips-mhz
> - add pinctrl, auxadc, spi, and efuse nodes

Merged, thanks!


-Olof

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
