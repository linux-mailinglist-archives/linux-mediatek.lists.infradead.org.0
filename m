Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1144418AE49
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Mar 2020 09:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq9JQ3CtxqcYdQj5AvJ8aHUdPX+HuL0iJF+JfouHdHE=; b=MlBYVFvDdX1+p0
	1XcsioZe3H82eOIivOz/qNDX5qCRcyowpgapD1n+sviYiMoPthuF7lxTphsy51T6A8fqlw+VM1x3I
	5qPB3DXdmTIz0Lolivrdr6AeRnoZNYmjNJ3RMOK/JuSg+CxIewu3OQi7CGcPaTc1iik9tItSfzcbz
	hTyvS2P5PBeJ/Kj8gw9PHn1mEtkplEQxZPIlk7ltb8oiHB/z2uNVDYzV4a0dipXkHPJ22n9+z0a0X
	ZjkUQniDyT5IJ29MbTCKa8aAyxV32VHuxj+qc1e6fc3AzqinM76X2Bws0EiwQI3If+CD33vFm0ziC
	zHzGjAQ5uAV2T4NjH7mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEqUh-0007AR-Pz; Thu, 19 Mar 2020 08:25:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEqUf-00079q-3q
 for linux-mediatek@lists.infradead.org; Thu, 19 Mar 2020 08:25:34 +0000
X-UUID: aee97f8f2f3d450d97b8871b5ab748fb-20200319
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=iRLB6NyH9Dw1QuDRyGg/3cbLaE61cSAcOzKDspWyGNs=; 
 b=tZDNpEGqVCYzt4s6Ta8FMslDEjhsfLKenpIpG0WqmM+iy/ZJqOSXANY4Wax7178gpFgjOw+bBbjgFeXEXEOiG20Rdz1Fx9bEpqWxiRpEeEeLltgbTBG4gUZcfYFRR4vjAcCec0grVhnDO3DXzv3k6nDGiz71Iy9gnHxkSGf7Q24=;
X-UUID: aee97f8f2f3d450d97b8871b5ab748fb-20200319
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1823255719; Thu, 19 Mar 2020 00:25:26 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 01:25:26 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 16:24:01 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Mar 2020 16:25:36 +0800
Message-ID: <1584606301.29104.2.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/6] dt-bindings: pinctrl: add bindings for MediaTek
 MT6779 SoC
From: Hanks Chen <hanks.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 19 Mar 2020 16:25:01 +0800
In-Reply-To: <20200318223842.GA31707@bogus>
References: <1584454007-2115-1-git-send-email-hanks.chen@mediatek.com>
 <1584454007-2115-2-git-send-email-hanks.chen@mediatek.com>
 <20200318223842.GA31707@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_012533_163548_9939EC7F 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>, Linus
 Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2020-03-18 at 16:38 -0600, Rob Herring wrote:
> On Tue, 17 Mar 2020 22:06:42 +0800, Hanks Chen wrote:
> > From: Andy Teng <andy.teng@mediatek.com>
> > 
> > Add devicetree bindings for MediaTek MT6779 pinctrl driver.
> > 
> > Change-Id: I92586369564948f2628f70421bcd70668f132c4f
> > Signed-off-by: Andy Teng <andy.teng@mediatek.com>
> > ---
> >  .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml  |  208 ++++++++++++++++++++
> >  1 file changed, 208 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> warning: no schema found in file: Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml: ignoring, error parsing file
> Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml:  while parsing a block collection
>   in "<unicode string>", line 28, column 5
> did not find expected '-' indicator
>   in "<unicode string>", line 29, column 5
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.example.dts] Error 1
> Makefile:1262: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1256429
> Please check and re-submit.
> 

My bad, should update the format. will do in v4.

Thanks for reviewing.


> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
