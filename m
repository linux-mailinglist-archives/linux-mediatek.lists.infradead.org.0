Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB551FD168
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 Nov 2019 00:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNXv3+YK1BxYt3PAwpKuBsNIg23uERh5A+Dl3eJ+MV4=; b=InmHhelVidIlnG
	kJprmTIxaB/2lZkM9uAH8Ua/HYxtCTCgbyI7fFFLPmasu3XDy6D9+TbSxQtczytQyyh/Q4HH1y2Xh
	zzUUvYrsg2e7momATJbGDqV2w1Kxa7Sm9hWneJoNKDaTGrVZUjhuISK7uX+YQyRez2AvCUDV60Z51
	pj/HBZ6tWN2kHUaw60JPjUUcOQH5Z1HMuvTAiRn6TU/ww9u0PYvtuLkNsrYruzAmpLSh+YcMHhrF1
	Vwg7J7M0Fscxrwdo6iXwC6DDBU9pcHg4XmVKw/+d56Csx9hQ/4EYOMO/94Wiqt+Ei7wRaGO9TnhSg
	GHV4f5h07/pRu81yHJaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVOJL-0008La-Ak; Thu, 14 Nov 2019 23:13:59 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVOJ8-0008Ar-86; Thu, 14 Nov 2019 23:13:48 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6FC1014AC47DD;
 Thu, 14 Nov 2019 15:13:41 -0800 (PST)
Date: Thu, 14 Nov 2019 15:13:40 -0800 (PST)
Message-Id: <20191114.151340.735858877920708489.davem@davemloft.net>
To: Mark-MC.Lee@mediatek.com
Subject: Re: [PATCH net,v3 0/3] Rework mt762x GDM setup flow
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
References: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 Nov 2019 15:13:41 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_151346_287050_B3DDDFFD 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, jakub.kicinski@netronome.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: MarkLee <Mark-MC.Lee@mediatek.com>
Date: Wed, 13 Nov 2019 10:38:41 +0800

> The mt762x GDM block is mainly used to setup the HW internal
> rx path from GMAC to RX DMA engine(PDMA) and the packet
> switching engine(PSE) is responsed to do the data forward
> following the GDM configuration.
> 
> This patch set have three goals :
> 
> 1. Integrate GDM/PSE setup operations into single function "mtk_gdm_config"
> 
> 2. Refine the timing of GDM/PSE setup, move it from mtk_hw_init 
>    to mtk_open
> 
> 3. Enable GDM GDMA_DROP_ALL mode to drop all packet during the 
>    stop operation

Series applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
