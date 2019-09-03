Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB061A6901
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Sep 2019 14:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDO71ni7jrp14M6nbZeNwF5TJKHWZb5pj1hT2/72Dbk=; b=ks13xN0uFDVII9
	vUJxuz46oQx6QeWfggCoRuhlwFePQPUZRfkzl5SG1UrTjl3Nyc+nCfr5fC3rzpNctMExZqcblLuZ8
	lYwfq5T8jdlnFEkPHPAs8sOWaVyR91Ck5q75ol6+wO9gj4bntPydtYY0Lmu9Qe69sBZNsB3V0W4zi
	eGf9uB+BOwS5Fya/YPXbTIicb/994t90kxTazDNrpSYTx9XjGNsXXGCfVypaVt3rKWbuHVpCJ+PgM
	HLlE8/bSPdl5QDC6GK4iOgSsP6tkhCCptMXFApCrOCllKMQZTrJRqFGIY/fsGxU7vY6Im5PjRZmDs
	f64Pxn6eEV1/nwQuI43A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58IX-0000ek-0G; Tue, 03 Sep 2019 12:52:37 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58IF-0000Ti-9V; Tue, 03 Sep 2019 12:52:21 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A4DE0284; Tue,  3 Sep 2019 14:52:11 +0200 (CEST)
Date: Tue, 3 Sep 2019 14:52:10 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v1 1/2] iommu: pass cell_count = -1 to
 of_for_each_phandle with cells_name
Message-ID: <20190903125210.GB11530@8bytes.org>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_055219_486324_85480F5C 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, kernel@pengutronix.de,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 03:28:45PM +0200, Uwe Kleine-K=F6nig wrote:
> Currently of_for_each_phandle ignores the cell_count parameter when a
> cells_name is given. I intend to change that and let the iterator fall
> back to a non-negative cell_count if the cells_name property is missing
> in the referenced node.
> =

> To not change how existing of_for_each_phandle's users iterate, fix them
> to pass cell_count =3D -1 when also cells_name is given which yields the
> expected behaviour with and without my change.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/iommu/arm-smmu.c     | 2 +-
>  drivers/iommu/mtk_iommu_v1.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Acked-by: Joerg Roedel <jroedel@suse.de>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
