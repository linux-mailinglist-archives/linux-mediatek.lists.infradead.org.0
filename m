Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C8167DD5
	for <lists+linux-mediatek@lfdr.de>; Sun, 14 Jul 2019 08:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBSnmHM/fDyDRBSNN27brgHG5FW0mK6vSMJ8k7Cfi/I=; b=BQQ/LQ35hLOTOd
	ZVX1jAU5YSApFOQANHFsJ0lW7/bFupEy7lCfNmKXpeS1riMVR6OOOtbOokqVT7Ia41aSGiv6Dx3E+
	fIZYctQxLMussDu0616uswb1ph29xfkrNJ+zjYaW2wu175Ci0izgNX4ayb5OMAOnUCXob7v6DGkDT
	a2iet6EZE0HL7ADZn+Z3HfdCgyYaEc9PGdx62MrwPI6v6yD4tiy5uxuCFh3mvXmSzVzKU+VDfrRnv
	DrNKlI+/izgOtBuwzoI8NoE2fAdF1fkaKSUNcj9AeH1HGM8v2FooIEQrMGRS7dVJV4PZMKSLqGf3G
	lljt06mHNErWbwqJNS+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmYTK-000687-Dc; Sun, 14 Jul 2019 06:58:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmYTG-00067m-7T
 for linux-mediatek@lists.infradead.org; Sun, 14 Jul 2019 06:58:55 +0000
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C51ED20C01
 for <linux-mediatek@lists.infradead.org>; Sun, 14 Jul 2019 06:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563087533;
 bh=zKf8zOTbNEkJeWxR2L5x+aUe18MAd+GlbNHFKT3IklE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=F0CL7/fOf4I0dfT9nkKTVl0hequOYYgagU3kIN6PI72d03PXP/k9dZjMhhfQIXe5/
 6rFm9aZyIz2l/rWtR7TFs95IFtq4qCqRPZeaw2RCOs71l8nU3fTPVEHybvyaceaTVe
 hlKNDxLGX9njz857e5WWdEsDbXW6/KF0ECyts8Bk=
Received: by mail-wm1-f51.google.com with SMTP id g67so8098731wme.1
 for <linux-mediatek@lists.infradead.org>; Sat, 13 Jul 2019 23:58:52 -0700 (PDT)
X-Gm-Message-State: APjAAAVaxlcscGHR+mexeilHulLkVFAhzUHIx71QsELTCUUXttCSZz1Y
 F2LGA+dcBEbnIQNgaYTJbLOkFjJPSVERDUZZW0g=
X-Google-Smtp-Source: APXvYqza6QMmdfCOUlCkE/k1A3puE3espph5WDClbPv/gPN9SBkDRuznnEDTsIdSTaUndJF9LPH/eVlUPrKxDPQxYus=
X-Received: by 2002:a05:600c:20c3:: with SMTP id
 y3mr18302011wmm.3.1563087531365; 
 Sat, 13 Jul 2019 23:58:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190712224700.11285-1-sean@mess.org>
In-Reply-To: <20190712224700.11285-1-sean@mess.org>
From: Sean Wang <sean.wang@kernel.org>
Date: Sat, 13 Jul 2019 23:58:40 -0700
X-Gmail-Original-Message-ID: <CAGp9LzpVUExzvNZM2U2EcbTKg016xx3q0CGYXxqgaD+Y+UoRFA@mail.gmail.com>
Message-ID: <CAGp9LzpVUExzvNZM2U2EcbTKg016xx3q0CGYXxqgaD+Y+UoRFA@mail.gmail.com>
Subject: Re: [PATCH 1/3] media: mtk-cir: only allow protocols that have
 software decoders
To: Sean Young <sean@mess.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_235854_290938_5B12CF16 
X-CRM114-Status: GOOD (  14.45  )
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
> RC_PROTO_BIT_ALL includes protocols like unknown and other that do not
> have IR decoders by definition. If these protocols are set in the
> allowed_protocols, they will show in the protocols sysfs file but cannot
> be enabled.
>
> Signed-off-by: Sean Young <sean@mess.org>

Acked-by: Sean Wang <sean.wang@kernel.org>

> ---
>  drivers/media/rc/mtk-cir.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/media/rc/mtk-cir.c b/drivers/media/rc/mtk-cir.c
> index 46101efe017b..9dc467ebae24 100644
> --- a/drivers/media/rc/mtk-cir.c
> +++ b/drivers/media/rc/mtk-cir.c
> @@ -342,7 +342,7 @@ static int mtk_ir_probe(struct platform_device *pdev)
>         ir->rc->map_name = map_name ?: RC_MAP_EMPTY;
>         ir->rc->dev.parent = dev;
>         ir->rc->driver_name = MTK_IR_DEV;
> -       ir->rc->allowed_protocols = RC_PROTO_BIT_ALL;
> +       ir->rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
>         ir->rc->rx_resolution = MTK_IR_SAMPLE;
>         ir->rc->timeout = MTK_MAX_SAMPLES * (MTK_IR_SAMPLE + 1);
>
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
