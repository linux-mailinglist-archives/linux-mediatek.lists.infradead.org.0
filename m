Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674B4DBEE
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 08:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgDF+2kbBbIfYuhvOKfGNulrmXX/OLaZUqvE1Q1T5Jk=; b=uh3obXgSAdYrVd
	hCMzBEVk9b61Bi7tT5KQirdBltE0lZHR9+tp+li+isymLU4TERGmvDdCxm2FBUk8beMtJpaOU9S7Z
	TTCaOpMsXfem3E5+8//nl908y5EA3WOzHp+og+gAbaQUGH0okzGMBzM/ciSMJLD8UnpTJFD6hYjST
	AP37RbegXMhVYbHXK2ThiQP1z3+Az18hIb6wISx29HunUOr8zdSblfq5lXhXscFUqijUxPDjFqQGz
	TFzjLaZfmNK23VHsDtd/TwjtrW5PT2liKko+3iZLbvt7pE2ozIIMi0W0xTL8rhZVuEJOZ/uX+FaFw
	c+kwijiQyoVzEbMoJxPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzj1-0001BT-0g; Mon, 29 Apr 2019 06:25:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzir-0000CK-AE; Mon, 29 Apr 2019 06:25:06 +0000
X-UUID: 62ede6e90d3e4917a6a22fed5f102837-20190428
X-UUID: 62ede6e90d3e4917a6a22fed5f102837-20190428
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1308972020; Sun, 28 Apr 2019 22:24:59 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:24:58 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 14:24:50 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 14:24:49 +0800
Message-ID: <1556519089.21280.0.camel@mtkswgap22>
Subject: Re: [RFC PATCH v2 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: Ryder Lee <ryder.lee@mediatek.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Date: Mon, 29 Apr 2019 14:24:49 +0800
In-Reply-To: <20190425015552.42638-2-xiaolei.li@mediatek.com>
References: <20190425015552.42638-1-xiaolei.li@mediatek.com>
 <20190425015552.42638-2-xiaolei.li@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 48BEF3448F577F6EDEDD363442C780537FA24398AAA0D472F71CE8C52AD3CC632000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_232505_361419_31475AA6 
X-CRM114-Status: UNSURE (   6.31  )
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
Cc: daniel.thompson@linaro.org, srv_heupstream@mediatek.com, richard@nod.at,
 miquel.raynal@bootlin.com, yingjoe.chen@mediatek.com,
 jorge.ramirez-ortiz@linaro.org, boris.brezillon@bootlin.com,
 linux-mtd@lists.infradead.org, yellowriver2010@hotmail.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-04-25 at 09:55 +0800, Xiaolei Li wrote:
> It is allowed to use MTK NAND driver with GPL-2.0 or MIT license.
> But now it is only licensed as GPL-2.0.
> So re-license it as dual MIT/GPL.
> 
> Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
> Acked-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Acked-by: Ryder Lee <ryder.lee@mediatek.com>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
