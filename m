Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE91EDEA0
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jun 2020 09:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDolrxu4ZSXi5wU7ePwZxC/aSWGPqLhlqLtWxoj3ZME=; b=S7ps0Tf2SYd2RX
	ArQ8E6jA+Wy8+07J4QsGb9XEJ4a4WaHaQuYDLYtmAwGXt1F9YNrIj2LRYg253nMnYRdFp7xOPSbhp
	WI9UPbd6my+Jwc5yjdozxqSnhVMpHcJ7vefosawTfukLckOJawa4I01ysRd/w3JJskPtchLcpLyvi
	H8SbDR/k4GKABsNtHc11x/moK4q2aBCAp/xc2H32UkXQJplylLT50BkAZz2lyLHxUvKryAOyO8pMk
	pDepgXZjIPYGSjN13Z4BYs8kCAIFQZZx+wMBAf9inAOL0WUnRSowg4jaMaArsF/vxuTjLgzAY+mFo
	GgACVVcvD4SbncB0JjqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkTD-0006BJ-8n; Thu, 04 Jun 2020 07:39:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkT9-000651-Ol; Thu, 04 Jun 2020 07:39:21 +0000
X-UUID: 46fdfe630a844206a4728704bce95c41-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ZTXG1swxMq+6u0sp84wMTHDYveVRdbBvoRAsf7UsS68=; 
 b=ttBmYibxNywZsv0WT7YGBdPAyfV3bQN5YxaSeFJLRtE1TV6FjSgIGAbJDsSn0XoF8qtZNJT7j3Y4F/gpRLNFkHPooWz1U4Z5OinPf/mOeiE4QpYGFSDMLCzD/iJvGCTlVmHO5oawEpu/Knr7Pom2BRgjmXG8qWxSb3KNq/5oyhM=;
X-UUID: 46fdfe630a844206a4728704bce95c41-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1579935807; Wed, 03 Jun 2020 23:39:14 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:29:24 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 15:29:22 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 15:29:20 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v9 07/18] media: platform: Improve the implementation of the
 system PM ops
Date: Thu, 4 Jun 2020 15:26:57 +0800
Message-ID: <20200604072708.9468-8-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604072708.9468-1-xia.jiang@mediatek.com>
References: <20200604072708.9468-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003919_815677_1D1DD4B9 
X-CRM114-Status: UNSURE (   9.86  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add v4l2_m2m_suspend() function call in mtk_jpeg_suspend() to make sure
that the current frame is processed completely before suspend.
Add v4l2_m2m_resume() function call in mtk_jpeg_resume() to unblock the
driver from scheduling next frame.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: use v4l2_m2m_suspend() and v4l2_m2m_resume() to improve the
    implemention of the system PM ops
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index 7f74597262fc..49bdbf1c435f 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -1208,10 +1208,13 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
 static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
 {
 	int ret;
+	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
 	if (pm_runtime_suspended(dev))
 		return 0;
 
+	v4l2_m2m_suspend(jpeg->m2m_dev);
+
 	ret = mtk_jpeg_pm_suspend(dev);
 	return ret;
 }
@@ -1219,12 +1222,15 @@ static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
 static __maybe_unused int mtk_jpeg_resume(struct device *dev)
 {
 	int ret;
+	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
 	if (pm_runtime_suspended(dev))
 		return 0;
 
 	ret = mtk_jpeg_pm_resume(dev);
 
+	v4l2_m2m_resume(jpeg->m2m_dev);
+
 	return ret;
 }
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
