Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD93A11FFB4
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Dec 2019 09:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NFY/DDZ6F5SISQEE5vXFFjJZoczi9bhYWZwSvJpzPmI=; b=hqY5O78f/FYmCu
	6rFsnQeG4CIIPRP3KfK+BJ5XnwYIwNALPkjgvSw/s+/1yxIPNMa2I+p6YlpoWOZiPyPADPv9BYsis
	I73AE8YLo0mXU2bNt15/zHsKJRFGyY/iDw+dddx+C4bZ56eHWrGxTrLau9985TT7/FgYSs4T3s1It
	qqJ8sRg9irZmtMZDuwmJCoL8dAf1NSgCq1o1v95MXCZBiqHEZ5MdDMXa+vqyqSry9LlZ8snDf77qb
	vvByOmjJNDR4G1ItvaJ6NfWxvwQr4tWaQ5ouJnSHaXbb58HR0cbsF8yvjWIxle5KOKFRFLOibrP0o
	+Eye5DtsvswR+vbhl36w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igllC-0004e6-CQ; Mon, 16 Dec 2019 08:29:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igll9-0004d3-2C
 for linux-mediatek@lists.infradead.org; Mon, 16 Dec 2019 08:29:44 +0000
X-UUID: 26408f9bf84f432d84fc9aed16d4cb44-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=WhzTcd+pTtNcgJzwX1U6kGe1zUfl6N1bLB7CoWeNiCM=; 
 b=pdxpYAKb3p5SBOhwKMI0nXn6e91C/Mnd1pScxpMhg+9t4qnYn5CFm5HQTpLJH8x3glFGrHQL29Oq64sWToLM4HCW3ErvJbrGvmUM9Q7lI/RqXwWNLWqAMaE4AH9/J6PpYQY572osI3wjM33DS4VvTLWFswJE5O8coCaqsQnn4FQ=;
X-UUID: 26408f9bf84f432d84fc9aed16d4cb44-20191216
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 652498585; Mon, 16 Dec 2019 00:29:36 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 00:29:53 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 16 Dec 2019 16:29:53 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Mon, 16 Dec 2019 16:29:15 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH 0/4] Config mipi tx drive current and impedance
Date: Mon, 16 Dec 2019 16:29:33 +0800
Message-ID: <20191216082937.119164-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 944F9769D99980FD9F34232B6606DBCBEA77199AFBDE28CF16CC600B8A45F2AB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_002943_113895_4949A98E 
X-CRM114-Status: UNSURE (   3.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes in this patch:
 - add the mipitx driving current control.
 - config the mipitx impedance with calibration data in nvmem.

Jitao Shi (4):
  dt-binds: display: mediatek: add property to control mipi tx drive
    current
  dt-binds: display: mediatek: get mipitx calibration data from nvmem
  drm/mediatek: add the mipitx driving control
  drm/mediatek: config mipitx impedance with calibration data

 .../display/mediatek/mediatek,dsi.txt         |  9 +++
 drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |  6 ++
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  2 +
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 70 +++++++++++++++++++
 4 files changed, 87 insertions(+)

-- 
2.21.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
