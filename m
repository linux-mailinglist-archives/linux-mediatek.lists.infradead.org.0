Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E981A717D
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 05:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TebRX49PPu4ytpYaQvL6HYyJXqRmmO4V8EA+u5puGM=; b=KNWEgwVGS8Ih48
	xuYcqGyurPYXzSKSd2lpuse29j67iM5bgUC0P/pyXLM1HWQM+DNWFbgUbGrFad+ViFhzjjG3TjGXt
	Sdkqpy8qrJPdluvtytddr3RtbYzoFQjDdGxnTe6HaDtMEGt1ATUHPjDVWCs3H28fIWIswTh0AmdxI
	Ykdbe69sq5Ov7Y1mKqulsnlDSc3i5Ht1mQ16JwMFBpTavBFZDZUPV2XZL3sZSHFTyKQWdzGKfh70K
	n6yNblX6zapglgbayaYgpypazizUnAqixDdIdJonur1oJAd+uk3/htHIDaAVC7FaFpgoN6ScRmOWI
	5fW+pag/F6vSUZkajokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBw2-0008PL-4g; Tue, 14 Apr 2020 03:08:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBvz-0008Oi-Ha
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 03:08:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id x3so5193610pfp.7
 for <linux-mediatek@lists.infradead.org>; Mon, 13 Apr 2020 20:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sK5J9WWtksNX77+NYMwDl6iDZ21wbSLhPOx9BD2BM8M=;
 b=LSXUefafyRPCK1BKfVXiyl8L6XfmghKkzW97uJsOEM4gDKMgCfDopHvzMyxX9Myj88
 Gl5rTEhzpS1OYgiBDgymvERjRoXimxL5xwpDoZPX/ySaHiEso7gshkntX1zU3eV/rMje
 P7odV0SrY0XzqZfAZFoea4TeBlA+Wp45m+108=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sK5J9WWtksNX77+NYMwDl6iDZ21wbSLhPOx9BD2BM8M=;
 b=VyWDM3K8LRfhVq/oru2F8qZxQzA0TvTDTmDP+lHbO0JFkKS7pj49HqjHhWhO4Ck74k
 G+Fqj9YOoDGFzYjdE+IAssg5Cbd3zBTei55Z44+HAyfB1mpxEpOHNTFeHsWA7nilPRyP
 8yoX8V2ovOqSclkpGn7/MBxK5BRjkHTGJ7LcPW8dUwHSCYrNEtOqg73r/k2fvuc9uCy7
 HYW5xd+bA53MhrA3oOiR3s5gqTmR67jDVNji7zuTaLTOoaLnYnOUVxjl1LagsGGdGDQI
 SHVxHXwftnT6/rT6XdhV4MrxlJRn2xCDj8bFmCis/cSM0hicKfEeaTsUx6GBN/vi1Fmt
 pnVQ==
X-Gm-Message-State: AGi0Pua/lnw/3Rw1ayYMkuUZtD1999w2GTuciEPFa1/KzVegIskg8ckk
 zqDP/AU8gYQtZ0sBYE2h8tPq7g==
X-Google-Smtp-Source: APiQypJQpaS0PH8YnPtS/hZHhI9tNItaYB2TAmhKVyqtt1h2PIezqUr6JFZ0U4VOiU7IsrqBf+3Iqg==
X-Received: by 2002:a63:6287:: with SMTP id
 w129mr10337254pgb.410.1586833702123; 
 Mon, 13 Apr 2020 20:08:22 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id z23sm3610897pfr.136.2020.04.13.20.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 20:08:21 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: mt8173: fix mdp aliases property name
Date: Tue, 14 Apr 2020 11:08:14 +0800
Message-Id: <20200414030815.192104-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_200823_604148_73B3788E 
X-CRM114-Status: UNSURE (   8.01  )
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

Fix warning:
Warning (alias_paths): /aliases: aliases property name must include only lowercase and '-'

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index a212bf124e81..d1e9c41004b4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -42,14 +42,14 @@ aliases {
 		dpi0 = &dpi0;
 		dsi0 = &dsi0;
 		dsi1 = &dsi1;
-		mdp_rdma0 = &mdp_rdma0;
-		mdp_rdma1 = &mdp_rdma1;
-		mdp_rsz0 = &mdp_rsz0;
-		mdp_rsz1 = &mdp_rsz1;
-		mdp_rsz2 = &mdp_rsz2;
-		mdp_wdma0 = &mdp_wdma0;
-		mdp_wrot0 = &mdp_wrot0;
-		mdp_wrot1 = &mdp_wrot1;
+		mdp-rdma0 = &mdp_rdma0;
+		mdp-rdma1 = &mdp_rdma1;
+		mdp-rsz0 = &mdp_rsz0;
+		mdp-rsz1 = &mdp_rsz1;
+		mdp-rsz2 = &mdp_rsz2;
+		mdp-wdma0 = &mdp_wdma0;
+		mdp-wrot0 = &mdp_wrot0;
+		mdp-wrot1 = &mdp_wrot1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
