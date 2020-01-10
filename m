Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE3D136C0F
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Jan 2020 12:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwU2FGzhAPCiEzZHn9gMwWC6hG+Q5GSkAfDkOcqZPnE=; b=HzH5ZUfMz465kZ
	CVmG+X71Qp2DeXamdQRAZ2+y8qfvEtaOilEKhJz+JmV7bpV/RFDhnd4+J6nZGUae5ccPtMQu6zVZy
	a/jE18h499vMpMoCBTu0/75Q0bDMPP+YCiRkrt+TgvVad259V+bMO72tMfYGjqnFempUs0wwkkE7U
	h10vwYxtx+Ql/CIfYxLAWdEGWjAUeOEdX3CdL4O2fkugmuxUzYYAtZmWf2vFRu1sZHsAyadacduXw
	SUHX14A5/f+RJx74j3OPILKBrlnEma1T1Eb6TlyO+NyJl084Z8v0ZGN6yl9FpTo0TCNbQmWazumr3
	kqHg2hyDqE2k9vSPMWkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipscf-000869-Oy; Fri, 10 Jan 2020 11:38:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipscI-0007vP-H6; Fri, 10 Jan 2020 11:38:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 08AD7293976
Subject: Re: [PATCH v2 1/2] dt-bindings: arm64: dts: mediatek: Add mt8173 elm
 and hana
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200110073730.213789-1-hsinyi@chromium.org>
 <20200110073730.213789-2-hsinyi@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <dec0aab5-8610-9b7c-1ba1-8ac05f700b3f@collabora.com>
Date: Fri, 10 Jan 2020 12:38:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200110073730.213789-2-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_033814_699679_7EFCFC06 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Hsin-Yi,

Just a nit that is most a decision of the maintainer ...

On 10/1/20 8:37, Hsin-Yi Wang wrote:
> Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> SoC.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Tested with patch 2 applied and saw that there is no errors with dtbs_check.

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
> Changes in v2:
> - fix dtbs_check errors, use const instead of enum
> ---
>  .../devicetree/bindings/arm/mediatek.yaml     | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 4043c5046441..5272899b08fa 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -84,6 +84,33 @@ properties:
>            - enum:
>                - mediatek,mt8135-evbp1
>            - const: mediatek,mt8135
> +      - description: Google Elm (Acer Chromebook R13)
> +        items:
> +          - const: google,elm-rev8
> +          - const: google,elm-rev7
> +          - const: google,elm-rev6
> +          - const: google,elm-rev5
> +          - const: google,elm-rev4
> +          - const: google,elm-rev3
> +          - const: google,elm-rev2
> +          - const: google,elm-rev1
> +          - const: google,elm
> +          - const: mediatek,mt8173
> +      - description: Google Hana (Lenovo Chromebook and more)

nit: and more? How many? I'd expect the commercial model names here

Lenovo Chromebook C330?

Thanks,
 Enric

> +        items:
> +          - const: google,hana-rev6
> +          - const: google,hana-rev5
> +          - const: google,hana-rev4
> +          - const: google,hana-rev3
> +          - const: google,hana-rev2
> +          - const: google,hana-rev1
> +          - const: google,hana-rev0
> +          - const: google,hana
> +          - const: mediatek,mt8173
> +      - description: Google Hana rev7 (Poin2 Chromebook 11C)
> +        items:
> +          - const: google,hana-rev7
> +          - const: mediatek,mt8173
>        - items:
>            - enum:
>                - mediatek,mt8173-evb
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
