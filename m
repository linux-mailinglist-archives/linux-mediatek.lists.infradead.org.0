Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80CD992F5
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 14:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzjuvOikkmbpTHDaCXAHwe3X5QWxb2fKBE/bfxSiGfg=; b=QM2UL57mP8IgKC
	qF2SePPnxDH4cAW37O2NdjaaofuQYsIP0nQzVGfGrEUW7L/0ODDswBF97VTtUBO4seC4H8pbMKf73
	394P/3GmY4yVw+jwAbPA5EMHx8EuVcMnwOvE64xx+3GlUuKFUq9oZSxKosG+vS7ygMoTeAHu+MfW8
	86QRg10OjDHtk0xkVNVhGagyM9CJT4dKufe7PP+b7AM7ittRL9xqJRE/AT3QGW9fF0LdDn8wlP7iT
	xERipLBjXoOM3z/yt89BaKXvBI09j1QRjhLffBm3zt4p+LsyfEIcu2GWELdDTsWdorzDhuTPS2D+1
	cMUammLZjAS7S54wM1Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lz8-0002HC-Ss; Thu, 22 Aug 2019 12:14:34 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lya-0001pu-7b
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 12:14:04 +0000
Received: by mail-ua1-x92b.google.com with SMTP id f9so1910052uaj.4
 for <linux-mediatek@lists.infradead.org>; Thu, 22 Aug 2019 05:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DoBmeUN23M8f6sfbc9hjllfgwqRgBk2+sJFpDr9LHV0=;
 b=fBVXvdd5bwH+sPQ0EwczYi7R6UmwhFeLh0tBrRFjzXX7IFfV2KnWfv8vwWiNuIBB8H
 NGGZv62Zk/qT4ZXkyI0BBvAYEl+xvjQK7SG7Tsj0MijJuSmyal+GioBCqP3LfHzD4+oY
 H4u7Wfgxm/ojS3Txbnuys36cWl+exdG4o4s0mesYIrVTF2ehlmDXzZqXpQFcEd+LatFA
 1zFeZZ+yHi8H7Dy4+/zq0XzTxf0XkUSK77ho1+CZNnHkMvgw6bTJmR1mvUE0A01KmHn2
 MdqHGzSDf7tD3eCbDAEt80tOupjxhBET+sk/uQ0Xjzk1P95B6OphlIfJrhjJs6r2lq83
 HQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DoBmeUN23M8f6sfbc9hjllfgwqRgBk2+sJFpDr9LHV0=;
 b=LfwvSed2xJGlNiBPlunNAouke9X/egh3Ch7iYvHAnMeqdCKZB3y1Lhpdy9El7DP7OA
 RpTP01Nz4QsBap/hIyOODyVxNlXOU/5LAWklxYhz/YK8MxLNhSREpbMeg4lX1xeGPIg5
 mHL/QjjeAYuFTKg7mbbL3PR2mhYL+3ReE4zpXitvRaYyquNA06DwGdM7tBV/3PE3QuNp
 9pxxvNs+6lOweFC75UBNPG8ihdQhEa4VMV4qm6qf/6d/2rEzZjbpR7cnofotJBAqxCZt
 n5g+LzqUI4CsRLHo5EyXOu0UUl6/6RVudi02qts4RDGhpVwU9IX/qzGmkc3nvZrb8kfJ
 TbvQ==
X-Gm-Message-State: APjAAAU4FHkRzF/LKH0U9fxzEWUrAu/6FbAIWDHF4iEOd5VRUmDqPnYM
 7zXxfzhwks7YjRLjhLOqugBI362MEzVamYLZnwo0tw==
X-Google-Smtp-Source: APXvYqzXVsDy0ze4FRIDwywvutY/B4QAw3R64INVMx+0auCjLO0cktw5lNHc/YQDg6mDs7Vet6xKvfAPTB3hUQaHhXY=
X-Received: by 2002:ab0:210f:: with SMTP id d15mr5424470ual.129.1566476038016; 
 Thu, 22 Aug 2019 05:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190822064741.11196-1-chaotian.jing@mediatek.com>
In-Reply-To: <20190822064741.11196-1-chaotian.jing@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 14:13:21 +0200
Message-ID: <CAPDyKFqEqF_ZHerbkTqqcVBceQvMr_A+-MkbzQJBByhCv9B0fg@mail.gmail.com>
Subject: Re: fix controller busy issue and add 24bits segment support
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051400_385312_412C4D6F 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92b listed in]
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 at 08:47, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> the below 2 patches fix controller busy issue when plug out SD card
> and add 24bits segment size support.
>
> Chaotian Jing (2):
>   mmc: mediatek: fix controller busy when plug out SD
>   mmc: mediatek: support 24bits segment size
>
>  drivers/mmc/host/mtk-sd.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
