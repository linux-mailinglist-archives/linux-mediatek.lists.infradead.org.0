Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DD345A35
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 12:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/l4Q3RrxgjMtKN5n++bXT+0MEFK7medqbnGrSjKjVJI=; b=ms0na+m5hYEKAq
	t/l8P+ynfbJOVQZm+tDMbdktqUSnDx7C0iECRAUQt3SHP+nhxFMZA1N5maBQZ9VkFYTgw/Aswkifi
	tDXUQd8yr6t7E56ywCPmEsp6+VcVC8gv2lzlIxVl5YFLpBir4xhf6F6PIbqwXw+ub2YMfcPpBIeWb
	mPpMe0Jz4h+1ImAPU4xqO1D/HYy9urDa1JfxAkd6mgGkWVrKm2KY2hJKHBsao7AHXU0yghk5aRs21
	hOOsXrxTUb+jJIPJrkbrgtdVWFBrAMl7xIDd2VUL5UAq5hA8sEba/oBDSiHQsxuo7nsVZMB/VDSl+
	YqPxbHb1qDd9ZjGgSwJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjHw-0003ad-SE; Fri, 14 Jun 2019 10:18:28 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjHt-0003aA-J4
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 10:18:26 +0000
Received: by mail-ot1-x343.google.com with SMTP id s20so2149466otp.4
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 03:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BluMzkCDQwyvUXl6lzhoZtoPJHAVNPhcRWOIM0TWe5A=;
 b=CHPvPl+jUh7JA/rRQipbNvx2eeCXj4MzMMwsR5yCx/D03/DvrLCHOLgRsWofA1G48U
 n4aIfJ3weW2OCpVKh2VRnG3ebK8M5ONtMEtIkC3fB3hNabi+ChyUQ9vYqqQbvssy8f4l
 fpe34arGIzFmrKgaR8q/8j9Lx0H8qNOC6IU60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BluMzkCDQwyvUXl6lzhoZtoPJHAVNPhcRWOIM0TWe5A=;
 b=qbe43BaCwHjcJo2Yv3tf7TcuWpCToGkqrEYPB2tSL5WOpcLbN7tCfk64Oomz08B/ld
 GRaEySm9kW9Idvhp4SKliLZIxLUXThV8DXgq1WyLyt3XF+moP/vdlN6DqKRgdqFOwX1y
 IuR48yof6pGpw259zw5g2QV2bNWlX5M1yWL4k7dyt7khCUu5mYLJ9b8GvmFHq6h00ZHW
 n/BjIJ7LgDX07C99GJcyMGscx1YLVyVkpyq1ZqQ6e6Zmx8B4PYS2DyF5g1qbZFznBhoH
 Ekg1mfHYtK7+RavLcGLFvgQuLIGIquu1YVOVKMVxdLv34AB4PMX1Hr6xWv4i82c+DRCe
 dxyw==
X-Gm-Message-State: APjAAAXxAPJLr5v9WUSPS0E6AtIPR38bWiGtNGLyRkl6ikP6arvTCIgl
 74qwXXCcXJ84+LhkwFPPuRfqlkWOFVQ=
X-Google-Smtp-Source: APXvYqwuPNNte3Xrgav3FXbaqyZotwyykug/01o75XlKrN4aWoouTXlJlqsFTemOaVSLBWcfnhVbVg==
X-Received: by 2002:a9d:7a45:: with SMTP id z5mr21496198otm.197.1560507502864; 
 Fri, 14 Jun 2019 03:18:22 -0700 (PDT)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id 66sm987662oig.36.2019.06.14.03.18.21
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 03:18:21 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id n5so2163291otk.1
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 03:18:21 -0700 (PDT)
X-Received: by 2002:a9d:30c3:: with SMTP id r3mr9116550otg.141.1560507501049; 
 Fri, 14 Jun 2019 03:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190614075640.106709-1-acourbot@chromium.org>
 <9fd990d12ea1488592c5a590046f001a187b9c3f.camel@perches.com>
In-Reply-To: <9fd990d12ea1488592c5a590046f001a187b9c3f.camel@perches.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 14 Jun 2019 19:18:09 +0900
X-Gmail-Original-Message-ID: <CAPBb6MVRA_tBwg_r-Z8Rx7pUkR8W47CN1dqWH5uk+_1ONhViog@mail.gmail.com>
Message-ID: <CAPBb6MVRA_tBwg_r-Z8Rx7pUkR8W47CN1dqWH5uk+_1ONhViog@mail.gmail.com>
Subject: Re: [PATCH v2] media: mtk-vcodec: remove unneeded proxy functions
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_031825_656974_1C827EE0 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 6:11 PM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2019-06-14 at 16:56 +0900, Alexandre Courbot wrote:
> > We were getting the codec interface through a proxy function that does
> > not bring anything compared to just accessing the interface definition
> > directly, so just do that. Also make the decoder interfaces const.
> []
> > diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
> []
> > @@ -485,16 +485,9 @@ static int vdec_h264_get_param(void *h_vdec, enum vdec_get_param_type type,
> >       return 0;
> >  }
> >
> > -static struct vdec_common_if vdec_h264_if = {
> > +const struct vdec_common_if vdec_h264_if = {
>
> probably better to fixup whatever chains prevent
> this (if any) from being static const

These are defined in per-codec source files and selected at runtime by
vdec_drv_if.c, so I don't think we can avoid declaring at least
something? The previous approach was to declare a function, but as you
can see we can remove quite some code by exporting the structs
directly.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
