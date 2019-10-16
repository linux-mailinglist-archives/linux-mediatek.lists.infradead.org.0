Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0051FD8530
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 03:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNKdtmW2CbD9VA4xfVZ+1j1TFLIOnvoHasaqEg6/oHQ=; b=gT3lRcQEBFuttU
	UGIFpwXVTn229bKcUQuNq7zZaMRxRyjeefgJE2PuAHaxw8awVukurV2soHA09NpGQw49tjsJopjrj
	1gR6n/RVywhcFu/8C0DWitwjfSiRs4FPTmzy3BuyE+rNR33+camIZssQl1mGWsLBLxSL1lbWdOIwm
	lyAMUhXCPtCu+epy8tqAf7/nKuEfgK7Y0SqvzJq04SQqj0MsPjeYDqRjvDQMpFrtJVPc/LipvYoR1
	/s+2Q12LKaZf/OrA2gm1J0cKwJ7+ZmsSiSsW8OLnTJlJJPrXcgis/E/u+jgwF7CFHWprbHvvzvnh6
	gvn8+ecJa9d3i+N+yWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKXje-0002LB-E8; Wed, 16 Oct 2019 01:04:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKXjL-00029h-QX; Wed, 16 Oct 2019 01:04:01 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CD32A1265001C;
 Tue, 15 Oct 2019 18:03:56 -0700 (PDT)
Date: Tue, 15 Oct 2019 18:03:56 -0700 (PDT)
Message-Id: <20191015.180356.268577945716013325.davem@davemloft.net>
To: Mark-MC.Lee@mediatek.com
Subject: Re: [PATCH net,v3 0/2] Update MT7629 to support PHYLINK API
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191014071518.11923-1-Mark-MC.Lee@mediatek.com>
References: <20191014071518.11923-1-Mark-MC.Lee@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 15 Oct 2019 18:03:57 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_180359_859312_193DE4AB 
X-CRM114-Status: UNSURE (   5.73  )
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
 nelson.chang@mediatek.com, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org, opensource@vdorst.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: MarkLee <Mark-MC.Lee@mediatek.com>
Date: Mon, 14 Oct 2019 15:15:16 +0800

> This patch set has two goals :
> 	1. Fix mt7629 GMII mode issue after apply mediatek
> 	   PHYLINK support patch.
> 	2. Update mt7629 dts to reflect the latest dt-binding
> 	   with PHYLINK support.

Series applied, thank you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
