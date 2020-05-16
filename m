Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567651D60F2
	for <lists+linux-mediatek@lfdr.de>; Sat, 16 May 2020 14:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApsErFAjRgrchTO6zLpIp/CC0rndtEASsUzV4ipIV8I=; b=rMc8Vjcj9ItKHq
	OXLo8GZgag/1YroE8p7+EDZhBPX0bJoF8PQ7q38LRuNGwLOp9kClICG8FwiaAYkPcPAOg/snRxSQA
	rLRI6lLiqOILNq+QVYuDeXMYK5izpI52qdGXu2dCU0L9O2cvteZE6LF8bSJeWp9xArvVDxysjrpRj
	xbVE6cN5wIu8vzXqDJdR4Ps1/VGegNJOtuZguvqbK6BWvrH2u9thenjcsrfRqjdT8ebt3wSqVIKJp
	Mk/5nsvUcwf8X5TiMT/iXy3MzKh7jr2pIKNXSRX6CVM9edBex5oqCpRwbC4H0TS2TIm4WiN2A8IwR
	NmjkSb8keAZG9daUMdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwHb-0006YK-6x; Sat, 16 May 2020 12:51:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwGe-0003GE-1E; Sat, 16 May 2020 12:50:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id k22so2074710pls.10;
 Sat, 16 May 2020 05:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pj+H0XRs7BZqevflwkq03eXzGKUz5DncbQ0n+P/Er7k=;
 b=SqOx1Fs0PYZCUFSLq4NUzY0q2y7WznWgqRu3dFYQKg0y2ottvIvnL8mVcbedHe+iup
 bnxY4njYqa6N6zPPJJxUjYLtaWqa7xhOTdBvxy/FyZzOdJGtDaHkDB7d0XQLGpV2O0P0
 zcCFTK/1eMWxsBJYwit6KmiGTY0+V/+UJJmdQtmngbr7sVU+GCFkYZPiiUuNEroVNlgg
 4i1wl/TyUV0dQ9s3bRigv74/tR0siF5T+RGHAzqovmZ0Ss1iYoZML/Gcf9yYZdITEuTn
 zOfUTo8MpdCkM3jLcevUXNLKURZY1KlpFkS+kjP3n+v8x6CN2DEV9OvFvejrRs7nJeKt
 50nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pj+H0XRs7BZqevflwkq03eXzGKUz5DncbQ0n+P/Er7k=;
 b=NkxFURsz3krieBZCIcgtXkOFCxnjMzaCABVoytjjAFcEOB3xfSY/ZRSdJ86/u0rKHT
 +4DmFel+bCOyn8CRB+xfN1GbpmpiP2BUi9qWKwtzddrROWm5ZPeIn80umOl0BVeaGdhz
 tP8y4QkLthkhTDGTCVAO9yvJSimjX9rov96PZ6GTgAWyrOlVKgSUKn4UKIi6YmFBRvF1
 umzEA1NuHdYAqA+QaguwbchwjmWGebAY/os4QPt/ruGhnl8LSUnw3S50T2LYKR6APyi5
 1UqDqGoEnV1Hdfc1rh8L1uYaSPGtnmzDyzqdllBlaGu9IoiQdK0vtbzqcTA6Q06eGzQG
 1O7w==
X-Gm-Message-State: AOAM531d6DSBzLKcLPjn8TkoYeLe6skMsQwK4S5yu4pxsXkxzHFqJN79
 nITWd8tjLFi+q5iX5Ne/B60=
X-Google-Smtp-Source: ABdhPJyAN5qZYimmiLJsxFBo/5zvTCga+8G7/eOmKCQTEdGPpNyZdtuU/fUbzfII9WcvK1fEqIuA4Q==
X-Received: by 2002:a17:902:bccc:: with SMTP id
 o12mr7435028pls.162.1589633415208; 
 Sat, 16 May 2020 05:50:15 -0700 (PDT)
Received: from localhost.localdomain (61-228-240-171.dynamic-ip.hinet.net.
 [61.228.240.171])
 by smtp.gmail.com with ESMTPSA id k27sm3768323pgb.30.2020.05.16.05.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 05:50:14 -0700 (PDT)
From: Lecopzer Chen <lecopzer@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: Kconfig: Add support for the Perf NMI
Date: Sat, 16 May 2020 20:48:57 +0800
Message-Id: <20200516124857.75004-4-lecopzer@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200516124857.75004-1-lecopzer@gmail.com>
References: <20200516124857.75004-1-lecopzer@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_055016_145227_DAA9CDC6 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lecopzer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lecopzer.chen@mediatek.com,
 Lecopzer Chen <lecopzer@gmail.com>, alexander.shishkin@linux.intel.com,
 catalin.marinas@arm.com, jolsa@redhat.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, namhyung@kernel.org, will@kernel.org,
 yj.chiang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is an extending function for Pseudo NMI that registering
Perf events interrupts as NMI.

It's helpful for sampling irq-off context when using perf.

Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 arch/arm64/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..f89c169771a0 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1679,6 +1679,16 @@ config ARM64_PSEUDO_NMI
 	  If unsure, say N
 
 if ARM64_PSEUDO_NMI
+config ARM64_PSEUDO_NMI_PERF
+	bool "Register Perf interrupts as Pseudo NMI"
+	depends on HW_PERF_EVENTS
+	depends on ARM_PMU
+	select HAVE_PERF_EVENTS_NMI
+	help
+	  This registers Perf interrupts to NMI when Pseudo NMI is active.
+	  This option is helpful when you need to debug any context disabled
+	  irq and get more inforamtion.
+
+	  If unsure, say N
+
 config ARM64_DEBUG_PRIORITY_MASKING
 	bool "Debug interrupt priority masking"
 	help
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
