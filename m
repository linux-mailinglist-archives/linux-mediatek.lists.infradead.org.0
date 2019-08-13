Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1488BBAF
	for <lists+linux-mediatek@lfdr.de>; Tue, 13 Aug 2019 16:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EEoStM4dq1iJW29oAD+zsxA/Y4FFrLFPowsiHICfV6w=; b=DaZuu/irCVmJKv
	Pa+zwUHgmfRoGLHjS2CIynkxtL8NKN3r7KQGlxHtenMPuJAJRE0aOYn7fHVnOkqJ5ve7Lm2Ijc0qv
	OAOQNO5dQYKJyBn8ag3L0I62XAJ97rLK6b51kaH/Xqfmpxbzk+Dw1Uuy7Aq8IIp41P3OXSmIdExQy
	9PdyaGpZxdPAHvLoWCNp3HcdzCnuYs0kNiEsi6x/cPS3VNdC9pysZ73mEyf/lEAyotcs9AxLfvIMM
	BTp7owB2ntd0bHTGTEk8bScwqvYs8NbgXjg5lD46ePnjv3zmvrBB9BP4FJO0KJFWwojdSvPcvcdwc
	OKybv3QxuIyiC8F96VIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXxA-0005a3-GV; Tue, 13 Aug 2019 14:39:12 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXwb-0005LG-Kp; Tue, 13 Aug 2019 14:38:39 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4B63DB515307F2F2107E;
 Tue, 13 Aug 2019 22:38:27 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Tue, 13 Aug 2019
 22:38:18 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.c>,
 <tiwai@suse.com>, <matthias.bgg@gmail.com>
Subject: [PATCH -next] ASoC: mt2701: remove unused variables
Date: Tue, 13 Aug 2019 22:38:11 +0800
Message-ID: <20190813143811.31456-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_073837_862231_92CF82F4 
X-CRM114-Status: UNSURE (   6.99  )
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
Cc: YueHaibing <yuehaibing@huawei.com>, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

sound/soc/mediatek/mt2701/mt2701-afe-pcm.c:799:38: warning:
 mt2701_afe_o23_mix defined but not used [-Wunused-const-variable=]
sound/soc/mediatek/mt2701/mt2701-afe-pcm.c:803:38: warning:
 mt2701_afe_o24_mix defined but not used [-Wunused-const-variable=]
sound/soc/mediatek/mt2701/mt2701-afe-pcm.c:835:38: warning:
 mt2701_afe_multi_ch_out_i2s4 defined but not used [-Wunused-const-variable=]

They are never used, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/mediatek/mt2701/mt2701-afe-pcm.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c b/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
index 9af76ae..d7f5def 100644
--- a/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
+++ b/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
@@ -796,14 +796,6 @@ static const struct snd_kcontrol_new mt2701_afe_o22_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("I19 Switch", AFE_CONN22, 19, 1, 0),
 };
 
-static const struct snd_kcontrol_new mt2701_afe_o23_mix[] = {
-	SOC_DAPM_SINGLE_AUTODISABLE("I20 Switch", AFE_CONN23, 20, 1, 0),
-};
-
-static const struct snd_kcontrol_new mt2701_afe_o24_mix[] = {
-	SOC_DAPM_SINGLE_AUTODISABLE("I21 Switch", AFE_CONN24, 21, 1, 0),
-};
-
 static const struct snd_kcontrol_new mt2701_afe_o31_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("I35 Switch", AFE_CONN41, 9, 1, 0),
 };
@@ -832,11 +824,6 @@ static const struct snd_kcontrol_new mt2701_afe_multi_ch_out_i2s3[] = {
 				    PWR2_TOP_CON, 18, 1, 0),
 };
 
-static const struct snd_kcontrol_new mt2701_afe_multi_ch_out_i2s4[] = {
-	SOC_DAPM_SINGLE_AUTODISABLE("Multich I2S4 Out Switch",
-				    PWR2_TOP_CON, 19, 1, 0),
-};
-
 static const struct snd_soc_dapm_widget mt2701_afe_pcm_widgets[] = {
 	/* inter-connections */
 	SND_SOC_DAPM_MIXER("I00", SND_SOC_NOPM, 0, 0, NULL, 0),
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
