Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67FACDFD7
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 13:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UACPKohbenxS8dBLzJBQMFuP8dEHUSAY57rn7491WfE=; b=AgadlMZZyZGaXp
	5x9zVZcXDgaRvOEncpkOrPasSaF+4miEXO0B8cpArpQ9ZpmTVdiUJw+ko6xU03fE/cNyH3+NoDdhJ
	trAlYwdIRj5g9kPO4aDdJC+D9vTAA/if22gynRn0/TpRQ00jFeQuPvrT0JS9J5Fvj20odpw6Sub6T
	nouu96cGPOEi23tkWZk45NJIJIfDu2PsAJ8bgaWs7SqnX05ztX0NjZy7yJ4a4u2IcYosL5g0P12IM
	GxfIg+1EOcbH00RimKiyOMigJZUEMLV8GC971tML1gZmyH/yhov9L3TWfOR4YjxBvmIB7kBVlxP8S
	dj3pFcTdppvHcidiSdjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQoP-0004Mb-A1; Mon, 07 Oct 2019 11:04:21 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQoL-0004Lp-02
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 11:04:19 +0000
Received: by mail-ed1-x544.google.com with SMTP id v8so11987543eds.2
 for <linux-mediatek@lists.infradead.org>; Mon, 07 Oct 2019 04:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pi+08WIDUt692PkTiIagxJMnIOzXRoDIYpGYqxxQB6M=;
 b=vAZDownx5VKZb10ggQlYvziqZr/qXb9iZYD0mNzxMIAghIgjjDc+awXulNuX+KILxE
 m84WH7vRaoU/dV7f8t/cLUo3z3+Fbr1DCkgJIm56Xk97IoWycv2Gi+MpeQpZC95vkjCe
 otdWQBgRN9AGy8kX/S4N48k+FC7vuW918XKsxMuWxSXu+7jyEvjKt7QVWVSL7CrdLmbd
 /4aahbuqGDHfBrn2xVuHBBC9Zn2ufCZiG/02MkIQtZETTAFSA4pwX2t3swcWzZmBoGQ4
 Rjj2qlBGpkiloLs8KJ0nFcTxvv4mEmx0n3xajuXdGdY379xH1BFI/Yg/+826ZUS73Qqp
 vjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Pi+08WIDUt692PkTiIagxJMnIOzXRoDIYpGYqxxQB6M=;
 b=BWK7EP37Bl+nuU7Lsq/uwgaYZ0cAzYwC8qerloqSGof2AqUC7VruOgnS8Zl6T8gKet
 wka8YqIKedI5gNq3q/WP2xgLqu60/CeiHuXfmfggzYgqp2GA80Zojfq2nSsH2rjBD1pn
 cQPgz7sSsxy3hJs+g8hYFtG9zxQoLQEGJ9ehTwQZ8VqMGF8TeoYdg5B7ohCD2Tt9PDVT
 kSkz8ovxMOfKhCtjvuGwlIpicDJ0+KKxkybcHqrZ4Co5aIGK1EUKHkb6nMhC4qQ5Mghx
 RGkjbWxUWjFuUqgmaqHr/HB6IOv5uBVFWJCQgxAUMD4nlja813BESEPrdOieuyfFOmM8
 ebGQ==
X-Gm-Message-State: APjAAAVxgTI4FSdi1z4Tfs+CtsU0pytWhs7CRsx/P4mv7rjbKNgyLr5a
 IFLRq0IE6ORraUGswGcb1fKwZQs4yX0=
X-Google-Smtp-Source: APXvYqxcBpfYfShFC9+ZG8/ZVqkmMmm8wNcrlFY+3J9TG5p184G3EmNOBj9qxkrWIwgdJoKQ0rG1aA==
X-Received: by 2002:a50:ac0a:: with SMTP id v10mr28155225edc.83.1570446252051; 
 Mon, 07 Oct 2019 04:04:12 -0700 (PDT)
Received: from ziggy.stardust ([37.223.136.165])
 by smtp.gmail.com with ESMTPSA id d2sm3257583eda.20.2019.10.07.04.04.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 04:04:11 -0700 (PDT)
Subject: Re: [PATCH v20 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
To: Ulrich Hecht <uli@fpond.eu>, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org, jitao.shi@mediatek.com
References: <1570436549-8694-1-git-send-email-uli@fpond.eu>
 <1570436549-8694-3-git-send-email-uli@fpond.eu>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <7e974fa0-3ead-7f54-52a2-31f84cc0766a@gmail.com>
Date: Mon, 7 Oct 2019 13:04:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1570436549-8694-3-git-send-email-uli@fpond.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_040417_047856_5D3CADDB 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
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
Cc: mark.rutland@arm.com, stonea168@163.com, ajaykumar.rs@samsung.com,
 architt@codeaurora.org, vpalatin@chromium.org, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, pawel.moll@arm.com,
 ijc+devicetree@hellion.org.uk, inki.dae@samsung.com, robh+dt@kernel.org,
 seanpaul@chromium.org, eddie.huang@mediatek.com, rahul.sharma@samsung.com,
 kernel@pengutronix.de, galak@codeaurora.org, enric.balletbo@collabora.com,
 andy.yan@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 07/10/2019 10:22, Ulrich Hecht wrote:
> From: Jitao Shi <jitao.shi@mediatek.com>
> 
> This patch adds drm_bridge driver for parade DSI to eDP bridge chip.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> [uli: followed API changes, removed FW update feature]
> Signed-off-by: Ulrich Hecht <uli@fpond.eu>

Now it works, thanks for pushing this forward :)

Tested-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
> 
> Changes since v19:
>  - fixed return value of ps8640_probe() when no panel is found
> 
> Changes since v18:
>  - followed DRM API changes
>  - use DEVICE_ATTR_RO()
>  - remove firmware update code
>  - add SPDX identifier
> 
> Changes since v17:
>  - remove some unused head files.
>  - add macros for ps8640 pages.
>  - remove ddc_i2c client
>  - add mipi_dsi_device_register_full
>  - remove the manufacturer from the name and i2c_device_id
>  
> Changes since v16:
>  - Disable ps8640 DSI MCS Function.
>  - Rename gpios name more clearly.
>  - Tune the ps8640 power on sequence.
> 
> Changes since v15:
>  - Drop drm_connector_(un)register calls from parade ps8640.
>    The main DRM driver mtk_drm_drv now calls
>    drm_connector_register_all() after drm_dev_register() in the
>    mtk_drm_bind() function. That function should iterate over all
>    connectors and call drm_connector_register() for each of them.
>    So, remove drm_connector_(un)register calls from parade ps8640.
> 
> Changes since v14:
>  - update copyright info.
>  - change bridge_to_ps8640 and connector_to_ps8640 to inline function.
>  - fix some coding style.
>  - use sizeof as array counter.
>  - use drm_get_edid when read edid.
>  - add mutex when firmware updating. 
> 
> Changes since v13:
>  - add const on data, ps8640_write_bytes(struct i2c_client *client, const u8 *data, u16 data_len)
>  - fix PAGE2_SW_REST tyro.
>  - move the buf[3] init to entrance of the function.
> 
> Changes since v12:
>  - fix hw_chip_id build warning
> 
> Changes since v11:
>  - Remove depends on I2C, add DRM depends
>  - Reuse ps8640_write_bytes() in ps8640_write_byte()
>  - Use timer check for polling like the routines in <linux/iopoll.h>
>  - Fix no drm_connector_unregister/drm_connector_cleanup when ps8640_bridge_attach fail
>  - Check the ps8640 hardware id in ps8640_validate_firmware
>  - Remove fw_version check
>  - Move ps8640_validate_firmware before ps8640_enter_bl
>  - Add ddc_i2c unregister when probe fail and ps8640_remove
> 
> 
>  drivers/gpu/drm/bridge/Kconfig         |  12 +
>  drivers/gpu/drm/bridge/Makefile        |   1 +
>  drivers/gpu/drm/bridge/parade-ps8640.c | 672 +++++++++++++++++++++++++++++++++
>  3 files changed, 685 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/parade-ps8640.c
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index 1cc9f50..61c6415 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -82,6 +82,18 @@ config DRM_PARADE_PS8622
>  	---help---
>  	  Parade eDP-LVDS bridge chip driver.
>  
> +config DRM_PARADE_PS8640
> +	tristate "Parade PS8640 MIPI DSI to eDP Converter"
> +	depends on DRM
> +	depends on OF
> +	select DRM_KMS_HELPER
> +	select DRM_MIPI_DSI
> +	select DRM_PANEL
> +	help
> +	  Choose this option if you have PS8640 for display
> +	  The PS8640 is a high-performance and low-power
> +	  MIPI DSI to eDP converter
> +
>  config DRM_SIL_SII8620
>  	tristate "Silicon Image SII8620 HDMI/MHL bridge"
>  	depends on OF
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 4934fcf..14660ab 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
>  obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
>  obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
>  obj-$(CONFIG_DRM_PARADE_PS8622) += parade-ps8622.o
> +obj-$(CONFIG_DRM_PARADE_PS8640) += parade-ps8640.o
>  obj-$(CONFIG_DRM_SIL_SII8620) += sil-sii8620.o
>  obj-$(CONFIG_DRM_SII902X) += sii902x.o
>  obj-$(CONFIG_DRM_SII9234) += sii9234.o
> diff --git a/drivers/gpu/drm/bridge/parade-ps8640.c b/drivers/gpu/drm/bridge/parade-ps8640.c
> new file mode 100644
> index 0000000..ac27010
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/parade-ps8640.c
> @@ -0,0 +1,672 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2016 MediaTek Inc.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/firmware.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/of_graph.h>
> +#include <linux/regulator/consumer.h>
> +#include <asm/unaligned.h>
> +#include <drm/drm_panel.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_probe_helper.h>
> +
> +#define PAGE1_VSTART		0x6b
> +#define PAGE2_SPI_CFG3		0x82
> +#define I2C_TO_SPI_RESET	0x20
> +#define PAGE2_ROMADD_BYTE1	0x8e
> +#define PAGE2_ROMADD_BYTE2	0x8f
> +#define PAGE2_SWSPI_WDATA	0x90
> +#define PAGE2_SWSPI_RDATA	0x91
> +#define PAGE2_SWSPI_LEN		0x92
> +#define PAGE2_SWSPI_CTL		0x93
> +#define TRIGGER_NO_READBACK	0x05
> +#define TRIGGER_READBACK	0x01
> +#define PAGE2_SPI_STATUS	0x9e
> +#define SPI_READY		0x0c
> +#define PAGE2_GPIO_L		0xa6
> +#define PAGE2_GPIO_H		0xa7
> +#define PS_GPIO9		BIT(1)
> +#define PAGE2_IROM_CTRL		0xb0
> +#define IROM_ENABLE		0xc0
> +#define IROM_DISABLE		0x80
> +#define PAGE2_SW_RESET		0xbc
> +#define SPI_SW_RESET		BIT(7)
> +#define MPU_SW_RESET		BIT(6)
> +#define PAGE2_ENCTLSPI_WR	0xda
> +#define PAGE2_I2C_BYPASS	0xea
> +#define I2C_BYPASS_EN		0xd0
> +#define PAGE2_MCS_EN		0xf3
> +#define MCS_EN			BIT(0)
> +#define PAGE3_SET_ADD		0xfe
> +#define PAGE3_SET_VAL		0xff
> +#define VDO_CTL_ADD		0x13
> +#define VDO_DIS			0x18
> +#define VDO_EN			0x1c
> +#define PAGE4_REV_L		0xf0
> +#define PAGE4_REV_H		0xf1
> +#define PAGE4_CHIP_L		0xf2
> +#define PAGE4_CHIP_H		0xf3
> +
> +#define PAGE0_DP_CNTL	0
> +#define PAGE1_VDO_BDG	1
> +#define PAGE2_TOP_CNTL	2
> +#define PAGE3_DSI_CNTL1	3
> +#define PAGE4_MIPI_PHY	4
> +#define PAGE5_VPLL	5
> +#define PAGE6_DSI_CNTL2	6
> +#define PAGE7_SPI_CNTL	7
> +#define MAX_DEVS		0x8
> +
> +struct ps8640_info {
> +	u8 family_id;
> +	u8 variant_id;
> +	u16 version;
> +};
> +
> +struct ps8640 {
> +	struct drm_connector connector;
> +	struct drm_bridge bridge;
> +	struct edid *edid;
> +	struct mipi_dsi_device *dsi;
> +	struct i2c_client *page[MAX_DEVS];
> +	struct regulator_bulk_data supplies[2];
> +	struct drm_panel *panel;
> +	struct gpio_desc *gpio_reset;
> +	struct gpio_desc *gpio_power_down;
> +	struct gpio_desc *gpio_mode_sel;
> +	bool enabled;
> +
> +	/* firmware file info */
> +	struct ps8640_info info;
> +	bool in_fw_update;
> +	/* for firmware update protect */
> +	struct mutex fw_mutex;
> +};
> +
> +static const u8 enc_ctrl_code[6] = { 0xaa, 0x55, 0x50, 0x41, 0x52, 0x44 };
> +static const u8 hw_chip_id[4] = { 0x00, 0x0a, 0x00, 0x30 };
> +
> +static inline struct ps8640 *bridge_to_ps8640(struct drm_bridge *e)
> +{
> +	return container_of(e, struct ps8640, bridge);
> +}
> +
> +static inline struct ps8640 *connector_to_ps8640(struct drm_connector *e)
> +{
> +	return container_of(e, struct ps8640, connector);
> +}
> +
> +static int ps8640_read(struct i2c_client *client, u8 reg, u8 *data,
> +		       u16 data_len)
> +{
> +	int ret;
> +	struct i2c_msg msgs[] = {
> +		{
> +		 .addr = client->addr,
> +		 .flags = 0,
> +		 .len = 1,
> +		 .buf = &reg,
> +		},
> +		{
> +		 .addr = client->addr,
> +		 .flags = I2C_M_RD,
> +		 .len = data_len,
> +		 .buf = data,
> +		}
> +	};
> +
> +	ret = i2c_transfer(client->adapter, msgs, 2);
> +
> +	if (ret == 2)
> +		return 0;
> +	if (ret < 0)
> +		return ret;
> +	else
> +		return -EIO;
> +}
> +
> +static int ps8640_write_bytes(struct i2c_client *client, const u8 *data,
> +			      u16 data_len)
> +{
> +	int ret;
> +	struct i2c_msg msg;
> +
> +	msg.addr = client->addr;
> +	msg.flags = 0;
> +	msg.len = data_len;
> +	msg.buf = (u8 *)data;
> +
> +	ret = i2c_transfer(client->adapter, &msg, 1);
> +	if (ret == 1)
> +		return 0;
> +	if (ret < 0)
> +		return ret;
> +	else
> +		return -EIO;
> +}
> +
> +static int ps8640_write_byte(struct i2c_client *client, u8 reg,  u8 data)
> +{
> +	u8 buf[] = { reg, data };
> +
> +	return ps8640_write_bytes(client, buf, sizeof(buf));
> +}
> +
> +static void ps8640_get_mcu_fw_version(struct ps8640 *ps_bridge)
> +{
> +	struct i2c_client *client = ps_bridge->page[PAGE5_VPLL];
> +	u8 fw_ver[2];
> +
> +	ps8640_read(client, 0x4, fw_ver, sizeof(fw_ver));
> +	ps_bridge->info.version = (fw_ver[0] << 8) | fw_ver[1];
> +
> +	DRM_INFO_ONCE("ps8640 rom fw version %d.%d\n", fw_ver[0], fw_ver[1]);
> +}
> +
> +static int ps8640_bridge_unmute(struct ps8640 *ps_bridge)
> +{
> +	struct i2c_client *client = ps_bridge->page[PAGE3_DSI_CNTL1];
> +	u8 vdo_ctrl_buf[3] = { PAGE3_SET_ADD, VDO_CTL_ADD, VDO_EN };
> +
> +	return ps8640_write_bytes(client, vdo_ctrl_buf, sizeof(vdo_ctrl_buf));
> +}
> +
> +static int ps8640_bridge_mute(struct ps8640 *ps_bridge)
> +{
> +	struct i2c_client *client = ps_bridge->page[PAGE3_DSI_CNTL1];
> +	u8 vdo_ctrl_buf[3] = { PAGE3_SET_ADD, VDO_CTL_ADD, VDO_DIS };
> +
> +	return ps8640_write_bytes(client, vdo_ctrl_buf, sizeof(vdo_ctrl_buf));
> +}
> +
> +static void ps8640_pre_enable(struct drm_bridge *bridge)
> +{
> +	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
> +	struct i2c_client *client = ps_bridge->page[PAGE2_TOP_CNTL];
> +	struct i2c_client *page1 = ps_bridge->page[PAGE1_VDO_BDG];
> +	int err;
> +	u8 set_vdo_done, mcs_en, vstart;
> +	ktime_t timeout;
> +
> +	if (ps_bridge->in_fw_update)
> +		return;
> +
> +	if (ps_bridge->enabled)
> +		return;
> +
> +	err = drm_panel_prepare(ps_bridge->panel);
> +	if (err < 0) {
> +		DRM_ERROR("failed to prepare panel: %d\n", err);
> +		return;
> +	}
> +
> +	err = regulator_bulk_enable(ARRAY_SIZE(ps_bridge->supplies),
> +				    ps_bridge->supplies);
> +	if (err < 0) {
> +		DRM_ERROR("cannot enable regulators %d\n", err);
> +		goto err_panel_unprepare;
> +	}
> +
> +	gpiod_set_value(ps_bridge->gpio_power_down, 1);
> +	gpiod_set_value(ps_bridge->gpio_reset, 0);
> +	usleep_range(2000, 2500);
> +	gpiod_set_value(ps_bridge->gpio_reset, 1);
> +
> +	/*
> +	 * Wait for the ps8640 embed mcu ready
> +	 * First wait 200ms and then check the mcu ready flag every 20ms
> +	 */
> +	msleep(200);
> +
> +	timeout = ktime_add_ms(ktime_get(), 200);
> +	for (;;) {
> +		err = ps8640_read(client, PAGE2_GPIO_H, &set_vdo_done, 1);
> +		if (err < 0) {
> +			DRM_ERROR("failed read PAGE2_GPIO_H: %d\n", err);
> +			goto err_regulators_disable;
> +		}
> +		if ((set_vdo_done & PS_GPIO9) == PS_GPIO9)
> +			break;
> +		if (ktime_compare(ktime_get(), timeout) > 0)
> +			break;
> +		msleep(20);
> +	}
> +
> +	msleep(50);
> +
> +	ps8640_read(page1, PAGE1_VSTART, &vstart, 1);
> +	DRM_INFO("PS8640 PAGE1.0x6B = 0x%x\n", vstart);
> +
> +	/**
> +	 * The Manufacturer Command Set (MCS) is a device dependent interface
> +	 * intended for factory programming of the display module default
> +	 * parameters. Once the display module is configured, the MCS shall be
> +	 * disabled by the manufacturer. Once disabled, all MCS commands are
> +	 * ignored by the display interface.
> +	 */
> +	ps8640_read(client, PAGE2_MCS_EN, &mcs_en, 1);
> +	ps8640_write_byte(client, PAGE2_MCS_EN, mcs_en & ~MCS_EN);
> +
> +	if (ps_bridge->info.version == 0)
> +		ps8640_get_mcu_fw_version(ps_bridge);
> +
> +	err = ps8640_bridge_unmute(ps_bridge);
> +	if (err)
> +		DRM_ERROR("failed to enable unmutevideo: %d\n", err);
> +	/* Switch access edp panel's edid through i2c */
> +	ps8640_write_byte(client, PAGE2_I2C_BYPASS, I2C_BYPASS_EN);
> +	ps_bridge->enabled = true;
> +
> +	return;
> +
> +err_regulators_disable:
> +	regulator_bulk_disable(ARRAY_SIZE(ps_bridge->supplies),
> +			       ps_bridge->supplies);
> +err_panel_unprepare:
> +	drm_panel_unprepare(ps_bridge->panel);
> +}
> +
> +static void ps8640_enable(struct drm_bridge *bridge)
> +{
> +	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
> +	int err;
> +
> +	err = drm_panel_enable(ps_bridge->panel);
> +	if (err < 0)
> +		DRM_ERROR("failed to enable panel: %d\n", err);
> +}
> +
> +static void ps8640_disable(struct drm_bridge *bridge)
> +{
> +	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
> +	int err;
> +
> +	err = drm_panel_disable(ps_bridge->panel);
> +	if (err < 0)
> +		DRM_ERROR("failed to disable panel: %d\n", err);
> +}
> +
> +static void ps8640_post_disable(struct drm_bridge *bridge)
> +{
> +	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
> +	int err;
> +
> +	if (ps_bridge->in_fw_update)
> +		return;
> +
> +	if (!ps_bridge->enabled)
> +		return;
> +
> +	ps_bridge->enabled = false;
> +
> +	err = ps8640_bridge_mute(ps_bridge);
> +	if (err < 0)
> +		DRM_ERROR("failed to unmutevideo: %d\n", err);
> +
> +	gpiod_set_value(ps_bridge->gpio_reset, 0);
> +	gpiod_set_value(ps_bridge->gpio_power_down, 0);
> +	err = regulator_bulk_disable(ARRAY_SIZE(ps_bridge->supplies),
> +				     ps_bridge->supplies);
> +	if (err < 0)
> +		DRM_ERROR("cannot disable regulators %d\n", err);
> +
> +	err = drm_panel_unprepare(ps_bridge->panel);
> +	if (err)
> +		DRM_ERROR("failed to unprepare panel: %d\n", err);
> +}
> +
> +static int ps8640_get_modes(struct drm_connector *connector)
> +{
> +	struct ps8640 *ps_bridge = connector_to_ps8640(connector);
> +	struct edid *edid;
> +	int num_modes = 0;
> +	bool power_off;
> +
> +	if (ps_bridge->edid)
> +		return drm_add_edid_modes(connector, ps_bridge->edid);
> +
> +	power_off = !ps_bridge->enabled;
> +	ps8640_pre_enable(&ps_bridge->bridge);
> +
> +	edid = drm_get_edid(connector, ps_bridge->page[0]->adapter);
> +	if (!edid)
> +		goto out;
> +
> +	ps_bridge->edid = edid;
> +	drm_connector_update_edid_property(connector, ps_bridge->edid);
> +	num_modes = drm_add_edid_modes(connector, ps_bridge->edid);
> +
> +out:
> +	if (power_off)
> +		ps8640_post_disable(&ps_bridge->bridge);
> +
> +	return num_modes;
> +}
> +
> +static const struct drm_connector_helper_funcs ps8640_connector_helper_funcs = {
> +	.get_modes = ps8640_get_modes,
> +};
> +
> +static enum drm_connector_status ps8640_detect(struct drm_connector *connector,
> +					       bool force)
> +{
> +	return connector_status_connected;
> +}
> +
> +static const struct drm_connector_funcs ps8640_connector_funcs = {
> +	.fill_modes = drm_helper_probe_single_connector_modes,
> +	.detect = ps8640_detect,
> +	.reset = drm_atomic_helper_connector_reset,
> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +};
> +
> +int ps8640_bridge_attach(struct drm_bridge *bridge)
> +{
> +	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
> +	struct device *dev = &ps_bridge->page[0]->dev;
> +	struct device_node *in_ep, *dsi_node = NULL;
> +	struct mipi_dsi_device *dsi;
> +	struct mipi_dsi_host *host = NULL;
> +	int ret;
> +	const struct mipi_dsi_device_info info = { .type = "ps8640",
> +						   .channel = 0,
> +						   .node = NULL,
> +						 };
> +
> +	ret = drm_connector_init(bridge->dev, &ps_bridge->connector,
> +				 &ps8640_connector_funcs,
> +				 DRM_MODE_CONNECTOR_eDP);
> +
> +	if (ret) {
> +		DRM_ERROR("Failed to initialize connector with drm: %d\n", ret);
> +		return ret;
> +	}
> +
> +	drm_connector_helper_add(&ps_bridge->connector,
> +				 &ps8640_connector_helper_funcs);
> +
> +	ps_bridge->connector.dpms = DRM_MODE_DPMS_ON;
> +	drm_connector_attach_encoder(&ps_bridge->connector,
> +					  bridge->encoder);
> +
> +	if (ps_bridge->panel)
> +		drm_panel_attach(ps_bridge->panel, &ps_bridge->connector);
> +
> +	/* port@0 is ps8640 dsi input port */
> +	in_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, -1);
> +	if (in_ep) {
> +		dsi_node = of_graph_get_remote_port_parent(in_ep);
> +		of_node_put(in_ep);
> +	}
> +
> +	if (dsi_node) {
> +		host = of_find_mipi_dsi_host_by_node(dsi_node);
> +		of_node_put(dsi_node);
> +		if (!host) {
> +			ret = -ENODEV;
> +			goto err;
> +		}
> +	}
> +
> +	dsi = mipi_dsi_device_register_full(host, &info);
> +	if (IS_ERR(dsi)) {
> +		dev_err(dev, "failed to create dsi device\n");
> +		ret = PTR_ERR(dsi);
> +		goto err;
> +	}
> +
> +	ps_bridge->dsi = dsi;
> +
> +	dsi->host = host;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
> +				     MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->lanes = 4;
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret)
> +		goto err_dsi_attach;
> +
> +	return 0;
> +
> +err_dsi_attach:
> +	mipi_dsi_device_unregister(dsi);
> +err:
> +	if (ps_bridge->panel)
> +		drm_panel_detach(ps_bridge->panel);
> +	drm_connector_cleanup(&ps_bridge->connector);
> +	return ret;
> +}
> +
> +static const struct drm_bridge_funcs ps8640_bridge_funcs = {
> +	.attach = ps8640_bridge_attach,
> +	.disable = ps8640_disable,
> +	.post_disable = ps8640_post_disable,
> +	.pre_enable = ps8640_pre_enable,
> +	.enable = ps8640_enable,
> +};
> +
> +/* Firmware Version is returned as Major.Minor */
> +static ssize_t fw_version_show(struct device *dev,
> +				      struct device_attribute *attr, char *buf)
> +{
> +	struct ps8640 *ps_bridge = dev_get_drvdata(dev);
> +	struct ps8640_info *info = &ps_bridge->info;
> +
> +	return scnprintf(buf, PAGE_SIZE, "%u.%u\n", info->version >> 8,
> +			 info->version & 0xff);
> +}
> +
> +/* Hardware Version is returned as FamilyID.VariantID */
> +static ssize_t hw_version_show(struct device *dev,
> +				      struct device_attribute *attr, char *buf)
> +{
> +	struct ps8640 *ps_bridge = dev_get_drvdata(dev);
> +	struct ps8640_info *info = &ps_bridge->info;
> +
> +	return scnprintf(buf, PAGE_SIZE, "ps%u.%u\n", info->family_id,
> +			 info->variant_id);
> +}
> +
> +static DEVICE_ATTR_RO(fw_version);
> +static DEVICE_ATTR_RO(hw_version);
> +
> +static struct attribute *ps8640_attrs[] = {
> +	&dev_attr_fw_version.attr,
> +	&dev_attr_hw_version.attr,
> +	NULL
> +};
> +
> +static const struct attribute_group ps8640_attr_group = {
> +	.attrs = ps8640_attrs,
> +};
> +
> +static void ps8640_remove_sysfs_group(void *data)
> +{
> +	struct ps8640 *ps_bridge = data;
> +
> +	sysfs_remove_group(&ps_bridge->page[0]->dev.kobj, &ps8640_attr_group);
> +}
> +
> +static int ps8640_probe(struct i2c_client *client,
> +			const struct i2c_device_id *id)
> +{
> +	struct device *dev = &client->dev;
> +	struct ps8640 *ps_bridge;
> +	struct device_node *np = dev->of_node;
> +	struct device_node *port, *out_ep;
> +	struct device_node *panel_node = NULL;
> +	int ret;
> +	u32 i;
> +
> +	ps_bridge = devm_kzalloc(dev, sizeof(*ps_bridge), GFP_KERNEL);
> +	if (!ps_bridge)
> +		return -ENOMEM;
> +
> +	/* port@1 is ps8640 output port */
> +	port = of_graph_get_port_by_id(np, 1);
> +	if (port) {
> +		out_ep = of_get_child_by_name(port, "endpoint");
> +		of_node_put(port);
> +		if (out_ep) {
> +			panel_node = of_graph_get_remote_port_parent(out_ep);
> +			of_node_put(out_ep);
> +		}
> +	}
> +	if (panel_node) {
> +		ps_bridge->panel = of_drm_find_panel(panel_node);
> +		of_node_put(panel_node);
> +		if (IS_ERR(ps_bridge->panel))
> +			return PTR_ERR(ps_bridge->panel);
> +	}
> +
> +	mutex_init(&ps_bridge->fw_mutex);
> +	ps_bridge->supplies[0].supply = "vdd33";
> +	ps_bridge->supplies[1].supply = "vdd12";
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ps_bridge->supplies),
> +				      ps_bridge->supplies);
> +	if (ret) {
> +		dev_info(dev, "failed to get regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ps_bridge->gpio_mode_sel = devm_gpiod_get_optional(&client->dev,
> +							     "mode-sel",
> +							     GPIOD_OUT_HIGH);
> +	if (IS_ERR(ps_bridge->gpio_mode_sel)) {
> +		ret = PTR_ERR(ps_bridge->gpio_mode_sel);
> +		dev_err(dev, "cannot get mode-sel %d\n", ret);
> +		return ret;
> +	}
> +
> +	ps_bridge->gpio_power_down = devm_gpiod_get(&client->dev, "sleep",
> +					       GPIOD_OUT_LOW);
> +	if (IS_ERR(ps_bridge->gpio_power_down)) {
> +		ret = PTR_ERR(ps_bridge->gpio_power_down);
> +		dev_err(dev, "cannot get sleep: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Request the reset pin low to avoid the bridge being
> +	 * initialized prematurely
> +	 */
> +	ps_bridge->gpio_reset = devm_gpiod_get(&client->dev, "reset",
> +					       GPIOD_OUT_LOW);
> +	if (IS_ERR(ps_bridge->gpio_reset)) {
> +		ret = PTR_ERR(ps_bridge->gpio_reset);
> +		dev_err(dev, "cannot get reset: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ps_bridge->bridge.funcs = &ps8640_bridge_funcs;
> +	ps_bridge->bridge.of_node = dev->of_node;
> +
> +	ps_bridge->page[0] = client;
> +
> +	/*
> +	 * ps8640 uses multiple addresses, use dummy devices for them
> +	 * page[0]: for DP control
> +	 * page[1]: for VIDEO Bridge
> +	 * page[2]: for control top
> +	 * page[3]: for DSI Link Control1
> +	 * page[4]: for MIPI Phy
> +	 * page[5]: for VPLL
> +	 * page[6]: for DSI Link Control2
> +	 * page[7]: for spi rom mapping
> +	 */
> +	for (i = 1; i < MAX_DEVS; i++) {
> +		ps_bridge->page[i] = i2c_new_dummy(client->adapter,
> +						   client->addr + i);
> +		if (!ps_bridge->page[i]) {
> +			dev_err(dev, "failed i2c dummy device, address%02x\n",
> +				client->addr + i);
> +			ret = -EBUSY;
> +			goto exit_dummy;
> +		}
> +	}
> +	i2c_set_clientdata(client, ps_bridge);
> +
> +	ret = sysfs_create_group(&client->dev.kobj, &ps8640_attr_group);
> +	if (ret) {
> +		dev_err(dev, "failed to create sysfs entries: %d\n", ret);
> +		goto exit_dummy;
> +	}
> +
> +	ret = devm_add_action(dev, ps8640_remove_sysfs_group, ps_bridge);
> +	if (ret) {
> +		dev_err(dev, "failed to add sysfs cleanup action: %d\n", ret);
> +		goto exit_remove_sysfs;
> +	}
> +
> +	drm_bridge_add(&ps_bridge->bridge);
> +	return 0;
> +
> +exit_remove_sysfs:
> +	sysfs_remove_group(&ps_bridge->page[0]->dev.kobj, &ps8640_attr_group);
> +exit_dummy:
> +	while (--i)
> +		i2c_unregister_device(ps_bridge->page[i]);
> +	return ret;
> +}
> +
> +static int ps8640_remove(struct i2c_client *client)
> +{
> +	struct ps8640 *ps_bridge = i2c_get_clientdata(client);
> +	int i = MAX_DEVS;
> +
> +	drm_bridge_remove(&ps_bridge->bridge);
> +	sysfs_remove_group(&ps_bridge->page[0]->dev.kobj, &ps8640_attr_group);
> +	while (--i)
> +		i2c_unregister_device(ps_bridge->page[i]);
> +
> +	return 0;
> +}
> +
> +static const struct i2c_device_id ps8640_i2c_table[] = {
> +	{ "ps8640", 0 },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(i2c, ps8640_i2c_table);
> +
> +static const struct of_device_id ps8640_match[] = {
> +	{ .compatible = "parade,ps8640" },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, ps8640_match);
> +
> +static struct i2c_driver ps8640_driver = {
> +	.id_table = ps8640_i2c_table,
> +	.probe = ps8640_probe,
> +	.remove = ps8640_remove,
> +	.driver = {
> +		.name = "ps8640",
> +		.of_match_table = ps8640_match,
> +	},
> +};
> +module_i2c_driver(ps8640_driver);
> +
> +MODULE_AUTHOR("Jitao Shi <jitao.shi@mediatek.com>");
> +MODULE_AUTHOR("CK Hu <ck.hu@mediatek.com>");
> +MODULE_DESCRIPTION("PARADE ps8640 DSI-eDP converter driver");
> +MODULE_LICENSE("GPL v2");
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
