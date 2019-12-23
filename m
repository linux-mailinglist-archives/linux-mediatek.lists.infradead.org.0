Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB63129A28
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Dec 2019 19:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rwG9xQQ0zFyrsANloH/faAIBkVg9DcOCnyIx5qtVOm4=; b=CVG
	j24jx/BwqiyHL5gldjWDNQZFjk5dUPvBZ1bTUgcCUnhIOHltV1aIfxIvjybgtcC9NVbkwo6Ml6vTz
	HOXcAtrcU4zlKyEi2TCXecxp5W/wKNv9p4HE2JQlAltQkCMLLw2usa2qqfqhDwcV+1UPrP0SBVCfj
	9m6ggREXB/cyQ73VuhKTa6kXrXYvK/S2ztHkn2moe4G1uqlt91E8Ng5Sv0sHzBWtYBCH1X4Kezxwm
	FywtF8EbUp7AAP0mGZP6LNfrmdaLcc+LYGz46VHPL9T6MFDWa71UY+LDLPxSqSk6/vpMAf2qlQ0fz
	wT3afg+wITJ1itufZJ6+W2awgDzAhzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSvh-0002kn-Qe; Mon, 23 Dec 2019 18:59:45 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSvK-0002TY-6G; Mon, 23 Dec 2019 18:59:23 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t101so143423pjb.4;
 Mon, 23 Dec 2019 10:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TCR4AR5ucUHlq9yNJFguI2NxlI68W/tsOUZcT+YMNl0=;
 b=eb4L4pil+JCG+cmdA0+Y497EM/NtrHh8JtUYUrydX0icSwue7g/LT7YybIYtTTcV/M
 MDaDFzfK3rGsshR2RJN/EE3X86kt4E4btFV3briwaxtCutIASq/3rWfK0hgKIeBr+pCL
 1DrjLmswrvXHxs3IvDOhgMcK+NehUow+N4Tv6eZIfMecsqBWCVjOwfJB/B9FMksOPQ/b
 fk3OA/ihwGFJVxTedK7BuI7EMQMK1YysKr8bZUBHso5sGbkgqhpLR2KssbBPoVEOEyug
 qB+K4Y29piISqu3qBMy6P1HWvW8dFPImPXFO3HIM7wgp0lRloRUfgj2KHzIbucnt9eu/
 uC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TCR4AR5ucUHlq9yNJFguI2NxlI68W/tsOUZcT+YMNl0=;
 b=SfJCLk8JbmlJODGZOEQeqDC8wQjPSM8UJz2toIfy4sqSzwfrF4W6n3O1oNzMdt+eKz
 8zGwYfOuEvcFfoDFVE8Fcx2kk2DvDLdZGo5RsGidz/dOGROBOJaZyJ7PTVHGmOzC8HkW
 ECT6Z3aLIuf2nY7ymAFRhxru9SRFx16G9teKRUjaIcQOFmDNqV3aoqDzb01rcPlaDLf9
 T4EOGP8cRJQfv2Tsmk1HY73Gx8+ZWcxi6VEfMGlU+rXrPvt4RsAtqJiLwcE3e8G39dTB
 qYJYlmC5M+8mUVLmA2+WVpZR1ojt1OG48iNY5etpQzikuzl8iP6TMJl/+vmZ1+vtUOuG
 Un6Q==
X-Gm-Message-State: APjAAAXF+6bO/b6sDiKpfciTYOd172NqKChcXlAjBrj0PuiIiz3FJUEY
 b2T9WsjUZQjISWCpVbWzxrTIafVPcXQ=
X-Google-Smtp-Source: APXvYqz84TR8y+QXxgUTlt23B6h//l3KypRdsMB1YXrNQMBidJsu/m2w0mjr/wrZCM0wu9iBN7SuOQ==
X-Received: by 2002:a17:902:b186:: with SMTP id
 s6mr32565870plr.333.1577127561141; 
 Mon, 23 Dec 2019 10:59:21 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r62sm25858012pfc.89.2019.12.23.10.59.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 10:59:20 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org,
 krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de,
 mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Subject: [PATCH 1/6] iommu/omap: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:12 +0000
Message-Id: <20191223185918.9877-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105922_260799_C64E33FC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/iommu/omap-iommu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
index be551cc34be4..297c1be7ecb0 100644
--- a/drivers/iommu/omap-iommu.c
+++ b/drivers/iommu/omap-iommu.c
@@ -1175,7 +1175,6 @@ static int omap_iommu_probe(struct platform_device *pdev)
 	int err = -ENODEV;
 	int irq;
 	struct omap_iommu *obj;
-	struct resource *res;
 	struct device_node *of = pdev->dev.of_node;
 	struct orphan_dev *orphan_dev, *tmp;
 
@@ -1218,8 +1217,7 @@ static int omap_iommu_probe(struct platform_device *pdev)
 	spin_lock_init(&obj->iommu_lock);
 	spin_lock_init(&obj->page_table_lock);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	obj->regbase = devm_ioremap_resource(obj->dev, res);
+	obj->regbase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(obj->regbase))
 		return PTR_ERR(obj->regbase);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
