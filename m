Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D839A923
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 09:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE+PI9oz8HzWSWBBv2WIpxe3io7LwUBva9KcofdbLlc=; b=KORBktwUvWXz3m
	6pynzjLT9aZ/Xc2E5A7tF0SOJgX9BSkkxmUhjYY/AXEFtiAQcYBv5og+mbsXENewxVwQjm/2KRGY+
	oO5BfveMbq0J2TQlPKFo5MtuANmPkOVtT6jZaZgsmzTwD6Ih/xBbY8j84wJw9gbUGqb4HW8qUhIX3
	s30+gA3k6L37V3Ug8SgkQ9H+N7djdvs13XKbgYt2DrSu4CI4KHBWS+EEm9KRz57GfGF8qiidy+k1x
	TzO4q9FdeUjqM+3mQez5wDgyCkGZgqbZJDukCAZb7dc83b66+BzxF9RXkhaS54QGIvO+GHJ9MiWBU
	Xm578Hjulszjy/x1Tcdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14LY-0004IJ-Cw; Fri, 23 Aug 2019 07:50:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14LT-0004Gu-T8
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 07:50:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id n19so6433971lfe.13
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 00:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AROq8DpxBavGw3rOZlBsIIIgdgdRJheHWzoZIaKAbGU=;
 b=eZXrBT737nM6L8Pa5XlEQuC0rQBRrzfTsrl7Tw0vIf6llspePcFP3Z99vwe48Xo+q+
 xOKOeB2kfRG07WTIk/J/GStBuxjjfJKMkzmaTv+HZxcu+unxdyhXqKmAcj8A6lXg4nll
 Wh5bMJd1ogfOrPxcDidGKUBQ9eIYg8/0B5MHQGTrHe/GPKG/Ds+nI4dND4hFOoU+Mdgs
 nuA64AWazxNszt2zSzknLq2Go1nWPLVQW2G+zpe8aY/JKdzYSFUXNP4Zweqq/FTXRHef
 Gx6CccrR4hrMSojSHJjv1mmNtPTOQ5L/PyeCjpMZX9KG+V+MXVOELXgnFpiPNT0xvQjA
 UKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AROq8DpxBavGw3rOZlBsIIIgdgdRJheHWzoZIaKAbGU=;
 b=lXgtxCDP/gf8Lb6bXer4oc6IrybMK3lobZwgE26NunSDmVWaefAhlmdWpefRVUwmDU
 cf7Fugdp+q+8uSLrtRei3xC2EGr8bPjLEg8KeFugs1dmRGbRSMhwfDdaTXIjP7BRDavW
 P2WNFmFGmJ3FVEKBfUGTLaIySBVTDlbd4YBCbZdxE4+7tFqu35o4N5OYFwBN190W+Smj
 LMtbeISaG6UFhZy25rkUu/xRIxdCcCUUnU8MYob8XmTc4wzk3qeEy2MsX0/dbKvYA+nl
 X5hLyMI0WJANVMZay6XISpO2BIegjQVy4wGdb5bWv7p//jUhemnl1P0jZjFDpxXoINw2
 ioUA==
X-Gm-Message-State: APjAAAUhFTHDLjs+PeYL94Xsia+JD32iAn8ThtXdsT4myJXeOmgWLcPK
 BJ9QIzA0naMIB78jtgTxZEv6U7UbG7ybnBWd5qjtPQ==
X-Google-Smtp-Source: APXvYqy4LEAB6weVbikWw4omf6hTp96l46dy0piklsM9lAxP3u3RWDVFhgst2bdXR83kAe94+v5z+0MY4UWyNN2QLmo=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr1990286lfp.61.1566546650115;
 Fri, 23 Aug 2019 00:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <1565686400-5711-1-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1565686400-5711-1-git-send-email-light.hsieh@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 09:50:38 +0200
Message-ID: <CACRpkdY0+eQXknPPj2vz9-Zo9cQHJQafbUC97mOQvEuzbX-qtw@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] Improve MediaTek pinctrl v2 and make backward
 compatible to smartphone mass production usage
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005051_953901_E1259A6E 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:53 AM Light Hsieh <light.hsieh@mediatek.com> wrote:

> This patch improves MediaTek pinctrl v2 and makes backward compatible to
> current smartphone mass production usage by:
> 1.Check gpio pin number and use binary search in control address lookup
> 2.Supporting driving setting without mapping current to register value
> 3.Correct usage of PIN_CONFIG get/set implementation

I rely on Sean to review and get this in shape.

> 4.Backward compatible to previous Mediatek's bias-pull usage

This is fine as long as the new style of using explicit pull
setting also works. It's nice to be compatible.

> 5.Add support for pin configuration dump via sysfs

Do you mean debugfs? You should use debugfs for debug.
sysfs is subject to ABI rules.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
