Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9295A56339
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 09:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuvgTUUzXczR1VYfhd6x+3L+MFYmIcHCoCUMNfTRAQw=; b=HZayodKt8fD4c0
	TXW5eBBvuZhPqR+bUbC9MjCQxjtQ0ycHLI1A6ZQn5gFCpkGNxaSzOuEMeT8SO+eg/EqvjAJDSXIo2
	jNyragxutAL+fKfShRz48fSW2Mm5RSw9fOh+sQ9bbz/w7qYP61oTTTsgZp5PphoIyMvCrQN00KAZg
	8LjjnOTvRbDz+29UnLrj4NGme43Bru2H6GkbgFZSOMwgy6xdGbbJ2W/xXeR6rKdhLnQa7u+iki5Ye
	J/VHnIa4YmX13orvzODG+qRdztMGFb2WzM5pHfwopd/nTsQtP+UhTFtNJaZiQJ2iWxUTWLmvlaWCn
	/+Sm1yJ0LLeY1h1tXkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2GY-00020R-0h; Wed, 26 Jun 2019 07:22:50 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2GF-0001ZV-GL; Wed, 26 Jun 2019 07:22:33 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id E83478032F;
 Wed, 26 Jun 2019 09:20:22 +0200 (CEST)
Date: Wed, 26 Jun 2019 09:20:21 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [v3 2/4] drm/panel: support for BOE tv101wum-nl6 wuxga dsi video
 mode panel
Message-ID: <20190626072021.GA14541@ravnborg.org>
References: <20190626025400.109567-1-jitao.shi@mediatek.com>
 <20190626025400.109567-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626025400.109567-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=9UlFsKL00uGSb65IiHYA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_002231_723816_2DBF6E4F 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 yingjoe.chen@mediatek.com, Thierry Reding <treding@nvidia.com>,
 Sean Paul <seanpaul@chromium.org>, linux-pwm@vger.kernel.org,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jitao.

Driver looks good, one detail.

> +
> +struct panel_desc {
> +	const struct drm_display_mode *modes;
> +	unsigned int bpc;
> +
> +	/**
> +	 * @width: width (in millimeters) of the panel's active display area
> +	 * @height: height (in millimeters) of the panel's active display area
> +	 */
> +	struct {
> +		unsigned int width;
> +		unsigned int height;
> +	} size;
Maybe name these width_mm and height_mm.
Then they have the same name as where they are copied to,
and it is explicit documented that it is in mm.

The extra indirection with a struct is not needed in display_mode,
maybe drop it here too?
> +
> +	unsigned long mode_flags;
> +	enum mipi_dsi_pixel_format format;
> +	const struct panel_init_cmd *init_cmds;
> +	unsigned int lanes;
> +};
> +
...
> +static int boe_panel_unprepare(struct drm_panel *panel)
> +{
> +	struct boe_panel *boe = to_boe_panel(panel);
> +	int ret;
> +
> +	if (!boe->prepared)
> +		return 0;
> +
> +	ret = boe_panel_off(boe);
> +	if (ret < 0) {
> +		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
> +		return ret;
> +	}
> +
> +	msleep(150);
> +	if (boe->enable_gpio)
> +		gpiod_set_value(boe->enable_gpio, 0);
Everywhere boe->enable_gpio is used it is checked like above.
Bot boe->enable_gpio in a mandatory property so it must be present.
The driver error out in probe if not present, so this check seems
redundandt?

Everything else looks really good.

With the above fixed / considered:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
