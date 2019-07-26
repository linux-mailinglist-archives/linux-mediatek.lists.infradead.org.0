Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE9C9EFC7
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 18:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtDNYSdDfDHJg+MWUdhiRmGRB758sgh4UDfLQO3cyi8=; b=aL5JpY27PNl8BM
	sVQXlU4jBzv8iARkA+GndPFuwh0tU24YXtChi4RBlvrdoekSuRDo+ZTD0YieTDFQqQyFL0HOjhuyZ
	XjtziZs5NBmBysRYI1u/kt9Roll36btBh1yQGiLVTcvcHKbM3eBWs9ns8sW06dgKMkkIAlRmYiEvt
	d8eLrC1hM7E9ymwf2u2SOf6xHMmuobY7d3/u3cwj00JeZIuwiEwX7V57F++y0onSTnuhceOqKV7Yr
	skv97n9HXWS/mHXfq2AXoiRoBj4rNZjPJ9vVxAeDa3iBBQ0b3tUy7kyayAzhOF85TIUFdVXa8B/B4
	KbkafCKEfTkNrHtudquw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2e2l-0002hL-E5; Tue, 27 Aug 2019 16:10:03 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5NZ-0002d3-6l; Fri, 26 Jul 2019 18:55:46 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id CB69020127;
 Fri, 26 Jul 2019 20:55:39 +0200 (CEST)
Date: Fri, 26 Jul 2019 20:55:38 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Review required [Was: Associate ddc adapters with connectors]
Message-ID: <20190726185538.GD14981@ravnborg.org>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <20190726183520.GA22572@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726183520.GA22572@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=e5mUnYsNAAAA:8 a=nTBMXhx45H-Va90dJ2EA:9 a=CjuIK1q_8ugA:10
 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_115545_603472_5B432659 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Mailman-Approved-At: Tue, 27 Aug 2019 09:09:59 -0700
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi all.

Andrzej have done a good job following up on feedback and this series is
now ready.

We need ack on the patches touching the individual drivers before we can
proceed.
Please check your drivers and get back.

	Sam

> Hi Andezej.
> 
> On Fri, Jul 26, 2019 at 07:22:54PM +0200, Andrzej Pietrasiewicz wrote:
> > It is difficult for a user to know which of the i2c adapters is for which
> > drm connector. This series addresses this problem.
> > 
> > The idea is to have a symbolic link in connector's sysfs directory, e.g.:
> > 
> > ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> > 	-> ../../../../soc/13880000.i2c/i2c-2
> > 
> > The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
> > ddcutil:
> > 
> > ddcutil -b 2 getvcp 0x10
> > VCP code 0x10 (Brightness): current value =    90, max value =   100
> > 
> > The first patch in the series adds struct i2c_adapter pointer to struct
> > drm_connector. If the field is used by a particular driver, then an
> > appropriate symbolic link is created by the generic code, which is also added
> > by this patch.
> > 
> > Patch 2 adds a new variant of drm_connector_init(), see the changelog
> > below.
> > 
> > Patches 3..24 are examples of how to convert a driver to this new scheme.
> > 
> ...
> > 
> > v5..v6:
> > 
> > - improved subject line of patch 1
> > - added kernel-doc for drm_connector_init_with_ddc()
> > - improved kernel-doc for the ddc field of struct drm_connector
> > - added Reviewed-by in patches 17 and 18
> > - added Acked-by in patch 2
> > - made the ownership of ddc i2c_adapter explicit in all patches,
> > this made the affected patches much simpler
> 
> Looks good now.
> Patch 1 and 2 are:
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> The remaining patches are:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> 	Sam
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
