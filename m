Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A62FF6CCD
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 Nov 2019 03:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zuQNkfhOPfa/DjAjeq+1gB4cc/I215xub4WOasDHoFM=; b=Ripxk/cDAZzt3r
	SrKvGDa2dha5WsavfLps8teptaQyU4vpYkAx9p5qhEgWDJJWtetyULQRmxIV4mpTBKrW8/ogCUqts
	skgihUsfPOnizs7fctAyshmnxVZPGcvEOqztnI/894uXC0ZFOUluh42VCqfRkw6xd7W5KUHpG/OAH
	6yMDYX7gevM5kEPvzYSD5nVrenI16D/eCr7CFo3+fwgOfZKqaI1qJ9w3GIL0v3gW1hIj14i6pgBf3
	tAxAe/uTiFQ5K/9uO7vaHntL1bSanXgzLfX2RtbemJBIUBrvfZnG2y+w/yhOFY5xVS42v3UJ0xFXo
	tumd3dsGG53+5ch3QD7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTzTY-0001WD-Ct; Mon, 11 Nov 2019 02:30:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTzTU-0001Ve-Vy
 for linux-mediatek@lists.infradead.org; Mon, 11 Nov 2019 02:30:42 +0000
X-UUID: 8f0a7d2499b64172a71220ae27be56b3-20191110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=jHHmqzNubR6Ei6BpDLjgBGHkGAoO17EffQ+vZ8QstxA=; 
 b=B667+f/fRpQJ+JkLbdjoQhyPbNJzjR4v/prq/sKzijeryJ/KuCfzw9Gpqx+OsDWyb5E72sRgEktOHZeE8EIdl/XtyB6dflXMPWNu7QeeO4D7IJBaghQuo5rMhGviTiv8i8V2UM7w4ws8bscd2eyH9XLPdVICJuI/bPVwMZBbBOU=;
X-UUID: 8f0a7d2499b64172a71220ae27be56b3-20191110
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 54814140; Sun, 10 Nov 2019 18:30:42 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 10 Nov 2019 18:30:32 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 10:30:32 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 11 Nov 2019 10:30:30 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] soc: mediatek: add SMC fid table for SIP interface
Date: Mon, 11 Nov 2019 10:30:01 +0800
Message-ID: <1573439402-16249-1-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_183041_037014_F893BD00 
X-CRM114-Status: UNSURE (   3.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

soc: mediatek: add SMC fid table for SIP interface

1. Add a header file to provide SIP interface to ATF
   for clients, please define MTK_SIP_XXX  with specific ID

2. Add AUDIO SMC fid
   mtk sip call example:
   arm_smccc_smc(MTK_SIP_AUDIO_CONTROL,
                 MTK_AUDIO_SMC_OP_DRAM_REQUEST,
                 0, 0, 0, 0, 0, 0, &res)


Eason Yen (1):
  soc: mediatek: add SMC fid table for SIP interface

 include/linux/soc/mediatek/mtk_sip_svc.h |   28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
