Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1824F1E3D81
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 May 2020 11:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2CZDxFmJBYabAL1nCslEw9zkRYWl1PL6CVlKmXZB6pw=; b=pUCXfaOKMNSBJm
	qL1HEvN8HCDEkMICBgrJWuwBJ06LnKkMzgMr+3bGQ8fMUCXlqSMqjbRqIZfYOhKLc1yjxUOAk8KvX
	jUcjJ4VSASO/RbMfgLW3mmzYEQbdWheVW+QLs0QDG+kUSPjdQdBVdTfgifJ8P2Qc7pskobcypjdHB
	YdsQi9w1bCLHsSr2opXixeEyrszbhu2R/z+zvm6asHjIctC0LvCfE8Em/fcrBmNO+m7M6R7Q8xqAs
	K//KsHkqfi1HVgJuOu6MJJ4Q/3x8Y2m3nVPiNT3uQkP5f7V4W2aBNilG6SA1YV6n79hP0k6k+1zpY
	fEd9aTP5Zzalrk3PywZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsIb-0004NT-0z; Wed, 27 May 2020 09:24:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsIR-0004Dy-52
 for linux-mediatek@lists.infradead.org; Wed, 27 May 2020 09:24:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id u12so2327766wmd.3
 for <linux-mediatek@lists.infradead.org>; Wed, 27 May 2020 02:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iK/p1RCXvKF/OvIr3JooWyPvnEDB/sbZcEn98mkIDwE=;
 b=K9sfDNJcKCyRlgVNfYviMiUKOkM1L1ErbyvdGqC349mim10kIuJ7iesKN3kHKaByg/
 9aMV+55ANv6LyrS67uYorbrZ7jMaXwcPPtbOq66POFClQLvDUGeA3ckVrMl1X8Obagqx
 E2oZe/pmR+eoF1mVMwgvRp3DI33gG466+YY4+Qd3Fl5YXJ9zW433Xk0/0UNwi3JxbOpI
 SwVI4dnmpxTuQqJF12eLnupZw2ZTGgpRF6DHpEppgi+dgLsu7l6Nm5Bm+8r0y5glNSl8
 z3cCOiDxTJ+vg4IFq8+dNTQ4VLZSIOW4fExS/0qo3rcOcCpBlh6FS1kkDKAKDbrqPfzb
 xFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iK/p1RCXvKF/OvIr3JooWyPvnEDB/sbZcEn98mkIDwE=;
 b=jf7XhIMmnfsjY6Jr0Mw/1jEl0LutPaFAzYgCbKjZ1eKzZCqAPcy1U3nuaZAEtQI3qT
 HiKd14uLdvB573/FMrKm9kNLZFY7Y2fhH0THP3PDEm88KsYKy/RVsTfXpn6rx/eovAui
 c4gFzqYVfh4JBzhuXRDPqB3JuApam7fUgJ7eqaqrEYKLx+4ZoXdJfIE2h5NZzLE5d/fq
 na1i4zdSuU73Qnu0wbvz0Zqa61NFKQwwW52VIWYMKK9khP8kLFZaar/fREAfJJgnDOFS
 fIfdR172z18gYOB24IOQkl35Xc0EfAX4tBaOyZS3LGNnh1YTfgS26EVCc2bJPIie+tgf
 FNeg==
X-Gm-Message-State: AOAM530Ocawu4JEcH4CDWRyqHiRvF9MEU+Zv20TTm0gSaBy3QBMfsxUx
 6qYYPKfPpY5F82SQK9ATQVIE9Q==
X-Google-Smtp-Source: ABdhPJyCox//hlsTwOFPPKuQKWeWBXVZn0uc8sk6yk61mpiZuZ7Lb2amN/+W7d8zFEtcVbRbgYS+mw==
X-Received: by 2002:a05:600c:2614:: with SMTP id
 h20mr3540149wma.155.1590571458351; 
 Wed, 27 May 2020 02:24:18 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id o6sm2278500wrp.3.2020.05.27.02.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:24:17 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] net: ethernet: mtk-star-emac: fix error path in RX handling
Date: Wed, 27 May 2020 11:24:04 +0200
Message-Id: <20200527092404.3567-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_022423_191283_9ED0CBAC 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The dma_addr field in desc_data must not be overwritten until after the
new skb is mapped. Currently we do replace it with uninitialized value
in error path. This change fixes it by moving the assignment before the
label to which we jump after mapping or allocation errors.

Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index b74349cede28..72bb624a6a68 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -1308,6 +1308,8 @@ static int mtk_star_receive_packet(struct mtk_star_priv *priv)
 		goto push_new_skb;
 	}
 
+	desc_data.dma_addr = new_dma_addr;
+
 	/* We can't fail anymore at this point: it's safe to unmap the skb. */
 	mtk_star_dma_unmap_rx(priv, &desc_data);
 
@@ -1318,7 +1320,6 @@ static int mtk_star_receive_packet(struct mtk_star_priv *priv)
 	netif_receive_skb(desc_data.skb);
 
 push_new_skb:
-	desc_data.dma_addr = new_dma_addr;
 	desc_data.len = skb_tailroom(new_skb);
 	desc_data.skb = new_skb;
 
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
