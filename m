Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC722128F96
	for <lists+linux-mediatek@lfdr.de>; Sun, 22 Dec 2019 19:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ePQEqa1/5VOrOsQ7UWsBcq6tX7FYSr7IpgT8feTIoYQ=; b=bzy0cLYfoDDrLlg054UcHkcHJh
	45Go/ZEhFw8yyNziJVwqjHRAXxyXUOlwiINxcmmtTWsI4HnANW7XdK2ICKYegk9CjG5o7rCqjKkj+
	clBnb7YwyYWfi3L+r3uZD/kZ/O/ckhSRtCynY9DMRZq8dH8kxtW5HlT85BFOv64WnD5jQ+GQULhvO
	AyDiFMjmh927lA0qg3fyGtNFY1FO9FVIxIX42YeCcjtFXv2O4tnnmC3NQnKNYMuIyLhrUoB4xhHyb
	0noAwWJwMJ/XAT7P4p1bQXtgqL7V2Hkoa9RNtxdbmKFbkPY29F2ENvxdwJSUWDnqpbdhNR/hB3WuQ
	gIjVG3Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6KV-000428-By; Sun, 22 Dec 2019 18:51:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6JR-0003Fg-2S; Sun, 22 Dec 2019 18:50:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id q127so7710160pga.4;
 Sun, 22 Dec 2019 10:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=T2D+rZhLHzhPfVvf+7jno9xAtOV3Jp4ift9l+qrE9Ys=;
 b=LkGP531X5gDnvg3YLvStNo2Anp2FTAWZs+KrmtshWJS51Ttx9jLOMBVt48E3uoyh/2
 4EeIz2hZfntIkS3VG766gehaapy++8prA0MiOdE8pZ3HF4v+ys/0qXzGuO+o7xhMABKb
 OBhOFDhYKscNgmBcpvmzxK5wJEO2gNcqQSDeDul6y7a7IHcTM9U6bg85ZwL96SD0BC/W
 e6U64/iA6ZLdu0HcpKcFCyh+zUUfzNJHo6NORfFAIuY7LVTDbh9hpiowx0TPltMIjq9G
 +WzelQC+/Y2ht+i2RdnVapYbeiEB8LQL5GTbRbJ7WlEvIP4Kuk2tozIffHXzWm9RAvW3
 U3tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=T2D+rZhLHzhPfVvf+7jno9xAtOV3Jp4ift9l+qrE9Ys=;
 b=KNcG4UZ2Svm3MLNS9aW/bAi6Y0s2wAg8uWX34VklYtuIFPR/a5uahkSoc2oCp2CEez
 iI9cZLAwpva5t15RxqRymDIsPc51VR/QvRiu1oxNrjxGoMb4IEHN6R8eOv7P/OtRa4lX
 pOxic3RZt7vkxDzOtDK6G4SOxh3h4bJfkrRtLcWad90fjUu9iwNyrV8MFK2uzdeKrs4H
 UZPck0Euo1VZXf2eHUptJCXyskZ9otkqIcdfrL1+g+mk/CuR4clSL7CZC1fbUFUGOGPy
 eN6/tVEIa74NPVyB1GMmKF3Q5MeHvs0D1nUqK7HRLgfxaQj8U3nIEdcpSOkGcySWWwn7
 9eGA==
X-Gm-Message-State: APjAAAWvbfYGN0NGwHu3NigBlocBoRaJXcowUR9AsJ463QQSEvxj8OjC
 4TcUfhvSSZnlZ3nDuxtC6gc=
X-Google-Smtp-Source: APXvYqx7+WwBdDmKMRn7IPzVdGaGjqVOSqHcY5smgx72jF1ROSO1rTBtd04VYHH+mMeVbGzx5CwrWw==
X-Received: by 2002:a62:1944:: with SMTP id 65mr29356374pfz.151.1577040642355; 
 Sun, 22 Dec 2019 10:50:42 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id e4sm10449812pfa.44.2019.12.22.10.50.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 10:50:41 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: ssantosh@kernel.org, paul@crapouillou.net, matthias.bgg@gmail.com,
 rogerq@ti.com, tony@atomide.com, lukasz.luba@arm.com, kgene@kernel.org,
 krzk@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 allison@lohutok.net, tglx@linutronix.de, yong.wu@mediatek.com,
 jroedel@suse.de, evgreen@chromium.org, rfontana@redhat.com,
 digetx@gmail.com, pdeschrijver@nvidia.com, john@phrozen.org,
 alexios.zavras@intel.com, sboyd@kernel.org, kstewart@linuxfoundation.org,
 info@metux.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: [PATCH 3/9] memory: mvebu-devbus: convert to
 devm_platform_ioremap_resource
Date: Sun, 22 Dec 2019 18:50:28 +0000
Message-Id: <20191222185034.4665-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222185034.4665-1-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_105045_113894_CE63E955 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/memory/mvebu-devbus.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/memory/mvebu-devbus.c b/drivers/memory/mvebu-devbus.c
index 095f8a3b2cfc..886aea587276 100644
--- a/drivers/memory/mvebu-devbus.c
+++ b/drivers/memory/mvebu-devbus.c
@@ -267,7 +267,6 @@ static int mvebu_devbus_probe(struct platform_device *pdev)
 	struct devbus_read_params r;
 	struct devbus_write_params w;
 	struct devbus *devbus;
-	struct resource *res;
 	struct clk *clk;
 	unsigned long rate;
 	int err;
@@ -277,8 +276,7 @@ static int mvebu_devbus_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	devbus->dev = dev;
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	devbus->base = devm_ioremap_resource(&pdev->dev, res);
+	devbus->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(devbus->base))
 		return PTR_ERR(devbus->base);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
