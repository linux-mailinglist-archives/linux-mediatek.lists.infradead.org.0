Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F63918829
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 May 2019 12:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QG+UPvrhGwhFqeySSgdf84bPSe5YAzM0H8WZmHZzz90=; b=SgrTe7Nt6yFRTR
	ZTg6gmgHq+D2nTiUR2u+/k7c7z9eyXX7U0rfNUTGG1sOsAZsn947LexKO6+zp0wA0Mbf2Z14zOu77
	pn4TlZYCTMHEai4gaxD5d03/D1bMb6An9VyD6HCCCdDFDKa5d6tMOo2Lg//I/S2FbWoPAsbBP6Ccw
	wZEClCHce5Igz6sTnnu8W+dwvqcOd3JYqq1+gDYqJdbBt6IK7JpkLOw53+KffYT5YFEhq6Ednrv1K
	q26HrQBi6O5h+vLmWHWZ/l3W5GKViIkLDfIbs+L+RtrabcoEbZK8sK41QKAJ9YBHn62VTftb0kHVh
	ozuUWmNYmOGGx0YjRftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfzo-0003cV-Um; Thu, 09 May 2019 10:09:48 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfzl-0003c8-Mj
 for linux-mediatek@lists.infradead.org; Thu, 09 May 2019 10:09:47 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49A403B169430;
 Thu, 9 May 2019 10:09:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=y2XrLzeF6CCeBorYFGl9AOutvofXs1S2ehKpPUYXpY8=;
 b=dDtFTFcuR9rplcWZMTVIc3Yhy9FiiDu1tXR+3revVazzWKLcvBdtFi0M7iXhea3gLOSf
 6wC3C9A9v6BruwkoNpvPePAYBwV7Plj/1htiWpwJcY6W5efKBYjGdQwClaviVZpHVaLK
 duDy17PDWJbwV1knFxp/NvEIUzwwtgdsd2SjJLFKAL0+IxIxMJJa1Bvp/V1tqgVF7xtS
 eWPyOKDnKkp1Sgws0sCtz7Wi4hR78J2Wlhr9EaD3BN9pn3A6//7WxMB7JdznEWHLzBcM
 W10pHJOocrTGI4W4SmFNoVrUBp3QNW4nsJq8G7d1Av2kVqox5YWxd2+TinbIislyK8RE Yg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2s94b11rg8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 10:09:33 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49A7wkv181073;
 Thu, 9 May 2019 10:09:32 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2sagyv5j37-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 10:09:32 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x49A9U0p002987;
 Thu, 9 May 2019 10:09:31 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 May 2019 03:09:30 -0700
Date: Thu, 9 May 2019 13:09:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Shun-Chih Yu <shun-chih.yu@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH] dmaengine: mediatek-cqdma: sleeping in atomic context
Message-ID: <20190509100923.GA7024@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905090062
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_030945_874310_1C049B54 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: kernel-janitors@vger.kernel.org, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The mtk_cqdma_poll_engine_done() function takes a true/false parameter
where true means it's called from atomic context.  There are a couple
places where it was set to false but it's actually in atomic context
so it should be true.

All the callers for mtk_cqdma_hard_reset() are holding a spin_lock and
in mtk_cqdma_free_chan_resources() we take a spin_lock before calling
the mtk_cqdma_poll_engine_done() function.

Fixes: b1f01e48df5a ("dmaengine: mediatek: Add MediaTek Command-Queue DMA controller for MT6765 SoC")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
The "atomic" parameter is always true so the temptation was to just
remove it entirely.

 drivers/dma/mediatek/mtk-cqdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
index 814853842e29..723b11c190b3 100644
--- a/drivers/dma/mediatek/mtk-cqdma.c
+++ b/drivers/dma/mediatek/mtk-cqdma.c
@@ -225,7 +225,7 @@ static int mtk_cqdma_hard_reset(struct mtk_cqdma_pchan *pc)
 	mtk_dma_set(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);
 	mtk_dma_clr(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);
 
-	return mtk_cqdma_poll_engine_done(pc, false);
+	return mtk_cqdma_poll_engine_done(pc, true);
 }
 
 static void mtk_cqdma_start(struct mtk_cqdma_pchan *pc,
@@ -671,7 +671,7 @@ static void mtk_cqdma_free_chan_resources(struct dma_chan *c)
 		mtk_dma_set(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);
 
 		/* wait for the completion of flush operation */
-		if (mtk_cqdma_poll_engine_done(cvc->pc, false) < 0)
+		if (mtk_cqdma_poll_engine_done(cvc->pc, true) < 0)
 			dev_err(cqdma2dev(to_cqdma_dev(c)), "cqdma flush timeout\n");
 
 		/* clear the flush bit and interrupt flag */
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
