Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B656B11C265
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 02:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCq/EJ04z6yecicZmTYIUXzxYNHRZzXu3pH98DvWxOU=; b=OD9o0+mhMvPCSi
	Yyzn8yTIBar5/lulhI1kX6PvhavCuyip0JrjMEie8U5z6pi5hxM0xTKCzmPNFgi9x3HfAiY4FdNY+
	al/J8Tc9owBeQ9PXHG44IY1X+wv+5qEplyNBfiY6cfg9HHOQpL6beab1Rko1C/wTbOiH8QXhT0Anv
	mtAWh/ArxR9dzzhYxkBzIg0LDKXZzJTYEoivYR49RoX0RNjf0MHlCxvrrrKYeXCB2yx2ECk4esKYK
	Dp2JiCCrcKdPz2ZKxocJIhbJJo9hL/EdnGvCgnMjDJGzrjHTxSGi0zxQufyJhKkYZ+vFw5YjOWmuo
	0bjE6w1oOdEo9JcN1nKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDU5-0003JM-FA; Thu, 12 Dec 2019 01:41:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDTZ-0002lk-5S; Thu, 12 Dec 2019 01:41:10 +0000
X-UUID: 30fb14780b0245de9742b15ced8b9296-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9dmLvvMzX2gtv8uuQt32TCADineHY3exyLfiwrU7QvA=; 
 b=r0mYpAn8n4j5Tsfn+1X5YIWD7uJrUvNqAEg877U4Aok5QyETXICHfYEJCJ4b14wlutXfQ0Y+T1L1CK4AuASETy4a8q29ld/ii3i0e6bs1YZMvI40AKYvpXOsJyxHOdQ9w9gyVqLE7MVkiDXPEIJubSS+bS7ylN5FZ5eBO04tXMw=;
X-UUID: 30fb14780b0245de9742b15ced8b9296-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 528222048; Wed, 11 Dec 2019 17:41:05 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:37:30 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by mtkcas07.mediatek.inc
 (172.21.101.84) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 12 Dec 2019 09:36:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:36:24 +0800
Message-ID: <1576114588.11280.1.camel@mtksdaap41>
Subject: Re: [PATCH] soc: mediatek: cmdq: delete not used define
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Thu, 12 Dec 2019 09:36:28 +0800
In-Reply-To: <20191211185950.31358-1-matthias.bgg@kernel.org>
References: <20191211185950.31358-1-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_174109_223819_08E8EB04 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-12-11 at 19:59 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> Define CMDQ_EOC_CMD was actually never used. Delete it.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>

Thanks. :D

Reviewed-by: Bibby Hsieh <bibby.hsieh@mediatek.com>

> 
> ---
> 
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 3c82de5f9417..1127c19c4e91 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -12,8 +12,6 @@
>  #define CMDQ_ARG_A_WRITE_MASK	0xffff
>  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
> -#define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
> -				<< 32 | CMDQ_EOC_IRQ_EN)
>  
>  static void cmdq_client_timeout(struct timer_list *t)
>  {

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
