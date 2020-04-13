Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB871A6EF0
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 00:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fD3rap6e4y7QASSgKx9FUBKNsqMUijLuzqdIG5CGMwU=; b=tLljlxcFNCAnTW
	QyoQFxKgskjAextHppz4lD1Slnq39Ae97ETnoEq+//gXlYG0Tbm1xL7prsoS45VO7+25cN9/vEYVw
	tUvDmeuLnxGjKUdT8dxJILASZFxINzgDKfGdhwosbtO2ckRpG4mXEimdibrE0SplU/M/BPMHUE6BX
	pqBHOJzKfrN+mNo4D+rt8PFbyv03l0B36KkhjgHoHL1PSqRViCNXOS1wb3wy827NuY66RuTINQvvH
	4TSc5RCYyX9JONUFowRlxsofy88us1kq6v3+BbomcaOrItbosiwcl+QMyqxC+4zG9r/OMiR9xBlHA
	Xp3EzVWf8Yu8EBbVMPQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7I7-000338-Be; Mon, 13 Apr 2020 22:10:55 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7I4-00031h-Gg; Mon, 13 Apr 2020 22:10:53 +0000
IronPort-SDR: JUJEjoZ95zIj4x6aQdcX10xKmIQOdTiD3onrhcOyR13mpCscjlI3V03eZkPMPVHeXcM7C1Xxut
 kaTvjGYxXmNA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:10:51 -0700
IronPort-SDR: JDDj75TY0RQWmARuE0Xi/GlC0/H86xFO5b0ySd1j8fwE8sDPolTRHc1UN0cL/FNVTr9odVA0lc
 CPOqlLX5jQDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="268335512"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga008.jf.intel.com with ESMTP; 13 Apr 2020 15:10:51 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.204]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.76]) with mapi id 14.03.0439.000;
 Mon, 13 Apr 2020 15:10:51 -0700
From: "Derrick, Jonathan" <jonathan.derrick@intel.com>
To: "heiko@sntech.de" <heiko@sntech.de>, "kgene@kernel.org"
 <kgene@kernel.org>, "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>, "baolu.lu@linux.intel.com"
 <baolu.lu@linux.intel.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, "joro@8bytes.org"
 <joro@8bytes.org>, "will@kernel.org" <will@kernel.org>,
 "jean-philippe@linaro.org" <jean-philippe@linaro.org>, "krzk@kernel.org"
 <krzk@kernel.org>, "robdclark@gmail.com" <robdclark@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "gerald.schaefer@de.ibm.com" <gerald.schaefer@de.ibm.com>,
 "agross@kernel.org" <agross@kernel.org>
Subject: Re: [RFC PATCH 11/34] iommu: Split off default domain allocation
 from group assignment
Thread-Topic: [RFC PATCH 11/34] iommu: Split off default domain allocation
 from group assignment
Thread-Index: AQHWDQv5OT53tBkslE6hk6FAwlK+4qh4HAeA
Date: Mon, 13 Apr 2020 22:10:50 +0000
Message-ID: <6a801ff9e6471bda7c6f510dfa2ba7e7c35cb559.camel@intel.com>
References: <20200407183742.4344-1-joro@8bytes.org>
 <20200407183742.4344-12-joro@8bytes.org>
In-Reply-To: <20200407183742.4344-12-joro@8bytes.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.0.111]
Content-ID: <32CCA6BEC8F53949916D97ED0C44AA2D@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_151052_592350_284DA2F3 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "jroedel@suse.de" <jroedel@suse.de>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Joerg,

On Tue, 2020-04-07 at 20:37 +0200, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> When a bus is initialized with iommu-ops, all devices on the bus are
> scanned and iommu-groups are allocated for them, and each groups will
> also get a default domain allocated.
> 
> Until now this happened as soon as the group was created and the first
> device added to it. When other devices with different default domain
> requirements were added to the group later on, the default domain was
> re-allocated, if possible.
> 
> This resulted in some back and forth and unnecessary allocations, so
> change the flow to defer default domain allocation until all devices
> have been added to their respective IOMMU groups.
> 
> The default domains are allocated for newly allocated groups after
> each device on the bus is handled and was probed by the IOMMU driver.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>
> ---
[snip]


I had to add the following for initial VMD support. The new PCIe domain
added on VMD endpoint probe didn't have the dev_iommu member set on the
VMD subdevices, which I'm guessing is due to probe_iommu_group already
having been run on the VMD endpoint's group prior to those subdevices
being added.

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 8a5e1ac328dd..ac1e4fb9bf48 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1577,6 +1577,9 @@ static int iommu_bus_notifier(struct notifier_block *nb,
        if (action == BUS_NOTIFY_ADD_DEVICE) {
                int ret;
 
+               if (!dev_iommu_get(dev))
+                       return -ENOMEM;
+
                ret = iommu_probe_device(dev);
                return (ret) ? NOTIFY_DONE : NOTIFY_OK;
        } else if (action == BUS_NOTIFY_REMOVED_DEVICE) {
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
