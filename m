Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19C7167AC0
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Feb 2020 11:25:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkFoR5fQacVsXMgi8l3jCsUfhnZg4mARIoSucnbaScY=; b=qi3oYY+TO78VFg
	04UPmNv4PS6AX9wBm2ilDsPsSNYiLnr/uPvCrqqXYTTP3/6c9Z4Vma9Ht38OQEfDZZ0j6FE8lgbOQ
	xE3tlJYl3kSdhyex959VEtc/uT857qldmiykyo/BItmhUTKQpMk3yB2VGG7sUuJhj7Ua9J8dDee8s
	F7WvvsNfnX3AWsxHEeBPmTxtDMC6eCfyXhp/zA91surCxlsEQkV7n60DKrM30Y6DaE3O57fOuSnPP
	ENo3a5SLg3DVlpPSUQTc6PABxzlKrTXNIhScaoOSoXzKpD/o4KDqXVVpoNWYpbV2nWRQWfJdZonGb
	n81VeG5n5yvNmSiOo3pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55US-0000F8-PH; Fri, 21 Feb 2020 10:25:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55UF-0008MB-5J; Fri, 21 Feb 2020 10:24:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E8C94B1CA;
 Fri, 21 Feb 2020 10:24:43 +0000 (UTC)
Subject: Re: [PATCH v8 0/6] arm/arm64: mediatek: Fix mmsys device probing
To: CK Hu <ck.hu@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
 <1582259996.1846.7.camel@mtksdaap41>
 <7a87b486-1622-7f27-f5af-427b94a14c00@collabora.com>
 <1582277229.25992.9.camel@mtksdaap41>
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; prefer-encrypt=mutual; keydata=
 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
 HxUCQ9Y1Y/Ct
Message-ID: <1393a8c5-065f-cccb-2563-8b159c951d4b@suse.com>
Date: Fri, 21 Feb 2020 11:24:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582277229.25992.9.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_022447_496515_CAD497D7 
X-CRM114-Status: GOOD (  28.36  )
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 wens@csie.org, Allison Randal <allison@lohutok.net>,
 mtk01761 <wendell.lin@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Fabien Parent <fparent@baylibre.com>,
 sboyd@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 21/02/2020 10:27, CK Hu wrote:
> Hi, Enric:
> 
> On Fri, 2020-02-21 at 09:56 +0100, Enric Balletbo i Serra wrote:
>> Hi CK,
>>
>> Thanks for your quick answer.
>>
>> On 21/2/20 5:39, CK Hu wrote:
>>> Hi, Enric:
>>>
>>> On Thu, 2020-02-20 at 18:21 +0100, Enric Balletbo i Serra wrote:
>>>> Dear all,
>>>>
>>>> Those patches are intended to solve an old standing issue on some
>>>> Mediatek devices (mt8173, mt2701 and mt2712) in a slightly different way
>>>> to the precedent series.
>>>>
>>>> Up to now both drivers, clock and drm are probed with the same device tree
>>>> compatible. But only the first driver get probed, which in effect breaks
>>>> graphics on those devices.
>>>>
>>>> The version eight of the series tries to solve the problem with a
>>>> different approach than the previous series but similar to how is solved
>>>> on other Mediatek devices.
>>>>
>>>> The MMSYS (Multimedia subsystem) in Mediatek SoCs has some registers to
>>>> control clock gates (which is used in the clk driver) and some registers
>>>> to set the routing and enable the differnet blocks of the display
>>>> and MDP (Media Data Path) subsystem. On this series the clk driver is
>>>> not a pure clock controller but a system controller that can provide
>>>> access to the shared registers between the different drivers that need
>>>> it (mediatek-drm and mediatek-mdp). And the biggest change is, that in
>>>> this version, clk driver is the entry point (parent) which will trigger
>>>> the probe of the corresponding mediatek-drm driver and pass its MMSYS
>>>> platform data for display configuration.
>>>
>>> When mmsys is a system controller, I prefer to place mmsys in
>>> drivers/soc/mediatek, and it share registers for clock, display, and mdp
>>> driver. This means the probe function is placed in
>>> drivers/soc/mediatek ,its display clock function, mdp clock function are
>>> placed in drivers/clk, display routing are placed in drivers/gpu/drm,
>>> and mdp routing are placed in dirvers/video.
>>>
>>
>> I understand what you mean but I am not sure this makes the code clearer and
>> useful. The driver in drivers/soc/mediatek will be a simple dummy implementation
>> of a "simple-mfd" device (a driver that simply matches with
>> "mediatek,mt8173-mmsys" and instantiates the "clk-mt8173-mm" and the
>> "mediatek-drm" driver (note that mediatek-mdp" is already instantiated via
>> device-tree).
>>
> 
> It's clear that mmsys is neither a pure clock controller nor a pure
> routing controller for display and mdp. 
> 
>> It'd be nice had a proper device-tree with a "simple-mfd" for mmsys from the
>> beginning representing how really hardwware is, but I think that, change this
>> now, will break backward compatibility.
> 
> Maybe this is a solution. Current device tree would work only on old
> kernel version with a bug, so this mean there is no any device tree
> works on kernel version without bug. Why do we compatible with such
> device tree?
> 

The idea behind this is, that the device-tree could be passed by some boot
firmware, so that the OS do not care about it. For this we need a stable DTS as
otherwise newer kernel with older FW would break.

DTS is supposed to be just a different description of the HW like ACPI. So it
has to be compatible (newer kernel with older DTS and if possible vice versa).

Regards,
Matthias

> Regards,
> CK
> 
>>
>> IMHO I think that considering the clk driver as entry point is fine, but this is
>> something that the clock maintainers should decide.
>>
>> Also note that this is not only a MT8173 problem I am seeing the same problem on
>> all other Mediatek SoCs.
>>
>> Thanks.
>>
>>> Regards,
>>> CK
>>>
>>>>
>>>> All this series was tested on the Acer R13 Chromebook only.
>>>>
>>>> For reference, here are the links to the old discussions:
>>>>
>>>> * v7: https://patchwork.kernel.org/project/linux-mediatek/list/?series=241217
>>>> * v6: https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
>>>> * v5: https://patchwork.kernel.org/project/linux-mediatek/list/?series=44063
>>>> * v4:
>>>>   * https://patchwork.kernel.org/patch/10530871/
>>>>   * https://patchwork.kernel.org/patch/10530883/
>>>>   * https://patchwork.kernel.org/patch/10530885/
>>>>   * https://patchwork.kernel.org/patch/10530911/
>>>>   * https://patchwork.kernel.org/patch/10530913/
>>>> * v3:
>>>>   * https://patchwork.kernel.org/patch/10367857/
>>>>   * https://patchwork.kernel.org/patch/10367861/
>>>>   * https://patchwork.kernel.org/patch/10367877/
>>>>   * https://patchwork.kernel.org/patch/10367875/
>>>>   * https://patchwork.kernel.org/patch/10367885/
>>>>   * https://patchwork.kernel.org/patch/10367883/
>>>>   * https://patchwork.kernel.org/patch/10367889/
>>>>   * https://patchwork.kernel.org/patch/10367907/
>>>>   * https://patchwork.kernel.org/patch/10367909/
>>>>   * https://patchwork.kernel.org/patch/10367905/
>>>> * v2: No relevant discussion, see v3
>>>> * v1:
>>>>   * https://patchwork.kernel.org/patch/10016497/
>>>>   * https://patchwork.kernel.org/patch/10016499/
>>>>   * https://patchwork.kernel.org/patch/10016505/
>>>>   * https://patchwork.kernel.org/patch/10016507/
>>>>
>>>> Best regards,
>>>>  Enric
>>>>
>>>> Changes in v8:
>>>> - Be a builtin_platform_driver like other mediatek mmsys drivers.
>>>> - New patches introduced in this series.
>>>>
>>>> Changes in v7:
>>>> - Add R-by from CK
>>>> - Add R-by from CK
>>>> - Fix check of return value of of_clk_get
>>>> - Fix identation
>>>> - Free clk_data->clks as well
>>>> - Get rid of private data structure
>>>>
>>>> Enric Balletbo i Serra (2):
>>>>   drm/mediatek: Move MMSYS configuration to include/linux/platform_data
>>>>   clk/drm: mediatek: Fix mediatek-drm device probing
>>>>
>>>> Matthias Brugger (4):
>>>>   drm/mediatek: Use regmap for register access
>>>>   drm/mediatek: Omit warning on probe defers
>>>>   media: mtk-mdp: Check return value of of_clk_get
>>>>   clk: mediatek: mt8173: Switch MMSYS to platform driver
>>>>
>>>>  drivers/clk/mediatek/Kconfig                  |   6 +
>>>>  drivers/clk/mediatek/Makefile                 |   1 +
>>>>  drivers/clk/mediatek/clk-mt2701-mm.c          |  30 +++
>>>>  drivers/clk/mediatek/clk-mt2712-mm.c          |  44 +++++
>>>>  drivers/clk/mediatek/clk-mt8173-mm.c          | 172 ++++++++++++++++++
>>>>  drivers/clk/mediatek/clk-mt8173.c             | 104 -----------
>>>>  drivers/gpu/drm/mediatek/mtk_disp_color.c     |   5 +-
>>>>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |   5 +-
>>>>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c      |   5 +-
>>>>  drivers/gpu/drm/mediatek/mtk_dpi.c            |  12 +-
>>>>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   4 +-
>>>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c        |  53 +++---
>>>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h        |   4 +-
>>>>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  56 +-----
>>>>  drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 113 +-----------
>>>>  drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  13 +-
>>>>  drivers/gpu/drm/mediatek/mtk_dsi.c            |   8 +-
>>>>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |   4 +-
>>>>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |   6 +
>>>>  include/linux/platform_data/mtk_mmsys.h       |  73 ++++++++
>>>>  20 files changed, 401 insertions(+), 317 deletions(-)
>>>>  create mode 100644 drivers/clk/mediatek/clk-mt8173-mm.c
>>>>  create mode 100644 include/linux/platform_data/mtk_mmsys.h
>>>>
>>>
>>
>> _______________________________________________
>> Linux-mediatek mailing list
>> Linux-mediatek@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
