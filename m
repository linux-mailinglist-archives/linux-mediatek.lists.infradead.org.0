Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23175CE9CC
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 18:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YAL8cjFazs1N4YRzmTG8Vofdttvqj3Nh9jhMQMC6UY=; b=YJaEOQr1rnrtn3
	kI+nmAZdvFEkowuMBNDUCAsLYtOiRnuGBNthX9Kbevcd4r6nNmTLq+uMoL6COYx/EBVTPe4JcivCH
	cHNHWDVO5oIvu+PsqXnUMEwkSwtN/f3eK0LGOBDW9j3gmD4wQK8BNnCvs6IbjzHvm6iGhRoZon1eA
	RZxzQFjYTqjMSItsPeDOBMaGdYi+pFw/QN88MFV1Z9KcjHUayF59/a8tIo8WCcOXzhqv2Q5spdYFi
	9TFTXlbF1TI5Lphfi/pUueixB8TDVHOgpTNjNA+v9gsrTTO1BqhJXa5gHJt5HulimdpzulAbP0tL3
	evtKzmgmrk89O+JU9ILQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWBI-0006I0-6M; Mon, 07 Oct 2019 16:48:20 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWB2-0005l1-JO
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 16:48:06 +0000
Received: by mail-yw1-xc43.google.com with SMTP id e205so5366827ywc.7
 for <linux-mediatek@lists.infradead.org>; Mon, 07 Oct 2019 09:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bQ7t0YfEyUi6/XxzSzzzJPgkBy/Y1npqi1QHUBdAdjs=;
 b=W3fLoSUrj8yJnZCMtZp+3Z2XubKePSGiIXKCTJtf8NgGqe6YfhNrC9bveRjZw6wpmF
 v9jzQ5j1VQP3GRAx44r0Jhgc8TJPiEB7XTnjchviKgXZI8nD3yG7I/WgoHu3YEtryVvz
 fG4rdsgZxIXFthOSjMaybVSlmOow3T3ljx0qxNCFJpkpmiiGPJBCNNOiY057IySo7EGV
 2yf1Zh1r/t+Q8vdPk8hNVF6FtTOalBTihx2aE1PTwc4qPBruNr0J8+YNM4KwX9C1BzCc
 g8jWzB0LOr31wuXEGyYlQ9E7EGPr+FHjDYwtdXdDlFUFtbYFK+7Ic2bLdoPaPMQMlzMz
 oOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bQ7t0YfEyUi6/XxzSzzzJPgkBy/Y1npqi1QHUBdAdjs=;
 b=D5bxYiT6ccwxOSIL5fcovZDlPNRYL7bKxfRtoRzpfHsG/++KIsnHSPPr7dQ6yBRgt6
 kRmayUusxAs31G/BRrvllafG/pOpcJJynKhh0I0utXFZ51B50DrRgHPRr0MhStLuelQr
 j4PaPoCuCJ70tt2JF7NOviBUXD/4Hembu8cgpLpQNG6qJbnsvZyMaTrY5Jj5ISCtUwad
 O6FOWgGeOXeeJQU/W6IdmrgQ7krs/HNewH3eV+ID1WLOdqygkYSNolYNRjnVQqEx3epr
 6iI4P98vKeQ4Z5RiYbz5DI2i+CbMkLbTTvcFkGUB/La47YhemGcqVfivyqvmkM+NahNf
 TR2w==
X-Gm-Message-State: APjAAAWVASeQVnsMhkCuwjm1B+9GMVmT4kD0CVHKQ6Mqlx240CDI+TL2
 NYgARRFrpU7Ztrz5ILJb67Uehw==
X-Google-Smtp-Source: APXvYqzqFE/kG9F8NYrqeqGMnEJIHroH1DGoJ5wHOm/YlpjWwk8tZNWrYg1M2OA9pEzzh3ILFWBkWg==
X-Received: by 2002:a81:7b05:: with SMTP id w5mr20591060ywc.15.1570466883457; 
 Mon, 07 Oct 2019 09:48:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y129sm4181437ywy.41.2019.10.07.09.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:48:02 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:48:02 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v8 4/4] drm/mtk: add panel orientation property
Message-ID: <20191007164802.GD126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-5-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-5-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_094804_656182_EC2BA0AC 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:58:33PM -0700, Derek Basehore wrote:
> This inits the panel orientation property for the mediatek dsi driver
> if the panel orientation (connector.display_info.panel_orientation) is
> not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 224afb666881..2936932344eb 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -792,10 +792,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
>  			DRM_ERROR("Failed to attach panel to drm\n");
>  			goto err_connector_cleanup;
>  		}
> +
> +		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
> +		if (ret) {
> +			DRM_ERROR("Failed to init panel orientation\n");
> +			goto err_panel_detach;
> +		}
>  	}
>  
>  	return 0;
>  
> +err_panel_detach:
> +	drm_panel_detach(dsi->panel);
>  err_connector_cleanup:
>  	drm_connector_cleanup(&dsi->conn);
>  	return ret;
> -- 
> 2.23.0.351.gc4317032e6-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
