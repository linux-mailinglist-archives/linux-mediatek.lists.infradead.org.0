Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE6415A104
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Feb 2020 07:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FwR2hSV0zLa9l+MrYKdz/FFALUiXvNNSN3UVJlFrPqA=; b=DyOPTCmReJ6btf
	/ur5FbfG0vKKou23xaakT1zIQiSBamAqxGTA/sNJeTrlNjc7iSM7Jz3TISdy93GrrIMKSvrQKI1AI
	JqMVfeMbaj+SBDFjsidCZeijnsINau2wB++E24aaG3IbioFWyrW7k48qSeqjsfSd0jobMy0pkAtrU
	hyP8LcLr7BgAvk5nrsD4vrrWBt42r9CX2Bu8eDWbIAqZSP80qcTcOKLnZhkoXWiU0YegDm4KWHWAY
	qnW4cfkxRUzLsjr3KTgFuvX+Fa/R+2dfvvmG1g95Kn0UIBesmADsMWHw20qBI2gJb/vOfC08fHQVx
	YufZYjp/4CwwcNmPTW6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1l9k-0007Z6-FN; Wed, 12 Feb 2020 06:05:52 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1l9g-0007Xw-OX
 for linux-mediatek@lists.infradead.org; Wed, 12 Feb 2020 06:05:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id j17so410550pjz.3
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Feb 2020 22:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Js4SWp4AxGnmgpS0xpb2r+20hjEB6ZJuleDc08nwvzc=;
 b=GidHGpfU+1Q586bqtdp7qWIQdqBWX0kfx/pBWtI1uAajniLiy2nPpkxJ7JjnAweVHg
 ilZrHgwOmIDgE611haEEILEBp4woWOhMLh2UhtBdIbORMMG6SuYfjXk2XjPtQTp5tyr1
 WkA/POXqdq+jTPxtC+KlqAU+qgfuXQsKGJ1cI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Js4SWp4AxGnmgpS0xpb2r+20hjEB6ZJuleDc08nwvzc=;
 b=chV9uNIOrflf1SkMx+6lUNd5H2INoFzM4nmAQwtIWjlKtupqEYU7AZAv2g2DECsyt9
 FUPuu5pYKrlFeE7U6Q4tw0ZRFK7NPVSnq8IzmpfvcXTCfA+v1DMmccvWw74UPeAmFuC5
 j4y0r38lXAxZ0m0AYYHZ8mIGmlsY9st0+XWOaILI5fYfts2oUEkXVVSMGopbCS0Kqzhs
 3Ol0WDrCaTUIW24H5AogGI5nTKHh+ylGcIbY4sK49MzVpNoNpz05TUgC94sg6pDxoSEZ
 P00Tv+8deKmTkDj9Yf0ZuKYCH8bLQWDap2hS8zUBc/TcS0H8C+aUHeOtKoThl05BdTc5
 b8CQ==
X-Gm-Message-State: APjAAAUMru2uAZuB8R7AOusbNXKt/FZTyqA9mcDgM99ReHFM2AZS6hF/
 JDPcJ3ydoj1TqakymWQfpnSFMQ==
X-Google-Smtp-Source: APXvYqxpyZsLuZkNUFq1aaY5ImmMD5AfRib3xtsrExdV4p76C8R6dTdGEPgJdoE+a7Q4WF+2gH+auA==
X-Received: by 2002:a17:902:9f88:: with SMTP id
 g8mr22080796plq.100.1581487546921; 
 Tue, 11 Feb 2020 22:05:46 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id d69sm6792163pfd.72.2020.02.11.22.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 22:05:46 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8173: add arm,no-tick-in-suspend in timer
Date: Wed, 12 Feb 2020 14:05:37 +0800
Message-Id: <20200212060536.156890-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_220548_809270_26A89B0D 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Arch timer stops during system suspend. Add arm,no-tick-in-suspend
property in timer.

This is a follow up for d8ec7595a013
("clocksource/drivers/arm_arch_timer: Don't assume clock runs in
suspend")

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..1a9ad90bd7a6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -331,6 +331,7 @@ timer {
 			      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 10
 			      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
+		arm,no-tick-in-suspend;
 	};
 
 	soc {
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
