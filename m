Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC04E155266
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 07:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a9YHQ4KR3C2+CEQRUM1O8ghyishzr1LAsAoxUO7MXR8=; b=XyeeOFxcAkwTzqZEkoDvwIsBK
	XHMOxPiUF0Ly3LwKrxQ/1lgvFBNDUHxpDNfG35LaPAFSZzl9WX4WHQPexCYw8MM+UTwWe9bZgPn1j
	ng5P6eID3u5+tCl7LVRky7TqO5wJ2zC5++dxUFQB4+mkeQcqojCH6n0ikok/7iu69WQgCX5tf5fHS
	66GKbYFfqrn8tvMlwlYNZcSrnigffh59ieJwBeo47qEa+cY7jNZC6N74zU33d/M4cTxrNkyebCYVL
	Ml382r9h3EPIo2x7ip4gi7MpGw2bR241O/wTSxOqNrS25dfMHHNXx0H/NDN/oTke0xuTXw2XtspCb
	tx7hh6Bcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izwxz-0000fP-76; Fri, 07 Feb 2020 06:18:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izwxq-0000YW-QU; Fri, 07 Feb 2020 06:18:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: tomeu) with ESMTPSA id DDFEB29575C
Subject: Re: [PATCH v4 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To: Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Message-ID: <5237381b-c232-7087-a3d6-78d6358d80bf@collabora.com>
Date: Fri, 7 Feb 2020 07:17:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200207052627.130118-1-drinkcat@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_221807_117977_16CE01E3 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 ulf.hansson@linaro.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2/7/20 6:26 AM, Nicolas Boichat wrote:
> Hi!
> 
> Follow-up on the v3: https://patchwork.kernel.org/cover/11331343/.
> 
> The main purpose of this series is to upstream the dts change and the
> binding document, but I wanted to see how far I could probe the GPU, to
> check that the binding is indeed correct. The rest of the patches are
> RFC/work-in-progress, but I think some of them could already be picked up.
> 
> So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
> backports to get the latest panfrost driver (I should probably try on
> linux-next at some point but this was the path of least resistance).
> 
> I tested it as a module as it's more challenging (originally probing would
> work built-in, on boot, but not as a module, as I didn't have the power
> domain changes, and all power domains are on by default during boot).
> 
> Probing logs looks like this, currently. They look sane.
> [  501.319728] panfrost 13040000.gpu: clock rate = 511999970
> [  501.320041] panfrost 13040000.gpu: Linked as a consumer to regulator.14
> [  501.320102] panfrost 13040000.gpu: Linked as a consumer to regulator.31
> [  501.320651] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
> [  501.320954] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
> [  501.321062] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
> [  501.321734] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
> [  501.321741] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
> [  501.321747] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
> [  501.321752] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
> [  501.324951] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2
> 
> Some more changes are still required to get devfreq working, and of course
> I do not have a userspace driver to test this with.

Have you tried the Panfrost tests in IGT? They are atm quite basic, but 
could be interesting to check that the different HW units are correctly 
powered on.

Regards,

Tomeu

> I believe at least patches 1, 2, and 3 can be merged. 4 and 5 are mostly
> useful in conjunction with 6 and 7 (which are not ready yet), so I'll let
> maintainers decide.
> 
> Thanks!
> 
> Nicolas Boichat (7):
>    dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
>    arm64: dts: mt8183: Add node for the Mali GPU
>    drm/panfrost: Improve error reporting in panfrost_gpu_power_on
>    drm/panfrost: Add support for multiple regulators
>    drm/panfrost: Add support for multiple power domains
>    RFC: drm/panfrost: Add mt8183-mali compatible string
>    RFC: drm/panfrost: devfreq: Add support for 2 regulators
> 
>   .../bindings/gpu/arm,mali-bifrost.yaml        |  25 ++++
>   arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 +
>   arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 +++++++++++++++
>   drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  17 +++
>   drivers/gpu/drm/panfrost/panfrost_device.c    | 123 +++++++++++++++---
>   drivers/gpu/drm/panfrost/panfrost_device.h    |  27 +++-
>   drivers/gpu/drm/panfrost/panfrost_drv.c       |  41 ++++--
>   drivers/gpu/drm/panfrost/panfrost_gpu.c       |  11 +-
>   8 files changed, 326 insertions(+), 30 deletions(-)
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
