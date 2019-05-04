Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D0613A4D
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 May 2019 15:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G98JMKV0N5zFT73QhM8Op56U58MmnhcgOQe2EPjA0KY=; b=QqjI2TGQy1CbcbBXk91nAfn0Yo
	xrYlFK7yoz7FTUmyelO8GMEyVTYryrQ3y0pNizJ2SeoJX4HTWMedlXhzR0WwVXS2W0yfsNQDK5KED
	LnMNybaSAHYahaoFUw/gQ4VlIHccIFs7/k+JhcEuNwk0h6zJw7mwdHfQZ+mVDYtE8YAmXJTHq3VNx
	a80N30RoZzk0orFrs+CS4y+K62LDXoZqpdjzaX6ZilX3PijFwjAl6iaUunCorJQ81NazgYNfpmfT8
	MqC+xoLL1dT8xD+kebVg4aoyYVm0YlerrWF3U4MpilkNRgaper4hQRkwqz+gKekl79jlFxJvSD18a
	nNGQrAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMufs-0008HG-JZ; Sat, 04 May 2019 13:25:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuet-0006Dq-5a
 for linux-mediatek@bombadil.infradead.org; Sat, 04 May 2019 13:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ilJMImjlYVy70bBELZy9Jn7imshjw1ckAQEWKZMZSgA=; b=bed0gRBvo6JU/T2DH/GRm7rdr
 grM5XgW37Nuqjg/sZArgcw2GMZcB9dKl6k8rrl3i8Bd2U9E7UNZJCTOJ/P6gBit92PxOPiLPPlmxO
 /R/dQkGRTF3islyBFyOx4dhuvYrAg78QPeKjdp2mOv2hwrt9Ry/h7obM5NlHLTo2xArmgvjYm3GV9
 a7Vo2g61+7vc7Nnw3cFqzy4uPC2mYLtLITR8FbgYD8LELWw8hVp6g9Dj9oBiTvYsB7auH/OTaA62y
 cyUxZVOttcOKUt3pMQ987K0SlwxrKOdoWbz8zBdEUvnoVJjmshJDorbQrZ2RMYOtiCn+nEv3ubyr6
 lC9Zo+22g==;
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMueo-0002CA-Ft
 for linux-mediatek@lists.infradead.org; Sat, 04 May 2019 13:24:53 +0000
Received: by mail-ed1-x543.google.com with SMTP id m4so9453526edd.8
 for <linux-mediatek@lists.infradead.org>; Sat, 04 May 2019 06:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ilJMImjlYVy70bBELZy9Jn7imshjw1ckAQEWKZMZSgA=;
 b=kHk2+JWRL/cGbPjnkWGob5MrdcSMAbvrNrGgqY4ptSrD91uypp+Vq+W6LqZ2SzdNPE
 rqhrOB1Mv49q0CzhmJlb8yvM9bbLe3nrZf36IzqLMK/n5yUGPX2ncpB5oFck2z1hMfxg
 AqeyMj5B6bRf6B+53EGk6s/43P27f97PgW1EgH+hzjnyQyru2apIMio9bh3E5AfvxbB4
 ZKHESO05fwbw3JCIdISFH6QBNbxP/P9NUoCf71vTAQ1EfMsr8Ial0FNQKC2eP7csG7Ni
 YzI0SuYDlcznFA2cjWTkrdfYIxpTmn3wrE066epBIP80jRLMpbCUt1cDYGrCIiopZOyd
 nmow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ilJMImjlYVy70bBELZy9Jn7imshjw1ckAQEWKZMZSgA=;
 b=bTC5DqMPdlo5GPpcrEt/iIhuZNP7gI0NiFl0cVyI7jKofAEtYPD1zvFkK9m2AEBn09
 qqhZO7CFQ9UQYnVSBTIIn5CGQUfzQRBorctfFuQQlKCqEFVIZZci3TZSbpyhXaKw8CQf
 20BfkieRfyHnR91w4PdhZfKQKjiZsB16CBW++MapmuH/bv2O+sW1p0vI24/iIlKwxK2i
 MhDMIYDCeuNYVv9vtnjttuiireo3QhAk3oRMJj6n1dv7YPIJv2tcycB9YeKXeypvCn/h
 YD9GroV//z1OLD7OxDpfsrsdygpGG70Psp0w1sBUlpGMFGT7sR8ek2q9FRewZZDXDvq1
 ANAw==
X-Gm-Message-State: APjAAAVhEtOOsxHY3glezR+iqcaACQXKOZHMjaBMZjuR0UJ9SXKhGYPc
 JWWO+XUPhWfCHeIMhQGzU2sE/Q==
X-Google-Smtp-Source: APXvYqxvfnAmtfi/HRH+5Vwm5xT8Q6YfnIc2JocZD/ewrQb7MbDvGkg7DJVtT1tIUxVEjnF4JYMjkg==
X-Received: by 2002:a50:b669:: with SMTP id c38mr1398711ede.201.1556976289385; 
 Sat, 04 May 2019 06:24:49 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:48 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 7/7] iommu/vt-d: Always set DMA_PTE_READ if the iommu doens't
 support zero length reads
Date: Sat,  4 May 2019 14:23:23 +0100
Message-Id: <20190504132327.27041-8-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190504132327.27041-1-tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_142450_576729_D9C4A28D 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

To match the dma-ops api path the DMA_PTE_READ should be set if ZLR
isn't supported in the iommu

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/intel-iommu.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 980fc4816d72..e78b0000056d 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -4378,6 +4378,17 @@ static void intel_iommu_detach_device(struct iommu_domain *domain,
 	dmar_remove_one_dev_info(dev);
 }
 
+static bool supports_zlr(struct dmar_domain *domain)
+{
+	int i;
+
+	for_each_domain_iommu(i, domain) {
+		if (cap_zlr(g_iommus[i]->cap))
+			return true;
+	}
+	return false;
+}
+
 static int intel_iommu_map(struct iommu_domain *domain,
 			   unsigned long iova, phys_addr_t hpa,
 			   size_t size, int iommu_prot)
@@ -4391,7 +4402,7 @@ static int intel_iommu_map(struct iommu_domain *domain,
 	if (dmar_domain == si_domain && hw_pass_through)
 		return 0;
 
-	if (iommu_prot & IOMMU_READ)
+	if (iommu_prot & IOMMU_READ || !supports_zlr(dmar_domain))
 		prot |= DMA_PTE_READ;
 	if (iommu_prot & IOMMU_WRITE)
 		prot |= DMA_PTE_WRITE;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
