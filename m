Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAC25D267
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 17:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWVWUXZ4JzcxB+dSWRDWD7Pj0k2+2N+lxad6VQJlVQ4=; b=U0Tyx+m2GVnGfX
	vPVh1rsWKeSMqBu7FY0qWksJU1ieFCl8pNabNWESJ7LJgKV4PcHxp9UQ4IPL9uTCRnQwYfKX8SsP+
	1j0PqZme1xDH8HJX3QmrVnHIuYVKjv0RmKg3VB1sxLDeAq1YLpsLjxMOQ8Lbqqp9fejEat+JN1tES
	FtzasxnLXz1wrrOPL8/7Mq0WG0RGe8Kuw3lKm57X3F1NsFsr3FAGqm/WVKbbFc2g3X3f6SQJSOafB
	oDUyteRsN4RRY5k0BgZQGxzed9KXQlvrWtldw0b8e0H2398m+IRdUJrtyvt24UVxq71oGyy9VUkNp
	C4dvPX2kLyyFrOSQPiSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKOP-0000kj-Bx; Tue, 02 Jul 2019 15:08:25 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKOK-0000jz-Gq; Tue, 02 Jul 2019 15:08:21 +0000
Received: by mail-qk1-x741.google.com with SMTP id p144so14238051qke.11;
 Tue, 02 Jul 2019 08:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S9xA51zv/GRMu9EWqnEkCiUuTilo4EgcogHBD4UUys8=;
 b=bw1pXEfKXRuMcifGGxJJy44p7S65Z/DS18lPEI1J6ea0G6qkun9SEXdtzDQL9oZmF3
 lSzgzmc87lYTnHAc3cGFvKPCBqqkqbzrIJWf7inROni3k1QZP8b46mD8JFmrYv0nqpkH
 D52mXnPBMPuamVS6nLaHjdMJf5IqDA8OTUShB/lIRSeIa0v6JLCFGd2le5e0BUTk2qJJ
 gPzoYjmRnBjGjAIm2m1+UNTEOV9PUz93aF15wmRYojHF3tYG+ZwoMyMgeM9L7vMwcOQa
 jJw/a1iSNCkKKYX9OW3gn3fMROR9O0CDp9ARPzoVRpDm4GMJu1ijmKuT2QxUDfxLi3jW
 dj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S9xA51zv/GRMu9EWqnEkCiUuTilo4EgcogHBD4UUys8=;
 b=BZdkfid44/q9SINdKGDuOSdh+gOraK//8JgIVslWrIN8eZFMKdMSF8O9SqDuMb0Z3e
 v8Xyk05qHVpQDr7lizVSmMlwMI63bJ5YU/ltVImxJBkuj6PSBzclE5V5lYpyyZH57XaU
 GjXjQXMbZAf0L93EI/b1Hg1rjunMCgyZWw002NErdjPb9UX+xmy66/G6o2p4RNAarUY8
 ztTy1Ax9i+dDhDOu/gPxJSoSeV38LigwAdigsHuEJ8JUEkrB8wlU00l4bXm8iAfgV1bE
 Vyx7G4weCPJ2BAKHhevV+hxGSF7wJEJFBX+88b+Ie7iJMT5ZduuQki7xgTXc1MHzG9gW
 yF9A==
X-Gm-Message-State: APjAAAUPTXKsxGjS8sRJMmn3SGaa7VCytQlhRMk1Dl8qFJxb7W/jL1Rb
 cq8rcPL8LEoYhk81i5hTQ0XSZ03GhL8au4kjOXQ=
X-Google-Smtp-Source: APXvYqxVSrlATNlVbhJVg9/xnGfnuLiEbR8snekrKy78a7q1t5jecx7SD2PWaGuXLsIU2gvnvumFqEYUAlyES1OdfCI=
X-Received: by 2002:ab0:2789:: with SMTP id t9mr17791002uap.69.1562080098556; 
 Tue, 02 Jul 2019 08:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <20190628164514.GS12905@phenom.ffwll.local>
In-Reply-To: <20190628164514.GS12905@phenom.ffwll.local>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 2 Jul 2019 16:08:30 +0100
Message-ID: <CACvgo502Yt90z9Tf+a8f_n3pgFa_NxFQ1LnEGmukT_jB2XaFzA@mail.gmail.com>
Subject: Re: [PATCH v3 00/22] Associate ddc adapters with connectors
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>, 
 kernel@collabora.com, Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 "David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>,
 Dave Airlie <airlied@redhat.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
 Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Vincent Abriou <vincent.abriou@st.com>, 
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Jyri Sarha <jsarha@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Sam Ravnborg <sam@ravnborg.org>, 
 Neil Armstrong <narmstrong@baylibre.com>, Huang Rui <ray.huang@amd.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
 "Y.C. Chen" <yc_chen@aspeedtech.com>, Douglas Anderson <dianders@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>, 
 Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Allison Randal <allison@lohutok.net>, Todor Tomov <todor.tomov@linaro.org>, 
 Mamta Shukla <mamtashukla555@gmail.com>, 
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>, 
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>, 
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, freedreno@lists.freedesktop.org,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_080820_566236_C073211E 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 28 Jun 2019 at 17:45, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Jun 28, 2019 at 06:01:14PM +0200, Andrzej Pietrasiewicz wrote:
> > It is difficult for a user to know which of the i2c adapters is for which
> > drm connector. This series addresses this problem.
> >
> > The idea is to have a symbolic link in connector's sysfs directory, e.g.:
> >
> > ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> >       -> ../../../../soc/13880000.i2c/i2c-2
> >
> > The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
> > ddcutil:
> >
> > ddcutil -b 2 getvcp 0x10
> > VCP code 0x10 (Brightness                    ): current value =    90, max value =   100
> >
> > The first patch in the series adds struct i2c_adapter pointer to struct
> > drm_connector. If the field is used by a particular driver, then an
> > appropriate symbolic link is created by the generic code, which is also added
> > by this patch.
> >
> > The second patch is an example of how to convert a driver to this new scheme.
> >
> > v1..v2:
> >
> > - used fixed name "ddc" for the symbolic link in order to make it easy for
> > userspace to find the i2c adapter
> >
> > v2..v3:
> >
> > - converted as many drivers as possible.
> >
> > PATCHES 3/22-22/22 SHOULD BE CONSIDERED RFC!
>
> There's a lot more drivers than this I think (i915 is absent as an
> example, but there should be tons more). Why are those not possible?

While I fully agree there are more drivers, at the same time I wonder.
Is it a good idea to expect all of those to be fixed in one go and
block patches addressing 15+ drivers?

Personally I think it's reasonable to have this, alongside a TODO
entry for other drivers.

HTH
Emil

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
