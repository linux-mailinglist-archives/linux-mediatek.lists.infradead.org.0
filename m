Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B772D20737
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 14:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FN5y5K9aUAvv83WNXrRPdAemrEXCr8GBFvfpHVOsRM=; b=k3DhrwX//k7qb0
	2qXSNyQq7Mc+LbA2KmpVR+rSGGjGfn3g8IIMVYHYsjWqUQzYTxqf9ueywE8dyONs5rT1mJGifyfZ5
	nNeckUVh42FDP6MhPWe9a0S2Zs9DrOGYDxKsX7nVLarZ9up6fzxkINK9bdrlpANuhkjLtVpOPcPHj
	tbD4hfZBHLTSWNPzy8YYPtiA+T6AOUktJ7fTb3Njqnqyu3oNQpi9uoIpc8pSx9S3IxhOS0IiovH4z
	9CEkbzIn6HYxxUaOEqDl3Dhat8LKKBXeChcV4Hxca6ZIaK430gp0ShCPhFMf1GvXSZKxEX/ZegC0D
	zu5Zb4VP0a6XHNydxfzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFnf-0001Uq-Ht; Thu, 16 May 2019 12:47:55 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFnV-0001Mz-Kt
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 12:47:47 +0000
Received: by mail-qk1-x743.google.com with SMTP id g190so2117932qkf.8
 for <linux-mediatek@lists.infradead.org>; Thu, 16 May 2019 05:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W184LUt3OLZpc35GbIgyfbdRWYWzS470rOoUrNJBmxU=;
 b=TRma6EWmVqtTh6oyWeOyXuXYl+5HLkiD+FLBf6YYv1n3LTrxOJcXtDjC9qMNgWV3IM
 9/L3ct4DLiJQOWk/6Vr+Zcmy4GqUrvJkXz80l5T6lMeDYVdK+B2rz9KW/QoYjrG5fcXu
 dYY57kMN4S4l7szDwWKXb9Qsvi5JOUOtVT/i4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W184LUt3OLZpc35GbIgyfbdRWYWzS470rOoUrNJBmxU=;
 b=WddOYwMyG3tpAJ57tkEDHvmt7bfq0q6Bc0CiTmBixvEBMOa2SDv3MVGFeMWcFFXuUT
 2p4GdyyZ4CQu4Vw79Mbg3w3PQUHJN2c7gx8rSaGvpa9qwKNsicaINYE/qtW01TTUOUup
 h8aqIySnIQjccnNqZkYX4XPxJhJT74xhDxF8ug7vA2WZeewuKuXUpri0/saklibev3BP
 b4CFQcMS1H3pMGGZluHXavh2ABZc021RSxrDiTqU7cv+mj6W4gkpBTpTiYK1gyIsRdAJ
 JH5d7xME7Zydsfz4O7zz77gIRojUABGzhtGIWHcc7yWVjVFTk22bDtJK3jMc8DI+gOXQ
 hGIw==
X-Gm-Message-State: APjAAAUx9h79jXbwveom+bf/aN64SpHsKIFhUfeE0kwuPZ9616dAdrUO
 K3RiI/oEsRZz02QmX02BAm2w6IK3orbBAwho5FNCJQ==
X-Google-Smtp-Source: APXvYqybed54iK4vV+PN2Aj3PjQ2Py6dcAunCb38T+fR74fZCjJqmxhGgna5I/pOr2f8Y6E05PAXezd/gE5bKfmgw6I=
X-Received: by 2002:ae9:f818:: with SMTP id x24mr37963214qkh.329.1558010863680; 
 Thu, 16 May 2019 05:47:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
 <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
In-Reply-To: <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 16 May 2019 20:47:32 +0800
Message-ID: <CANMq1KAOeuDCZEvV2A18nUts3WP2MbhUpY7gQ+vk0oTOz8TRQA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_054745_711491_D11F3883 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 7:55 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > This adds support for wake sources in pinctrl-mtk-common-v2, and
> > pinctrl-mt8183. Without this patch, all interrupts that are left
> > enabled on suspend act as wake sources (and wake sources without
> > interrupt enabled do not).
> >
> > Changes since v1:
> >  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
> >    recommended by Sean, to keep better separation between eint
> >    and pinctrl-common features.
> >
> > Nicolas Boichat (2):
> >   pinctrl: mediatek: Add pm_ops to pinctrl-paris
> >   pinctrl: mediatek: mt8183: Add mtk_pinctrl_paris_pm_ops
>
> All seems to look fair to me, but I need some official ACK from
> Sean on these.
>
> I see there is some discussion on a related patch set which
> also has two patches so I am a but confused how mature the
> two patch sets are? Are they at all related?

They are somewhat related, but I don't think this depends on the other series.

This series adds support for wake on mt8183, and makes it similar to,
say, mt8173.

The other patch series fixes issues that affect all mtk pinctrl
variants (i.e. I think mt8173 pinctrl on current mainline has similar
issues). It's not impossible that the answer to the other series is
that we need to refactor code, but in that case, if we merge this
first, we'd just have to clean up one more pinctrl variant.

Thanks,

> Yours,
> Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
