Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E21D155442
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 10:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlaPU9BKvbMI0T7J0S0JpmXAvyzVPrVPWlLDsh8z7DE=; b=qpdjIfasX9e5yh
	VqS5xRnMRFWq2oieHSzx6IyhgQ0gkbZBSrW4frPoJxyx0gCPRTihtneFfcQSRtb6zkQo2ZsIoiMhJ
	a9gtC2aJCa26h09YVP5H+sqEgcHv1ctSgVu/PCp24kkldXK1CGh2xcVz75PiCK/U8T4WAsD1S/3Lz
	YkjkM4sR4MCDdfXF/jP50RvxbQ5DGDUZC63IGCMQz1Bl5s4WsU+qEE/QdakrpEBfj9ZrqRmJJ/Dqq
	QChXzhRb3PaxDuBEpM2UA6jkDX8uXhPJbXk12Qq3th7fJ3ksoUW+e2Yij0/34InWr12sKS6tcfCPp
	9q9qp+KDnCwQKjF5W9jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzYn-0007J5-3t; Fri, 07 Feb 2020 09:04:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzXS-0005qt-4n
 for linux-mediatek@lists.infradead.org; Fri, 07 Feb 2020 09:03:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so927564pfg.12
 for <linux-mediatek@lists.infradead.org>; Fri, 07 Feb 2020 01:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U4T1sUZ5d5/lE7jdAROdnSabgnZhFUdcqE+KF1UFLYs=;
 b=Fn+OG7luKfdpaUPbm4ZGXmPEqV3LZyqVgV0nfHGsdtPTUzhxhdSATo8QnpvDaYb2q6
 DTPqGj/6KU5giBg6vcgCoA902QAvFzhJaHSKdzfQX2nHZEwnpkIc9oaXtunz5P5KAgtQ
 ckRDvto5jiIeXjaZOcNpQffkaCh4SGfGOnDVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U4T1sUZ5d5/lE7jdAROdnSabgnZhFUdcqE+KF1UFLYs=;
 b=YRp30ssir9LPyId98xlm+oWD4FLR3wzRwC3qClWkpA9MmuEo9l895kCU8VFDbN+ZkU
 vkypcRixiYTc8dIAHas2lOBi8CsFzJp5rQ7g3FXLzR1cdET7CqaG7NJSEPVsXSmuIvPp
 iZpPTWz+T15ue7vD2VWnseBmgjj6S6pPhYRXIPf5wn7EeLCrf1deirw59lAkiYOHaEKe
 BLMIaUWkjYn/b6hIHlXg5bVmPvand0xzBY9/vHgsIjw3P4171WAZT/wf4WxgNNTmZQkD
 HAeNHK8wf2/L67lSrF3HXYEzhSy4jODonsSCwE2Qdh2BAFhhjKtSV6sDR7NHpuMBtZeI
 cw2g==
X-Gm-Message-State: APjAAAWxqHnI5AHtcf6N2ZiWDzUqs/HE427OxLlf4gXlV3g6VK6NWdv5
 luKDWhEx8ItWYxZO4BmKHqgHDQ==
X-Google-Smtp-Source: APXvYqwt2xS7dRaSk9li7XQLco0yTFU/LJq7YNSPtj1ygZ/Wtqk85YoLi78cgiUvBFNXikSZvzMZ3A==
X-Received: by 2002:a63:a807:: with SMTP id o7mr8178878pgf.407.1581066180243; 
 Fri, 07 Feb 2020 01:03:00 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w6sm2309463pfq.99.2020.02.07.01.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 01:02:59 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 5/5] media: mtk-mdp: Use correct aliases name
Date: Fri,  7 Feb 2020 17:02:28 +0800
Message-Id: <20200207090227.250720-6-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200207090227.250720-1-hsinyi@chromium.org>
References: <20200207090227.250720-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010302_256067_AC77D207 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

aliases property name must include only lowercase and '-'. Fix in dts
and driver.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index 9afe8161a8c0..0c4788af78dd 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -15,10 +15,10 @@
 
 
 static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
-	"mdp_rdma",
-	"mdp_rsz",
-	"mdp_wdma",
-	"mdp_wrot",
+	"mdp-rdma",
+	"mdp-rsz",
+	"mdp-wdma",
+	"mdp-wrot",
 };
 
 struct mtk_mdp_comp_match {
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
