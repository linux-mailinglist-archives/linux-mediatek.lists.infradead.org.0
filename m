Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF56F1DE643
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pIm6ZOmA18jlcOeA9K6ngrKqdElRzO5VhQ6KwLvyRk=; b=XLpg8Cr9R8taiN
	zB3JgEjsttysdmAczG/dyYmNb08GjJGhmeNE0pTCkhbi4aBTAw8lR2yKua8mMapJQ0MNYnBdceEYV
	by1PxB+sHXXDE2v4oK822pKFUegW6UdqzlQahABq9CfCzh73h05dGryVWQkgiL84EqwzaZLXbYrLH
	NMAJwVfLucD4ZOd8eFcisuyThDl52nisRDg/9XwtYsDVD76sxll7KQKhoNd4PbxXczK5orAlNOKaf
	6I/3vJttjhC4rb0QLX01SLAoqGe2ln5cBamkXjRRV27IxNDqexP6pj8uwLQLSOmocX7arB7Ba7PIy
	XmThQyYMz8bMpw0rNIjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Tf-0004QU-Pd; Fri, 22 May 2020 12:08:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SU-0003Hg-MA
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id f5so1335921wmh.2
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=z09pplDzbGu8zzHYZwmUG8WYuN5QnZoIThbQYmhBMWEdeanmgiQmeEaOJAAsMBH5co
 Vc9SJuMdt4nXdaLIqtA5xDnvUSVBnfcy8+HUHt+7XekAI9e36/NJH0qHuP3oPkZSLY28
 LxPlZYlsDw4W1ckHD0Es7lqGaXILSlhaTD2WhJ45RQCKFru6rVsyfbYXPtNE6rVrSQRh
 IE0Bnp/5oPPCepTQASBnHTtpJDXwfdNkKtDoTYs/yLZbblVMktuo8Y5utgxPeh07MRaN
 2JzjgOFu1d/xixp3xct7DO4Siv8YXryeMOIM+u9ZZWnonUMTeRGBc7bTnOhr9As4Kam8
 2eFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=OFKykYk5RMivsFQE4qFkPU70rJ6Zly4AZ3byC5XTg9INzkMzLziHwawm9OHSm5xPPo
 HRhCe8jWJDN3o27wHAJCfcKQXyptTN904nIqBCku+uL8mEdph14mYpePqIGgG8XtnZH6
 UZvm/8pYU3wL8SX7YWRqagxDIXaA+dHUgr1HOZkeDLRpZOnC6jbrfWEF216MdDE+sYh1
 R9c0XUZAOOoBHR7qfxeSUe4ZO12PMM6Bh7dt8rCwCIXK0p2AtUGZLVAZKUWDSrtN29sC
 tVDVCuZBh+XdqYR+iUb6d4ECXusH10Oc/kvdL8PY4+1HysoEaoTxMsLAk9mB/3hXCnVu
 vCPQ==
X-Gm-Message-State: AOAM531wap+UxGcc0/ZSPej15waOsvNy2P8a/4qWKnn1SWiyDVoXfhLq
 bVgusaoHKqE5Q/hQfHtRUQRMKA==
X-Google-Smtp-Source: ABdhPJw0hJl3cQP5flK/6nQax5Ceb2AK3ZRifZ2de+tpHbVYDyDSC0mU0F2KKkWDNbi4cMfQO0bWhg==
X-Received: by 2002:a1c:5402:: with SMTP id i2mr14046163wmb.185.1590149243221; 
 Fri, 22 May 2020 05:07:23 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:22 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 02/11] dt-bindings: add new compatible to mediatek,pericfg
Date: Fri, 22 May 2020 14:06:51 +0200
Message-Id: <20200522120700.838-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050726_740143_CBB9C94A 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The PERICFG controller is present on the MT8516 SoC. Add an appropriate
compatible variant.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
index 1340c6288024..55209a2baedc 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt8135-pericfg
           - mediatek,mt8173-pericfg
           - mediatek,mt8183-pericfg
+          - mediatek,mt8516-pericfg
         - const: syscon
       - items:
         # Special case for mt7623 for backward compatibility
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
