Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2847917764F
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Mar 2020 13:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LQNxsQt6axp8WrPXJ64TSO4+DRjmHNweXRhQ6x172I=; b=KobW4RfRRlcSKf
	PQ4U4ub1xfzerEA3agG3ufs6JLeR0ORPcUM59tocFuvb7ArOjmfD07YQBeaeD7cKIUSv/F8By394P
	RZwz0Se0MZDc70z5+3MZ9barYhAoEMnEnRC/hzpdoRtotaCNB5uwtaWRaeOAgefiaTKfklBQS1DiH
	d9TVAShuM9Dt/eiLnn83BQYICCR/zQZ9xBlXWrjJK0h5qL+2kwHqcJinVeKrwSQwtr6HM52PWDDbe
	FStGviUKeDGTiEhvy5yNWUdam2WV+uXSg0Mx3h7PNqX2cbB+/L+kFwtHzC5NX2eIDnMM4dpZ04LE7
	3bjIPu5z468DvBNdll5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96wG-0000uz-U6; Tue, 03 Mar 2020 12:46:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96v5-0007BX-1j; Tue, 03 Mar 2020 12:45:08 +0000
X-UUID: e7ce8bb8d0e34e5a805366f7a15488a6-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/8999aCb+RKIpV1G0FjTHSIgyuMbUnkxh715LDiAQiQ=; 
 b=FKqyyGXJrBmIfD4MMwU87+QDnPfrwZb9mPpSLdc5RywVWsxP/tzpLrTCWaBWVJbd8O3CBwxItGKKXfUgDdkDccmzljMTz5TEkBzszzwDsDDB799jnPO+rWWZZQlngmifawUcEVUnv9NS/5g3DiFyG7c8HvLssshK7OVUFPOKLF8=;
X-UUID: e7ce8bb8d0e34e5a805366f7a15488a6-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 896236609; Tue, 03 Mar 2020 04:45:01 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 04:34:59 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 20:34:02 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Mar 2020 20:35:38 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v7 02/11] media: platform: Improve queue set up flow for bug
 fixing
Date: Tue, 3 Mar 2020 20:34:37 +0800
Message-ID: <20200303123446.20095-3-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200303123446.20095-1-xia.jiang@mediatek.com>
References: <20200303123446.20095-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_044507_116108_A56FDD9C 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add checking created buffer size follow in mtk_jpeg_queue_setup().

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index cde59275d49c..da0dae4b0fc9 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -571,6 +571,13 @@ static int mtk_jpeg_queue_setup(struct vb2_queue *q,
 	if (!q_data)
 		return -EINVAL;
 
+	if (*num_planes) {
+		for (i = 0; i < *num_planes; i++)
+			if (sizes[i] < q_data->sizeimage[i])
+				return -EINVAL;
+		return 0;
+	}
+
 	*num_planes = q_data->fmt->colplanes;
 	for (i = 0; i < q_data->fmt->colplanes; i++) {
 		sizes[i] = q_data->sizeimage[i];
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
