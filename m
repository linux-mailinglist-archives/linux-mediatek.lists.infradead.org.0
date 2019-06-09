Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236CB3A508
	for <lists+linux-mediatek@lfdr.de>; Sun,  9 Jun 2019 13:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZdxOHDyt84qQUnYs951a2x/xT4C7hDapwUyp7NbMU4=; b=WRPYsLTFjiWrUJ
	jOf0zC1jdKYqld9oiGOp03lDuHV79CUT3eXOjvMS+6LDFCEpz+MmqXQhmhyYVQ9ix+XEdhAcaEZIO
	iqW88H8Sug8l/0EtDuiYnJjMtcK6A4/TlnkjVUefO4gseMb2RVEyABtCCH/lqJHu5mtDMV6GXdxKK
	y33+BK+8f/Q/ioeNQrivNwDS3x6nA5QsGvOCQKNEh/xv9PUaOLkfVVK2/P4XMIPYOxvDbKTvG0NUX
	LCvniMePUtJTz8g0U+ag2rlQppThdlti0qpRqBCJw+dOO+eF9uaqFcnf85/FwY+bX9h/9247J8kzG
	gUNnBABdghaJ3c1azfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZvfx-00008h-44; Sun, 09 Jun 2019 11:07:49 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZvfo-0008Tm-By; Sun, 09 Jun 2019 11:07:41 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 5123C2002D;
 Sun,  9 Jun 2019 13:07:35 +0200 (CEST)
Date: Sun, 9 Jun 2019 13:07:33 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [2/2] drm/panel: support for BOE tv101wum-n16 wuxga dsi video
 mode panel
Message-ID: <20190609110733.GD28935@ravnborg.org>
References: <20190608070230.55381-1-jitao.shi@mediatek.com>
 <20190608070230.55381-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608070230.55381-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=syvv3YeMXAyozcvYpBgA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_040740_587451_E9703746 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

> +
> +enum dsi_cmd_type {
> +	INIT_GENENIC_CMD,
> +	INIT_DCS_CMD,
> +	DELAY_CMD,
> +};
> +
> +struct panel_init_cmd {
> +	enum dsi_cmd_type type;
> +	size_t len;
> +	const char *data;
> +};
> +
> +#define _INIT_CMD(...) { \
> +	.type = INIT_GENENIC_CMD,\
> +	.len = sizeof((char[]){__VA_ARGS__}), \
> +	.data = (char[]){__VA_ARGS__} }
This macro is not used - so all code around INIT_GENENIC_CMD can be
deleted.

	Sam

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
