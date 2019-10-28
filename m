Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4269E7A31
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 21:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fVONTpzJsvgKwVMTzIUk0q7Q73ur7cPTtRV0vig4dWk=; b=aRvMiwy+sY2Yrv
	11rS8vrOmqOKKFK0mXLr6TY3YJkb6dX9qZecElhrIaN+MlDnKVLZFkJzsOv2U0jprKxMgHIEpO1D6
	p9b4RO4x2j2U4lxB9Es/AWbP7pQ+h54QhMAEM1FFnX0BbrWi1k3mf8vW2WD6H/jgCflk/FNkW8BvO
	mpBtZccwCHTEyztGsmEuwBKJeqPRLG5okpWuDmNh6zmhjuIYjaqRMSLKThQup6r4hc8V5A+3P21Ok
	TNCBkgM85wtLdyitXpq5dwI0dikr9hTh3sop+xQ0lxMTGBf1B1nZN/oyG/5V6l/EmDReaeVg+3y2B
	O3GmbFNtOX74k8dTHktw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBkg-00043K-PP; Mon, 28 Oct 2019 20:36:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBkQ-0003tK-UM; Mon, 28 Oct 2019 20:36:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id c13so7714459pfp.5;
 Mon, 28 Oct 2019 13:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2eVkQtIn/kKnma8y9cwV6ClxG9uop+VztYkAE7P1mO8=;
 b=b//ClzcUZP5lNIguYzGrNsqlLmWAsiXCNmR6XVmRGQyO9IpHdPNJNM3zwzsH6xbL7l
 r6aAJHRua/sLXQEKp5pe+yZxE/Y4WHHYlRMls9e7L9PHXOxFd52kwC++T07yRbwY4OJ0
 o60C7ky1UJWOR6dS/uOHP+ukjEh/qQP8cxiSuTRCuweAoQ0tQAWMycdUMUh5PX4HeyE8
 txTZcIw4mE3lTbFYmd9Mtm4hz1V6iyNHh0+JKKLdBF8+EeCK9ueRBZ/iKSXUepxpC8g7
 e3lmsLfto5jfL9qiHSDhGAJYsaEeFV2EuqE9Pfr57eTtPTaNVWM8Ir5qkc4Y2lXjvpbR
 DgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2eVkQtIn/kKnma8y9cwV6ClxG9uop+VztYkAE7P1mO8=;
 b=MoiUQ+94+SIBi2jzRmhAmCIzGiosXrpK3WPw8z+YsTc+HDa4CdeDomW6HjM0rdYgWV
 5uRp89SiEsYS71MFykE/e2AX3gC1+Ob14Dw8zE3swZRC+K8QbMAjDvvyTm/hoWMlsZu1
 nIpLejQe2urc/iOFB9mNdbO6TzEyVVd4EAAoW4C/DxsRRY96gMHkqE8kB+3F+z4JK1fR
 kCCBabWXe/apelqIbgJ0o5iskt5JYqGvV0D2aM4tcSpN3DRvERPxF6EAFdSBEUReKReC
 joYnwc65h2iGdfDSnfJU6uNQr+iVazPjVcruyG3vE+/aMRbVwE172EmUNyEhguL4tdk7
 QJ2w==
X-Gm-Message-State: APjAAAWb6p1kKLgA/cQh/uh8CpwsTaob2EJ01B+pEq2aAbPSC6WhSn7x
 zZUGJvatXdrn1MMJNB58PN8=
X-Google-Smtp-Source: APXvYqxn4r3LTRA9B5aBfCDAvI4pAQSPotWe8JAzIrgIs7Z+04gKfRBPz3DLEc0RryrCUMBZKIaILw==
X-Received: by 2002:a63:2225:: with SMTP id i37mr13535290pgi.62.1572294977814; 
 Mon, 28 Oct 2019 13:36:17 -0700 (PDT)
Received: from saurav ([27.62.167.137])
 by smtp.gmail.com with ESMTPSA id e17sm11126717pgg.5.2019.10.28.13.36.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 13:36:17 -0700 (PDT)
Date: Tue, 29 Oct 2019 02:06:09 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: nbd@openwrt.org, john@phrozen.org, sean.wang@mediatek.com,
 nelson.chang@mediatek.com, davem@davemloft.net,
 matthias.bgg@gmail.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] mediatek: mtk_eth_path.c: Remove unneeded semicolon
Message-ID: <20191028203609.GA29373@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_133621_720692_5A3394BC 
X-CRM114-Status: UNSURE (   9.86  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (saurav.girepunje[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Remove unneeded semicolon in mtk_eth_path.c

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_path.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_path.c b/drivers/net/ethernet/mediatek/mtk_eth_path.c
index ef11cf3d1ccc..0fe97155dd8f 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_path.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_path.c
@@ -57,7 +57,7 @@ static int set_mux_gdm1_to_gmac1_esw(struct mtk_eth *eth, int path)
 	default:
 		updated = false;
 		break;
-	};
+	}
 
 	if (updated) {
 		val = mtk_r32(eth, MTK_MAC_MISC);
@@ -143,7 +143,7 @@ static int set_mux_gmac1_gmac2_to_sgmii_rgmii(struct mtk_eth *eth, int path)
 	default:
 		updated = false;
 		break;
-	};
+	}
 
 	if (updated)
 		regmap_update_bits(eth->ethsys, ETHSYS_SYSCFG0,
@@ -174,7 +174,7 @@ static int set_mux_gmac12_to_gephy_sgmii(struct mtk_eth *eth, int path)
 		break;
 	default:
 		updated = false;
-	};
+	}
 
 	if (updated)
 		regmap_update_bits(eth->ethsys, ETHSYS_SYSCFG0,
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
