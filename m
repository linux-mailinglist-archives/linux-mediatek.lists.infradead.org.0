Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FCA1DB045
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 12:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ERnd0gjdMXWbxBjbm9Z7+1b8IQQXgSlemLXO9B8EVd0=; b=cy84XbW+TDEY+5
	mRB5ZJ+WOTevRAXPGJx17kpUgEfJ8LElVq4J6jnMCT/xjnN34ozcdlbDgyuRN/9ITqDRD8xwEC+VD
	1NxCDc0XhHIP6omSjtxB6jSuA71DlOmn4Xtp299KFNSgeSsZS0yeeeo6fTjgogPteyN1HcFeBeEZh
	7qwog4yJ/h9mD7cpX5KHV1Ie9BxHOAVTAwugrqXKdOUpo9wpkgyzbnE5lqcuqjJd1bLkM97eVwvs8
	Lco8NaAIC5cA4XpClNGkj2wKJlhAxoNUqUbBCzAtjDGEppijtMg4Yza2NAyX2UWikFMZj6dasFCOn
	agS/f5O0ga1XfnTcL/5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbM2l-0006b5-6o; Wed, 20 May 2020 10:33:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbM2W-0006RC-OX; Wed, 20 May 2020 10:33:34 +0000
X-UUID: ce87621212f54c26b31cee8ad441231a-20200520
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=HfMRe5GvWTMoSjJho2QVFn7+uU1oZw2rKqKzYM8kbw8=; 
 b=CsYMkHaV/YWUmJ+CGZVffs2aeo35GtyfEDEt0YrxwqU7ePpMqx1rWkKVeZeJogPzMiaLV6OdmQ1p2xKVkMBCsLV+XdY182O+1ovxF5YPemseaj5gAB0o9iHCDb/wytWMr6iicwLEMjNhfdiYgWaQSWJJ+Xu6VxQKTt0m3c0pjvc=;
X-UUID: ce87621212f54c26b31cee8ad441231a-20200520
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1404325998; Wed, 20 May 2020 02:33:31 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 03:33:30 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 18:33:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 18:33:27 +0800
From: <qii.wang@mediatek.com>
To: <wsa@the-dreams.de>
Subject: [next] i2c: mediatek: Use div_u64 for 64-bit division to fix 32-bit
 kernels
Date: Wed, 20 May 2020 18:31:53 +0800
Message-ID: <1589970713-19944-1-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_033332_804136_7A46C2D6 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, qii.wang@mediatek.com,
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Qii Wang <qii.wang@mediatek.com>

Use div_u64 for 64-bit division, and change sample_ns type to
unsigned int. Otherwise, the module will reference __udivdi3
under 32-bit kernels, which is not allowed in kernel space.

Signed-off-by: Qii Wang <qii.wang@mediatek.com>
---
 drivers/i2c/busses/i2c-mt65xx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 7020618..deef69e 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -551,7 +551,8 @@ static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
 	const struct i2c_spec_values *spec;
 	unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
 	unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
-	long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
+	unsigned int sample_ns = div_u64(1000000000ULL * (sample_cnt + 1),
+					 clk_src);
 
 	if (!i2c->dev_comp->timing_adjust)
 		return 0;
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
