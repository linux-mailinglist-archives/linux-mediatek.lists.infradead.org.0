Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B802006D8
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jun 2020 12:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q+03bLg5Tq2KD4eJkBeH3X+qRSy0hc4Q4CpYNGJNQpg=; b=cmB4KwsbHnZQESGW1SZ49icV8b
	jyo012nHBaF7RvZ7I/cZJUTNPKGFQq6Jen/HY6kHVpQJ5IdpH9Pych47578UAFj1ZzHvP8Sq5JaWz
	PBmyun02OJk7eWt0JLTllE+bmfWN4RI0uyWk7UOsbJao4BrUdgKcAN8D1d7ZoueTX5Xu2rI6l65Tc
	5jA2aal842thd1CzXCDY6cqBVSYIO7fPia8AKXdK+TMzswnsuAYPQjTMCPOxm+CsJhl8kzyqR+cFQ
	okZNhWKAAh+dolD3qjh6nHeiFESLsGQtGuiwPAE2WtJcEvRaOTeDkVb5+PHrz1vusl18zZeUM7wwJ
	LSNPr6Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmERu-00024e-5X; Fri, 19 Jun 2020 10:40:42 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEON-0005BB-J1
 for linux-mediatek@lists.infradead.org; Fri, 19 Jun 2020 10:37:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103702euoutp014b8c11c4f37b1de921d773facca9f19e~Z66GIsw5w1680716807euoutp01d
 for <linux-mediatek@lists.infradead.org>; Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103702euoutp014b8c11c4f37b1de921d773facca9f19e~Z66GIsw5w1680716807euoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563022;
 bh=dgA8N0ViLqnC/QZEgzrc3l/K0+XnEV3AJx7m2vhhZ9o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PE4LzYrd6uUeRXWdQDMTvPW9GqCB6ekBU9J8Qoubhl8dQOzjiNqcV9zSmL8glBmeo
 Z3VrxMRzIU4yVUYeER6z/WG7WmAkMvm0RYHU5i8NcGkItj4uCx8g16SQh2o7irjg/w
 jYic7ujGMnDiKD/2vhagIskbRa5QW7Pt4w83WziA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103701eucas1p2e4008a7ddd1cda75ce7e7ff09ce39677~Z66Fnmrb81674116741eucas1p2F;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E3.9D.05997.D459CEE5; Fri, 19
 Jun 2020 11:37:01 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc~Z66FRTVYO1675016750eucas1p2B;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103701eusmtrp1774c5f529632baeace94574dc976e819~Z66FQf2tk0959609596eusmtrp19;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-df-5eec954da907
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 60.EA.06314.D459CEE5; Fri, 19
 Jun 2020 11:37:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103700eusmtip2d0ed865fa41b3cff8d1f2c9dc2e59af7~Z66Egh1F90302603026eusmtip2N;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 12/36] drm: mediatek: use common helper for extracting
 pages array
Date: Fri, 19 Jun 2020 12:36:12 +0200
Message-Id: <20200619103636.11974-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFKsWRmVeSWpSXmKPExsWy7djP87q+U9/EGby9p2HRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRXDYpqTmZZalF+nYJXBldf3cwFzzgrLgx
 4TVzA+MUji5GTg4JAROJfRefs3cxcnEICaxglOi7cYMFwvnCKNG47wlU5jOjxMquN0wwLRMe
 tEElljNKHNt2lAmu5ee0fhaQKjYBQ4mut11sILaIQCujxIleHpAiZoE9zBKLdv0CKxIWCJfY
 MXkhWBGLgKrE1WcPwWxeATuJd1fuMUOsk5dYveEAmM0JFH/dcpAVZJCEwD12iX1dj1ghilwk
 Ti3aDHWfsMSr41vYIWwZidOTe1ggGpoZJR6eW8sO4fQwSlxumsEIUWUtcefcL6DVHED3aUqs
 36UPEXaUuPj4AxNIWEKAT+LGW0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCep+D4ld
 mx4xQkJoIqPEwq+bmCcwys9CWLaAkXEVo3hqaXFuemqxUV5quV5xYm5xaV66XnJ+7iZGYAo7
 /e/4lx2Mu/4kHWIU4GBU4uF9EfI6Tog1say4MvcQowQHs5IIr9PZ03FCvCmJlVWpRfnxRaU5
 qcWHGKU5WJTEeY0XvYwVEkhPLEnNTk0tSC2CyTJxcEo1MLoe0VEs0vow/Yj62gNv/n7jV6/f
 uVLn+t0nW9ealazxtox8qyXIsfzR3MxZtU9uP18h4KfrUyapEywRb9dqUtyw4G+Vs1id/J+/
 x5g+T1Iws4mrm7N8UZf5HpVDFw8tYTqQ0f1b2VxFxrYnrU7kSNL6CT2RXD5zFcNCGMMaFb7G
 rt/BtfZMhxJLcUaioRZzUXEiAOfsqZNdAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xe7q+U9/EGezby2vRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehldf3cwFzzgrLgx4TVzA+MUji5GTg4JAROJCQ/a
 2LsYuTiEBJYySrR8W80CkZCRODmtgRXCFpb4c62LDaLoE6PEqiUNbCAJNgFDia63EAkRgU5G
 iWndH8FGMQscY5bY+Pg9cxcjB4ewQKjEj6lSIA0sAqoSV589BGvmFbCTeHflHjPEBnmJ1RsO
 gNmcQPHXLQfBNgsJ2EosX/CeeQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiB8bTt
 2M/NOxgvbQw+xCjAwajEw/si5HWcEGtiWXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNS
 iw8xmgIdNZFZSjQ5HxjreSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4
 OKUaGB3WVyc3PZl5bHXAA231uvZ716c8qFxcsv7wnCrnR1LmXxL3SzGxaD+t3ZoyITJYPty2
 p5nN3f53T2yxd0/pneBrWsEPW2pe/u5d1nzqnPu3FRGfZyReXmvOxJP7xmLCUYsV37b6JiUf
 jP1hvGK1ufAih+RdltvCP14+lrNJs7PB94W79dtkMSWW4oxEQy3mouJEAJFjdsu9AgAA
X-CMS-MailID: 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc
X-Msg-Generator: CA
X-RootMTR: 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033703_785520_FEBEF517 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use common helper for converting a sg_table object into struct
page pointer array.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index 3654ec732029..0583e557ad37 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -233,9 +233,7 @@ void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
 {
 	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
 	struct sg_table *sgt;
-	struct sg_page_iter iter;
 	unsigned int npages;
-	unsigned int i = 0;
 
 	if (mtk_gem->kvaddr)
 		return mtk_gem->kvaddr;
@@ -249,11 +247,8 @@ void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
 	if (!mtk_gem->pages)
 		goto out;
 
-	for_each_sg_page(sgt->sgl, &iter, sgt->orig_nents, 0) {
-		mtk_gem->pages[i++] = sg_page_iter_page(&iter);
-		if (i > npages)
-			break;
-	}
+	drm_prime_sg_to_page_addr_arrays(sgt, mtk_gem->pages, NULL, npages);
+
 	mtk_gem->kvaddr = vmap(mtk_gem->pages, npages, VM_MAP,
 			       pgprot_writecombine(PAGE_KERNEL));
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
