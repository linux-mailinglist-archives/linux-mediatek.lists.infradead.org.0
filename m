Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FDB17EA5
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 18:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1bSeRZfUtLNg4W8695A5Z4KgNB53qZ/fb7SWvx8bwc=; b=LagYc2+wuzpn7G
	W483jO6zHwMEufZZEnB6eB9QWfWx0hbJXGWqm/hnrSPAfaR5LM++fkJVm/oZO2IHDZMDzoTMW5u/O
	gUZ1d9etiCwP6iBX42kc/rG9E3aVSrgW3tzttrtOWVQL1AtSrjb6AIsbAXdYqusUXxGqRVpUf+Q0j
	vYiQiMn3gX8nZGfxCW1vZNhOfL6qT9LeW1+XEXY4sy0/F0yxueU95tiVbRSOqaKar8ta3i9SZFqjI
	7/NBFIkUlrH2QEpeU3zX8wYn+aoRR/vIvb/iESkBxsPEcBSwtzhMkMf4QjaRxA09gYgIKv0smpyKC
	+kSRn3azGjCTLVikcQBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPup-0003SW-8Z; Wed, 08 May 2019 16:59:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPul-0003SB-Sv
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 16:59:33 +0000
X-UUID: db20acfe12e94843ba7a20b5359fe2eb-20190508
X-UUID: db20acfe12e94843ba7a20b5359fe2eb-20190508
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 415619595; Wed, 08 May 2019 08:59:25 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 09:59:24 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 00:59:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 9 May 2019 00:59:16 +0800
Message-ID: <1557334756.20369.11.camel@mtksdaap41>
Subject: Re: [PATCH v5 0/3] mt8183 emi driver support
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Xi Chen <xixi.chen@mediatek.com>
Date: Thu, 9 May 2019 00:59:16 +0800
In-Reply-To: <1557297478-29778-1-git-send-email-xixi.chen@mediatek.com>
References: <1557297478-29778-1-git-send-email-xixi.chen@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: EE4CD0392AD13ECA6548C79609D6BF2E61D2FCF6D09459AE2302DC9FB9B41B152000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_095931_935008_FCFDE99B 
X-CRM114-Status: UNSURE (   4.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: matthias.bgg@gmail.com, mark.rutland@arm.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


On Wed, 2019-05-08 at 14:37 +0800, Xi Chen wrote:
> Provide emi bandwidth interface.


Why do you send so many versions of same driver in 1 day?
Please always add change history when sending new version.

Joe.C



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
