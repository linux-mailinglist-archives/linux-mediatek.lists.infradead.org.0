Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E289996F5
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 16:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p8QARQsRa7+fZQZA0Ic+kC3gI9+rdJ3kmJGfnXIj6Z8=; b=uoxusVFATRZ9pJ
	LEs4zV5XILoNPvQUF0IbthpH8KGA2geVukJrh5QBRauSib83raEAtxNjf9x802oWNZrcjPFHEYYuk
	vIWCmdRU90v1V0jlRFHN+wVdmK2nLQPhhROggubEO8JGKSxBixDmWNRbiTaAa822vMEgi8a+BN1nS
	IpsfXP6M+4cG7VLvP0bHIQgnG0iHsES8/jy0qYI//YnWxabU96YvJaydIkE3eKPSBfufzwLnvPbm2
	HgknU8j2Z/XEL5Ohj6RWY4Bt03YVdG3sc+7zVNr25/K1H5hUmO7mDcKgM/PgUU4d15+NZuRhYCMDu
	JSVrA0gvx6IWYIAtPWuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oFp-000245-Oq; Thu, 22 Aug 2019 14:39:57 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oFb-0001tO-6A; Thu, 22 Aug 2019 14:39:44 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AD8466A9E1BC676579BA;
 Thu, 22 Aug 2019 22:39:37 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 22:39:28 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <matthias.bgg@gmail.com>, <yuehaibing@huawei.com>,
 <pihsun@chromium.org>, <swboyd@chromium.org>
Subject: [PATCH -next] ASoC: mediatek: mt2701: Fix -Wunused-const-variable
 warnings
Date: Thu, 22 Aug 2019 22:37:47 +0800
Message-ID: <20190822143747.20944-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_073943_401055_8834ED7D 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

sound/soc/mediatek/mt2701/mt2701-afe-common.h:66:27: warning:
 mt2701_afe_backup_list defined but not used [-Wunused-const-variable=]

mt2701_afe_backup_list is only used in mt2701-afe-pcm.c,
so just move the definition over there.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/mediatek/mt2701/mt2701-afe-common.h | 21 ---------------------
 sound/soc/mediatek/mt2701/mt2701-afe-pcm.c    | 21 +++++++++++++++++++++
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/sound/soc/mediatek/mt2701/mt2701-afe-common.h b/sound/soc/mediatek/mt2701/mt2701-afe-common.h
index d44faba..32bef5e 100644
--- a/sound/soc/mediatek/mt2701/mt2701-afe-common.h
+++ b/sound/soc/mediatek/mt2701/mt2701-afe-common.h
@@ -63,27 +63,6 @@ enum audio_base_clock {
 	MT2701_BASE_CLK_NUM,
 };
 
-static const unsigned int mt2701_afe_backup_list[] = {
-	AUDIO_TOP_CON0,
-	AUDIO_TOP_CON4,
-	AUDIO_TOP_CON5,
-	ASYS_TOP_CON,
-	AFE_CONN0,
-	AFE_CONN1,
-	AFE_CONN2,
-	AFE_CONN3,
-	AFE_CONN15,
-	AFE_CONN16,
-	AFE_CONN17,
-	AFE_CONN18,
-	AFE_CONN19,
-	AFE_CONN20,
-	AFE_CONN21,
-	AFE_CONN22,
-	AFE_DAC_CON0,
-	AFE_MEMIF_PBUF_SIZE,
-};
-
 struct mt2701_i2s_data {
 	int i2s_ctrl_reg;
 	int i2s_asrc_fs_shift;
diff --git a/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c b/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
index d7f5def..76502ba 100644
--- a/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
+++ b/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
@@ -60,6 +60,27 @@ static const struct mt2701_afe_rate mt2701_afe_i2s_rates[] = {
 	{ .rate = 352800, .regvalue = 24 },
 };
 
+static const unsigned int mt2701_afe_backup_list[] = {
+	AUDIO_TOP_CON0,
+	AUDIO_TOP_CON4,
+	AUDIO_TOP_CON5,
+	ASYS_TOP_CON,
+	AFE_CONN0,
+	AFE_CONN1,
+	AFE_CONN2,
+	AFE_CONN3,
+	AFE_CONN15,
+	AFE_CONN16,
+	AFE_CONN17,
+	AFE_CONN18,
+	AFE_CONN19,
+	AFE_CONN20,
+	AFE_CONN21,
+	AFE_CONN22,
+	AFE_DAC_CON0,
+	AFE_MEMIF_PBUF_SIZE,
+};
+
 static int mt2701_dai_num_to_i2s(struct mtk_base_afe *afe, int num)
 {
 	struct mt2701_afe_private *afe_priv = afe->platform_priv;
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
