Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240B71DCD14
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 14:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVhHHYac9x5SZMaQ8zf8x4LX8fhMuCr14pw7yh9zDZs=; b=hCmFSf4eO9hajY
	MKT9yxNaxL3QD7+AqQLHhStUZv5IX0HTlsSUYtHlTTfJHgHEBIS+HPNCpPVJ4Qplm74kZsz4iCZRW
	t27IwX4Qagik24Ao6u0lpUqNd0LGXaPrAnpW2OGqcpInmHUsTbGf1svC0nOHebHXC1OyJJszkBxvQ
	uC/PVtkAis0B/ZPLyU8huK0EcCFfOrymtb3LsuVAA/Q04BrNN8KliXFRxHdjn0AHpmWcEXoZiDSyK
	7jmPTnLmW06difsj0gAiVU3IITHaCTx4NjSJ5vT0Yz3vj/UreNMGDMjQpNQCopF4cz7O9eqDfOfRW
	jziw6ebFUC7H8NaFfByw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkTb-0000eL-OV; Thu, 21 May 2020 12:39:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkTK-0000Re-K6; Thu, 21 May 2020 12:38:53 +0000
Received: by mail-wr1-x442.google.com with SMTP id k13so6539434wrx.3;
 Thu, 21 May 2020 05:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Wg960/8TG4/2NnV0yKvPjeVHHCG/osN3Tk0sd2xaefc=;
 b=ElgflZggUqOOfvL5ZV9FRMxr1Gzn9XJoJxXyPLKwOAHaO4JSg0hb/P4/nvNMCfD6Pl
 KNWmtgHxHu1S17apakB0k9AS7GnC+GsQzeY67Xn6QLey1GaMXkJZqFx1lKWWCxQSeCtQ
 Wdl+poEH2PZyjw2JpOnV8VLClI721vqCINjyvzuQQmNQ4F5kF1MZwmPRUQCEAQTxWhXP
 YMjdSzSbdJSgrID3Urj/9jmHU2063VO6+YDUv4uAzwvjz7KeBl7dTQB5dUMVdq9+28hp
 kmEJ+lA1MhHK2JyxvzyLeVZOhFQqoiLB63FTqlvqS9VUKFgNyYSTAS4MuxoVNaC1ExHx
 0Rtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Wg960/8TG4/2NnV0yKvPjeVHHCG/osN3Tk0sd2xaefc=;
 b=jDr2TRvIeL1m1rIDqLreI8k126ksJRXYv7gSSXBT2nV9FNgRFFVnpAMwVRaRRmzK0F
 mYL19Ev3k3IqtEcCxg4auxNFkGJKIkzJhcU2d0377i69pwlXs6fVpk4JhsoDx65EDRVa
 qRT+V35bZS2ic/nJRK7Ck8gndJtotE4Wo8iCasKo25FXbC1eELKMVcefm4dCi44aPksj
 lTaJxpIRfc4SFHqFwakb9H35I5THRF9wRTQO0jnohDJzYA80wFe5Ayazb/ev97R2LHmG
 nqzMZRzY3cW1nQVUNcrDLZIwsPHJpB5SPSIP/VVId9K3BZfYxzAjE/FCZUztmY9mx4t7
 cx/A==
X-Gm-Message-State: AOAM533KR2VjY+ALArfUG+58af9eHD/lYfJmz460++UcRKczMOWJnSI5
 Ov7sA4feZhnL5/WVpyE3qj8cxqch
X-Google-Smtp-Source: ABdhPJxZMJI8Ufy3tbaPn8Yq8YiSKcfNCZ7UDwG+WL1J36RgXa8ysq8x0D9mHGYEKZL9BFsCVLWe8g==
X-Received: by 2002:adf:fb08:: with SMTP id c8mr8455804wrr.421.1590064728745; 
 Thu, 21 May 2020 05:38:48 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id z12sm6921636wmc.6.2020.05.21.05.38.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 05:38:47 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: dts: mt8183: Add gce setting in display node
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
References: <20200214044954.16923-1-bibby.hsieh@mediatek.com>
 <2369225e-2a92-c493-d089-e03f792df8cf@gmail.com>
 <77a11bb2-83a1-07b8-e949-eb9e5b37549d@gmail.com>
 <1590058033.29894.2.camel@mtksdaap41>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <64adcf54-1fab-2228-4a16-463cdb5e9e36@gmail.com>
Date: Thu, 21 May 2020 14:38:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1590058033.29894.2.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_053851_383848_90B1F750 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: drinkcat@chromium.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 21/05/2020 12:47, Bibby Hsieh wrote:
> On Thu, 2020-05-21 at 12:10 +0200, Matthias Brugger wrote:
>> On 14/02/2020 11:06, Matthias Brugger wrote:
>>>
>>>
>>> On 14/02/2020 05:49, Bibby Hsieh wrote:
>>>> In order to use GCE function, we need add some information
>>>> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).
>>>>
>>>> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
>>>> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
>>>> ---
>>>
>>> For the next time please provide some context on which patches this are based
>>> on. Bet below the '---' with a link.
>>>
>>> For this time, on which patch/series is this based? :)
>>
>> Bibby can you please help and rebase the patch against my for-next branch [1].
>> I'm then happy to queue it. Not sure if we can make it for v5.8 as we are really
>> late, but we could try :)
> 
> Hi, Matthias,
> 
> NP, but this patch[1] is depends on another patch [2].
> Should I rebase them together into your for-next branch?
> 

I see and [2] one depends on the scpsys driver.
Then maybe better wait until we have the scpsys driver accepted.

Regards,
Matthias


> [1] https://patchwork.kernel.org/patch/11385863/
> [2] https://patchwork.kernel.org/patch/11316277/
> 
> Bibby
> 
>>
>> Thanks!
>> Matthias
>>
>> [1]
>> https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/log/?h=for-next
>>
>>>
>>> Thanks,
>>> Matthias
>>>
>>>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 16 ++++++++++++++++
>>>>  1 file changed, 16 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>>>> index be4428c92f35..8b522b039a37 100644
>>>> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>>>> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>>>> @@ -9,6 +9,7 @@
>>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>>  #include <dt-bindings/interrupt-controller/irq.h>
>>>>  #include <dt-bindings/power/mt8183-power.h>
>>>> +#include <dt-bindings/gce/mt8183-gce.h>
>>>>  #include "mt8183-pinfunc.h"
>>>>  
>>>>  / {
>>>> @@ -664,6 +665,9 @@
>>>>  			reg = <0 0x14000000 0 0x1000>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			#clock-cells = <1>;
>>>> +			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST>,
>>>> +				 <&gce 1 CMDQ_THR_PRIO_HIGHEST>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
>>>>  		};
>>>>  
>>>>  		ovl0: ovl@14008000 {
>>>> @@ -672,6 +676,7 @@
>>>>  			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_OVL0>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x8000 0x1000>;
>>>>  		};
>>>>  
>>>>  		ovl_2l0: ovl@14009000 {
>>>> @@ -680,6 +685,7 @@
>>>>  			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_OVL0_2L>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x9000 0x1000>;
>>>>  		};
>>>>  
>>>>  		ovl_2l1: ovl@1400a000 {
>>>> @@ -688,6 +694,7 @@
>>>>  			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_OVL1_2L>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xa000 0x1000>;
>>>>  		};
>>>>  
>>>>  		rdma0: rdma@1400b000 {
>>>> @@ -697,6 +704,7 @@
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
>>>>  			mediatek,rdma_fifo_size = <5120>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xb000 0x1000>;
>>>>  		};
>>>>  
>>>>  		rdma1: rdma@1400c000 {
>>>> @@ -706,6 +714,7 @@
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
>>>>  			mediatek,rdma_fifo_size = <2048>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
>>>>  		};
>>>>  
>>>>  		color0: color@1400e000 {
>>>> @@ -715,6 +724,7 @@
>>>>  			interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
>>>>  		};
>>>>  
>>>>  		ccorr0: ccorr@1400f000 {
>>>> @@ -723,6 +733,7 @@
>>>>  			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_CCORR0>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
>>>>  		};
>>>>  
>>>>  		aal0: aal@14010000 {
>>>> @@ -732,6 +743,7 @@
>>>>  			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_AAL0>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
>>>>  		};
>>>>  
>>>>  		gamma0: gamma@14011000 {
>>>> @@ -741,6 +753,7 @@
>>>>  			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_GAMMA0>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
>>>>  		};
>>>>  
>>>>  		dither0: dither@14012000 {
>>>> @@ -749,6 +762,7 @@
>>>>  			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>>  			clocks = <&mmsys CLK_MM_DISP_DITHER0>;
>>>> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
>>>>  		};
>>>>  
>>>>  		mutex: mutex@14016000 {
>>>> @@ -756,6 +770,8 @@
>>>>  			reg = <0 0x14016000 0 0x1000>;
>>>>  			interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
>>>>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
>>>> +			mediatek,gce-events = <CMDQ_EVENT_MUTEX_STREAM_DONE0>,
>>>> +					      <CMDQ_EVENT_MUTEX_STREAM_DONE1>;
>>>>  		};
>>>>  
>>>>  		smi_common: smi@14019000 {
>>>>
>>
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
