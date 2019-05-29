Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00132D55C
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 08:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZJr+/CryurV2981skbeGuj8A38BiWYBemn1vRj2boA=; b=qPoZhDD8wFFVRG
	GaUKt4GJ36bpChamtBEfgacjjpwnaZ6vzWhElPrOb3+3vzqfpL0rXIIY61/H9rnmla8XZsQB+te23
	ZJBVnheb3JyBojSzcuka7SllmKPWAtIAyI8H5MGm9Glq0dEJ7HNKmidaXIP6LMZOzBqmLt7BtIkUx
	frY4vjq8vaAvcbUrLvzgNTI67sDOly0+F/NfWlCyxnnFhaLvgtikq4Mx0X3BSGRWRotYfLPkOK2f4
	62+u9SclD6C2AMbfdy7AlPm54AN3XLgCYqZDhKnwrbBRrgUUotv8vNUluuGVnbpJTT1JPuSWvpbBf
	QL9BkhdmcJa/WbOfK4Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVrle-0004qj-TN; Wed, 29 May 2019 06:08:54 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVrlV-0004jE-1i
 for linux-mediatek@lists.infradead.org; Wed, 29 May 2019 06:08:46 +0000
Received: by mail-qt1-x844.google.com with SMTP id w1so1206141qts.2
 for <linux-mediatek@lists.infradead.org>; Tue, 28 May 2019 23:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9m6XmpcV32pBGRaKWaAZOu/nkbXf9RLY5czIdmVMIiE=;
 b=Vk/pDafXgg2bzDpfTFeKjsIp8WdKd3TNKbs23N/It+yi/CVfzyhiySQJ8J4jtLszAi
 LFiveV8PEpd6y+Dsh/gNPfB9fYQ5zv+RrOkISmmXalE+GzteLeypk6R36MTVSR1m/T6a
 wfTXpmePwdYxnvW4o3FzOIubaWyRpDgNwMyP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9m6XmpcV32pBGRaKWaAZOu/nkbXf9RLY5czIdmVMIiE=;
 b=KTxrMH25my22sTW8TCf37ckR9ocEQBQjnF1l7mKxH+6yDNYY//0e3SAm03fznWM4d6
 FIX/Nt4pqPcAkCQFjsaYBCb2ZvFKw3NZu1gXk7EElVlrqWoTeFuJCVWgK6/Z0TrdpQ86
 jy0gQp7SL+Q0lcSpADLLcveFGZ3L4p8pG2DqgtC8yCs+eqNkx8Z7t8z6TStwrHqTjpuC
 lQ9xcfsBvwr6sSW2Di2IaE7xg1MV/bZcABf+S5TfPeCwqSewN11Ci/x8Q8cV7JD4BkXG
 qx/9wXyt/qqAgm+Q2arkRke3YDAhJon1Ii0YRpeKe7jRCtDilFImcQl6m5r7gziuZajj
 +Tew==
X-Gm-Message-State: APjAAAU2rPB+5lvLmd71Sn2tAq5E0tMJjJKnqiKN6n3T3K7qfqC7Rs3k
 jIxD5qx2B1L1Cky2c3gFYG2h8rP5LPMpZ20/ZVMTDQ==
X-Google-Smtp-Source: APXvYqy1lIVHOTaLcihvMF7zGLF3pmNL3AVewtEF/CAwLER2Lc1MzHGPozPVQVC8HRo0kHV7SIzbmTEe6U0L3SD3dn4=
X-Received: by 2002:a0c:b621:: with SMTP id f33mr68502313qve.199.1559110123624; 
 Tue, 28 May 2019 23:08:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-3-hsinyi@chromium.org>
 <1559109490.15592.6.camel@mtksdaap41>
In-Reply-To: <1559109490.15592.6.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 14:08:17 +0800
Message-ID: <CAJMQK-gQ_j4ma_EjGbFJOz6WGXy3UZA0F9JZYnFHPZ0F08rXog@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm: mediatek: remove clk_unprepare() in
 mtk_drm_crtc_destroy()
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_230845_111025_B4722F12 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 1:58 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Hsin-Yi:
>
> On Mon, 2019-05-27 at 12:50 +0800, Hsin-Yi Wang wrote:
> > There is no clk_prepare() called in mtk_drm_crtc_reset(), when unbinding
> > drm device, mtk_drm_crtc_destroy() will be triggered, and the clocks will
> > be disabled and unprepared in mtk_crtc_ddp_clk_disable. If clk_unprepare()
> > is called here, we'll get warnings[1], so remove clk_unprepare() here.
>
> In original code, clk_prepare() is called in mtk_drm_crtc_create() and
> clk_unprepare() is called in mtk_drm_crtc_destroy(). This looks correct.

clk_prepare() is removed in https://patchwork.kernel.org/patch/10872777/.

> I don't know why we should do any thing about clock in
> mtk_drm_crtc_reset(). To debug this, the first step is to print message
> when mediatek drm call clk_prepare() and clk_unprepare(). If these two
> interface is called in pair, I think we should not modify mediatek drm
> driver, the bug maybe in clock driver.
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
