Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB399889E
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 02:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/y3L45+dwqKaB0G1qAZBry3DMNmfJfKbuNWV6qWrfc=; b=n4rRxKcOzmgWOx
	c+K4/aRS6o/aouD5HAM3H5HqJEzNXUxHXQX/MseEn90I7RkPeD9XXqk8xrnOlRhgA+mF4eLgVeh9L
	3QMLozI8bS2RFhdwEEd94XLTywbCCTj1T1T2PCN4rVVDY2J5AagPyPZVpyaiFzjz8Mz6PQBUbIVem
	bNsi2gFDaxBvxEcaewlZ5J0KXZgruxvN+22rq781JnE1ap6XF+oGeT/OTH8UM3usu+AznSs9LrbpJ
	z/bP1DmDJQ9g1Hy0rzVeWdebIIRD1w0M38Cg8+wSQMj2Y1SuPNPWovt/JGJSF+umzzKQ2HVoL9ROV
	Yio4y8T5Q8OUc/SKeCuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bCu-00013M-3N; Thu, 22 Aug 2019 00:44:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bCr-00012w-AH
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 00:44:02 +0000
X-UUID: b7a8d7f0b8414b44a327c3441bb04c46-20190821
X-UUID: b7a8d7f0b8414b44a327c3441bb04c46-20190821
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1064823733; Wed, 21 Aug 2019 16:43:42 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 17:43:41 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 08:43:43 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 08:43:33 +0800
Message-ID: <1566434617.14794.0.camel@mtkswgap22>
Subject: Re: [PATCH 04/11] pinctrl: mediatek: update pinmux defintions for
 mt6779
From: Mars Cheng <mars.cheng@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 22 Aug 2019 08:43:37 +0800
In-Reply-To: <20190821185025.GA18525@bogus>
References: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
 <1564996320-10897-5-git-send-email-mars.cheng@mediatek.com>
 <20190821185025.GA18525@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174401_359149_4D03538F 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wendell Lin <wendell.lin@mediatek.com>, Ivan Tseng <ivan.tseng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 13:50 -0500, Rob Herring wrote:
> On Mon, Aug 05, 2019 at 05:11:53PM +0800, Mars Cheng wrote:
> > Add devicetree bindings for Mediatek mt6779 SoC Pin Controller.
> 
> checkpatch.pl reports typo in subject.
> 
> Otherwise,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 

got it, will fix the typo in v3. Thanks for reviewing.

> > 
> > Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> > Signed-off-by: Andy Teng <andy.teng@mediatek.com>
> > ---
> >  include/dt-bindings/pinctrl/mt6779-pinfunc.h | 1242 ++++++++++++++++++++++++++
> >  1 file changed, 1242 insertions(+)
> >  create mode 100644 include/dt-bindings/pinctrl/mt6779-pinfunc.h



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
