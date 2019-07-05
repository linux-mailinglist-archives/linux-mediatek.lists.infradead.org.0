Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA2B60C36
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 22:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+6eW/R2XVJvUKcN7AGmltJ0Lg3S/EfQNFWDcL5Fhfc=; b=q6O7qD4vFbrYkB
	IjqVrTzzEMTuZ/EbJWCcnYnkUEtM4uj4+MgFhuKSsM6thDTSnxuAhE+ihS6cxLgD3LXP867oW7jBu
	1HNbrrFBlWx+ibRgomS2DLthl0VSRg57FtJAgeuJ0bjGQIEfnRJMgfWXYa5eVqmbZ5DNcNG9hpgb8
	AyfO/kYdawVn/c6XTSLJxbO7PN/myYdZt9ovlUnIHULSXltPgbMNA6orjIdAKo4ddPSozWGiFr7lr
	HuHWn2nzevq3gCZufKAj4489PKklkqqynZC7hCFlW25fllYlrQzENwSy0g40q6E4Xt2urlQD62DCS
	O6AjjJC/S+n8XAEwTXIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUeZ-0008Dy-TE; Fri, 05 Jul 2019 20:17:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUeL-00083O-NI; Fri, 05 Jul 2019 20:17:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id l2so3520900wmg.0;
 Fri, 05 Jul 2019 13:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D/iTpIGfcdfMflHMyEWbw4EdjqMFQEqZQGAIiD0MIao=;
 b=eDiOfIOLjT4rkhyi+kYllYkUYaclNQGbFElvDThHvjkc4Xs+f5p+s4DA/I9sTI7Ter
 MyasGPxqa1gPF8s6Dp0i7R//AuhT8MhZhqirXLK4O3z0PcpKb7nKUkBpz28mx3SAE4Bu
 b55KZE8THFi1KZq8f6ZRQdDb9jtBEDB0mD1BBbr9lVw4vTHV20vpH71HUobjrnRLihbD
 eUgLhS8AvFakMSn/2KzLgNzl8lbWqMpJTl/D8D34h/fOCNKFn6jgrDrCgEUF0fGt0fgw
 qJ8pueVxoRXBij0UO8EG5WgkO2NqQZY5byyDrG/oDJ+bYXcr9XKjv4SOUxsEKR2BuQTI
 PAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D/iTpIGfcdfMflHMyEWbw4EdjqMFQEqZQGAIiD0MIao=;
 b=pCMHT7SJhT09zzPoe6j4QEmeQk9k7Cnd8DjtW6RIbKyFhm228R679bTk30ODJgyCVE
 CnH6kasXQverObuMY+hR06HHoetxHz52e+9MLnsEqFRovHJOtTB8GX+NkwABAnQqYlYu
 sU1cOqPmmHfKFKe8P3taoLqEffrQFaJRMU4WvwA1Ekn6cPXjdhLzsXC3I0AecHvzjO3a
 4fGCnxIMhFg/6wVFVf8Y8Qq6CX1kKGWWNEUZnu6a9cba5RdY2D5d6nQjjuWPPtrJarXE
 P1A4ZV8dMrcvMyUnNlA6RuvEv9jzt2vw37R9CkmbaTUHgecPAyTLFLegY7G28FW6R5wd
 BlNw==
X-Gm-Message-State: APjAAAVaO1dEGm3tBBWhOBnGq3/2Or+A6CwcLHO9aQk7u4gVMJ0N8jJy
 V4lP0uuprdbxJs3RL2QXDpVZW3Kr6g6LLqOYsc8=
X-Google-Smtp-Source: APXvYqxtncXSNQsuqv+XBX4ubNNyHvajFyBwC9MK90SlQRArdnj3y199piB6SReYqNtKwbqfabUsfhSnoa5sJps0UxU=
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr4823424wme.67.1562357859403; 
 Fri, 05 Jul 2019 13:17:39 -0700 (PDT)
MIME-Version: 1.0
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <5e355b8bec8fb3907566a741db8cc3e356246a32.1561735433.git.andrzej.p@collabora.com>
 <CADnq5_MrVoScVFgj3TP2Z+Ky8_32k=Cou5jebuMT5gE1+GZ0cA@mail.gmail.com>
 <fc26ac17-dc18-f995-53cf-42b50754c916@collabora.com>
In-Reply-To: <fc26ac17-dc18-f995-53cf-42b50754c916@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 5 Jul 2019 16:17:28 -0400
Message-ID: <CADnq5_MT58vOop65dOSK95R2khChAAzkWfsO9-RYYvJ37XbPug@mail.gmail.com>
Subject: Re: [PATCH v3 21/22] drm/amdgpu: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131741_918026_2775F79C 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Sam Ravnborg <sam@ravnborg.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Huang Rui <ray.huang@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 9:17 AM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> W dniu 02.07.2019 o 22:54, Alex Deucher pisze:
> > On Fri, Jun 28, 2019 at 12:31 PM Andrzej Pietrasiewicz
> > <andrzej.p@collabora.com> wrote:
> >>
> >> Use the ddc pointer provided by the generic connector.
> >>
> >> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> >> ---
> >>   .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 70 ++++++++++++++-----
> >>   1 file changed, 51 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> >> index 73b2ede773d3..5f8a7e3818b9 100644
> >> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> >> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> >> @@ -1573,11 +1573,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
> >>                          goto failed;
> >>                  amdgpu_connector->con_priv = amdgpu_dig_connector;
> >>                  if (i2c_bus->valid) {
> >> -                       amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> >> -                       if (amdgpu_connector->ddc_bus)
> >> +                       struct amdgpu_connector *acn = amdgpu_connector;
> >> +
> >> +                       acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> >> +                       if (acn->ddc_bus) {
> >
> > This hunk seems pointless unless I'm missing something.  Can you drop
> > this hunk?  Same comment on each instance of this below.  This also
> > only covers the legacy modesetting code which is not used by default
> > on most chips.  The DC code in amd/display/ is probably more relevant.
> >
>
> If I don't do that checkpatch reports that lines I created exceed 80 characters.

Don't worry about that.

Alex

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
