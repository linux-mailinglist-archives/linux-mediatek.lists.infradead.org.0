Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7627F1C4CDA
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 06:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2WwRcst8zrTKrVBShkowWCkIUsp82IcsFX6FwQkK8E=; b=ez2ISchqN9RVY+
	L7uJtcxOeV43Ah4VZ8xh1kmpN7nDyKA94uBOftUdx8nR2wUDWulAQPaQBCjgB7UJnHc+Qt90ZA+Jm
	T9H+B5z2+XnyIBpraDuEJUu0iwnb7n/YcBwZuWoyfiSAU4UchNNLFy10fNQOxE5HuUPWjXuCOLna2
	B/d8ptjbf7i/5UBmwOsSP8OvEZZtZCP9QOovDEWc3EV0RVB8SJOqx+tOL9a0uVhoM4SAdnztWEyJo
	Zv6GTIKG6srivfzuACKV4OBEO9cDLmmLikObFJb/1C9a8cQ9ItKA8XjEwGy3pFoW16patPyWvcHjW
	iK1n9Ly1kzKZ2KRoLcBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVomD-0003nD-NA; Tue, 05 May 2020 04:01:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVolv-0003UA-UY
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 04:01:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id t11so506003pgg.2
 for <linux-mediatek@lists.infradead.org>; Mon, 04 May 2020 21:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fX+wHjDnbtvEkbbVe2K/ppkZQlF0JTMhhwiYwZiHruM=;
 b=doZmY9XxEuZl1yzo+blKvEuGksayzqeE2OAKNN0mF76DL6R0CrL75vtszNR4kDzPyW
 4GEREd5uYoerxfbJSi4kbGiHtp9dKhMwE3I7zjjEorWnm8Dj/vrkXc1V8tlEWlX3YY9P
 Qb6DJuLF66dcjaD/xB/cOn7IqyTVNpGm/HaVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fX+wHjDnbtvEkbbVe2K/ppkZQlF0JTMhhwiYwZiHruM=;
 b=bwET6hbY96fB8jQm+boR5eanZ3HUgzbZoKMLg1K4GEnAmcTGSNZCH9kYQ3fw4X3+UL
 UcuFcH2mnrbukT9P/lI5sA/X7TDkxPLYGnbT7w+DrMveXOGIeZ8J74MhSQ+1hjX/6Wmh
 h2Tag8tUCFDb70yGgFMF3Pv2doWpu9pAThJDvPPgWvVU9ObkQLNHWs81D4R9R7GUlOMf
 9TpF1rLzVzMUP9XUdUTWNNEtLM8Mr9RFX87ZlK9wqH3QQv6Z356Da3VN/ATjUUdsxX1e
 nvTK6RvzHoDCkbpYWZ4GGk0yVWvIwGDqjS0FatJ44nPdqOycGcA4NDJkaY6cuPK7S7v3
 daOg==
X-Gm-Message-State: AGi0PuZZfYxjj2LRiv2FoTkbn2S2L4qqW/0O9SCtvKQWwl+niSoZY7mW
 4VJ3+H+JFU7XicRgWOFWm7uBvg==
X-Google-Smtp-Source: APiQypKM9NF4PxwZF3k6P93G5Qq80LCDj9yb7AloapK0ymyBsN163/1s0pe5MmUpsS7vgZq1MO+WEw==
X-Received: by 2002:aa7:9683:: with SMTP id f3mr1280844pfk.278.1588651291099; 
 Mon, 04 May 2020 21:01:31 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id s44sm481696pjc.28.2020.05.04.21.01.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:01:30 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler() errors
 during probe
Date: Tue,  5 May 2020 14:00:46 +1000
Message-Id: <20200505125042.v1.3.Ieebc5dcb6dcc116119a570f14786ba47c9007ec8@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200505040048.132493-1-eizan@google.com>
References: <20200505040048.132493-1-eizan@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210132_012443_85F9B402 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 eizan@chromium.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@google.com>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index c20ac7681c6f..f974242663dc 100644
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
+		goto err_wdt_reg;
+	}
 
 	platform_set_drvdata(pdev, mdp);
 
@@ -206,6 +210,8 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 
 err_set_max_seg_size:
 
+err_wdt_reg:
+
 err_m2m_register:
 	v4l2_device_unregister(&mdp->v4l2_dev);
 
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
