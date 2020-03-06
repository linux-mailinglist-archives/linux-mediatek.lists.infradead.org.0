Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C04E17B481
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 03:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gL72MSjA1qAsLVO+JiiIATIf+XDFD/UWA5n75cCjl34=; b=nLNjs1BgGzOnPa
	XjQDiYa3FE42lToXXVrS4a7E4ugQ5egOmZsvOBObarwLL2xbR+C/+vQbtACh5cyr3OoSIseRg5dfV
	OY+DVaLrtn+h6dcBa+nIAPm4Ukbk1TAftFRxPUtPsu5MwUsY0sPOFfrFPSFg0ZKPhhLlvgYDO8ERH
	tkokobNp8Ph6sVcds1uRZVcMsMzODZ9VxM/2YSdwUCONiMGb5qSyviTdODdQWnlzKOgGSCMnf6xvq
	cTLCTVcDM4Zf4hLZI8mRVpz4ZDf4Yuy37i1fqcbftLBAlxSJMZCwup6Q/6SRNHI9qWynRt219EOgw
	PkcQu8m9yfie4NFdSCpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA2ou-0004V0-Pc; Fri, 06 Mar 2020 02:34:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA2oj-0004O5-DQ; Fri, 06 Mar 2020 02:34:27 +0000
X-UUID: 3b37ddd7469c412185d0e0e173e61948-20200305
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=lw7Z2hh6lxCttqw2IBWx1RQ1VaA6UHtHaJjaKiScxsU=; 
 b=t+WEOMVNd7ZhhmTf2qEIHa8Y/IyHKOYig5O5oZb4Fk30Hb7d0QsXIXTRG+ZWyM32G1vE8JjGlnWwJ6uaGCjKTeqwRik5tDn4aavoimZgLLizcCDFWRWz9loSPpm02J4aomj3IapNoQ+cPaeLH6fRbGgxR9cTWWPg0SzGj0iXgns=;
X-UUID: 3b37ddd7469c412185d0e0e173e61948-20200305
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <nick.fan@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 648841798; Thu, 05 Mar 2020 18:34:18 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 18:34:16 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Mar 2020 10:33:05 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Mar 2020 10:34:16 +0800
Message-ID: <1583462055.4947.6.camel@mtksdaap41>
Subject: Re: [PATCH v4 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
From: Nick Fan <nick.fan@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 6 Mar 2020 10:34:15 +0800
In-Reply-To: <CANMq1KAVX4o5yC7c_88Wq_O=F+MaSN_V4uNcs1nzS3wBS6A5AA@mail.gmail.com>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-2-drinkcat@chromium.org>
 <20200225171613.GA7063@bogus>
 <CANMq1KAVX4o5yC7c_88Wq_O=F+MaSN_V4uNcs1nzS3wBS6A5AA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_183425_460222_6FB7FADF 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Tomeu
 Vizoso <tomeu.vizoso@collabora.com>,
 Devicetree List <devicetree@vger.kernel.org>, David
 Airlie <airlied@linux.ie>, lkml <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Sj Huang <sj.huang@mediatek.com>,
 Mark Brown <broonie@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi
 Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Sorry for my late reply.
I have checked internally.
The MT8183_POWER_DOMAIN_MFG_2D is just a legacy name, not really 2D
domain.

If the naming too confusing, we can change this name to
MT8183_POWER_DOMAIN_MFG_CORE2 for consistency.

Thanks

Nick Fan

On Wed, 2020-02-26 at 08:55 +0800, Nicolas Boichat wrote:

> +Nick Fan +Sj Huang @ MTK
> 
> On Wed, Feb 26, 2020 at 1:16 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Fri, Feb 07, 2020 at 01:26:21PM +0800, Nicolas Boichat wrote:
> > > Define a compatible string for the Mali Bifrost GPU found in
> > > Mediatek's MT8183 SoCs.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> > > ---
> > >
> > > v4:
> > >  - Add power-domain-names description
> > >    (kept Alyssa's reviewed-by as the change is minor)
> > > v3:
> > >  - No change
> > >
> > >  .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > > index 4ea6a8789699709..0d93b3981445977 100644
> > > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > > @@ -17,6 +17,7 @@ properties:
> > >      items:
> > >        - enum:
> > >            - amlogic,meson-g12a-mali
> > > +          - mediatek,mt8183-mali
> > >            - realtek,rtd1619-mali
> > >            - rockchip,px30-mali
> > >        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> > > @@ -62,6 +63,30 @@ allOf:
> > >            minItems: 2
> > >        required:
> > >          - resets
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: mediatek,mt8183-mali
> > > +    then:
> > > +      properties:
> > > +        sram-supply: true
> > > +        power-domains:
> > > +          description:
> > > +            List of phandle and PM domain specifier as documented in
> > > +            Documentation/devicetree/bindings/power/power_domain.txt
> > > +          minItems: 3
> > > +          maxItems: 3
> > > +        power-domain-names:
> > > +          items:
> > > +            - const: core0
> > > +            - const: core1
> > > +            - const: 2d
> >
> > AFAIK, there's no '2d' block in bifrost GPUs. A power domain for each
> > core group is correct though.
> 
> Good question... Hopefully Nick/SJ@MTK can comment, the non-upstream DTS has:
> gpu: mali@13040000 {
> compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
> power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>;
> ...
> }
> 
> gpu_core1: mali_gpu_core1 {
> compatible = "mediatek,gpu_core1";
> power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>;
> };
> 
> gpu_core2: mali_gpu_core2 {
> compatible = "mediatek,gpu_core2";
> power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> };
> 
> So I picked core0/core1/2d as names, but looking at this, it's likely
> core2 is more appropriate (and MT8183_POWER_DOMAIN_MFG_2D might just
> be a internal/legacy name, if there is no real 2d domain).
> 
> Thanks.
> 
> > Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
