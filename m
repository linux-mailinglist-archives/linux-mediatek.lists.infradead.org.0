Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C87B12BE79
	for <lists+linux-mediatek@lfdr.de>; Sat, 28 Dec 2019 19:37:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M19FdVZ6UT6GGI4hsvNttgCBsoxF4g8kTnJMaa8xgl0=; b=Xt/tG2vVt87zTBuLWzxHcRfKZa
	+ecBzgBUwOBxGKDNs1jU/VVrNig2NBRtXc2voPHxOtb8Gy4t1igefqUQB9PMm7O+zlgrM40Iz0QIA
	Y3Hk6hBqDN6/8LDpACiqmBqkj4GGUevTzzXXY1Bkl/IlTDzsrIr7l+yTR7RJi0UPE6a6APKtsY/A5
	X9XNLpg2v+e2WEUwEzycTgmhOf+nvpkggUrW+2r/uSPoMhVuBd59GkDv3fa4vTBNcUYaKbAsIItA+
	7shqqfSeUunu887X0v7r6Ccr2yr72ecurdr46eD3BWZ2Ikw+dP3QdCnnb/eZn40bdKn5pc4HBv4HV
	JSN/OCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGxU-0005oS-3p; Sat, 28 Dec 2019 18:37:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwB-0004rw-A5; Sat, 28 Dec 2019 18:35:44 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s7so6377319pjc.0;
 Sat, 28 Dec 2019 10:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fo5K0TPliEV99faGCrDAtoXjqd/u/f/pgI4tXILZggE=;
 b=bwDm/LYmefFJ+yrVjqwVqleBC+dVr4zFymT/XmDlSRZmDs39PHAJyYv6Rv/syLbg3+
 k70t6WZ4z+KBbkrD/38bHo0vozwx9mUI3ZZIU1WjRz++gkUPTiBVpANkWy8hRJUtQooc
 5AsLJzpS+cDTcgox6s63deyucKFJQl20XFFo2aWRMMKTn3Ey4qiZ73EQ8X4HF+u/Szoq
 AxTNjN4C0e7WRtsEJTwEXB59yZ3b/EFo+PVSwD2JJNujM3Jo65fFFlkCFCkkCWxz+MKe
 vTUL7DOlgV/vSe9n4Z8/QrDaA/8AGjRG/35ydwEpQOWUjA6MPMm6rLT40g4dCeGdRt78
 l5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fo5K0TPliEV99faGCrDAtoXjqd/u/f/pgI4tXILZggE=;
 b=O+st/tCrk4uH8Y18Zcmkl1jCFsZ/xrr7V0e1hCYP8pTkGcRsXyx3sMTIeD2tB+5Hce
 VjQTncDXATXSo5WI+0k95uGkOd4guN2Q1oRNvS0U5X13zBBA+JGtK7Kt83SBjg7ZPHR0
 XfIObf5nnIcXmsdqG2uUuK6VaR6xCS3odPeoHfOW/tnzGQUTUcXM9o7paPy2YsYLJKRw
 bdil2a/IwIrjsPyMF2qPpZpD5XY/lMQRepa7B2Yteta2q/OlTe79nVkzq0q55NrWLHTA
 udO9qyRUYzkt97kANIXWlQ34zCM2o4Zx1hsQtImaIu+Dgh0YGM1V8wg57tu3c7st7cv1
 LULg==
X-Gm-Message-State: APjAAAWBe+cJw0ZQaBr5diavd5qCMnKDYitTnnpclo9XzDil3MNH3Q9Z
 Tt/IDrfDa+24hSIFNQ2yFas=
X-Google-Smtp-Source: APXvYqwUmRdS/j5Ko1syf2WgkT7LxHN76wS8zqcKdPBh656bSiwfHZJ5FFjisEcSZu9ospl02un4HA==
X-Received: by 2002:a17:90a:a881:: with SMTP id
 h1mr34064320pjq.50.1577558142809; 
 Sat, 28 Dec 2019 10:35:42 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id u18sm42980854pgn.9.2019.12.28.10.35.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:42 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 03/13] mailbox: qcom-apcs: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:28 +0000
Message-Id: <20191228183538.26189-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103543_347289_15D8C59A 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index eeebafd546e5..0faf69137780 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -49,7 +49,6 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 {
 	struct qcom_apcs_ipc *apcs;
 	struct regmap *regmap;
-	struct resource *res;
 	unsigned long offset;
 	void __iomem *base;
 	unsigned long i;
@@ -64,8 +63,7 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 	if (!apcs)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
