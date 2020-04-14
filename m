Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7B81A717E
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 05:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u44fgJNBhyROhdgxQjPEpxDRacb4kv6TSqnGQV4pQPQ=; b=u3N7ojd6pbSr3+
	9qn1fnkm/ODYLUhwtA4qG5HDsjFKIq50eFlI7g7hixyQ+JgOxL23OAstStByePNb4s/135ypfodRs
	tPQokXgrj+fQxkg2D3ccnpeOJ2rBdza+3Yen+8hvZqMmpPtjbDoHsj1ITI1Gh6PjAx2b8UJRK6SU8
	0RkAhTUxWI4sX1CXbljTJzmyCJu2SDz8/XjsmBsObYzA4IElo4YPcd9svXDz93/Akm2ZtH3RMWZJV
	xvaaXXyqqfQCu2mERvNpUJTP76hdBbISvlJKG0/3eajk8TbO/eoeBXKkiuOJ9xHf3zyuhhqp4O5fB
	d5fLR/oeMMQ+noWzOX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBwD-00009s-DI; Tue, 14 Apr 2020 03:08:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBw3-0008Qk-6p
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 03:08:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id a13so5459922pfa.2
 for <linux-mediatek@lists.infradead.org>; Mon, 13 Apr 2020 20:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5zRLvY/lFyVA8CmcHxoztfhLeB6Hcp8Rb9myeLFGE2Y=;
 b=n2G/G4BdsXylPAXJFcQRTVHOuqsJKdpWbXtgpE0vRfTZ6zqn5UOIvHQK/E6B09RbBb
 LDa0XYcYzYD5v7gjcGLOmaVvkxWAgoIi8UKyC9Xpli+XMHphDtBdltPVBndKpUx5BNVR
 iPSvizo2wr2JHDiXX3MwqKvyQJlQ25Ua8hL7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5zRLvY/lFyVA8CmcHxoztfhLeB6Hcp8Rb9myeLFGE2Y=;
 b=rUWYR8PaWCKgJKoC7hgajdmXmyurgXpG36eW7onIrRJnbqAJISfmcOWcdf2OD6LM0L
 BDU4BxqS7qsQzjVXxSp8wIxsZtq5/LkQUKvEL/3m5g8soCVZI5766j2ZKVnezs3BjndI
 cNfZyN27iqv91DuCUEgDLGPtNuqn8/wT71pYvRgpxHofBVJuPmZHpJ7Y37o2hg9WX8zM
 lFYRMIwVZuD1ErNREnrsdlH4WqC6aw24KApwwzszp9bJl4u/TMu+nfx7V0oUpYqYweZs
 GG+tTkUAIn9jT27ZY3mHQu4pFe1DBK/VMYg6o41F25GVHjmmji38CQZ++IQrXKvv48zC
 1MKA==
X-Gm-Message-State: AGi0PuaYOx5BGJjbPFr7xS2G1gQFeZQbiQHbnD+1YI13sO4ujvDFWhMf
 U9SDz64A5+8yC9uoW4MYFSVB9w==
X-Google-Smtp-Source: APiQypLDqSi+uJwrfXUjYacymxQYaq/+/Ey0TiNm/1+jCiQfoIEMLFJm77pkr/oXOdsSGluRuYv5UA==
X-Received: by 2002:a62:1a4e:: with SMTP id a75mr8921678pfa.235.1586833706151; 
 Mon, 13 Apr 2020 20:08:26 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id z23sm3610897pfr.136.2020.04.13.20.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 20:08:25 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] media: mtk-mdp: Use correct aliases name
Date: Tue, 14 Apr 2020 11:08:15 +0800
Message-Id: <20200414030815.192104-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
In-Reply-To: <20200414030815.192104-1-hsinyi@chromium.org>
References: <20200414030815.192104-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_200827_269735_25AE2E2D 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

aliases property name must include only lowercase and '-'. Fix in dts
and driver.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index 14991685adb7..58abfbdfb82d 100644
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
2.26.0.110.g2183baf09c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
