Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95B3AFA0F
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 12:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzC4eHzLSdr1VjAzzyLYNowmh8AzPQnyvhJ5hSLpIWY=; b=HRlxdPoKMomdxg
	x8ZC5bUr6AxzJ46Zo7vdaHZJh8yf2Fj7utTr9kllVa005o/y91E7C2tqIo/u/GCRC/7sKfk+x/358
	SHpoba9jvDwcRjxRiecagTjedTwxdjESen6yYgMnL8cNlqpxz69yt3RN8+B0fo7HhgEEBw6J2T3Z6
	LC0VJ+ql7nOBTdrjTsTckOfDsRqJhJtlPkPKSIjCj5f42H2HLiPyPrGSVNlaDvJD+RLTQW39+76qE
	rs9/5TyV8wRIdHMU2w8ms25BMTld4diOiqtjs4GJ6p6GzwT6NqViFm0ANc8VPCZLnodVers2l7RAt
	/qOvxW+AZ681tvXUEyDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zbv-0007IC-AV; Wed, 11 Sep 2019 10:12:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zbp-0007Gw-Ux
 for linux-mediatek@lists.infradead.org; Wed, 11 Sep 2019 10:12:24 +0000
Received: by mail-ed1-x542.google.com with SMTP id c20so11092427eds.1
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 03:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3aR7kxxTy3owbSSlx57cjk7KPh8idzKdJ+HLqr/grqE=;
 b=CXJ+PlqZXdlMRWjZj2NL/HIh25RInUXGMbwBiGFljrAKwkkSc/eKpByVQ6oNLsa3rZ
 QbbSm6VmcngHpJKc6BJHWMzRTB8NFHF66i9DwMuzyO5nLC8mZd8+RPzOpkJCZSjy16Bw
 I41qPytJsgXU5NF/9A2DteaHmh2dULkhKdRTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3aR7kxxTy3owbSSlx57cjk7KPh8idzKdJ+HLqr/grqE=;
 b=XmnmTvngF4kBjzATkl0jx1hf/QNFIim3KF0g2ERB6ojKgsb80zbcTBN7n/3VaqynRz
 6iw1khE0M1aGdHNjkoC4xQbiuvg1CcqVBSwFMhM8GCCt6WFtTD9kilOp8Pw2SpQtAslf
 +kiIObA4sB+2cR1C1lPiowKT7p2i2XRa5blnB7CDv8On7Mnp/SEjQRnSNkpI3k5dHJbN
 PPZLI6JsgpzoOeWJIczaj3ByGto2gMK6niyMUcMTKxjvJyuU6nv/AP6bX5O9JQKUz2/m
 MNWvNguQVwJCK0BXSRJcS3FShJ4Lh7/unmWPQSs5c6bsQBQX/ogVNTb3rTOHKvsSFp/i
 jUHw==
X-Gm-Message-State: APjAAAXlu3NDcIJFXu3Z6e751rs90kq3hjBOlMaqrOu/0qXEClXiyGpd
 EjCVv9Pxl8OCqI2jbp1Ui81cvWaQNTWP8A==
X-Google-Smtp-Source: APXvYqyL8yS3x5jJXuPzqjZZay05E4TUkfxz+L7KPagBHVqsCjNrOQtsRL7LrrGB5yXw2bPOQzEOZQ==
X-Received: by 2002:a17:906:f205:: with SMTP id
 gt5mr24568610ejb.279.1568196735463; 
 Wed, 11 Sep 2019 03:12:15 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id k16sm2378091ejv.87.2019.09.11.03.12.14
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2019 03:12:14 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id c10so2728756wmc.0
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 03:12:14 -0700 (PDT)
X-Received: by 2002:a1c:4b14:: with SMTP id y20mr3334238wma.10.1568196733788; 
 Wed, 11 Sep 2019 03:12:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-3-dongchun.zhu@mediatek.com>
In-Reply-To: <20190910130446.26413-3-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 11 Sep 2019 19:12:02 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Ar39TeFJbprQuMwCBVgjsuap1iQviz2dbf5Yw6OU1ZWA@mail.gmail.com>
Message-ID: <CAAFQd5Ar39TeFJbprQuMwCBVgjsuap1iQviz2dbf5Yw6OU1ZWA@mail.gmail.com>
Subject: Re: [V2,
 2/2] media: i2c: Add more sensor modes for ov8856 camera sensor
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_031222_035652_72720C1C 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 shengnan.wang@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Sakari,

On Tue, Sep 10, 2019 at 10:05 PM <dongchun.zhu@mediatek.com> wrote:
>
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> This patch mainly adds two more sensor modes for OV8856 CMOS image sensor.
> That is, the resolution of 1632*1224 and 3264*2448, corresponding to the bayer order of BGGR.
> The sensor revision also differs in some OTP register.
>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  drivers/media/i2c/ov8856.c | 654 +++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 639 insertions(+), 15 deletions(-)
>

What do you think about the approach taken by this patch?

My understanding is that the register arrays being added by it can be
only used with 24MHz input clock, while the existing ones are for
19.2MHz. That means that this patch makes the driver expose completely
different modes (resolutions, mbus formats) depending on the input
clock. Are we okay with this?

Best regards,
Tomasz

> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index cd347d6..9ad0b73 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -1,12 +1,15 @@
>  // SPDX-License-Identifier: GPL-2.0
>  // Copyright (c) 2019 Intel Corporation.
>
> +#include <linux/clk.h>
>  #include <asm/unaligned.h>
>  #include <linux/acpi.h>
>  #include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
>  #include <linux/module.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
>  #include <media/v4l2-ctrls.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-fwnode.h>
> @@ -18,10 +21,15 @@
>  #define OV8856_LINK_FREQ_360MHZ                360000000ULL
>  #define OV8856_LINK_FREQ_180MHZ                180000000ULL
>  #define OV8856_SCLK                    144000000ULL
> -#define OV8856_MCLK                    19200000
> +#define OV8856_XVCLK                   19200000
> +#define OV8856_XVCLK_TYP               24000000
>  #define OV8856_DATA_LANES              4
>  #define OV8856_RGB_DEPTH               10
>
> +#define REG_X_ADDR_START               0x3808
> +#define X_OUTPUT_FULL_SIZE             0x0cc0
> +#define X_OUTPUT_BINNING_SIZE          0x0660
> +
>  #define OV8856_REG_CHIP_ID             0x300a
>  #define OV8856_CHIP_ID                 0x00885a
>
> @@ -29,6 +37,22 @@
>  #define OV8856_MODE_STANDBY            0x00
>  #define OV8856_MODE_STREAMING          0x01
>
> +/* define 1B module revision */
> +#define OV8856_1B_MODULE               0x02
> +
> +/* the OTP read-out buffer is at 0x7000 and 0xf is the offset
> + * of the byte in the OTP that means the module revision
> + */
> +#define OV8856_MODULE_REVISION         0x700f
> +#define OV8856_OTP_MODE_CTRL           0x3d84
> +#define OV8856_OTP_LOAD_CTRL           0x3d81
> +#define OV8856_OTP_MODE_AUTO           0x00
> +#define OV8856_OTP_LOAD_CTRL_ENABLE    BIT(0)
> +
> +/* Analog control register that decided by module revision */
> +#define OV8856_ANAL_MODE_CTRL          0x3614
> +#define OV8856_ANAL_1B_VAL             0x20
> +
>  /* vertical-timings from sensor */
>  #define OV8856_REG_VTS                 0x380e
>  #define OV8856_VTS_MAX                 0x7fff
> @@ -64,6 +88,14 @@
>
>  #define to_ov8856(_sd)                 container_of(_sd, struct ov8856, sd)
>
> +static const char * const ov8856_supply_names[] = {
> +       "dovdd",        /* Digital I/O power */
> +       "avdd",         /* Analog power */
> +       "dvdd",         /* Digital core power */
> +};
> +
> +#define OV8856_NUM_SUPPLIES ARRAY_SIZE(ov8856_supply_names)
> +
>  enum {
>         OV8856_LINK_FREQ_720MBPS,
>         OV8856_LINK_FREQ_360MBPS,
> @@ -195,11 +227,11 @@ static const struct ov8856_reg mode_3280x2464_regs[] = {
>         {0x3800, 0x00},
>         {0x3801, 0x00},
>         {0x3802, 0x00},
> -       {0x3803, 0x06},
> +       {0x3803, 0x07},
>         {0x3804, 0x0c},
>         {0x3805, 0xdf},
>         {0x3806, 0x09},
> -       {0x3807, 0xa7},
> +       {0x3807, 0xa6},
>         {0x3808, 0x0c},
>         {0x3809, 0xd0},
>         {0x380a, 0x09},
> @@ -211,7 +243,7 @@ static const struct ov8856_reg mode_3280x2464_regs[] = {
>         {0x3810, 0x00},
>         {0x3811, 0x00},
>         {0x3812, 0x00},
> -       {0x3813, 0x01},
> +       {0x3813, 0x00},
>         {0x3814, 0x01},
>         {0x3815, 0x01},
>         {0x3816, 0x00},
> @@ -316,6 +348,209 @@ static const struct ov8856_reg mode_3280x2464_regs[] = {
>         {0x5e00, 0x00}
>  };
>
> +static const struct ov8856_reg mode_3264x2448_regs[] = {
> +       {0x0103, 0x01},
> +       {0x0302, 0x3c},
> +       {0x0303, 0x01},
> +       {0x031e, 0x0c},
> +       {0x3000, 0x20},
> +       {0x3003, 0x08},
> +       {0x300e, 0x20},
> +       {0x3010, 0x00},
> +       {0x3015, 0x84},
> +       {0x3018, 0x72},
> +       {0x3021, 0x23},
> +       {0x3033, 0x24},
> +       {0x3500, 0x00},
> +       {0x3501, 0x9a},
> +       {0x3502, 0x20},
> +       {0x3503, 0x08},
> +       {0x3505, 0x83},
> +       {0x3508, 0x01},
> +       {0x3509, 0x80},
> +       {0x350c, 0x00},
> +       {0x350d, 0x80},
> +       {0x350e, 0x04},
> +       {0x350f, 0x00},
> +       {0x3510, 0x00},
> +       {0x3511, 0x02},
> +       {0x3512, 0x00},
> +       {0x3600, 0x72},
> +       {0x3601, 0x40},
> +       {0x3602, 0x30},
> +       {0x3610, 0xc5},
> +       {0x3611, 0x58},
> +       {0x3612, 0x5c},
> +       {0x3613, 0xca},
> +       {0x3614, 0x60},
> +       {0x3628, 0xff},
> +       {0x3629, 0xff},
> +       {0x362a, 0xff},
> +       {0x3633, 0x10},
> +       {0x3634, 0x10},
> +       {0x3635, 0x10},
> +       {0x3636, 0x10},
> +       {0x3663, 0x08},
> +       {0x3669, 0x34},
> +       {0x366d, 0x00},
> +       {0x366e, 0x10},
> +       {0x3706, 0x86},
> +       {0x370b, 0x7e},
> +       {0x3714, 0x23},
> +       {0x3730, 0x12},
> +       {0x3733, 0x10},
> +       {0x3764, 0x00},
> +       {0x3765, 0x00},
> +       {0x3769, 0x62},
> +       {0x376a, 0x2a},
> +       {0x376b, 0x30},
> +       {0x3780, 0x00},
> +       {0x3781, 0x24},
> +       {0x3782, 0x00},
> +       {0x3783, 0x23},
> +       {0x3798, 0x2f},
> +       {0x37a1, 0x60},
> +       {0x37a8, 0x6a},
> +       {0x37ab, 0x3f},
> +       {0x37c2, 0x04},
> +       {0x37c3, 0xf1},
> +       {0x37c9, 0x80},
> +       {0x37cb, 0x16},
> +       {0x37cc, 0x16},
> +       {0x37cd, 0x16},
> +       {0x37ce, 0x16},
> +       {0x3800, 0x00},
> +       {0x3801, 0x00},
> +       {0x3802, 0x00},
> +       {0x3803, 0x0c},
> +       {0x3804, 0x0c},
> +       {0x3805, 0xdf},
> +       {0x3806, 0x09},
> +       {0x3807, 0xa3},
> +       {0x3808, 0x0c},
> +       {0x3809, 0xc0},
> +       {0x380a, 0x09},
> +       {0x380b, 0x90},
> +       {0x380c, 0x07},
> +       {0x380d, 0x8c},
> +       {0x380e, 0x09},
> +       {0x380f, 0xb2},
> +       {0x3810, 0x00},
> +       {0x3811, 0x04},
> +       {0x3812, 0x00},
> +       {0x3813, 0x02},
> +       {0x3814, 0x01},
> +       {0x3815, 0x01},
> +       {0x3816, 0x00},
> +       {0x3817, 0x00},
> +       {0x3818, 0x00},
> +       {0x3819, 0x00},
> +       {0x3820, 0x80},
> +       {0x3821, 0x46},
> +       {0x382a, 0x01},
> +       {0x382b, 0x01},
> +       {0x3830, 0x06},
> +       {0x3836, 0x02},
> +       {0x3862, 0x04},
> +       {0x3863, 0x08},
> +       {0x3cc0, 0x33},
> +       {0x3d85, 0x17},
> +       {0x3d8c, 0x73},
> +       {0x3d8d, 0xde},
> +       {0x4001, 0xe0},
> +       {0x4003, 0x40},
> +       {0x4008, 0x00},
> +       {0x4009, 0x0b},
> +       {0x400a, 0x00},
> +       {0x400b, 0x84},
> +       {0x400f, 0x80},
> +       {0x4010, 0xf0},
> +       {0x4011, 0xff},
> +       {0x4012, 0x02},
> +       {0x4013, 0x01},
> +       {0x4014, 0x01},
> +       {0x4015, 0x01},
> +       {0x4042, 0x00},
> +       {0x4043, 0x80},
> +       {0x4044, 0x00},
> +       {0x4045, 0x80},
> +       {0x4046, 0x00},
> +       {0x4047, 0x80},
> +       {0x4048, 0x00},
> +       {0x4049, 0x80},
> +       {0x4041, 0x03},
> +       {0x404c, 0x20},
> +       {0x404d, 0x00},
> +       {0x404e, 0x20},
> +       {0x4203, 0x80},
> +       {0x4307, 0x30},
> +       {0x4317, 0x00},
> +       {0x4502, 0x50},
> +       {0x4503, 0x08},
> +       {0x4601, 0x80},
> +       {0x4800, 0x44},
> +       {0x4816, 0x53},
> +       {0x481b, 0x50},
> +       {0x481f, 0x27},
> +       {0x4823, 0x3c},
> +       {0x482b, 0x00},
> +       {0x4831, 0x66},
> +       {0x4837, 0x16},
> +       {0x483c, 0x0f},
> +       {0x484b, 0x05},
> +       {0x5000, 0x77},
> +       {0x5001, 0x0a},
> +       {0x5003, 0xc8},
> +       {0x5004, 0x04},
> +       {0x5006, 0x00},
> +       {0x5007, 0x00},
> +       {0x502e, 0x03},
> +       {0x5030, 0x41},
> +       {0x5780, 0x14},
> +       {0x5781, 0x0f},
> +       {0x5782, 0x44},
> +       {0x5783, 0x02},
> +       {0x5784, 0x01},
> +       {0x5785, 0x01},
> +       {0x5786, 0x00},
> +       {0x5787, 0x04},
> +       {0x5788, 0x02},
> +       {0x5789, 0x0f},
> +       {0x578a, 0xfd},
> +       {0x578b, 0xf5},
> +       {0x578c, 0xf5},
> +       {0x578d, 0x03},
> +       {0x578e, 0x08},
> +       {0x578f, 0x0c},
> +       {0x5790, 0x08},
> +       {0x5791, 0x04},
> +       {0x5792, 0x00},
> +       {0x5793, 0x52},
> +       {0x5794, 0xa3},
> +       {0x5795, 0x02},
> +       {0x5796, 0x20},
> +       {0x5797, 0x20},
> +       {0x5798, 0xd5},
> +       {0x5799, 0xd5},
> +       {0x579a, 0x00},
> +       {0x579b, 0x50},
> +       {0x579c, 0x00},
> +       {0x579d, 0x2c},
> +       {0x579e, 0x0c},
> +       {0x579f, 0x40},
> +       {0x57a0, 0x09},
> +       {0x57a1, 0x40},
> +       {0x59f8, 0x3d},
> +       {0x5a08, 0x02},
> +       {0x5b00, 0x02},
> +       {0x5b01, 0x10},
> +       {0x5b02, 0x03},
> +       {0x5b03, 0xcf},
> +       {0x5b05, 0x6c},
> +       {0x5e00, 0x00},
> +       {0x5e10, 0xfc}
> +};
> +
>  static const struct ov8856_reg mode_1640x1232_regs[] = {
>         {0x3000, 0x20},
>         {0x3003, 0x08},
> @@ -385,11 +620,11 @@ static const struct ov8856_reg mode_1640x1232_regs[] = {
>         {0x3800, 0x00},
>         {0x3801, 0x00},
>         {0x3802, 0x00},
> -       {0x3803, 0x06},
> +       {0x3803, 0x07},
>         {0x3804, 0x0c},
>         {0x3805, 0xdf},
>         {0x3806, 0x09},
> -       {0x3807, 0xa7},
> +       {0x3807, 0xa6},
>         {0x3808, 0x06},
>         {0x3809, 0x68},
>         {0x380a, 0x04},
> @@ -401,7 +636,7 @@ static const struct ov8856_reg mode_1640x1232_regs[] = {
>         {0x3810, 0x00},
>         {0x3811, 0x00},
>         {0x3812, 0x00},
> -       {0x3813, 0x01},
> +       {0x3813, 0x00},
>         {0x3814, 0x03},
>         {0x3815, 0x01},
>         {0x3816, 0x00},
> @@ -506,6 +741,209 @@ static const struct ov8856_reg mode_1640x1232_regs[] = {
>         {0x5e00, 0x00}
>  };
>
> +static const struct ov8856_reg mode_1632x1224_regs[] = {
> +       {0x0103, 0x01},
> +       {0x0302, 0x3c},
> +       {0x0303, 0x01},
> +       {0x031e, 0x0c},
> +       {0x3000, 0x20},
> +       {0x3003, 0x08},
> +       {0x300e, 0x20},
> +       {0x3010, 0x00},
> +       {0x3015, 0x84},
> +       {0x3018, 0x72},
> +       {0x3021, 0x23},
> +       {0x3033, 0x24},
> +       {0x3500, 0x00},
> +       {0x3501, 0x4c},
> +       {0x3502, 0xe0},
> +       {0x3503, 0x08},
> +       {0x3505, 0x83},
> +       {0x3508, 0x01},
> +       {0x3509, 0x80},
> +       {0x350c, 0x00},
> +       {0x350d, 0x80},
> +       {0x350e, 0x04},
> +       {0x350f, 0x00},
> +       {0x3510, 0x00},
> +       {0x3511, 0x02},
> +       {0x3512, 0x00},
> +       {0x3600, 0x72},
> +       {0x3601, 0x40},
> +       {0x3602, 0x30},
> +       {0x3610, 0xc5},
> +       {0x3611, 0x58},
> +       {0x3612, 0x5c},
> +       {0x3613, 0xca},
> +       {0x3614, 0x60},
> +       {0x3628, 0xff},
> +       {0x3629, 0xff},
> +       {0x362a, 0xff},
> +       {0x3633, 0x10},
> +       {0x3634, 0x10},
> +       {0x3635, 0x10},
> +       {0x3636, 0x10},
> +       {0x3663, 0x08},
> +       {0x3669, 0x34},
> +       {0x366d, 0x00},
> +       {0x366e, 0x08},
> +       {0x3706, 0x86},
> +       {0x370b, 0x7e},
> +       {0x3714, 0x27},
> +       {0x3730, 0x12},
> +       {0x3733, 0x10},
> +       {0x3764, 0x00},
> +       {0x3765, 0x00},
> +       {0x3769, 0x62},
> +       {0x376a, 0x2a},
> +       {0x376b, 0x30},
> +       {0x3780, 0x00},
> +       {0x3781, 0x24},
> +       {0x3782, 0x00},
> +       {0x3783, 0x23},
> +       {0x3798, 0x2f},
> +       {0x37a1, 0x60},
> +       {0x37a8, 0x6a},
> +       {0x37ab, 0x3f},
> +       {0x37c2, 0x14},
> +       {0x37c3, 0xf1},
> +       {0x37c9, 0x80},
> +       {0x37cb, 0x16},
> +       {0x37cc, 0x16},
> +       {0x37cd, 0x16},
> +       {0x37ce, 0x16},
> +       {0x3800, 0x00},
> +       {0x3801, 0x00},
> +       {0x3802, 0x00},
> +       {0x3803, 0x0c},
> +       {0x3804, 0x0c},
> +       {0x3805, 0xdf},
> +       {0x3806, 0x09},
> +       {0x3807, 0xa3},
> +       {0x3808, 0x06},
> +       {0x3809, 0x60},
> +       {0x380a, 0x04},
> +       {0x380b, 0xc8},
> +       {0x380c, 0x07},
> +       {0x380d, 0x8c},
> +       {0x380e, 0x09},
> +       {0x380f, 0xb2},
> +       {0x3810, 0x00},
> +       {0x3811, 0x02},
> +       {0x3812, 0x00},
> +       {0x3813, 0x02},
> +       {0x3814, 0x03},
> +       {0x3815, 0x01},
> +       {0x3816, 0x00},
> +       {0x3817, 0x00},
> +       {0x3818, 0x00},
> +       {0x3819, 0x00},
> +       {0x3820, 0x80},
> +       {0x3821, 0x47},
> +       {0x382a, 0x03},
> +       {0x382b, 0x01},
> +       {0x3830, 0x06},
> +       {0x3836, 0x02},
> +       {0x3862, 0x04},
> +       {0x3863, 0x08},
> +       {0x3cc0, 0x33},
> +       {0x3d85, 0x17},
> +       {0x3d8c, 0x73},
> +       {0x3d8d, 0xde},
> +       {0x4001, 0xe0},
> +       {0x4003, 0x40},
> +       {0x4008, 0x00},
> +       {0x4009, 0x05},
> +       {0x400a, 0x00},
> +       {0x400b, 0x84},
> +       {0x400f, 0x80},
> +       {0x4010, 0xf0},
> +       {0x4011, 0xff},
> +       {0x4012, 0x02},
> +       {0x4013, 0x01},
> +       {0x4014, 0x01},
> +       {0x4015, 0x01},
> +       {0x4042, 0x00},
> +       {0x4043, 0x80},
> +       {0x4044, 0x00},
> +       {0x4045, 0x80},
> +       {0x4046, 0x00},
> +       {0x4047, 0x80},
> +       {0x4048, 0x00},
> +       {0x4049, 0x80},
> +       {0x4041, 0x03},
> +       {0x404c, 0x20},
> +       {0x404d, 0x00},
> +       {0x404e, 0x20},
> +       {0x4203, 0x80},
> +       {0x4307, 0x30},
> +       {0x4317, 0x00},
> +       {0x4502, 0x50},
> +       {0x4503, 0x08},
> +       {0x4601, 0x80},
> +       {0x4800, 0x44},
> +       {0x4816, 0x53},
> +       {0x481b, 0x50},
> +       {0x481f, 0x27},
> +       {0x4823, 0x3c},
> +       {0x482b, 0x00},
> +       {0x4831, 0x66},
> +       {0x4837, 0x16},
> +       {0x483c, 0x0f},
> +       {0x484b, 0x05},
> +       {0x5000, 0x77},
> +       {0x5001, 0x0a},
> +       {0x5003, 0xc8},
> +       {0x5004, 0x04},
> +       {0x5006, 0x00},
> +       {0x5007, 0x00},
> +       {0x502e, 0x03},
> +       {0x5030, 0x41},
> +       {0x5795, 0x00},
> +       {0x5796, 0x10},
> +       {0x5797, 0x10},
> +       {0x5798, 0x73},
> +       {0x5799, 0x73},
> +       {0x579a, 0x00},
> +       {0x579b, 0x28},
> +       {0x579c, 0x00},
> +       {0x579d, 0x16},
> +       {0x579e, 0x06},
> +       {0x579f, 0x20},
> +       {0x57a0, 0x04},
> +       {0x57a1, 0xa0},
> +       {0x5780, 0x14},
> +       {0x5781, 0x0f},
> +       {0x5782, 0x44},
> +       {0x5783, 0x02},
> +       {0x5784, 0x01},
> +       {0x5785, 0x01},
> +       {0x5786, 0x00},
> +       {0x5787, 0x04},
> +       {0x5788, 0x02},
> +       {0x5789, 0x0f},
> +       {0x578a, 0xfd},
> +       {0x578b, 0xf5},
> +       {0x578c, 0xf5},
> +       {0x578d, 0x03},
> +       {0x578e, 0x08},
> +       {0x578f, 0x0c},
> +       {0x5790, 0x08},
> +       {0x5791, 0x04},
> +       {0x5792, 0x00},
> +       {0x5793, 0x52},
> +       {0x5794, 0xa3},
> +       {0x59f8, 0x3d},
> +       {0x5a08, 0x02},
> +       {0x5b00, 0x02},
> +       {0x5b01, 0x10},
> +       {0x5b02, 0x03},
> +       {0x5b03, 0xcf},
> +       {0x5b05, 0x6c},
> +       {0x5e00, 0x00},
> +       {0x5e10, 0xfc}
> +};
> +
>  static const char * const ov8856_test_pattern_menu[] = {
>         "Disabled",
>         "Standard Color Bar",
> @@ -548,6 +986,18 @@ static const struct ov8856_mode supported_modes[] = {
>                 .link_freq_index = OV8856_LINK_FREQ_720MBPS,
>         },
>         {
> +               .width    = 3264,
> +               .height   = 2448,
> +               .hts      = 1932,
> +               .vts_def  = 2482,
> +               .vts_min  = 2482,
> +               .reg_list = {
> +                       .num_of_regs = ARRAY_SIZE(mode_3264x2448_regs),
> +                       .regs = mode_3264x2448_regs,
> +               },
> +               .link_freq_index = OV8856_LINK_FREQ_720MBPS,
> +       },
> +       {
>                 .width = 1640,
>                 .height = 1232,
>                 .hts = 3820,
> @@ -558,6 +1008,18 @@ static const struct ov8856_mode supported_modes[] = {
>                         .regs = mode_1640x1232_regs,
>                 },
>                 .link_freq_index = OV8856_LINK_FREQ_360MBPS,
> +       },
> +       {
> +               .width    = 1632,
> +               .height   = 1224,
> +               .hts      = 1932,
> +               .vts_def  = 2482,
> +               .vts_min  = 2482,
> +               .reg_list = {
> +                       .num_of_regs = ARRAY_SIZE(mode_1632x1224_regs),
> +                       .regs = mode_1632x1224_regs,
> +               },
> +               .link_freq_index = OV8856_LINK_FREQ_360MBPS,
>         }
>  };
>
> @@ -566,16 +1028,28 @@ struct ov8856 {
>         struct media_pad pad;
>         struct v4l2_ctrl_handler ctrl_handler;
>
> +       struct clk              *xvclk;
> +       struct gpio_desc        *n_shutdn_gpio;
> +       struct regulator_bulk_data supplies[OV8856_NUM_SUPPLIES];
> +
>         /* V4L2 Controls */
>         struct v4l2_ctrl *link_freq;
>         struct v4l2_ctrl *pixel_rate;
>         struct v4l2_ctrl *vblank;
>         struct v4l2_ctrl *hblank;
>         struct v4l2_ctrl *exposure;
> +       struct v4l2_mbus_framefmt       fmt;
>
>         /* Current mode */
>         const struct ov8856_mode *cur_mode;
>
> +       /* module hardware version that can be read out from register 0x700f
> +        * the register value corresponds to different hardware version
> +        * 01: 2A module revision
> +        * 02: 1B module revision
> +        */
> +       bool is_1B_revision;
> +
>         /* To serialize asynchronus callbacks */
>         struct mutex mutex;
>
> @@ -696,6 +1170,25 @@ static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
>                                 OV8856_REG_VALUE_08BIT, pattern);
>  }
>
> +static int ov8856_check_revision(struct ov8856 *ov8856)
> +{
> +       int ret;
> +
> +       ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> +                              OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> +       if (ret)
> +               return ret;
> +
> +       ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
> +                              OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
> +       if (ret)
> +               return ret;
> +
> +       return ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
> +                               OV8856_REG_VALUE_08BIT,
> +                               OV8856_OTP_LOAD_CTRL_ENABLE);
> +}
> +
>  static int ov8856_set_ctrl(struct v4l2_ctrl *ctrl)
>  {
>         struct ov8856 *ov8856 = container_of(ctrl->handler,
> @@ -825,7 +1318,6 @@ static void ov8856_update_pad_format(const struct ov8856_mode *mode,
>  {
>         fmt->width = mode->width;
>         fmt->height = mode->height;
> -       fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
>         fmt->field = V4L2_FIELD_NONE;
>  }
>
> @@ -834,6 +1326,7 @@ static int ov8856_start_streaming(struct ov8856 *ov8856)
>         struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
>         const struct ov8856_reg_list *reg_list;
>         int link_freq_index, ret;
> +       u32 h_size;
>
>         link_freq_index = ov8856->cur_mode->link_freq_index;
>         reg_list = &link_freq_configs[link_freq_index].reg_list;
> @@ -850,6 +1343,29 @@ static int ov8856_start_streaming(struct ov8856 *ov8856)
>                 return ret;
>         }
>
> +       /* Update R3614 if the revision is 1B module */
> +       if (ov8856->is_1B_revision) {
> +               ret = ov8856_write_reg(ov8856, OV8856_ANAL_MODE_CTRL,
> +                                      OV8856_REG_VALUE_08BIT,
> +                                      OV8856_ANAL_1B_VAL);
> +               if (ret) {
> +                       dev_err(&client->dev, "failed to set R3614");
> +                       return ret;
> +               }
> +       }
> +
> +       ret = ov8856_read_reg(ov8856, REG_X_ADDR_START,
> +                             OV8856_REG_VALUE_16BIT, &h_size);
> +       if (ret) {
> +               dev_err(&client->dev, "failed to read out R3614");
> +               return ret;
> +       }
> +
> +       if (h_size == X_OUTPUT_FULL_SIZE || h_size == X_OUTPUT_BINNING_SIZE)
> +               ov8856->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
> +
>         ret = __v4l2_ctrl_handler_setup(ov8856->sd.ctrl_handler);
>         if (ret)
>                 return ret;
> @@ -878,6 +1394,7 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
>         struct ov8856 *ov8856 = to_ov8856(sd);
>         struct i2c_client *client = v4l2_get_subdevdata(sd);
>         int ret = 0;
> +       u32 val;
>
>         if (ov8856->streaming == enable)
>                 return 0;
> @@ -908,6 +1425,44 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
>         return ret;
>  }
>
> +static int __ov8856_power_on(struct ov8856 *ov8856)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> +       int ret;
> +
> +       ret = clk_prepare_enable(ov8856->xvclk);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to enable xvclk\n");
> +               return ret;
> +       }
> +
> +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> +
> +       ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to enable regulators\n");
> +               goto disable_clk;
> +       }
> +
> +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_HIGH);
> +
> +       usleep_range(1400, 1500);
> +
> +       return 0;
> +
> +disable_clk:
> +       clk_disable_unprepare(ov8856->xvclk);
> +
> +       return ret;
> +}
> +
> +static void __ov8856_power_off(struct ov8856 *ov8856)
> +{
> +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, 1);
> +       regulator_bulk_disable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> +       clk_disable_unprepare(ov8856->xvclk);
> +}
> +
>  static int __maybe_unused ov8856_suspend(struct device *dev)
>  {
>         struct i2c_client *client = to_i2c_client(dev);
> @@ -951,6 +1506,7 @@ static int ov8856_set_format(struct v4l2_subdev *sd,
>                              struct v4l2_subdev_format *fmt)
>  {
>         struct ov8856 *ov8856 = to_ov8856(sd);
> +       struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
>         const struct ov8856_mode *mode;
>         s32 vblank_def, h_blank;
>
> @@ -960,7 +1516,9 @@ static int ov8856_set_format(struct v4l2_subdev *sd,
>                                       fmt->format.height);
>
>         mutex_lock(&ov8856->mutex);
> -       ov8856_update_pad_format(mode, &fmt->format);
> +       mbus_fmt->code = ov8856->fmt.code;
> +       ov8856_update_pad_format(mode, mbus_fmt);
> +       ov8856->fmt = fmt->format;
>         if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
>                 *v4l2_subdev_get_try_format(sd, cfg, fmt->pad) = fmt->format;
>         } else {
> @@ -992,13 +1550,17 @@ static int ov8856_get_format(struct v4l2_subdev *sd,
>                              struct v4l2_subdev_format *fmt)
>  {
>         struct ov8856 *ov8856 = to_ov8856(sd);
> +       struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
>
>         mutex_lock(&ov8856->mutex);
> -       if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
> +       if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
>                 fmt->format = *v4l2_subdev_get_try_format(&ov8856->sd, cfg,
>                                                           fmt->pad);
> -       else
> -               ov8856_update_pad_format(ov8856->cur_mode, &fmt->format);
> +       } else {
> +               fmt->format = ov8856->fmt;
> +               ov8856_update_pad_format(ov8856->cur_mode, mbus_fmt);
> +               mbus_fmt->code = ov8856->fmt.code;
> +       }
>
>         mutex_unlock(&ov8856->mutex);
>
> @@ -1009,11 +1571,12 @@ static int ov8856_enum_mbus_code(struct v4l2_subdev *sd,
>                                  struct v4l2_subdev_pad_config *cfg,
>                                  struct v4l2_subdev_mbus_code_enum *code)
>  {
> -       /* Only one bayer order GRBG is supported */
> +       struct ov8856 *ov8856 = to_ov8856(sd);
> +
>         if (code->index > 0)
>                 return -EINVAL;
>
> -       code->code = MEDIA_BUS_FMT_SGRBG10_1X10;
> +       code->code = ov8856->fmt.code;
>
>         return 0;
>  }
> @@ -1089,6 +1652,20 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
>                 return -ENXIO;
>         }
>
> +       /* check sensor hardware revision */
> +       ret = ov8856_check_revision(ov8856);
> +       if (ret) {
> +               dev_err(&client->dev, "failed to check sensor revision");
> +               return ret;
> +       }
> +
> +       ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
> +                             OV8856_REG_VALUE_08BIT, &val);
> +       if (ret)
> +               return ret;
> +
> +       ov8856->is_1B_revision = (val == OV8856_1B_MODULE) ? 1 : 0;
> +
>         return 0;
>  }
>
> @@ -1107,7 +1684,7 @@ static int ov8856_check_hwcfg(struct device *dev)
>                 return -ENXIO;
>
>         fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> -       if (mclk != OV8856_MCLK) {
> +       if (mclk != OV8856_XVCLK) {
>                 dev_err(dev, "external clock %d is not supported", mclk);
>                 return -EINVAL;
>         }
> @@ -1164,6 +1741,9 @@ static int ov8856_remove(struct i2c_client *client)
>         media_entity_cleanup(&sd->entity);
>         v4l2_ctrl_handler_free(sd->ctrl_handler);
>         pm_runtime_disable(&client->dev);
> +       if (!pm_runtime_status_suspended(&client->dev))
> +               __ov8856_power_off(ov8856);
> +       pm_runtime_set_suspended(&client->dev);
>         mutex_destroy(&ov8856->mutex);
>
>         return 0;
> @@ -1172,6 +1752,7 @@ static int ov8856_remove(struct i2c_client *client)
>  static int ov8856_probe(struct i2c_client *client)
>  {
>         struct ov8856 *ov8856;
> +       unsigned int i;
>         int ret;
>
>         ret = ov8856_check_hwcfg(&client->dev);
> @@ -1186,6 +1767,42 @@ static int ov8856_probe(struct i2c_client *client)
>                 return -ENOMEM;
>
>         v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> +       ov8856->fmt.code = MEDIA_BUS_FMT_SGRBG10_1X10;
> +
> +       ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> +       if (IS_ERR(ov8856->xvclk)) {
> +               dev_err(&client->dev, "failed to get xvclk\n");
> +               return -EINVAL;
> +       }
> +
> +       ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_TYP);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> +               return ret;
> +       }
> +       if (clk_get_rate(ov8856->xvclk) != OV8856_XVCLK_TYP)
> +               dev_warn(&client->dev,
> +                        "xvclk mismatched, modes are based on 24MHz\n");
> +
> +       ov8856->n_shutdn_gpio = devm_gpiod_get(&client->dev, "reset",
> +                                              GPIOD_OUT_LOW);
> +       if (IS_ERR(ov8856->n_shutdn_gpio)) {
> +               dev_err(&client->dev, "failed to get reset-gpios\n");
> +               return -EINVAL;
> +       }
> +
> +       for (i = 0; i < OV8856_NUM_SUPPLIES; i++)
> +               ov8856->supplies[i].supply = ov8856_supply_names[i];
> +
> +       ret = devm_regulator_bulk_get(&client->dev, OV8856_NUM_SUPPLIES,
> +                                     ov8856->supplies);
> +       if (ret)
> +               dev_warn(&client->dev, "failed to get regulators\n");
> +
> +       ret = __ov8856_power_on(ov8856);
> +       if (ret)
> +               dev_warn(&client->dev, "failed to power on\n");
> +
>         ret = ov8856_identify_module(ov8856);
>         if (ret) {
>                 dev_err(&client->dev, "failed to find sensor: %d", ret);
> @@ -1251,11 +1868,18 @@ static const struct acpi_device_id ov8856_acpi_ids[] = {
>  MODULE_DEVICE_TABLE(acpi, ov8856_acpi_ids);
>  #endif
>
> +static const struct of_device_id ov8856_of_match[] = {
> +       { .compatible = "ovti,ov8856" },
> +       {},
> +};
> +MODULE_DEVICE_TABLE(of, ov8856_of_match);
> +
>  static struct i2c_driver ov8856_i2c_driver = {
>         .driver = {
>                 .name = "ov8856",
>                 .pm = &ov8856_pm_ops,
>                 .acpi_match_table = ACPI_PTR(ov8856_acpi_ids),
> +               .of_match_table = ov8856_of_match,
>         },
>         .probe_new = ov8856_probe,
>         .remove = ov8856_remove,
> --
> 2.9.2
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
