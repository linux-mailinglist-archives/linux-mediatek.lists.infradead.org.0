Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFB41D4A7B
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 May 2020 12:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNPevnLxSi4yqlzpjfUOh/1KpegMh2UpSwuDaHYdtRo=; b=r/GLq0aNsufvJA
	fUKdWdJuIGEfEw5dor9kgZRWOSddIxf1Yfaz4uaUrhAdUPptVkPp8+h8lQlC0sACL9SUQcN2u+Vss
	fAk6WvvJX85aXjnlrvQnfHHeoD/l3yhaLaGBahslsE1Nu8uohUU8+He+5QvuyaYBgYSyv8MHr93Qe
	sK/eapazNkmiHsNMGdV6ygJDlfCgzUB93MmNpqPdRWua3FNyCThDqiWXqYkZprOf4hAYdqXThkYbZ
	KOJrT4J3sGeDz3aMZvuUzzBvvqli0thv/jI3IBrdi45fNQgQTD9TnPyPBhRp5130gaV0rbmpp2Kxb
	d1R2DuiTYsWK24LkwIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXFu-000583-I3; Fri, 15 May 2020 10:07:51 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXFX-0004mj-9t
 for linux-mediatek@lists.infradead.org; Fri, 15 May 2020 10:07:30 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 27896379; Fri, 15 May 2020 12:07:20 +0200 (CEST)
Date: Fri, 15 May 2020 12:07:18 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v2 23/33] iommu/mediatek-v1 Convert to
 probe/release_device() call-backs
Message-ID: <20200515100718.GS18353@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200414131542.25608-24-joro@8bytes.org>
 <1589528699.26119.9.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589528699.26119.9.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030727_515091_95779F49 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Joerg Roedel <jroedel@suse.de>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Fri, May 15, 2020 at 03:44:59PM +0800, Yong Wu wrote:
> On Tue, 2020-04-14 at 15:15 +0200, Joerg Roedel wrote:
> > -	return iommu_device_link(&data->iommu, dev);
> > +	err = arm_iommu_attach_device(dev, mtk_mapping);
> > +	if (err)
> > +		dev_err(dev, "Can't create IOMMU mapping - DMA-OPS will not work\n");
> 
> 
> Hi Joerg,
> 
>      Thanks very much for this patch.
> 
>      This arm_iommu_attach_device is called just as we expected.
> 
>      But it will fail in this callstack as the group->mutex was tried to
> be re-locked...
> 
> [<c0938e8c>] (iommu_attach_device) from [<c0317590>]
> (__arm_iommu_attach_device+0x34/0x90)
> [<c0317590>] (__arm_iommu_attach_device) from [<c03175f8>]
> (arm_iommu_attach_device+0xc/0x20)
> [<c03175f8>] (arm_iommu_attach_device) from [<c09432cc>]
> (mtk_iommu_probe_finalize+0x34/0x50)
> [<c09432cc>] (mtk_iommu_probe_finalize) from [<c093a8ac>]
> (bus_iommu_probe+0x2a8/0x2c4)
> [<c093a8ac>] (bus_iommu_probe) from [<c093a950>] (bus_set_iommu
> +0x88/0xd4)
> [<c093a950>] (bus_set_iommu) from [<c0943c74>] (mtk_iommu_probe
> +0x2f8/0x364)

Thanks for the report, is

	https://lore.kernel.org/lkml/1589530123-30240-1-git-send-email-yong.wu@mediatek.com/

The fix for this issue or is something else required?


Thanks,

	Joerg

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
