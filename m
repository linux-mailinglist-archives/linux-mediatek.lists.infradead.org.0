Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FE719D405
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Apr 2020 11:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=je595eLBmeJrlJTNg1iTPHq8uzuW3wwhXZQRNGZOXjU=; b=VXxUpgtMyO5jnZ
	btxgR3y6sch/zZXvJY0/KjueJmVLIUpdOfhXDjBuisVla87UnN4gbsQIXOgQlG6Nam4C4CjYbZ3P6
	3+/YsFHOLcrPwgw4CYF2UOIlBT6gR+qDkyh1/RU2FJely6XLcH0lKRsmkLmGZYgZydDhBWaeHV8xi
	d8MJfNHwiFoX394fuOWCGjWybmJ7WC6P3x6sqhgjFDsXVfam0qP2S64csOvJeydmcHYga5lf1w1bS
	+OUEFB+u8u1wuPGrrfGztSymIGKnXkEkK7efm+gRAI0/DX8Yye00LUbpDxT+xeYrHB6Uygp+XgHX2
	setfoEFStgWRkdsTzCHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIp6-0000x0-9B; Fri, 03 Apr 2020 09:41:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIog-0000QK-E3; Fri, 03 Apr 2020 09:40:47 +0000
X-UUID: b8289e81868f41e3bd2a708c61a84dac-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=6dN1GgsfwAHyVkKZX2n+eOaaQgO90AAheL/GZ5XbwcM=; 
 b=rdUZKaBsf7ADpKbgllwxdjDMH1/SEdInpiLtZbkoD0Eq+EgTmzwdUzi7KkYvmpm+zBFfH5/K8ABRT80CpJOahngCFqYdW5ot92Uhh/9oEZkolBLV2hm2qqF+wte0B9xGa2oW7dAPh7kdasWlwfBNuXgDUaiHNLKvIQtwIF07Kh8=;
X-UUID: b8289e81868f41e3bd2a708c61a84dac-20200403
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 375658111; Fri, 03 Apr 2020 01:40:37 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 02:40:39 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 3 Apr 2020 17:40:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 3 Apr 2020 17:40:35 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v8 04/14] media: platform: Change the fixed device node number
 to unfixed value
Date: Fri, 3 Apr 2020 17:40:23 +0800
Message-ID: <20200403094033.8288-5-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200403094033.8288-1-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_024046_486040_EE26BF3D 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Change device node number from 3 to -1 because that the driver will
also support jpeg encoder.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index e2a1d850813b..a536fa95b3d6 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -1154,7 +1154,7 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 	jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
 				      V4L2_CAP_VIDEO_M2M_MPLANE;
 
-	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
+	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, -1);
 	if (ret) {
 		v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
 		goto err_dec_vdev_register;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
