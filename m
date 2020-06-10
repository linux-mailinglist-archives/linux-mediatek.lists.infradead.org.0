Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5521F4ED9
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jun 2020 09:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOaBR0D85d9M48tatnSxlR1OSsXCYkhyw9GzPk33VzE=; b=e28uyeeZdudc9H
	24UQtuQ5Yp52RHPof1bEcgUAmQUv3qKqEJLF/ifYa3D/4QID9DtjhLweGlHBkL81mXTN20lxUy2Ol
	lEuYW/WTbitq974CwzIK0+QaZor3fVtOK0d7RSlWrqd+OHjiQyMkkThmBnP0rXckYkGydcPBgGfOu
	Mxoz/BIAryK56EPO7bptZlvTpCwTy0D2zo55jIPdZsVpjTATkVrHJ59vT9duIbfbD29KCstPzZjQw
	QhReQnzEAcz2c+pZ+ep12cDbpDhg52Np2M77uNhBfAwbqNVOmFWSb+7KYDhfXA1zHwTezac8k3MT4
	EzyOXAqy6Yi3136OtczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiv8B-0004aB-Oa; Wed, 10 Jun 2020 07:26:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiv81-0004RT-DH; Wed, 10 Jun 2020 07:26:30 +0000
X-UUID: 09cf866490b64c8fac84ade77dae2ce1-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=oVjcbyJtHSMVDm6RhFxQD8NCsbEcu2YvovIvKyEf9WA=; 
 b=IUTBTpaBBmuA2LUlB2T48toWx3CdAIxf4jwMN/vX+EWykLSG+cW3QoD+NTz4iRPhdqNM6a6v2iqe40C8qev9NQ3RkkD0D7pWCTNMzoZM9DaFxdOHyylza95xCUc8rZyztB63F/bl4/TLPY8pahpKqjhvwQyWLQydopZGE1GTH6c=;
X-UUID: 09cf866490b64c8fac84ade77dae2ce1-20200609
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1054550146; Tue, 09 Jun 2020 23:26:07 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 00:26:26 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 15:26:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 10 Jun 2020 15:26:24 +0800
Message-ID: <1591773984.14659.14.camel@mtksdaap41>
Subject: Re: [PATCH v9 1/4] dt-bindings: power: avs: add mtk svs dt-bindings
From: Roger Lu <roger.lu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 10 Jun 2020 15:26:24 +0800
In-Reply-To: <20200609173636.GA1125574@bogus>
References: <20200609104534.29314-1-roger.lu@mediatek.com>
 <20200609104534.29314-2-roger.lu@mediatek.com>
 <20200609173636.GA1125574@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_002629_453336_D579AACF 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear Rob,

Thanks for the feedback.

On Tue, 2020-06-09 at 11:36 -0600, Rob Herring wrote:
> On Tue, 09 Jun 2020 18:45:31 +0800, Roger Lu wrote:
> > Document the binding for enabling mtk svs on MediaTek SoC.
> > 
> > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > ---
> >  .../bindings/power/avs/mtk_svs.yaml           | 141 ++++++++++++++++++
> >  1 file changed, 141 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
> > 
> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/power/avs/mtk_svs.example.dts:22:18: fatal error: dt-bindings/power/mt8183-power.h: No such file or directory
>          #include <dt-bindings/power/mt8183-power.h>
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> scripts/Makefile.lib:312: recipe for target 'Documentation/devicetree/bindings/power/avs/mtk_svs.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/power/avs/mtk_svs.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1300: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1305800
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.

Oops, mt8183-power.h is added in below patch which is still under review
in patchwork. In order to have complete SVS description, mt8183-power.h
is added in mtk_svs.yaml.

Therefore, this issue will be fixed after patch including mt8183-power.h
is merged.

#dt-bindings/power/mt8183-power.h
https://patchwork.kernel.org/patch/11562521/

> 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
