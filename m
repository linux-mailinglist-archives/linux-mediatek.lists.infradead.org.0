Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFAC1A71F1
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 05:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGnsFBBQNI8NIIZ1rb4fPjtask2R1/zDq/YYIEgiw1Q=; b=UTSQ9i0n7K0SUk
	qwi0VR99eX0kBToRModfpnx6rdboRLr/rqmUJ3AQ5NAH9rAePz17C+z/IN4ljtU3HpgzGnR40LGGm
	jG4kL0s+km/NoAU7HvFm8EmXZ4tLyIidjRuNZAEtZvqmdArf7C1ONhxckCIYKTMyk2h90u7XXqeLL
	EKEtnUIFCKoktduUXPcurZup8Z6C8refBAPwgm3rgLOFJQER5Vdy1KKCBTCrANcsBSIGarbuITGcl
	tqoMsWRNCPXss7g6Fe+Mty1KrJ1kEA47UMJUDBcjRRDndEgFtGzXgFDgfOLQwzNH15Pnf1GqPdxbd
	b/7q20Qi612f1OY+qyAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOCS1-0003ip-Pl; Tue, 14 Apr 2020 03:41:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOCRY-0003Fa-WF; Tue, 14 Apr 2020 03:41:02 +0000
X-UUID: 9c93adbe31cf4638b2505d09d2bc3586-20200413
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=pXbuHYf29wq9I5dB9+bPlMg2JqoQVfcEPpb8kdg9al4=; 
 b=WOKQGFXHfVI/VIGaXPZyHMPLRnupYoN2y/YqVZyftVjEx5/1eO3QiaNVZ+qhCrR1RzQUfwVGQ1GkE36pkUftFDezbcphpkGR5yCmmSvCUaK4YdK4URSmesoEiFBg6udCBwd3Wo+TXG3cAsRD+/favOs723Knrt/6oO2Oky6Rm5Y=;
X-UUID: 9c93adbe31cf4638b2505d09d2bc3586-20200413
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1656740524; Mon, 13 Apr 2020 19:40:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 13 Apr 2020 20:40:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 11:40:54 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 14 Apr 2020 11:40:49 +0800
From: Yong Mao <yong.mao@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 1/3] mmc: core: need do mmc_power_cycle in
 mmc_sdio_resend_if_cond
Date: Tue, 14 Apr 2020 11:40:09 +0800
Message-ID: <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_204101_048972_D38F81C5 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yong mao <yong.mao@mediatek.com>,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: yong mao <yong.mao@mediatek.com>

When mmc_sdio_resned_if_cond is invoked, it indicates the SDIO
device is not in the right state. In this condition, the previous
implementation of mmc_sdio_resend_if_cond can't make sure SDIO
device be back to idle state. mmc_power_cycle can reset the SDIO
device by HW and also make sure SDIO device enter to idle state
correctly.

Signed-off-by: Yong Mao <yong.mao@mediatek.com>
---
 drivers/mmc/core/sdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
index ebb387a..ada0a80 100644
--- a/drivers/mmc/core/sdio.c
+++ b/drivers/mmc/core/sdio.c
@@ -546,6 +546,7 @@ static int mmc_sdio_init_uhs_card(struct mmc_card *card)
 static void mmc_sdio_resend_if_cond(struct mmc_host *host,
 				    struct mmc_card *card)
 {
+	mmc_power_cycle(host, host->card->ocr);
 	sdio_reset(host);
 	mmc_go_idle(host);
 	mmc_send_if_cond(host, host->ocr_avail);
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
