Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615B36B23D
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 01:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFr5zb96hwauaWPpdOFp/QQQMRq1/pz0r5yUGKcKq+I=; b=kzAnt5SrPvn2ge
	O2uZDEZQAuSap1k6T8g7n3GmpgSpEfaTiWd9BUqlUL1b+Upgcu2/HpSHMFZxZAmhage99y3bUyGXW
	H8btNNApeTNKponvc1Mvtky81f0MvvTFVTFJtyb6EBjGIbN/XAqAKQFa3yVEFNDn2lrIrnRLFc0xI
	q42W94P5PjtCLCAEY8Iml2rdE3oT5yH3kG+BScQk+T07iF0XHiq1eNydhwTqVMMWxrtXo6C4t1vWH
	AP7gS5XKw4zo+cbyC6qt/nWoMMHUdYYcLJJKybJdFz9Mg+m59Bj+xwmA0Aip3iCTfucq1FpYydQYO
	RDbRH+jFGRUGEr8Z//tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnWdn-0005m3-9h; Tue, 16 Jul 2019 23:13:47 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnWdg-0005ks-Ba
 for linux-mediatek@lists.infradead.org; Tue, 16 Jul 2019 23:13:42 +0000
Received: by mail-qt1-x843.google.com with SMTP id r6so17225843qtt.0
 for <linux-mediatek@lists.infradead.org>; Tue, 16 Jul 2019 16:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0vVPokc5d+Sgj99HAa1k+ihxyyDw2qJJoHYr3swOfDY=;
 b=npN4iCwRcHVsuF2BJh4ZW7sl77KF563UBDP+Vo40O+2gEmjxaU5/vnqNQtpiJs7yIn
 M6qWcc2DxuzW1xTa6eLEHeb6YraOwjroaHToF+QD45Ahlhnux+nQDyh1EfX04kDiIaqv
 EE3srqM8P/i591ms/4hle9MiaggUo4SRGLG5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0vVPokc5d+Sgj99HAa1k+ihxyyDw2qJJoHYr3swOfDY=;
 b=VI28bgxNvHTV32W64T9BoltdIJq4JBQ8vfhAOKoFRbxpqc/qMYC4kfn6aWoNBZ1dkw
 DnCV8MXYe/VhmY3ccLS/7YnQXSVV20O5aOzO/hfvv5XK18V0CVo3GodZWVp4CRCUAdAA
 +jH4njHQlIOtvfErttWpsHKdc4K3BKWqUzHi+xRQt6YI48PPwdktwyyIpbLWhp0/+xSc
 oh+BCXUoHyUWotomfD7muk8j64EObDezriEq8nCaOr/mCfU5KZKgPlAKKyvcwXCvPC2b
 HMhgXQ0JEbjX9BDe9A4apSGYG1p0hBrAiKgiveOxZTNnWm6UiqSsT7udb0gAvfW86NV0
 cccQ==
X-Gm-Message-State: APjAAAUcMzO8UL2kWT/+WvUAf5aqLHVYgiJNbUKo1gLpUuEu05COPPrP
 7n9HzQNmI8xiNZDRivXxWcYOmUVT0LpbbQyt1D5Zvw==
X-Google-Smtp-Source: APXvYqwqF+BfqG9NwAIGQhOUSg/ata3RZiX/cvuHswIPD1N9Cau1oN4JI06GzaDLk1MGquQ3R6rBvTWlK6d6ZqKbm+A=
X-Received: by 2002:aed:3b1c:: with SMTP id p28mr23903043qte.312.1563318816713; 
 Tue, 16 Jul 2019 16:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-24-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1562625253-29254-24-git-send-email-yongqiang.niu@mediatek.com>
From: Ryan Case <ryandcase@chromium.org>
Date: Tue, 16 Jul 2019 16:13:26 -0700
Message-ID: <CACjz--=Wn4BH_EwEm0DD-vUxB796wUy5Z3MLiOSeiOZXa92r_w@mail.gmail.com>
Subject: Re: [PATCH v4, 23/33] drm/mediatek: add ovl0/ovl_2l0 usecase
To: yongqiang.niu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_161340_425335_53A30F7A 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 3:35 PM <yongqiang.niu@mediatek.com> wrote:
>
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
>
> This patch add ovl0/ovl_2l0 usecase
> in ovl->ovl_2l0 direct link usecase:
> 1. the crtc support layer number will 4+2
> 2. ovl_2l0 background color input select ovl0 when crtc init
> and disable it when crtc finish
> 3. config ovl_2l0 layer, if crtc config layer number is
> bigger than ovl0 support layers(max is 4)
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 38 +++++++++++++++++++++++++++++++--
>  1 file changed, 36 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 5eac376..9ee9ce2 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -282,6 +282,15 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>
>         for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>                 struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
> +               enum mtk_ddp_comp_id prev;
> +
> +               if (i > 0)
> +                       prev = mtk_crtc->ddp_comp[i - 1]->id;
> +               else
> +                       prev = DDP_COMPONENT_ID_MAX;
> +
> +               if (prev == DDP_COMPONENT_OVL0)
> +                       mtk_ddp_comp_bgclr_in_on(comp);
>
>                 mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
>                 mtk_ddp_comp_start(comp);
> @@ -291,9 +300,18 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>         for (i = 0; i < mtk_crtc->layer_nr; i++) {
>                 struct drm_plane *plane = &mtk_crtc->planes[i];
>                 struct mtk_plane_state *plane_state;
> +               struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> +               unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +               unsigned int local_layer;
>
>                 plane_state = to_mtk_plane_state(plane->state);
> -               mtk_ddp_comp_layer_config(mtk_crtc->ddp_comp[0], i,
> +
> +               if (i >= comp_layer_nr) {
> +                       comp = mtk_crtc->ddp_comp[1];
> +                       local_layer = i - comp_layer_nr;
> +               } else
> +                       local_layer = i;
> +               mtk_ddp_comp_layer_config(comp , local_layer,
>                                           plane_state);

There is an extra space after comp.

This whole loop is essentially identical to the one found in
mtk_crtc_ddp_config below. It would be nice to either move that loop
to a dedicated function called from both spots or allow
mtk_crtc_ddp_config to be called from here.

>         }
>
> @@ -319,6 +337,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>                                            mtk_crtc->ddp_comp[i]->id);
>         mtk_disp_mutex_disable(mtk_crtc->mutex);
>         for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> +               mtk_ddp_comp_bgclr_in_off(mtk_crtc->ddp_comp[i]);
>                 mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
>                                               mtk_crtc->mmsys_reg_data,
>                                               mtk_crtc->ddp_comp[i]->id,
> @@ -339,6 +358,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>         struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
>         struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
>         unsigned int i;
> +       unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +       unsigned int local_layer;
>
>         /*
>          * TODO: instead of updating the registers here, we should prepare
> @@ -361,7 +382,14 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>                         plane_state = to_mtk_plane_state(plane->state);
>
>                         if (plane_state->pending.config) {
> -                               mtk_ddp_comp_layer_config(comp, i, plane_state);
> +                               if (i >= comp_layer_nr) {
> +                                       comp = mtk_crtc->ddp_comp[1];
> +                                       local_layer = i - comp_layer_nr;
> +                               } else
> +                                       local_layer = i;
> +
> +                               mtk_ddp_comp_layer_config(comp, local_layer,
> +                                                         plane_state);
>                                 plane_state->pending.config = false;
>                         }
>                 }
> @@ -592,6 +620,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>         }
>
>         mtk_crtc->layer_nr = mtk_ddp_comp_layer_nr(mtk_crtc->ddp_comp[0]);
> +       if (mtk_crtc->ddp_comp_nr > 1) {
> +               struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[1];
> +
> +               if (comp->funcs->bgclr_in_on)
> +                       mtk_crtc->layer_nr += mtk_ddp_comp_layer_nr(comp);
> +       }
>         mtk_crtc->planes = devm_kcalloc(dev, mtk_crtc->layer_nr,
>                                         sizeof(struct drm_plane),
>                                         GFP_KERNEL);
> --
> 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
