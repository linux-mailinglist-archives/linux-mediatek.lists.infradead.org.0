Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8930CAB5A6
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 12:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONCpL2HxeK/vhxouXsWgyRTSf27Z18eiHAag1qsUr3o=; b=neO4SWnvbBkaC0
	Se3lZLuYARgWldfNEsTRikRNrWdD284cX3GfDx4c0/wRSH+GDMw2b1wT9aKpki+iQ8Vj/LywHZWOh
	KtFXDOU6D25Kzf8EWPwFbriIaHwaDJjJ0hilaYLKU82BSocVH6yvH0zw+RgGSm7aJY+NqQ/6Kse8O
	0Vxbc4JXnJ6Ck640eRq8XbTITtw3E6rwX7aaOukyMWGJoR1e9Fd8QfIub1/0rM4zc18ee4lVbRX99
	ArmDx9b6vR/EMNY5jzCPRxt1UDeHO0QtS3fVkL3m8AIHn8jjreR3+KFXeXjbsyMRfHx/gnpCgd9BS
	kJ8eARP/1rlgw+uCOTVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BHj-00087t-CW; Fri, 06 Sep 2019 10:16:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BHf-00087W-SO; Fri, 06 Sep 2019 10:16:05 +0000
X-UUID: 31271109004d4047b33d2b00b9938a14-20190906
X-UUID: 31271109004d4047b33d2b00b9938a14-20190906
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1407081569; Fri, 06 Sep 2019 02:15:58 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 03:15:56 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 18:15:50 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Sep 2019 18:15:50 +0800
Message-ID: <1567764953.472.2.camel@mtksdaap41>
Subject: Re: [PATCH v5 0/3] PM / AVS: SVS: Introduce SVS engine
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>
Date: Fri, 6 Sep 2019 18:15:53 +0800
In-Reply-To: <20190906100514.30803-1-roger.lu@mediatek.com>
References: <20190906100514.30803-1-roger.lu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BC4C79346B1AD8DE4D01B67A379430A73C2A7576C913D66AAA878836F8AEDA7A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031603_926259_35B9962A 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, HenryC
 Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com,
 Fan Chen <fan.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias
 Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Excuse me, I forgot to add "changes since" below. Add it back now.

On Fri, 2019-09-06 at 18:05 +0800, Roger Lu wrote:
> 1. SVS driver use OPP adjust event in [1] to update OPP table voltage part.
> 2. SVS dts node refers to CPU opp table [2] and GPU opp table [3].
> 3. SVS dts node refers to thermal efuse [4] and PMIC regulator [5].
> 
> [1] https://patchwork.kernel.org/patch/11092245/
> [2] https://patchwork.kernel.org/patch/10934123/
> [3] https://patchwork.kernel.org/patch/11132381/
> [4] https://patchwork.kernel.org/patch/11093655/
> [5] https://patchwork.kernel.org/patch/11110493/

changes since v4:
- Add SVS dts node patch in SVS patch series.

> Roger Lu (3):
>   dt-bindings: soc: add mtk svs dt-bindings
>   arm64: dts: mt8183: add svs device information
>   PM / AVS: SVS: Introduce SVS engine
> 
>  .../devicetree/bindings/power/mtk-svs.txt     |   88 +
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   16 +
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      |   38 +
>  drivers/power/avs/Kconfig                     |   10 +
>  drivers/power/avs/Makefile                    |    1 +
>  drivers/power/avs/mtk_svs.c                   | 2075 +++++++++++++++++
>  include/linux/power/mtk_svs.h                 |   23 +
>  7 files changed, 2251 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
>  create mode 100644 drivers/power/avs/mtk_svs.c
>  create mode 100644 include/linux/power/mtk_svs.h



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
