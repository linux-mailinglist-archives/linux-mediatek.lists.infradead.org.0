Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8371DC95B
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 11:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBXLXtlNbTjosudOftXOxxhHhKJDT/XBAoIoDoSNFuc=; b=AweLeRfzAWElxv
	6TcI9bQCaJBDzdqeijUOpatZvc/+l2wrT+NR9mlzIMo1RrflcPv/j2hs5g7RLaga5BzotNJ1FlNWF
	nKrSTsS0FZ+tABZXKmn30vODl9HFRA0ka8eajYBKpyq+nNHiA+2kygEOHtTH3O0Aa5FBj2JZ4eYWf
	3pu8PVpCdQU8pRUz7ZmURTl+XC4RLMeInMpbLo5uxQMTK6h7RtJS5tsVtLC7XllgWIxeWZ1h7J84Q
	SCchqR+ti7CyVh1opORzdfEdPt2GIuqzqwi9JhDvLnxqSwKc8ugl4HKkzpnud0J7k69D/pLfYGk7J
	f3mJ9Rs7Tto/1PQ6a+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhAS-0003Gp-LN; Thu, 21 May 2020 09:07:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhAI-00035X-Lh; Thu, 21 May 2020 09:07:00 +0000
X-UUID: d4b83e6e444442b389ec98cee6c867e0-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Zjxwz910k4H8fB+W8254rS5oD12INGHIjc8Xa62x3pk=; 
 b=VZ0ljwv6rok15UOVQRB8GuJP9JJkH1vOvKPLtANI0JE3QeECDDn6UcX1owhjbN+n1pkqhU7gd1H3JEXf/MHN4eCyXEAzXYFuxJ/Em35bBvVWQdfqGOAX0aQCH5eNJLu1KAL0Y32eUMGE10oq8R5kd4kW//uvDPET7Pe38U+9pDk=;
X-UUID: d4b83e6e444442b389ec98cee6c867e0-20200521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1791361177; Thu, 21 May 2020 01:06:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 02:06:31 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 17:06:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 21 May 2020 17:06:30 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, "Rob
 Herring" <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v15 09/11] soc: mediatek: Add a comma at the end
Date: Thu, 21 May 2020 17:06:22 +0800
Message-ID: <1590051985-29149-10-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_020658_733095_96940AF6 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

A minor coding style fix

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index ae03127..1a43bbf 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -1430,7 +1430,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_domains = ARRAY_SIZE(scp_domain_data_mt2701),
 	.regs = {
 		.pwr_sta_offs = SPM_PWR_STATUS,
-		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
 	},
 };
 
@@ -1441,7 +1441,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt2712),
 	.regs = {
 		.pwr_sta_offs = SPM_PWR_STATUS,
-		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
 	},
 };
 
@@ -1452,7 +1452,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt6797),
 	.regs = {
 		.pwr_sta_offs = SPM_PWR_STATUS_MT6797,
-		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797,
 	},
 };
 
@@ -1461,7 +1461,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_domains = ARRAY_SIZE(scp_domain_data_mt7622),
 	.regs = {
 		.pwr_sta_offs = SPM_PWR_STATUS,
-		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
 	},
 };
 
@@ -1470,7 +1470,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_domains = ARRAY_SIZE(scp_domain_data_mt7623a),
 	.regs = {
 		.pwr_sta_offs = SPM_PWR_STATUS,
-		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
 	},
 };
 
@@ -1481,7 +1481,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt8173),
 	.regs = {
 		.pwr_sta_offs = SPM_PWR_STATUS,
-		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
 	},
 };
 
@@ -1492,7 +1492,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt8183),
 	.regs = {
 		.pwr_sta_offs = 0x0180,
-		.pwr_sta2nd_offs = 0x0184
+		.pwr_sta2nd_offs = 0x0184,
 	}
 };
 
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
