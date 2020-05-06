Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9E21C67A9
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 07:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iunH0aMsK7BSCN7EmiZGZ0mBo7JzIvNmM3iKB+4fhhs=; b=qV1lBEmphXvBHU
	/SXouukPbRG4+20y5Ct88CKBfMGiMbZs56bAV9B0GklxEWCY5UjZk/27DG4RKfREAc9I1aOxJyRGU
	Ls5ueRAgEkBem9Jx5pRnD76yfhFWEk4uKFtfSJHLNiTCZuUDCyAhtz63mIxC0bvCAMRWXGjLqAuwx
	nF6fhZprP8H2Ar1wNq6E9i5XWFygEOW1oP+L29tNlVvQWdTdn4UuThGzdP7E0Bn5QZP3y9DM0n/1z
	iWGTqWBBQcvEsJUGBlvwSl2SIP1NXZPPcASQhEpapP8JMOhqS+kagwFusf2QZeBuFaxtNerBT1GO6
	h8UXbMzJ+VJo87mC5+/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCxf-000877-OH; Wed, 06 May 2020 05:51:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCwv-0007Hg-9H
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 05:50:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id 145so442500pfw.13
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 22:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xNX2Jw3bggOqG+5nYPa2uqxysBzOfcRV74MkeaFU514=;
 b=M5y8/s3SulY3lzBKvRMnyiCfcyROkGDnu1LS8AmOMndWRhfVrQGhKS1f75nwyUlj2m
 LN9x9SSQFlx2M59Jjjbiskhq82qGNXgQ7DfVz/16fbK5RjlBzmk+aiEDlZlLafSVsv5o
 rtfjRNWfhaukA4aRZlleZGCroUu8cDGqfkUn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xNX2Jw3bggOqG+5nYPa2uqxysBzOfcRV74MkeaFU514=;
 b=VMiLbQBwehlqj/33QDOa3bPuFSIbmrjA5Wp6er71Z/HoDsSW4mYJutaP5EVoEKQ+wJ
 pxYQ5MUktX51DtmS4IiBLVLvtsThEPacyXwOSXNhbFfcdeShqVMO5EDz5HcUlU0qvYjR
 XCDEoySpF4pvG27xU/rfpgN98rYWLmx6rQHRHHAwMtRJtc3+cAvxWzDNXrZOFmkCB3tY
 sd7o3GcL0RwtHWWNKqQ17ZhR2/GFBt0+PYpoXNd+5I0yYZiY4Y4TsqxuiFZ2io6X9mOb
 J9mizETbTciVzT+GDWnehuD17hF2xOpWw3Rng5ltkSwrj4ajdVxmb+9Zz9Vb4RHFdu3d
 Ed7A==
X-Gm-Message-State: AGi0PuYKDpXUraI/B9L5A96cTrwt+7B7dX2QqPbRtwPyCPQxz6p75i0a
 LLo2gnaUdtQm0xfEz2KkiSaFSw==
X-Google-Smtp-Source: APiQypKlc/nYndVnKIEUfEb5mcot4tPrbEozcvijAAg8qzicqRQLv80bi22dUdsqMQmRh5vI0S6icA==
X-Received: by 2002:a63:7214:: with SMTP id n20mr5863410pgc.437.1588744227993; 
 Tue, 05 May 2020 22:50:27 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id r31sm730629pgl.86.2020.05.05.22.50.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:50:27 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler() errors
 during probe
Date: Wed,  6 May 2020 15:49:18 +1000
Message-Id: <20200506154832.v2.3.Ia8efd7905e2fcfc81f547e27a51f06373624b3da@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200506054920.109738-1-eizan@chromium.org>
References: <20200506054920.109738-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_225029_579603_91B1F1FC 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

Changes in v1:
- remove unnecessary error handling labels in favor of err_m2m_register

 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index 9b24b8d46eb7..17d155219ba2 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -188,8 +188,12 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 	}
 
 	mdp->vpu_dev = vpu_get_plat_device(pdev);
-	vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
-			    VPU_RST_MDP);
+	ret = vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
+				  VPU_RST_MDP);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register reset handler\n");
+		goto err_m2m_register;
+	}
 
 	platform_set_drvdata(pdev, mdp);
 
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
