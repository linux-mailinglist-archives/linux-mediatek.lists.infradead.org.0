Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E6819534F
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Mar 2020 09:52:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DR/sA2SrwUFWnLFdrlVgQPCkCGolr1T+3DeHzofujF8=; b=m9ZMNVWhL1e/JY
	1FEip2xOJp6s2gUilURj5EC0Th0u6enPLv9jkiUYg03tfQm6THLfudnzHEv/2auf6Z7atqtSTbkbw
	nq3Vlam0vP7D7ujrt33MJJdIlFfLLvvTzQm9jMWIwAFSxRU4VQ/vTD9qEkcJ0l7HHtmR2kWJhmMOP
	OiAedzQhSRYJSZKTL3zsdbpea3WcyfoTqxztAOpK0nhCci+n9VNgr+VGG+1G5kw2Oaz9XKgJ87pKT
	pqfkDJSSneZEaYKqw7LqYS+yspnnVJfJFE0b/Y98D1Aylm80yunG0pB40yArdX8in6n5SR+Zo90Pc
	C/gCWtCFSdrS3rzxxZzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHkia-0007zb-0W; Fri, 27 Mar 2020 08:51:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHkiK-0007oD-Lp; Fri, 27 Mar 2020 08:51:41 +0000
X-UUID: 81f65cd145984718ba1a1d2132e34295-20200327
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=QTjXbM/ov07PfVZIe9dgG0GC3IDbO7iekkr5VscE9FI=; 
 b=k5VeB1j/5ZqqW8d5/i8xncz/SZv4CO4Q9AZ83Sn/vGKd9qwR9Np7Cgmio9MQ6SRqhbA4GRW0n20cALfT0fLo6dsEtNNyHskZRRnHBYPOkqhuVkUkEeMqCj+xSv2DyLkzNlhqJDrIBRKQmJFDLFFEn7iuI3htH46DKj+L17J9mSQ=;
X-UUID: 81f65cd145984718ba1a1d2132e34295-20200327
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1700483153; Fri, 27 Mar 2020 00:51:36 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 01:51:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 16:51:34 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Mar 2020 16:51:32 +0800
From: Yong Mao <yong.mao@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v2] mmc: mediatek: fix SDIO irq issue
Date: Fri, 27 Mar 2020 16:51:36 +0800
Message-ID: <1585299097-6897-1-git-send-email-yong.mao@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_015140_724430_2D84BE88 
X-CRM114-Status: UNSURE (   4.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
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
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

yong mao (1):
  mmc: mediatek: fix SDIO irq issue

 drivers/mmc/host/mtk-sd.c | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
