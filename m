Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01BD1E784A
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 10:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GXXKeZFxWbbQeUTM8oA+358BxB28UslTcT8VprBnVQ8=; b=XDrEp5IHtpgYtU
	c7P5V2ywnY+6qw4SwtnPHJ3zWeP97k9+8j8BFG3u4V7I4MS47BmM/9H0iYGP8U4qlY25O5cvc5/Eh
	d+QpjC5HApCZa5N6sRZyH69zN1g7QrkVQda/0tP9sUr39pLw1ac1jdBpFDCVfJSL1zyzz/fuwQJHj
	ibgXpwFkNQygHKgUY6Pqm1Asp2mR0eSusJolTPsiENFsMvjgki+0MbhvenBAJUmUl2zgvA3+iGbFr
	MrVfc1Tb1mZh6uDv3ACPdUDQjWfbwIybTPeT+AuSuZve+IPaxGTEmTQQHhAHRxY3mi6OheImrnQZ3
	jHItdGAAHhuxsuOub5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaMC-0001ul-PV; Fri, 29 May 2020 08:27:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaM0-0001mg-R5
 for linux-mediatek@lists.infradead.org; Fri, 29 May 2020 08:27:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so2324307wmh.5
 for <linux-mediatek@lists.infradead.org>; Fri, 29 May 2020 01:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t01eFYsLCYMUh71LfaSG8m5mrKtEOYGphARGk4VMCAM=;
 b=lv8wSlZ8RZbxv4EzSVhJKApyfdZ7Nh+/HRU+HHipFV78X0WwbyHNrNXRpz5EH6B++t
 rgJH+656w6SCghD6FzHoThJhcaKOWNhRqehRcfLXOpyK2tmqPh2k37fl4zItPgWxHR6N
 piQdqFalxkZGloVvY+akhG3uA4wIgZG+sEEJxkvdq3lx4GWKTQVx/YElTXAd+pc7fcj7
 2X0SbguFhGiISftlDNtIiEhs0/mRtCXYhbj5Q70tyKk4QRInsa7g21CCaYLVj9F6dmlt
 MfhCS7wbwjGBXDsuWfmvEjf9JqOlT6Wrew4ZO9MXzO9qSevqXxKkIShfSp6XlKninQCI
 Cvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t01eFYsLCYMUh71LfaSG8m5mrKtEOYGphARGk4VMCAM=;
 b=nJMArSzZV2JFz5gG3cnXTNtWqvjUwfEDLxIsIOGdbu8CZS3I2Pdy+/GDh5Fk80xDZU
 Bp2ADDTzcfQfBUdk9fEVArKPPnX7530XH3+Q2PJgZ0DV9Z4ocvggI4wLDYhxh5gmrZxt
 65EMCWbYmvX5NoZAPEj1lKx3cEiAquMRz/Ct2w1Fx7eUQW2pFm83o06IGyaRvdq8/IPg
 njkidGiwEl23j4vV7LKANpdw6vm4DvFjuyyfQ5kITxmYYA/yJEZaGAfn5sg0gVyZiSLi
 RwEnX7hGXyFzX08Apm70Vn0EAZEgSI3DEJnKTT7XUu5CL5JkWWnvjEFrdioGbSoTC7in
 7Rkg==
X-Gm-Message-State: AOAM532EQFsw3Ckl8RnRZ3uNEVy8QXSkBhR7UFLM5J8dlRdSWF09hj/t
 aev9pHJS0eMJiVkyuxjckXlSiw==
X-Google-Smtp-Source: ABdhPJwQnfgPwNSZqbr6uVN9JRnU1eAWiaVFQT25mMZwuifAllPHXfm/vwdnHnTsmyOQBsz/JoesdA==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr7741464wmj.118.1590740819317; 
 Fri, 29 May 2020 01:26:59 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-214-184.w2-15.abo.wanadoo.fr.
 [2.15.60.184])
 by smtp.gmail.com with ESMTPSA id o20sm9208618wra.29.2020.05.29.01.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 01:26:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] net: ethernet: mtk-star-emac: remove unused variable
Date: Fri, 29 May 2020 10:26:48 +0200
Message-Id: <20200529082648.19677-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_012700_940067_C8FD3688 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kbuild test robot <lkp@intel.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The desc pointer is set but not used. Remove it.

Reported-by: kbuild test robot <lkp@intel.com>
Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index 8596ca0e60eb..7df35872c107 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -746,15 +746,12 @@ mtk_star_ring_free_skbs(struct mtk_star_priv *priv, struct mtk_star_ring *ring,
 					   struct mtk_star_ring_desc_data *))
 {
 	struct mtk_star_ring_desc_data desc_data;
-	struct mtk_star_ring_desc *desc;
 	int i;
 
 	for (i = 0; i < MTK_STAR_RING_NUM_DESCS; i++) {
 		if (!ring->dma_addrs[i])
 			continue;
 
-		desc = &ring->descs[i];
-
 		desc_data.dma_addr = ring->dma_addrs[i];
 		desc_data.skb = ring->skbs[i];
 
-- 
2.26.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
