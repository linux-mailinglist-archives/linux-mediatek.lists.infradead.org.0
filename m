Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC3194273
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Mar 2020 16:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlZLvBwDHfGRglItlrTl6iO2LW+wp07p7z8oSLFDdGY=; b=irTxj6AhesrqMf
	9QYne3LreWtedh3junz1pygdIGwaNvZzr1UfV8wfVxWN08x0JWrQy8UkdAzFkR8uQA5OZK97SDgVK
	CyKGJZYc/HSeZue0fCf0NYBh2Gh8YTg6yQcJIUYVPkeU8PuiDOznZFmBlEvido/vC6ituHijcDiLU
	nnuhhCByNFIIRXliarpAJMzJJWp0PIKhxySh8zkMag0bIFUrG5xZXNoEFE7ot3z10Aa3TCBEP6boR
	z9vyrqis9+TXJcMsjAhVD+/v92rb2yPbp95VRuO6wPca1Kg/EtAzz1uljg/U9LqH0lHiz4FQftEBQ
	OtgiEjZWhTcw/gKG6XRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU7p-00041U-Vx; Thu, 26 Mar 2020 15:08:53 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU7l-0003xw-Py
 for linux-mediatek@lists.infradead.org; Thu, 26 Mar 2020 15:08:51 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id D5F5329A; Thu, 26 Mar 2020 16:08:35 +0100 (CET)
Date: Thu, 26 Mar 2020 16:08:34 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 10/15] iommu/arm-smmu: Use accessor functions for
 iommu private data
Message-ID: <20200326150834.GA6937@8bytes.org>
References: <20200320091414.3941-1-joro@8bytes.org>
 <20200320091414.3941-11-joro@8bytes.org>
 <09ed4676-449e-c6eb-8c51-c15b326c206c@arm.com>
 <20200324100819.GA4038@8bytes.org>
 <d69dad81-d025-96ef-863c-553b5ed2dd8e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d69dad81-d025-96ef-863c-553b5ed2dd8e@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080849_996275_05229A24 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Clark <robdclark@gmail.com>, Joerg Roedel <jroedel@suse.de>,
 Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Robin,

On Wed, Mar 25, 2020 at 12:31:46PM +0000, Robin Murphy wrote:
> Oops, sorry - as you might imagine I'm not in my normal workflow :)

No problem, nobody is right now :)

> Let me rebase that onto something actually in your tree (rather than
> whatever detached HEAD this is checked out out on my laptop...) and try
> resending it properly.

Got it, thanks. Added to the next version of the patch-set which I will
send out shortly.

> Cool, let me know if you need a hand with all the *_iommu_configure() stuff
> - I still have plans for overhauling that lot anyway, but not imminently, so
> it probably is worthwhile to do the straightforward housekeeping first.

Okay, I'll get back to you if I need help with the conversion.

Thanks,

	Joerg

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
