Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388077A80B
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 14:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trwxr4g3LDwsXZ+18VXmoEWaDDbDxQDn01zNZ9Hsc5M=; b=RVAkqr7kf8LnaD
	N12eNLIWYdtDDzo7SdLHyJLX5z8eAofNSXH+E0/nKwaCg22m7rjXc5npqxb57PgXiQ0Nbt/xs+Shh
	YCWYiJRx9x0L65VPmldsvnRKO4uAmtN9VtfOlzqUcoQlvTe1udARAQBJwzGqt5GdkVWPebQRkAZVj
	gGgTXclZ3h/v9KhnlmyV46mVH0eTMI0aYFHA5t/8/LbYXf6MZK34kO/sneAZzbkKrpcOH3c4xBE1r
	E2fJi9kXppgwXUUaEAlHleQvVwT32YVLpSKsWk3PSKB1rY4kOOAEpWcmxUnupg0B+M8Nbn352Hj0w
	DX19QqDIivG6O+4hSMfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsR4y-0006xT-Bn; Tue, 30 Jul 2019 12:18:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsR4t-0006wb-E6
 for linux-mediatek@lists.infradead.org; Tue, 30 Jul 2019 12:18:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id y4so65543119wrm.2
 for <linux-mediatek@lists.infradead.org>; Tue, 30 Jul 2019 05:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=SDN0UgHxo2bhj//2P/WJDFxFPTg/cR4k5aetAPrYMbg=;
 b=lpR4/auaXiiChSvAkpqNj3u0nfb0dI44Kf62aFsgF5YzASXaFRrXwAhUyTm2Kt8hbp
 zJhTMAAnbZryLHbdRuZfoncN6zqfZAO+YyNfxheYF1HQQtNHpTiY5qXyzJ+0kAQMDSWx
 o6+OatQQfntiw9g7AooovvzEEDvgRrUnMF2sxv97MCFvW8hHvFdeUp+4BhBOjy0TyAJL
 uk7WGKUdZswxzMnx3CqsJ+x+N3BEsKiykL9zKcJSc1VfjTcB+j/dYzVG+k6udmbWJrsl
 uf1pwtYgKlZPZ2DyxsG4lLEfBVpu1z34WxNd3YuSo79zEapzNPTGz5ZbzGmGuQV7XkB0
 DxwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=SDN0UgHxo2bhj//2P/WJDFxFPTg/cR4k5aetAPrYMbg=;
 b=EU+/f0p3//0MK2NZsYwRiLuRIUgr1OqfUr1f8/yyoqbiHNJhhzY2x9aZ8arGetPnF9
 2gFhW2/qhDl/SgYbvL0qJEJ5Pchx/3HPOxko0PxDm1RjFcDfDPvJ9mDuqzgmqBWlv3EQ
 4Os0tR3imRsMocb9JQFX20jK7f/hzWWp+jhlGPknuXB6rX5SbgBtRfBy+gezxYItnHug
 DsBJNL/adHrPPFJe2zVnyqn+Fzf1D68FzDw4m5sM0L25QY2bk/FxqMGlHC6ZzfNba0qF
 M5ssNN5CLoPAOsrxHtjwCcvvdYNLBvTPywnTciaktF7kRWBYbaASzeXQp0kpGHHJqUEj
 LW5A==
X-Gm-Message-State: APjAAAWBYsEFpDehCV3ltfSObhdxDa17MJVt+j+DYx7m3ckPIRmViHHF
 86lvppcpAAN5e+XHvTxXEzeeKA==
X-Google-Smtp-Source: APXvYqwrZXHIdOjHqCaBtc/fxJ204upNIXdbZQ1XFcTuBMI9EYOOr5haFcmt0fyxegsJvYF8YPz9vQ==
X-Received: by 2002:a5d:6709:: with SMTP id o9mr72093948wru.301.1564489081848; 
 Tue, 30 Jul 2019 05:18:01 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 4sm146815432wro.78.2019.07.30.05.17.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 05:18:01 -0700 (PDT)
Subject: Re: [PATCH v4 19/23] drm/bridge: dw-hdmi: Provide ddc symlink in
 connector sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 dri-devel@lists.freedesktop.org
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <ec88a18feffa37eceb947bb83a6f9f51fb575566.1562843413.git.andrzej.p@collabora.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <449b11e6-2386-4e5b-26f7-eb6046911f24@baylibre.com>
Date: Tue, 30 Jul 2019 14:17:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ec88a18feffa37eceb947bb83a6f9f51fb575566.1562843413.git.andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_051803_496747_454200D6 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 11/07/2019 13:26, Andrzej Pietrasiewicz wrote:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 40 +++++++++++------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index c6490949d9db..0b9c9f2619da 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -161,7 +161,6 @@ struct dw_hdmi {
>  
>  	struct drm_display_mode previous_mode;
>  
> -	struct i2c_adapter *ddc;
>  	void __iomem *regs;
>  	bool sink_is_hdmi;
>  	bool sink_has_audio;
> @@ -1118,7 +1117,7 @@ static bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi)
>  		return false;
>  
>  	/* Disable if no DDC bus */
> -	if (!hdmi->ddc)
> +	if (!hdmi->connector.ddc)
>  		return false;
>  
>  	/* Disable if SCDC is not supported, or if an HF-VSDB block is absent */
> @@ -1156,10 +1155,11 @@ void dw_hdmi_set_high_tmds_clock_ratio(struct dw_hdmi *hdmi)
>  
>  	/* Control for TMDS Bit Period/TMDS Clock-Period Ratio */
>  	if (dw_hdmi_support_scdc(hdmi)) {
> +		struct i2c_adapter *ddc = hdmi->connector.ddc;
>  		if (mtmdsclock > HDMI14_MAX_TMDSCLK)
> -			drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 1);
> +			drm_scdc_set_high_tmds_clock_ratio(ddc, 1);
>  		else
> -			drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 0);
> +			drm_scdc_set_high_tmds_clock_ratio(ddc, 0);
>  	}
>  }
>  EXPORT_SYMBOL_GPL(dw_hdmi_set_high_tmds_clock_ratio);
> @@ -1750,6 +1750,7 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
>  	if (dw_hdmi_support_scdc(hdmi)) {
>  		if (vmode->mtmdsclock > HDMI14_MAX_TMDSCLK ||
>  		    hdmi_info->scdc.scrambling.low_rates) {
> +			struct i2c_adapter *ddc = hdmi->connector.ddc;
>  			/*
>  			 * HDMI2.0 Specifies the following procedure:
>  			 * After the Source Device has determined that
> @@ -1759,13 +1760,12 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
>  			 * Source Devices compliant shall set the
>  			 * Source Version = 1.
>  			 */
> -			drm_scdc_readb(hdmi->ddc, SCDC_SINK_VERSION,
> -				       &bytes);
> -			drm_scdc_writeb(hdmi->ddc, SCDC_SOURCE_VERSION,
> +			drm_scdc_readb(ddc, SCDC_SINK_VERSION, &bytes);
> +			drm_scdc_writeb(ddc, SCDC_SOURCE_VERSION,
>  				min_t(u8, bytes, SCDC_MIN_SOURCE_VERSION));
>  
>  			/* Enabled Scrambling in the Sink */
> -			drm_scdc_set_scrambling(hdmi->ddc, 1);
> +			drm_scdc_set_scrambling(hdmi->connector.ddc, 1);
>  
>  			/*
>  			 * To activate the scrambler feature, you must ensure
> @@ -1781,7 +1781,7 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
>  			hdmi_writeb(hdmi, 0, HDMI_FC_SCRAMBLER_CTRL);
>  			hdmi_writeb(hdmi, (u8)~HDMI_MC_SWRSTZ_TMDSSWRST_REQ,
>  				    HDMI_MC_SWRSTZ);
> -			drm_scdc_set_scrambling(hdmi->ddc, 0);
> +			drm_scdc_set_scrambling(hdmi->connector.ddc, 0);
>  		}
>  	}
>  
> @@ -2127,10 +2127,10 @@ static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
>  	struct edid *edid;
>  	int ret = 0;
>  
> -	if (!hdmi->ddc)
> +	if (!hdmi->connector.ddc)
>  		return 0;
>  
> -	edid = drm_get_edid(connector, hdmi->ddc);
> +	edid = drm_get_edid(connector, hdmi->connector.ddc);
>  	if (edid) {
>  		dev_dbg(hdmi->dev, "got edid: width[%d] x height[%d]\n",
>  			edid->width_cm, edid->height_cm);
> @@ -2548,9 +2548,9 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  
>  	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
>  	if (ddc_node) {
> -		hdmi->ddc = of_get_i2c_adapter_by_node(ddc_node);
> +		hdmi->connector.ddc = of_get_i2c_adapter_by_node(ddc_node);
>  		of_node_put(ddc_node);
> -		if (!hdmi->ddc) {
> +		if (!hdmi->connector.ddc) {
>  			dev_dbg(hdmi->dev, "failed to read ddc node\n");
>  			return ERR_PTR(-EPROBE_DEFER);
>  		}
> @@ -2689,7 +2689,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  	hdmi_init_clk_regenerator(hdmi);
>  
>  	/* If DDC bus is not specified, try to register HDMI I2C bus */
> -	if (!hdmi->ddc) {
> +	if (!hdmi->connector.ddc) {
>  		/* Look for (optional) stuff related to unwedging */
>  		hdmi->pinctrl = devm_pinctrl_get(dev);
>  		if (!IS_ERR(hdmi->pinctrl)) {
> @@ -2708,9 +2708,9 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  			}
>  		}
>  
> -		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi);
> -		if (IS_ERR(hdmi->ddc))
> -			hdmi->ddc = NULL;
> +		hdmi->connector.ddc = dw_hdmi_i2c_adapter(hdmi);
> +		if (IS_ERR(hdmi->connector.ddc))
> +			hdmi->connector.ddc = NULL;
>  	}
>  
>  	hdmi->bridge.driver_private = hdmi;
> @@ -2776,7 +2776,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  err_iahb:
>  	if (hdmi->i2c) {
>  		i2c_del_adapter(&hdmi->i2c->adap);
> -		hdmi->ddc = NULL;
> +		hdmi->connector.ddc = NULL;
>  	}
>  
>  	if (hdmi->cec_notifier)
> @@ -2788,7 +2788,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  err_isfr:
>  	clk_disable_unprepare(hdmi->isfr_clk);
>  err_res:
> -	i2c_put_adapter(hdmi->ddc);
> +	i2c_put_adapter(hdmi->connector.ddc);
>  
>  	return ERR_PTR(ret);
>  }
> @@ -2814,7 +2814,7 @@ static void __dw_hdmi_remove(struct dw_hdmi *hdmi)
>  	if (hdmi->i2c)
>  		i2c_del_adapter(&hdmi->i2c->adap);
>  	else
> -		i2c_put_adapter(hdmi->ddc);
> +		i2c_put_adapter(hdmi->connector.ddc);
>  }
>  
>  /* -----------------------------------------------------------------------------
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
