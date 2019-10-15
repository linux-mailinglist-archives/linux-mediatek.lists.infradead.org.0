Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DCFD71E1
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 11:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+KHn6Xv76MDGcacPFh3+VgRLgcuP2c9LjRWgMexQPFQ=; b=tELYWXwSunTUhX
	A6WjkwVFhOgo3dkFSv1co+w4nZlIfNMb1J6lVNh9CZisPA4LFhTffGgDo/oUB9l6i2UPpYf/dzBxm
	rVJjPYZLC7sBeA9VaNUuRrIS1Lxlo+DGH44vdC/4eiOZYNmv/KekDHYUw5aLP64rK0DJjSlFlcVTq
	/faJQROQoj0CNrq2Zzypm2emmIfYewZRKUritoZS6UK6BZp47pR+ze62DWtWfzK8w9VtrIyd3Os0L
	vt85cGK14eZBM+Y8mfpBWllySIP5CuuJG+xYUjQYHpd+Isqldd26Xrg8D43HVKGGjsF6Gy6JPkDyF
	0DdSlvfue3dbZ8vz1a0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIt7-0005cK-NX; Tue, 15 Oct 2019 09:13:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIsv-0005R3-Rm
 for linux-mediatek@lists.infradead.org; Tue, 15 Oct 2019 09:12:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id y5so12073147pfo.4
 for <linux-mediatek@lists.infradead.org>; Tue, 15 Oct 2019 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rf1SPo8jSbclnL68w3kPZWDHp5EjIwxlxaCjEEaF3ww=;
 b=WufZ5SDj02M2JAFBlDcELeVF2+PmKLvtdlP75T8D3XdGvm4FgSQgKtUr+EhHduz9DX
 cte2d1NuKF2h8y/ZMwzn/HVKizccjFnrYxaUFy74vwuVPEMwHO3rvF4LgiBZkGSnksZ+
 +YJyK6E5hVygq53F5fznysuIWag2x5aPQ3kcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rf1SPo8jSbclnL68w3kPZWDHp5EjIwxlxaCjEEaF3ww=;
 b=L5jjgKh4ovXDcu+NY+bhP2H91yh4xw/VxbTV7NPSz1aQVhsuEAy2km3kCUnySQF/l7
 Jp+xdj/SC45ywSVY8vwjVf2oD3XWR6yeNYtZl39NdW8WRU1SyWXZGuytdn+nBIc7EKVH
 TUWIMokha6tNM9EoBqL1x4woaUSbiFdRy+mgIzDrNrj6kDAo8gmP4GAk3wFAIAXmoKN/
 Tf7U2dYcCOwm93ve2yuQ4QiKqPQUDOy1CpAzyYITQ15H55Ps1FatvcRmNryHQco9h8f/
 W/ZGZmgxyxFeh9dX0YwUz1p/LzHpi0PnwJsXOG6f8jQtrrg8Psqnn8Jl5gMGPyDYa9HR
 XKDQ==
X-Gm-Message-State: APjAAAWlYl5lnwnO629NSQYWSYGGCLM63/0kZTKzCxr8q5shDz/f03ri
 b+AMoQRHz1GSCVotXnUBMatHaf+upV0=
X-Google-Smtp-Source: APXvYqxffEHyfX+IF2fUlaWSiq/XhGbB5uF69E3BwSP/NRWHM1cb1V9qggTUOmYq6dhb4mG8juFE9Q==
X-Received: by 2002:a63:1c06:: with SMTP id c6mr38053409pgc.417.1571130772225; 
 Tue, 15 Oct 2019 02:12:52 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id a8sm19778744pff.5.2019.10.15.02.12.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 02:12:51 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH] arm64: dts: mt8183: add dpi node to mt8183
Date: Tue, 15 Oct 2019 17:12:29 +0800
Message-Id: <20191015091229.91814-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_021253_895378_1800D205 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jitao Shi <jitao.shi@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add dpi node to mt8183.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
This depends on https://patchwork.kernel.org/cover/11081047/ (for the
dpi driver on mt8183) and https://patchwork.kernel.org/cover/11118371/
(for the scpsys node).
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 6cbbd7726d36..42c3a6b3cfc7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -642,6 +642,17 @@ mmsys: syscon@14000000 {
 			#clock-cells = <1>;
 		};
 
+		dpi0: dpi@14015000 {
+			compatible = "mediatek,mt8183-dpi";
+			reg = <0 0x14015000 0 0x1000>;
+			interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
+			clocks = <&mmsys CLK_MM_DPI_IF>,
+				 <&mmsys CLK_MM_DPI_MM>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL>;
+			clock-names = "pixel", "engine", "pll";
+		};
+
 		smi_common: smi@14019000 {
 			compatible = "mediatek,mt8183-smi-common", "syscon";
 			reg = <0 0x14019000 0 0x1000>;
-- 
2.23.0.700.g56cf767bdb-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
