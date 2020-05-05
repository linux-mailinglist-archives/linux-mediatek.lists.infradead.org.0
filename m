Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF311C5819
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 16:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rB/QYMKvJuLMt1uKsrnMb1Wd6aOdfEMqRzSZl1Cgrjo=; b=ScpX21LeyCzwyx
	uEaOvQgHHHWMVPqJD7ISM7D+QHDY8U1R1zN1stAKb/yTKu1M4Xd4NVbSLjeKMGgE/ZTr/1uw98wiG
	Vy/Eu6wa2V/v4raxNgxA+WSGLJHj8r/GaXVw8+AQZT5h9YI2E2H9j2FCLtxcYAKE5aPLhxlYJapeb
	GQYFHCRTFf8TSoJxPajIJL+WYe7OgJVMyc7xMbkK0JHVETtSLAVjiRVKo/P2LVa/RrkrVQpdd4A3U
	zH7ZoiTbg8scF9JOHOWyO2fgrHV3VZGk6koLF57/8dFqwMtlZ1Uq4kXtROupanMNRawC0a3evSv0B
	MKz+CLdN42lSkSZMRHnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyCw-0007Q1-49; Tue, 05 May 2020 14:06:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAI-0002PP-IB
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 14:03:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so2893799wra.7
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 07:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=LQwCci65NzZKH7S/k3KLNL9uDqCmT0NhL3+vr0FbsT08zlA7KCjEKKJA3sZtnf2+C9
 MgO3OOfj1iU8OOWJHAIFg37vsHsbgcG/ty8jsHreNlysA9n/Au6JLGB7Xxv750eTBgT+
 Sl+iLzCZd3APUglRO82tTPfZvQVLMJ3uavNHAqLe/avFh/YZADgXqEMvzVqRopDktCy2
 JBbLkT1YWVum/i0H4xsIcA/O3SnOtyCQ72Fc/9gVx/ow94+06PK5wjuMsmA86t5vb78a
 f1BNH1aOQZ6Kmm6CjzEh853K5kHs/8DpEoorye+0Q8Vxs8MX0SzFaarHH6cmphLUotuV
 jc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=twAVUHFn85Iqb2y7lgCyhaIBJXu/m5DpDkLSv2bMrycxkjmmuZld+pMl6uLb07mlfv
 aWOj5z36dtDC5SBu9Ou52E3AHGv8QGQiN9XGRGMWaKuRhkSGWLuxOTXIAJPv4FTYLYCZ
 wCDZ8XkKNm1a9A3uLx4vtHLQuuiFCJaqznAhSc7rdqWliwMcfy0LxuCXJCezdOYdpF8K
 w4jdJeRPPauJzkD14B5dwxTU4lIHtEe0ksw5eBY/d4SnuwXuEnHrr5eGlunydmolrwy7
 OJA1tNixn4V4fAyBIrqzqcMyBglhTa64eUQp/FnSfvUw4tVnJbqL5v0L+ubBIuiWrUe7
 y3hg==
X-Gm-Message-State: AGi0PuYtLeDB4fBXP0Q9bTM5MImbY7yaUFA5aKWevZRUokaeJt/QKhz5
 pOmidavL8X/37w+MkKMpzRM0og==
X-Google-Smtp-Source: APiQypKqTKjLTaeehBmyF8ZBLt7Ztsq7bEei0OsGAye1X2D3s2hQaZgytBvFg7WpUlAYtX37tEZNHw==
X-Received: by 2002:adf:ab5c:: with SMTP id r28mr3827494wrc.384.1588687396984; 
 Tue, 05 May 2020 07:03:16 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 09/11] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Tue,  5 May 2020 16:02:29 +0200
Message-Id: <20200505140231.16600-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070318_767026_54E6565D 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the ethernet0 alias for ethernet so that u-boot can find this node
and fill in the MAC address.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index a31093d7142b..97d9b000c37e 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -9,6 +9,7 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		ethernet0 = &ethernet;
 	};
 
 	chosen {
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
