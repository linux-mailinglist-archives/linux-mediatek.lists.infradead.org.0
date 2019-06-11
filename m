Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8193C6B9
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 10:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEz8V81kXfWIpFip7hEhU+XnpuE49ixtL4eK2Rua3GI=; b=gbJDvNxryT0sIW
	r5fM9+n9cUUsvPaA/giGfa+ToV3ozVBrMXHW59YKAJR9HYf5WdN8A82GjNACbE94gib9OFiJR2vx7
	ltQLPAWi80PXdNBz0KNDl9gu/epAbtYECYJfRHhJCZZPfIPvWS0sZbeSlrw+0IuwscUNHDOAtA42h
	RxSva7V37GKcKkULcNPxRsU8/08KgKqAj75+KDWSf2ug+9VnBYbdgxLFpuLYlILvxcqsRD2el3NQR
	RARt1SuenlR98ktNngRSJy+fV/GuucgTgetec724XPohwELtrJILu/onEQmmZ36Cn2eP/VqXl/2lY
	LHgbP63ML4S0F9PYfNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacbC-0004C5-4L; Tue, 11 Jun 2019 08:57:46 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacat-00040L-Eg
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 08:57:29 +0000
Received: by mail-ed1-x543.google.com with SMTP id w13so18917198eds.4
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 01:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bTkOEfoVS8xqoBdJMHWo3E+Rkaj2bpqidMUiZcDnoAk=;
 b=ZiTDkJRVzn+jc565v456AsNS1x9g3BjkYr7za4w5jSGUMvN0zRkNbwrjz+WKcjgJ7G
 nVEabfR7lwPxQPzOWNyhTaNeCZNmuZbiS/yoZmcFwLZx8+TklX/CEVM6W8dFxldKtroS
 fKKE1lLtvvPaX/DCq4LqhJjtJN0r4j+0DpEZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=bTkOEfoVS8xqoBdJMHWo3E+Rkaj2bpqidMUiZcDnoAk=;
 b=Ar6UFDLIeLHjVHHaQXcXOCc+piWadeIBXaWyQPTqm9y+iqmb2erlWbEiG6vxjzUDtU
 YkgvkH/NvGhwu2crTPeXKq4hhga5TdKqB6lGqznubsbJf1mx4+VjOr8C87zMdMElCc3o
 1Zj+99SrOKchO7xSWeY+KMrN/U2xVrDTUwtzCdBpDd2jYI+6rJBm+749kvzYotIAG2zG
 LRQqd+2Ih2z9MsHvxrDU3Y5hlZQPZpnPum1P4KoLYk4SAkuNDoZoX7y8hmajWiIdcgwL
 iN0BBdot6/A1GPtOjRW8N0kULyY/mKZoeEyQ1RExVewYtQX/yqLFSjKi70/EKrgTLEe2
 nQ+A==
X-Gm-Message-State: APjAAAXI6ItTSXh9bEMTkhUuXIq38S362vGU3WpKDKHI4AmlMtIrAAo8
 ZVl6Eh545ZOulgKWMo1khnm/+A==
X-Google-Smtp-Source: APXvYqyYSiI8MCmhIFP5093eoXLHoiUXmUjorUOjoDyQgA+DoU3k97SYd9dqfm+MFflJC285PU1vqQ==
X-Received: by 2002:a05:6402:8d7:: with SMTP id
 d23mr37696956edz.17.1560243445858; 
 Tue, 11 Jun 2019 01:57:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id m3sm3498364edi.33.2019.06.11.01.57.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 01:57:25 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:57:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Message-ID: <20190611085722.GX21222@phenom.ffwll.local>
Mail-Followup-To: Derek Basehore <dbasehore@chromium.org>,
 linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611040350.90064-4-dbasehore@chromium.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015727_492217_7D50AE54 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> This adds the attach/detach callbacks. These are for setting up
> internal state for the connector/panel pair that can't be done at
> probe (since the connector doesn't exist) and which don't need to be
> repeatedly done for every get/modes, prepare, or enable callback.
> Values such as the panel orientation, and display size can be filled
> in for the connector.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
>  include/drm/drm_panel.h     |  4 ++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 3b689ce4a51a..72f67678d9d5 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +	int ret;
> +
>  	if (panel->connector)
>  		return -EBUSY;
>  
>  	panel->connector = connector;
>  	panel->drm = connector->dev;
>  
> +	if (panel->funcs->attach) {
> +		ret = panel->funcs->attach(panel);
> +		if (ret < 0) {
> +			panel->connector = NULL;
> +			panel->drm = NULL;
> +			return ret;
> +		}
> +	}

Why can't we just implement this in the drm helpers for everyone, by e.g.
storing a dt node in drm_panel? Feels a bit overkill to have these new
hooks here.

Also, my understanding is that this dt stuff is supposed to be
standardized, so this should work.
-Daniel

> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_attach);
> @@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  int drm_panel_detach(struct drm_panel *panel)
>  {
> +	if (panel->funcs->detach)
> +		panel->funcs->detach(panel);
> +
>  	panel->connector = NULL;
>  	panel->drm = NULL;
>  
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 13631b2efbaa..e136e3a3c996 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -37,6 +37,8 @@ struct display_timing;
>   * struct drm_panel_funcs - perform operations on a given panel
>   * @disable: disable panel (turn off back light, etc.)
>   * @unprepare: turn off panel
> + * @detach: detach panel->connector (clear internal state, etc.)
> + * @attach: attach panel->connector (update internal state, etc.)
>   * @prepare: turn on panel and perform set up
>   * @enable: enable panel (turn on back light, etc.)
>   * @get_modes: add modes to the connector that the panel is attached to and
> @@ -70,6 +72,8 @@ struct display_timing;
>  struct drm_panel_funcs {
>  	int (*disable)(struct drm_panel *panel);
>  	int (*unprepare)(struct drm_panel *panel);
> +	void (*detach)(struct drm_panel *panel);
> +	int (*attach)(struct drm_panel *panel);
>  	int (*prepare)(struct drm_panel *panel);
>  	int (*enable)(struct drm_panel *panel);
>  	int (*get_modes)(struct drm_panel *panel);
> -- 
> 2.22.0.rc2.383.gf4fbbf30c2-goog
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
