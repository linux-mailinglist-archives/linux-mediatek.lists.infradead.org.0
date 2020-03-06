Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DFE17C191
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 16:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eR8StJFc5MiakAWXvg6sN30evOEvX8SP7Wvb40zGufo=; b=nbayxFxVhhHMsh5qbobbm4q92
	K7RmXg/03D0jif+Hfg4YLvXGhbI5DuyGEr2+Twn2fmUuR6fj9itc8Jjv43J1Ncs2U2DQqUyop05Rv
	VzIB4lzlBIYHDXCO/Uys/FMghqPPAzaRm20eW1u5nktKKTXMr7jDbVZTrEMr/3cqGqhGIrEtH2zyJ
	8AczBuL98AQv1l1DX0zUxv/HJp6zmCP4AC89VOuElRIVoOH9Z2wmNraIJF0UkNC/Q31C09anJYSXD
	k9b1305jg+U05vk1W1AneasP06cqzWdUT5i3QqEtoIuHjK35TYpeD+mfV1MsPKf+NTxLlsdlJcb5l
	UCI2+oimQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEkn-0000if-Ni; Fri, 06 Mar 2020 15:19:09 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEkk-0000iJ-9w; Fri, 06 Mar 2020 15:19:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7BF3BAF55;
 Fri,  6 Mar 2020 15:19:03 +0000 (UTC)
Subject: Re: [PATCH 00/22] drm: Convert drivers to drm_simple_encoder_init()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200306142212.GF4878@pendragon.ideasonboard.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 mQENBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAG0J1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPokBVAQTAQgAPhYh
 BHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsDBQkDwmcABQsJCAcCBhUKCQgLAgQWAgMB
 Ah4BAheAAAoJEGgNwR1TC3ojR80H/jH+vYavwQ+TvO8ksXL9JQWc3IFSiGpuSVXLCdg62AmR
 irxW+qCwNncNQyb9rd30gzdectSkPWL3KSqEResBe24IbA5/jSkPweJasgXtfhuyoeCJ6PXo
 clQQGKIoFIAEv1s8l0ggPZswvCinegl1diyJXUXmdEJRTWYAtxn/atut1o6Giv6D2qmYbXN7
 mneMC5MzlLaJKUtoH7U/IjVw1sx2qtxAZGKVm4RZxPnMCp9E1MAr5t4dP5gJCIiqsdrVqI6i
 KupZstMxstPU//azmz7ZWWxT0JzgJqZSvPYx/SATeexTYBP47YFyri4jnsty2ErS91E6H8os
 Bv6pnSn7eAq5AQ0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRH
 UE9eosYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgT
 RjP+qbU63Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+R
 dhgATnWWGKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zb
 ehDda8lvhFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r
 12+lqdsAEQEAAYkBPAQYAQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkD
 wmcAAAoJEGgNwR1TC3ojpfcIAInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2
 h9ifw9Nf2TjCZ6AMvC3thAN0rFDj55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxU
 n+LSiRrOdywn6erjxRi9EYTVLCHcDhBEjKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uI
 aMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU2y3ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBW
 HE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/tsZvyEX6zN8CtirPdPWu/VXNRYAl/lat7lSI
 3H26qrE=
Message-ID: <bccc380a-8925-81a7-34fe-5a1744a766d0@suse.de>
Date: Fri, 6 Mar 2020 16:18:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306142212.GF4878@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_071906_641567_742C5F56 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com,
 paul@crapouillou.net, matthias.bgg@gmail.com, wens@csie.org,
 thierry.reding@gmail.com, kraxel@redhat.com, sam@ravnborg.org,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 linux-rockchip@lists.infradead.org, tomi.valkeinen@ti.com,
 abrodkin@synopsys.com, linux@armlinux.org.uk, krzk@kernel.org,
 jonathanh@nvidia.com, xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com,
 kgene@kernel.org, linux-imx@nxp.com, nicolas.ferre@microchip.com,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 jsarha@ti.com, linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 virtualization@lists.linux-foundation.org, jernej.skrabec@siol.net,
 rodrigosiqueiramelo@gmail.com, bbrezillon@kernel.org, jingoohan1@gmail.com,
 sw0312.kim@samsung.com, hjc@rock-chips.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, ludovic.desroches@microchip.com,
 kernel@pengutronix.de, zourongrong@gmail.com, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============0335569012236166175=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0335569012236166175==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="zLjI9bAGFBvHKwEMe397vRdtLj3HUCSWe"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--zLjI9bAGFBvHKwEMe397vRdtLj3HUCSWe
Content-Type: multipart/mixed; boundary="7ZEUhC7vXaHUKdhpsAsTVaSFl7q2PnfOJ";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, airlied@linux.ie,
 linux@armlinux.org.uk, paul@crapouillou.net, thierry.reding@gmail.com,
 krzk@kernel.org, sam@ravnborg.org, sebastian.reichel@collabora.com,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 hjc@rock-chips.com, abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 jsarha@ti.com, matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, rodrigosiqueiramelo@gmail.com,
 tomi.valkeinen@ti.com, bbrezillon@kernel.org, jingoohan1@gmail.com,
 dri-devel@lists.freedesktop.org, sw0312.kim@samsung.com,
 nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, zourongrong@gmail.com,
 linux-mediatek@lists.infradead.org, shawnguo@kernel.org, kraxel@redhat.com
Message-ID: <bccc380a-8925-81a7-34fe-5a1744a766d0@suse.de>
Subject: Re: [PATCH 00/22] drm: Convert drivers to drm_simple_encoder_init()
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200306142212.GF4878@pendragon.ideasonboard.com>
In-Reply-To: <20200306142212.GF4878@pendragon.ideasonboard.com>

--7ZEUhC7vXaHUKdhpsAsTVaSFl7q2PnfOJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Laurent

Am 06.03.20 um 15:22 schrieb Laurent Pinchart:
> Hi Thomas,
>=20
> Thank you for the patch.
>=20
> On Thu, Mar 05, 2020 at 04:59:28PM +0100, Thomas Zimmermann wrote:
>> A call to drm_simple_encoder_init() initializes an encoder without
>> further functionality. It only provides the destroy callback to
>> cleanup the encoder's state. Only few drivers implement more
>> sophisticated encoders than that. Most drivers implement such a
>> simple encoder and can use drm_simple_encoder_init() instead.
>>
>> The patchset converts drivers where the encoder's instance is
>> embedded in a larger data structure. The driver releases the
>> memory during cleanup. Each patch replaces drm_encoder_init() with
>> drm_simple_encoder_init() and removes the (now unused) driver's
>> encoder functions.
>>
>> While the patchset is fairly large, the indiviual patches are self-
>> contained and can be merged independently from each other. The
>> simple-encoder functionality is currently in drm-misc-next, where
>> these patches could go as well.
>=20
> I've reviewed the whole series, including verifying that the few
> instances of struct drm_encoder_funcs that were not declared const were=

> not modified somewhere to add more function pointers.
>=20
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thanks for the detailed review.

>=20
> for all the patches.
>=20
> However, I'd like to note that drm_simple_encoder_init() is a bit of a
> misnommer here. Several of the encoders in those drivers to implement
> additional functionality. They just expose them through
> drm_encoder_helper_funcs, not drm_encoder_funcs.

True. It's called 'simple encoder' for the lack of a better name. It's
part of the simple KMS helpers, so the name's at least consistent. OTOH
I always find drm_simple_display_pipe a bad name.

We can still rename the simple-encoder function without much effort. I'm
open for suggestions.

Best regards
Thomas

>=20
>> Future directions: There's another common case where the driver
>> calls kzalloc() plus drm_encoder_init(). Such drivers are not
>> handled by this patchset. The plan here is to use a simple encoder
>> with either managed memory allocation (once it's merged), or embed
>> the encoder in a larger data structure and drop kzalloc() entirely.
>=20
> I think an even more interesting future enhancement would be to add
> encoder support to the newly added drm_bridge_connector_init(), for
> drivers that are fully based on bridges and don't implement any encoder=

> operation, neither through drm_encoder_funcs nor through
> drm_encoder_helper_funcs.
>=20
>> The patchset has been compile-tested on x86-64, aarch64 and arm.
>>
>> Thomas Zimmermann (22):
>>   drm/arc: Use simple encoder
>>   drm/atmel-hlcdc: Use simple encoder
>>   drm/exynos: Use simple encoder
>>   drm/fsl-dcu: Use simple encoder
>>   drm/gma500: Use simple encoder
>>   drm/hisilicon/kirin: Use simple encoder
>>   drm/i2c/tda998x: Use simple encoder
>>   drm/imx: Use simple encoder
>>   drm/ingenic: Use simple encoder
>>   drm/mediatek: Use simple encoder
>>   drm/rcar-du: Use simple encoder
>>   drm/rockchip: Use simple encoder
>>   drm/shmobile: Use simple encoder
>>   drm/sun4i: Use simple encoder
>>   drm/tegra: Use simple encoder
>>   drm/tidss: Use simple encoder
>>   drm/tilcdc: Use simple encoder
>>   drm/vc4: Use simple encoder
>>   drm/virtgpu: Use simple encoder
>>   drm/vkms: Use simple encoder
>>   drm/writeback: Use simple encoder
>>   drm/zte: Use simple encoder
>>
>>  drivers/gpu/drm/arc/arcpgu_hdmi.c              | 10 +++-------
>>  drivers/gpu/drm/arc/arcpgu_sim.c               |  8 ++------
>>  .../gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c   | 12 ++++--------
>>  drivers/gpu/drm/drm_writeback.c                | 10 +++-------
>>  drivers/gpu/drm/exynos/exynos_dp.c             |  8 ++------
>>  drivers/gpu/drm/exynos/exynos_drm_dpi.c        |  8 ++------
>>  drivers/gpu/drm/exynos/exynos_drm_dsi.c        |  8 ++------
>>  drivers/gpu/drm/exynos/exynos_drm_vidi.c       |  8 ++------
>>  drivers/gpu/drm/exynos/exynos_hdmi.c           |  8 ++------
>>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c      | 14 +++-----------
>>  drivers/gpu/drm/gma500/cdv_intel_crt.c         | 14 +++-----------
>>  drivers/gpu/drm/gma500/cdv_intel_dp.c          | 16 +++-------------
>>  drivers/gpu/drm/gma500/cdv_intel_hdmi.c        |  4 ++--
>>  drivers/gpu/drm/gma500/cdv_intel_lvds.c        | 17 +++--------------=

>>  drivers/gpu/drm/gma500/mdfld_dsi_dpi.c         |  7 +++----
>>  drivers/gpu/drm/gma500/mdfld_output.h          |  1 -
>>  drivers/gpu/drm/gma500/mdfld_tmd_vid.c         |  6 ------
>>  drivers/gpu/drm/gma500/mdfld_tpo_vid.c         |  6 ------
>>  drivers/gpu/drm/gma500/oaktrail_hdmi.c         | 14 ++------------
>>  drivers/gpu/drm/gma500/oaktrail_lvds.c         |  5 +++--
>>  drivers/gpu/drm/gma500/psb_intel_drv.h         |  1 -
>>  drivers/gpu/drm/gma500/psb_intel_lvds.c        | 18 +++--------------=
-
>>  drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c     |  5 -----
>>  drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c   |  8 ++------
>>  drivers/gpu/drm/i2c/tda998x_drv.c              | 14 +++-----------
>>  drivers/gpu/drm/imx/dw_hdmi-imx.c              |  8 ++------
>>  drivers/gpu/drm/imx/imx-drm-core.c             |  6 ------
>>  drivers/gpu/drm/imx/imx-drm.h                  |  1 -
>>  drivers/gpu/drm/imx/imx-ldb.c                  |  8 ++------
>>  drivers/gpu/drm/imx/imx-tve.c                  |  8 ++------
>>  drivers/gpu/drm/imx/parallel-display.c         |  8 ++------
>>  drivers/gpu/drm/ingenic/ingenic-drm.c          |  9 +++------
>>  drivers/gpu/drm/mediatek/mtk_dpi.c             | 14 +++-----------
>>  drivers/gpu/drm/mediatek/mtk_dsi.c             | 14 +++-----------
>>  drivers/gpu/drm/rcar-du/rcar_du_encoder.c      | 14 +++-----------
>>  .../gpu/drm/rockchip/analogix_dp-rockchip.c    |  9 +++------
>>  drivers/gpu/drm/rockchip/cdn-dp-core.c         |  9 +++------
>>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |  8 ++------
>>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c    |  8 ++------
>>  drivers/gpu/drm/rockchip/inno_hdmi.c           |  8 ++------
>>  drivers/gpu/drm/rockchip/rk3066_hdmi.c         |  8 ++------
>>  drivers/gpu/drm/rockchip/rockchip_lvds.c       | 10 +++-------
>>  drivers/gpu/drm/rockchip/rockchip_rgb.c        |  8 ++------
>>  drivers/gpu/drm/shmobile/shmob_drm_crtc.c      | 14 +++-----------
>>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c         | 12 +++---------
>>  drivers/gpu/drm/sun4i/sun4i_lvds.c             | 12 +++---------
>>  drivers/gpu/drm/sun4i/sun4i_rgb.c              | 17 +++--------------=

>>  drivers/gpu/drm/sun4i/sun4i_tv.c               | 17 +++--------------=

>>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c         | 12 +++---------
>>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c          |  8 ++------
>>  drivers/gpu/drm/tegra/drm.h                    |  2 --
>>  drivers/gpu/drm/tegra/dsi.c                    | 10 +++-------
>>  drivers/gpu/drm/tegra/hdmi.c                   |  9 +++------
>>  drivers/gpu/drm/tegra/output.c                 |  6 +-----
>>  drivers/gpu/drm/tegra/rgb.c                    |  8 ++------
>>  drivers/gpu/drm/tegra/sor.c                    |  8 ++------
>>  drivers/gpu/drm/tidss/tidss_encoder.c          | 10 +++-------
>>  drivers/gpu/drm/tilcdc/tilcdc_external.c       | 10 +++-------
>>  drivers/gpu/drm/tilcdc/tilcdc_panel.c          |  8 ++------
>>  drivers/gpu/drm/vc4/vc4_dpi.c                  |  8 ++------
>>  drivers/gpu/drm/vc4/vc4_dsi.c                  | 15 +++------------
>>  drivers/gpu/drm/vc4/vc4_hdmi.c                 | 17 ++++-------------=

>>  drivers/gpu/drm/vc4/vc4_vec.c                  |  8 ++------
>>  drivers/gpu/drm/virtio/virtgpu_display.c       |  8 ++------
>>  drivers/gpu/drm/vkms/vkms_output.c             |  8 ++------
>>  drivers/gpu/drm/zte/zx_hdmi.c                  |  8 ++------
>>  drivers/gpu/drm/zte/zx_tvenc.c                 |  8 ++------
>>  drivers/gpu/drm/zte/zx_vga.c                   |  8 ++------
>>  68 files changed, 151 insertions(+), 488 deletions(-)
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--7ZEUhC7vXaHUKdhpsAsTVaSFl7q2PnfOJ--

--zLjI9bAGFBvHKwEMe397vRdtLj3HUCSWe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl5iadwACgkQaA3BHVML
eiO0kQf+MIM+f6/DNKocn671bllssFCEGKWrX1wgTabB1iiRSL7ARnr03xMcYvzP
Ik/PoetXfawz8fIw2Xm6VeEHT6+62AY3l/GmWWi0BlHNfpAvSwLnmgBT95Rkqxhl
fVnkuw/R9c25A/WZMABTJ05EJhytBN4Iu42F+J6x2Jy+SpBNNETqwpvVPYL45Ou9
4QUL5Rj+xtwAzce+WOLqcL+LQmYDDrLlwOIS884Xfi4B6o8aSh9L2m2SJPCR1U6n
mdKcRZk/ztKJrkm/udvjRymVO/VT/ai9N4v6KNJ+dI6ko2jJZHrEpMDYdyGR840X
Y2HKoexIUwvdHV/Qy7ihnx7889lJNQ==
=LTju
-----END PGP SIGNATURE-----

--zLjI9bAGFBvHKwEMe397vRdtLj3HUCSWe--


--===============0335569012236166175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============0335569012236166175==--

