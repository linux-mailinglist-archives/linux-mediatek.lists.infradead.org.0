Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB39725DA
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 06:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rE9EvCILE8wwK+tr9ItFmb4iESiHdEam2N+ygqfV1Y=; b=PApAN8dz3IAwm7
	9gTZthmctpbh6vDQxz8LsLNCzUbGwBh1eC1rwSavprTzlDAx4VmlwXd2mPsMrt+GZTJ0KYg1SwGKf
	hg+61jGBk37Vp8AF6bUHVT/76XjRsinJrFxWvjDeX8QkT4h99tWlWTofuRqs/zunP0Dsev1/SwN5W
	qcVtnpjrJ6ATO5LcHaUhQiF0odMLx03CcptUrEHXsY7jtGvBdvp8AFMB6O4FqKGC/g1KYLzrCwab1
	woz7gUaLSvC2thE7ZkqSt0nd08wVN34wavBADwvpRY/aO/oRbZrlTsY0DrHI7KQ6Z19S8/4uEqe1s
	DtB/msWbWlpfzNqIJWvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq8nO-0005lf-HR; Wed, 24 Jul 2019 04:22:30 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq8nI-0005kb-Bh
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 04:22:26 +0000
Received: by mail-ed1-x543.google.com with SMTP id v15so45874164eds.9
 for <linux-mediatek@lists.infradead.org>; Tue, 23 Jul 2019 21:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xwge67L+3EQ2aFGxgAjJAjYtC8kh0cJgKbJ+VBbrRe4=;
 b=gKG79kqSGS6PE3wGKci7oDEWb0bB1oWWLWP3WcZ3h/yXwdEcjYTt2USKxZL7qtIF2b
 3yvROFrTrRnW/UtSz0F64CeWYyiN5EJVkayWZ8vb3JWPS+hkDGSh0ax2XxGfE8Elimpn
 Xy7Nc6wR7PzNyMrMzWW22EG102F/JzY5p9qUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xwge67L+3EQ2aFGxgAjJAjYtC8kh0cJgKbJ+VBbrRe4=;
 b=N+vcfB72Owt1hn7VHFVVaHnyepb79EuyI2lqf8Kxe8+glhGkgJDqFc+PllaCVsVOWN
 P1fGC7UlEoxkPwrh9kSSnZ1Key9Ltp8c1CqVCw049IFCByiTlZ102WqngHDaKfWrZYYs
 Z6u9DLNFD+yetbrjO/0RwnMsxv0jiHntsiBkzSVC+Eo2V8y3YvZb5w8LO4/lC1lFD+fG
 AXWBseXZNSnoU1afHyviDpMun74Vr5Rmz0PTfG67xFLUXmwxyJpVfnbEoQQpcXS6dvCm
 H2wvCE5DPO3nXr9nu5QltMuG6Y9tH/ljPE56IYVkFKdPeL48Y5vxQkeYtT0N+FyeuMfc
 Xa0w==
X-Gm-Message-State: APjAAAW8iKIXssXfWEHqFBnL83cD4yGPyR1/rMvPoBHWASKFUdJOvXOo
 nCljaolhlvJ+68/7ID8cBj5MSrhDLDZx5g==
X-Google-Smtp-Source: APXvYqzOiluRZrgTlQ8bsfyz/zI8RqWKn+3Zj8e2Z0VJM2b25uWnMIoWPnccCgC06HaebSz3Wqhyxw==
X-Received: by 2002:a17:906:7382:: with SMTP id
 f2mr59521179ejl.88.1563942138008; 
 Tue, 23 Jul 2019 21:22:18 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id t18sm9013434ejz.74.2019.07.23.21.22.15
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 21:22:16 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id 207so40418334wma.1
 for <linux-mediatek@lists.infradead.org>; Tue, 23 Jul 2019 21:22:15 -0700 (PDT)
X-Received: by 2002:a05:600c:2111:: with SMTP id
 u17mr51303133wml.64.1563942134673; 
 Tue, 23 Jul 2019 21:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190723053421.179679-1-acourbot@chromium.org>
In-Reply-To: <20190723053421.179679-1-acourbot@chromium.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 24 Jul 2019 13:22:03 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CfCrKLVb9obuXcMpFzBUxyZhK4NAuUOEUTviN-mZ9H6w@mail.gmail.com>
Message-ID: <CAAFQd5CfCrKLVb9obuXcMpFzBUxyZhK4NAuUOEUTviN-mZ9H6w@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: make imported PRIME buffers contiguous
To: Alexandre Courbot <acourbot@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_212224_589121_BC0CEA81 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 2:34 PM Alexandre Courbot <acourbot@chromium.org> wrote:
>
> This driver requires imported PRIME buffers to appear contiguously in
> its IO address space. Make sure this is the case by setting the maximum
> DMA segment size to a better value than the default 64K on the DMA
> device, and use said DMA device when importing PRIME buffers.
>
> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 47 ++++++++++++++++++++++++--
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
>  2 files changed, 46 insertions(+), 3 deletions(-)
>

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
