Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54B91C23F3
	for <lists+linux-mediatek@lfdr.de>; Sat,  2 May 2020 09:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lew0Y5sbh9QprssjGQr+Pi9hF0ohYR9cxASAiRfz4ew=; b=fQV1o+5rrQyzMA
	/F07xb4xFgFf1HQK+fUfWJ2X4qb+hzpi3EXg1ptsFROucHaOm4QTJyBGUqiH29456OHbDoVbBIhGy
	dyApch8PyPdBiv3ZT4MgR9uDKBVu7Km1dSVkkO2vpEtkkRwQW2pvz6Hi1+q+KbqcN2Q204NjSIuwc
	c9tRRc+B73IZbIqfwSRCV0MOeVo8jxzUtKC3gpIJ6QKfLK06YYsYjHUGwdovpqqtqO/ft0GsAHtHR
	PpPzyRCQHspNBLNcwUrPbExnBk/LRWDbKCujSx4PWLXcTlo5UCu6z+8BVnz1hksJT04rjqYRaWKnv
	L5NpfjLPpdQsctR26ROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUmyJ-0005uZ-QA; Sat, 02 May 2020 07:54:03 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUmyB-0005no-3N; Sat, 02 May 2020 07:53:56 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 15CE820034;
 Sat,  2 May 2020 09:53:47 +0200 (CEST)
Date: Sat, 2 May 2020 09:53:40 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: allen <allen.chen@ite.com.tw>
Subject: Re: [PATCH v9 0/3] IT6505 cover letter
Message-ID: <20200502075340.GA15420@ravnborg.org>
References: <1587979103-5630-1-git-send-email-allen.chen@ite.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587979103-5630-1-git-send-email-allen.chen@ite.com.tw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ULXz4hXy c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=bHKA5wnqmxRAZF-cxx8A:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_005355_320736_AA24C373 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Maxime Ripard <mripard@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Stephan Gerhold <stephan@gerhold.net>,
 Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Rob Herring <robh@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Allen.

On Mon, Apr 27, 2020 at 05:16:51PM +0800, allen wrote:
> The IT6505 is a high-performance DisplayPort 1.1a transmitter, fully compliant with DisplayPort 1.1a, HDCP 1.3 specifications. The IT6505 supports color depth of up to 36 bits (12 bits/color) and ensures robust transmission of high-quality uncompressed video content, along with uncompressed and compressed digital audio content.
> 
> This series contains document bindings, revert commit, add vendor prefix, Kconfig to control the function enable or not.

Applied the fix for ITE vendor prefix and the binding to drm-misc-next.
Did a few edits before pushing out.

	Sam

> 
> Allen Chen (1):
>   WIP: drm/bridge: add it6505 driver
> 
> allen (2):
>   dt-bindings: Add vendor prefix for ITE Tech. Inc.
>   WIP: dt-bindings: Add binding for IT6505.
> 
>  .../bindings/display/bridge/ite,it6505.yaml        |   91 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |    2 +-
>  drivers/gpu/drm/bridge/Kconfig                     |    7 +
>  drivers/gpu/drm/bridge/Makefile                    |    1 +
>  drivers/gpu/drm/bridge/ite-it6505.c                | 3136 ++++++++++++++++++++
>  5 files changed, 3236 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
>  create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c
> 
> -- 
> 1.9.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
