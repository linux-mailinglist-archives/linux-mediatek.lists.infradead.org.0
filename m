Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6EFB6736
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 17:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIl7xIexf+8cqIVokMzmp1mCqIY93ZOeiYlfi7QILpk=; b=hnFLjC6YNhNFbM
	fkAk8eGzcLfKGVMJ+5NYVc4kgUP/64vqFPVNrYA/pmhUQn867d1teWIroOHr0fqGdD4CCE80On36d
	R7SN3tfDJ+MJF9FWeyVYQ8mGo+jAOzUccB7ve9XdRplBurS+kbdpPIyStVYKedTtd5TAeIUhOAd2S
	ejun1c4mgCohIvEZMb7mNmIHGU5D7ZOk4CQnkqwmoUcvk2wf3JceXegm27iE7KHUV5L/T0krIA3oD
	+jFVBFf3jErqLNyB7Vv0rK65NJePR6W1UuA/ydOuK/AJrvD0912dnJD9wemfUuuLmykBaWOAX2upC
	LYAkTWKTAzZFFGR0K2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbzI-0005mW-Sa; Wed, 18 Sep 2019 15:35:24 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbzC-0005lU-P6
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 15:35:21 +0000
Received: by mail-yw1-xc43.google.com with SMTP id s6so96859ywe.5
 for <linux-mediatek@lists.infradead.org>; Wed, 18 Sep 2019 08:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WXRR5zyqVQASQ4N9vA9Ov0ItwFdEJLRSuq1ARX/xesM=;
 b=dNLB2bp3hfKDZc3abQIP7Oj8s66zGdtSp4haltezOEd6bKHKjGfSMozAqh6lGbdzjr
 Ij1QeFFZcQRSypfUAksMR/Lw23q0Q055c2yADGVxFSBn7g3+840ox0TbRwukGFMqe8GU
 jLSX6NFkEzBstjyRVOvShg73Ts1xvP9nGSrwSzgp81g8YRJ5+gdnWqTRS5AEZukRyB2a
 Tr342gQGPH2Gb6+Mz0CxM7drrTwr3haV5dqeSkF0U30vLD2nPCGVlhBbJdxNCBx+6R4d
 h0bEKIsWN0WErgB+hX61fDRGmDPfOfNAzKbBgKsSX6CQE3a4pc/R22V54rnEIApO3bAS
 dCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WXRR5zyqVQASQ4N9vA9Ov0ItwFdEJLRSuq1ARX/xesM=;
 b=s+lje0ANecteg2DpFJwhhQ3MWFvfTJI4MKvc2kX6Mu2aHQhNAFUk9gG3Prl1Tp4vtF
 Ds7yWYIsDcQQ7vAEXTRovguhZEWF5VRGPMI1QYuYl2g/FqSsQEcHwLIMX2lV+3F2PdQF
 eCUrwQJdtH74PkuhctG14ldvnT4XgwvyNdG5WtlHq8OEIjceoPrdapv55TuAZzjIUa3y
 DKJhVcWKseqHVR0a/02xlzPpLxO964/eeOmevccHt2p8QJeiaTP9ZdkpZ28Y6d/jiZRO
 jplbRG5FpkhcnTtc3uzksY3XSbFF4ThZWYT7LYS7Ggf+PXZyuNOVpu71foRQ2CIl2SOk
 PzdA==
X-Gm-Message-State: APjAAAXWP2CpqTu+pBZzRGquUoCutD8VWJXBSIyTdv01MmFh/apKbWlz
 rw2GfDxAVTVbMvrevvCEIOBbPA==
X-Google-Smtp-Source: APXvYqz1D2kt/w72OnVw3WwBQ3uRSgZrxojXH1V2r/86e2KhMJ6L8LT/IJavDbljbLIdEBUfDjqCbQ==
X-Received: by 2002:a81:a347:: with SMTP id a68mr3744553ywh.427.1568820917136; 
 Wed, 18 Sep 2019 08:35:17 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id i62sm1299104ywi.102.2019.09.18.08.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 08:35:16 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:35:15 -0400
From: Sean Paul <sean@poorly.run>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v6 2/8] drm/panel: support for BOE tv101wum-nl6 wuxga dsi
 video mode panel
Message-ID: <20190918153515.GS218215@art_vandelay>
References: <20190918122422.17339-1-jitao.shi@mediatek.com>
 <20190918122422.17339-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918122422.17339-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_083518_865163_431B5A18 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 08:24:16PM +0800, Jitao Shi wrote:
> Add driver for BOE tv101wum-nl6 panel is a 10.1" 1200x1920 panel.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 709 ++++++++++++++++++
>  3 files changed, 719 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> 
/snip

> diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> new file mode 100644
> index 000000000000..e27529b80d78
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c

/snip

> +static int boe_panel_init(struct boe_panel *boe)
> +{
> +	struct mipi_dsi_device *dsi = boe->dsi;
> +	struct drm_panel *panel = &boe->base;
> +	int err, i;
> +
> +	if (boe->desc->init_cmds) {
> +		const struct panel_init_cmd *init_cmds = boe->desc->init_cmds;
> +
> +		for (i = 0; init_cmds[i].len != 0; i++) {
> +			const struct panel_init_cmd *cmd = &init_cmds[i];
> +
> +			switch (cmd->type) {
> +			case DELAY_CMD:
> +				msleep(cmd->data[0]);
> +				err = 0;
> +				break;
> +
> +			case INIT_DCS_CMD:
> +				err = mipi_dsi_dcs_write(dsi, cmd->data[0],
> +							 cmd->len <= 1 ? NULL :
> +							 &cmd->data[1],
> +							 cmd->len - 1);
> +				break;
> +			}
> +
> +			if (err < 0) {

err possibly used uninitialized here.

> +				dev_err(panel->dev,
> +					"failed to write command %u\n", i);
> +				return err;
> +			}
> +		}
> +	}
> +	return 0;
> +}
/snip

> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
