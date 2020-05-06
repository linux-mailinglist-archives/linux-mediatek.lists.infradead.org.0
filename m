Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134DE1C7BC1
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 23:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PbozdngAH7iERYwwiEQp71bOy3UDmLjNRt5V53sZM4=; b=KSz8a+WqYxheSx
	o074shYbFS+1JGYk1/yY1ZpAE1l/bdya2m7GtI4EGWat20EaJboFhj1pbta4uJkB0l9q1x0ZD244O
	3cpnSYOQgZ6gJseXIdZEBXmuv9dgebtEuaVnIN9h9wo2e1LRtleexjhkshVGmk7urnnScDPed5loM
	vmNPArt5S4Xc1dln5a96ZiBzLKM/t0CiwklUxLqTeGpLgvscC1fiTGtEfvnYEGsqiEA10IzaXEMX4
	ovGX/GxVa5w3GXAKgRi1XAvYyn1R8RKMLcRehave0WgktathEri1Gt4Ztsf3XY9OBJsVLuWzAS7XL
	GS/Zq14gdqW62TCuaajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWR8z-0000dp-HA; Wed, 06 May 2020 20:59:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWR8p-0000S7-5R; Wed, 06 May 2020 20:59:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5B3EB2A2524
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v14 01/11] dt-bindings: mediatek: Add property to mt8183
 smi-common
To: Weiyi Lu <weiyi.lu@mediatek.com>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
 <1588752963-19934-2-git-send-email-weiyi.lu@mediatek.com>
Message-ID: <7165ec9f-03ca-3020-2c34-246465094c46@collabora.com>
Date: Wed, 6 May 2020 22:59:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588752963-19934-2-git-send-email-weiyi.lu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_135943_336961_A4AFA954 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: James Liao <jamesjj.liao@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree <devicetree@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Weiyi,

Thank you for your patch. Don't forget to cc <devicetree@vger.kernel.org>,
otherwise this patch could be silently ignored.

On 6/5/20 10:15, Weiyi Lu wrote:
> For scpsys driver using regmap based syscon driver API.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  .../devicetree/bindings/memory-controllers/mediatek,smi-common.txt      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> index b478ade..01744ec 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> @@ -20,7 +20,7 @@ Required properties:
>  	"mediatek,mt2712-smi-common"
>  	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
>  	"mediatek,mt8173-smi-common"
> -	"mediatek,mt8183-smi-common"
> +	"mediatek,mt8183-smi-common", "syscon"
>  - reg : the register and size of the SMI block.
>  - power-domains : a phandle to the power domain of this local arbiter.
>  - clocks : Must contain an entry for each entry in clock-names.
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
