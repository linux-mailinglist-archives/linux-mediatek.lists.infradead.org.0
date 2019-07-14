Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F7567DD8
	for <lists+linux-mediatek@lfdr.de>; Sun, 14 Jul 2019 09:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSe1VBucSk0aWoJOSKF93W2Uz0NNMS3hjKtlFBJxsxc=; b=da3/oeKbTYpQfT
	foQgRdLkaEucwdf1N8feVQKCq0vUae4ayDfSrc2A68EC47F7RyaWn0Pe3bd6MKL05MaDylHI6KDPR
	tPR1JkbgkfG2Ae01efSW8lVd7Mi7JCruGr/CBWr4ZphrEDoF0epSkF4FW/hkwBWJB9opS+NB/DrLq
	ss6rsl7GDuddv2buRmVG43erJIXmJhtRPcYUyG0go6qnIST/SaM3EMeZ7wFWO/Tor/IVQZFrmC9kf
	eI4lXsf9i88p9rK/muBKI8Uqb+BolkA4CgH5e+kZpXqzibd0QAgLEXuIK2hY8gn931g6JLqX5bSGA
	ad9x8VPYnUznzkljMMSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmYVV-0007Ze-ST; Sun, 14 Jul 2019 07:01:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmYVN-0007Z4-EX
 for linux-mediatek@lists.infradead.org; Sun, 14 Jul 2019 07:01:10 +0000
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CEE6214C6
 for <linux-mediatek@lists.infradead.org>; Sun, 14 Jul 2019 07:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563087663;
 bh=adBrjHSpkk22mnLLbl/iv2929KizSrVFZ5lreBod0hA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZaiE02rqd6G1ZfKrkA/mfUKEUS+ISsBIh9IAg0HongEUxTgbx2ozIkv0Nvq7WspTu
 lOgaoK0tgxoXP+EwKXh0POA16C6XUD/lEK1EksJZEVNE75FnTKaH91nIcllyFQBg+V
 dD38LXjoJ9h0iaF81Wqt6jtJhvnPEKXtCJfkASaU=
Received: by mail-wr1-f48.google.com with SMTP id p17so13785634wrf.11
 for <linux-mediatek@lists.infradead.org>; Sun, 14 Jul 2019 00:01:03 -0700 (PDT)
X-Gm-Message-State: APjAAAUYL4oi8rFKew1w4BPYHJwKMJ85xTEJ24fqcNsPlspVkmjXT7ve
 0XQkB9cEMTWgd1mf+llzI6bElKF98/CEVQ/3pQM=
X-Google-Smtp-Source: APXvYqwvuEQL8FEpumbvIIJm+cxQ5xe4+F60oXxmbyI8CcmjYg+8gQiJWbyNuLyDYFCJyMYz7zY5tM//mPwRq4LcVkY=
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr19352083wrt.124.1563087662038; 
 Sun, 14 Jul 2019 00:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190712224700.11285-1-sean@mess.org>
 <20190712224700.11285-3-sean@mess.org>
In-Reply-To: <20190712224700.11285-3-sean@mess.org>
From: Sean Wang <sean.wang@kernel.org>
Date: Sun, 14 Jul 2019 00:00:50 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzq+RcizFgP4LJMxaH3K6Jcbk8jit8bv+3M2fwqwwV4NvA@mail.gmail.com>
Message-ID: <CAGp9Lzq+RcizFgP4LJMxaH3K6Jcbk8jit8bv+3M2fwqwwV4NvA@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: mtk-cir: lower de-glitch counter for rc-mm
 protocol
To: Sean Young <sean@mess.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_000108_361464_1E3EB412 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, Sean Wang <sean.wang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 3:47 PM Sean Young <sean@mess.org> wrote:
>
> The rc-mm protocol can't be decoded by the mtk-cir since the de-glitch
> filter removes pulses/spaces shorter than 294 microseconds.
>
> Tested on a BananaPi R2.

Thanks for grabbing the board and do the test voluntarily.

>
> Signed-off-by: Sean Young <sean@mess.org>

Acked-by: Sean Wang <sean.wang@kernel.org>

> ---
>  drivers/media/rc/mtk-cir.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/media/rc/mtk-cir.c b/drivers/media/rc/mtk-cir.c
> index 9dc467ebae24..8027181de985 100644
> --- a/drivers/media/rc/mtk-cir.c
> +++ b/drivers/media/rc/mtk-cir.c
> @@ -35,6 +35,11 @@
>  /* Fields containing pulse width data */
>  #define MTK_WIDTH_MASK           (GENMASK(7, 0))
>
> +/* IR threshold */
> +#define MTK_IRTHD               0x14
> +#define MTK_DG_CNT_MASK                 (GENMASK(12, 8))
> +#define MTK_DG_CNT(x)           ((x) << 8)
> +
>  /* Bit to enable interrupt */
>  #define MTK_IRINT_EN             BIT(0)
>
> @@ -400,6 +405,9 @@ static int mtk_ir_probe(struct platform_device *pdev)
>         mtk_w32_mask(ir, val, ir->data->fields[MTK_HW_PERIOD].mask,
>                      ir->data->fields[MTK_HW_PERIOD].reg);
>
> +       /* Set de-glitch counter */
> +       mtk_w32_mask(ir, MTK_DG_CNT(1), MTK_DG_CNT_MASK, MTK_IRTHD);
> +
>         /* Enable IR and PWM */
>         val = mtk_r32(ir, MTK_CONFIG_HIGH_REG);
>         val |= MTK_OK_COUNT(ir->data->ok_count) |  MTK_PWM_EN | MTK_IR_EN;
> --
> 2.21.0
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
