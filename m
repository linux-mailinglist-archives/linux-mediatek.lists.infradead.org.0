Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8FD15CAF7
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 20:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6dFHGrWdNbaRhrNPzGS466/G1Rj/K8GUFP5yBHIWvY=; b=i5tCiNwHw2iktS
	THkd5fBKa10FXD5h06q1oVN5UQpHhYt4ptXPr9CD4nLFMib6tYKa4oprVLAkZfbBpYOst0tmhBw0o
	foY8k0uAxwsTnWvnm7SUNH95DNUhlaNg567ZvXKKJzVGY1gh4ppdsGGSxIzEP4DLhErbv9r9szdSB
	jhAAh/Ihyj+DVmRrrXqzSX0UhAsBuj/OL//URiZ04ZFGU/gcGoVulJ3JznzWI1IkJD7IJiKvsPWWP
	YLzTm63vWx6rv+7tFb2bWofARTi7BVaQNn4pBxqJbbLGdFieY0a4FemWI9LSQddusz+itTJbbKeni
	wOqgmlbqnhcd/vsv4g/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Jtm-0000gG-FB; Thu, 13 Feb 2020 19:11:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Jtj-0000fi-D4; Thu, 13 Feb 2020 19:11:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so7989049wmi.5;
 Thu, 13 Feb 2020 11:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0EDsDdiwq5f7W72k6Nk7kffc27M29KHICkiSL1JVU7E=;
 b=onppwLInpbb07lkma5m1g5wCPGLj9ft03H8fu0z++DX3DFKLFK3F82jjo3u2KXcmu+
 VrVaagBk0sJQtGMZe9vME2jKsYvrz4dLQUSIMeOQw84kDiFNJldfT1049Td7jdkb4ozo
 wIbJGhPsbPAmZC6LMclQLyiVNQxksYxFlAfpMxuJeZM/rPm4IxhOejBn9QwA73wuSVuq
 ntn7U2rIAWoJ/N+/XjPXClGoFGJwBn7mhL+K+Hc6ogcHjuF4CxhY5ABHW8nKFtT/Im9p
 cJYhc5Pfu0cEmrAvBARwaHCus0N+22NIIBgWuMmOzAKoeNnO9ULgEK1TIiOwi7VO9ery
 1FZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0EDsDdiwq5f7W72k6Nk7kffc27M29KHICkiSL1JVU7E=;
 b=X8QraMnvKlyQqIkuxoXP0uBPtWl+8XSJjOOa51rmJBHFjDeM4RUmEgXKggPVIqWgY2
 l7EXFJ+pzyVdrICbjyt9lCj0Shztcno5AxYUFn/NWzywuEBcGuwx6ewgNEuLz0jPpB2C
 pXOVZYAr+xwnc3EbbQJxZGg7Cg+xHqefQ7wVJMjhPCjCqV5OtzoqPFbebGM7UtwwOKG3
 AnyWY2211Z8gvD5IYRD3kFeFypXRfh9vPDfk4+59+LbUNk409Tlg32ZbaBGiSVLVK9JG
 KCX3cPEhCPhMeuCC86eYj0VncnipYdv5jXTeCu6hlIGAs7p/xg8pDmKiZXLEW9pkIeMa
 x9ZQ==
X-Gm-Message-State: APjAAAWn3d7wFu6BhX9Vnl0JZLgNCr1olKxMUXUCPRS/1KuMyLLyHtOe
 HFG8aGfp4/t9gj30iOZwL2Q=
X-Google-Smtp-Source: APXvYqx2s5MmQMEBXMR0enXNSoOn/QD3eR9v2XVb2TGMg485KrL3QlN9ThOn2SdVRFbQnBmNR6hnVg==
X-Received: by 2002:a1c:a952:: with SMTP id s79mr7608280wme.83.1581621096804; 
 Thu, 13 Feb 2020 11:11:36 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id o77sm4430186wme.34.2020.02.13.11.11.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 11:11:36 -0800 (PST)
Subject: Re: [resend PATCH v6 06/12] clk: mediatek: mt2701: switch mmsys to
 platform device probing
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 matthias.bgg@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie,
 mturquette@baylibre.com, sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-7-matthias.bgg@kernel.org>
 <c08e8d32-6126-7be3-4f5a-1b94a175a339@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f998ae82-fbbd-c5d8-00d6-e2196eac5a5c@gmail.com>
Date: Thu, 13 Feb 2020 20:11:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <c08e8d32-6126-7be3-4f5a-1b94a175a339@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_111139_445901_FC9A34A9 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, rdunlap@infradead.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 09/12/2019 10:58, Enric Balletbo i Serra wrote:
> Hi Matthias,
> 
> On 7/12/19 23:47, matthias.bgg@kernel.org wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> Switch probing for the MMSYS to support invocation to a plain
>> paltform device. The driver will be probed by the DRM subsystem.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>> ---
>>  drivers/clk/mediatek/clk-mt2701-mm.c | 41 ++++++++++++++++++++--------
>>  1 file changed, 29 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/clk/mediatek/clk-mt2701-mm.c b/drivers/clk/mediatek/clk-mt2701-mm.c
>> index 054b597d4a73..4a9433c2b2b8 100644
>> --- a/drivers/clk/mediatek/clk-mt2701-mm.c
>> +++ b/drivers/clk/mediatek/clk-mt2701-mm.c
>> @@ -4,14 +4,20 @@
>>   * Author: Shunli Wang <shunli.wang@mediatek.com>
>>   */
>>  
>> +#include <linux/module.h>
>>  #include <linux/clk-provider.h>
>>  #include <linux/platform_device.h>
>> +#include <linux/slab.h>
>>  
>>  #include "clk-mtk.h"
>>  #include "clk-gate.h"
>>  
>>  #include <dt-bindings/clock/mt2701-clk.h>
>>  
>> +struct clk_mt2701_mm_priv {
>> +	struct clk_onecell_data *clk_data;
>> +};
>> +
>>  static const struct mtk_gate_regs disp0_cg_regs = {
>>  	.set_ofs = 0x0104,
>>  	.clr_ofs = 0x0108,
>> @@ -79,23 +85,25 @@ static const struct mtk_gate mm_clks[] = {
>>  	GATE_DISP1(CLK_MM_TVE_FMM, "mm_tve_fmm", "mm_sel", 14),
>>  };
>>  
>> -static const struct of_device_id of_match_clk_mt2701_mm[] = {
>> -	{ .compatible = "mediatek,mt2701-mmsys", },
>> -	{}
>> -};
>> -
>>  static int clk_mt2701_mm_probe(struct platform_device *pdev)
>>  {
>> -	struct clk_onecell_data *clk_data;
>>  	int r;
>> -	struct device_node *node = pdev->dev.of_node;
>> +	struct device_node *node = pdev->dev.parent->of_node;
>> +	struct clk_mt2701_mm_priv *private;
>> +
>> +	private = devm_kzalloc(&pdev->dev, sizeof(*private), GFP_KERNEL);
>> +	if (!private)
>> +		return -ENOMEM;
>>  
>> -	clk_data = mtk_alloc_clk_data(CLK_MM_NR);
>> +	private->clk_data = mtk_alloc_clk_data(CLK_MM_NR);
>> +
>> +	platform_set_drvdata(pdev, private);
>>  
>>  	mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks),
>> -						clk_data);
>> +					private->clk_data);
>>  
>> -	r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
>> +	r = of_clk_add_provider(node, of_clk_src_onecell_get,
>> +					private->clk_data);
>>  	if (r)
>>  		dev_err(&pdev->dev,
>>  			"could not register clock provider: %s: %d\n",
>> @@ -104,12 +112,21 @@ static int clk_mt2701_mm_probe(struct platform_device *pdev)
>>  	return r;
>>  }
>>  
>> +static int clk_mt2701_mm_remove(struct platform_device *pdev)
>> +{
>> +	struct clk_mt2701_mm_priv *private = platform_get_drvdata(pdev);
>> +
> 
> I think that private->clk_data->clks is also kallocated and need to be freed?
> 
> But I think that the best approach now is to switch to use devm allocations in
> clk-mt2701-mm.c and this remove function will not be needed.
> 

This is an API change which will affect over 50 drivers. For now I'll fix it by
adding a kfree here. I will send a follow-up patch to fix it in the API.

Good catch!
Matthias

>> +	kfree(private->clk_data);
>> +
>> +	return 0;
>> +}
>> +
>>  static struct platform_driver clk_mt2701_mm_drv = {
>>  	.probe = clk_mt2701_mm_probe,
>> +	.remove = clk_mt2701_mm_remove,
>>  	.driver = {
>>  		.name = "clk-mt2701-mm",
>> -		.of_match_table = of_match_clk_mt2701_mm,
>>  	},
>>  };
>>  
>> -builtin_platform_driver(clk_mt2701_mm_drv);
>> +module_platform_driver(clk_mt2701_mm_drv);
>>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
