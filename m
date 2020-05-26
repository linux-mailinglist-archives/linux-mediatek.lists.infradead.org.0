Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FBD1AA02B
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Apr 2020 14:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLL+gODl5kVamGeCcDFUlX6RrpJZrIQZ4Z+S6JvB340=; b=JbUlA9reSJrs3s
	ukqVwXKwl5MP0KgF0++HIMo242xirub/eNgNaNRzjyeCx69Th5lHFFeCz9Fj9o4xaj3SISrEZ+owO
	ojYaYx/ZddhHwDgNCrF27NMG/WLS8RhPm5hRhLnbvZPNSw2fpwyDB1v3kDKoXriTzSx1CbIpW2TeB
	Fr2yjF+x1BnwHuHL+JaeJTfp/tjyJVdYPpur2rn9VSqcPRSmzIooHsiyTcEAcPiA72TpmKQqR6ZKL
	qc9U6fMhUokWelRHVoKikPgb7ZyfEjUlbo/9Cmu8bTygIjR16wzbT5ac15+Pa2rtEcM23KIRGRwh0
	nnYbzs5lWGi3P5E7o2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhCl-0000na-M5; Wed, 15 Apr 2020 12:31:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhCi-0000mb-Qt; Wed, 15 Apr 2020 12:31:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C7A69AC11;
 Wed, 15 Apr 2020 12:31:41 +0000 (UTC)
Date: Wed, 15 Apr 2020 14:31:40 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v2 07/33] iommu: Add probe_device() and remove_device()
 call-backs
Message-ID: <20200415123140.GC21899@suse.de>
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200414131542.25608-8-joro@8bytes.org>
 <0ad37581-b464-30ac-c503-4c0daaf43867@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ad37581-b464-30ac-c503-4c0daaf43867@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_053145_013951_284C10FA 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 02:36:20PM +0800, Lu Baolu wrote:
> On 2020/4/14 21:15, Joerg Roedel wrote:
> > From: Joerg Roedel<jroedel@suse.de>
> > 
> > Add call-backs to 'struct iommu_ops' as an alternative to the
> > add_device() and remove_device() call-backs, which will be removed when
> > all drivers are converted.
> > 
> > The new call-backs will not setupt IOMMU groups and domains anymore,
> > so also add a probe_finalize() call-back where the IOMMU driver can do
> > per-device setup work which require the device to be set up with a
> > group and a domain.
> 
> The subject is inaccurate. probe_device() and release_device() are
> added to replace the add and remove pair.

This patch does not replace them yet, it just adds the new call-backs.
The removal of add_device()/remove_device() happens later in the
patch-set when all drivers are converted.

Regards,

	Joerg


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
