Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64DB3488C
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 15:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFsCPDDALl2a1BUxEhQ3u8R6Cs5vrygyHh5mEAsZZxI=; b=uNirPMT13SXexS
	OkOh5RnsQe8vva65YvM/PNHcD2pnmoeFBnxvBiRb76dg50l4/HOg4pFrf0ICzpaHHsJg/BXn2hejA
	HQwctYC0pmOL5vlMHQ4hLc6VYpYzJaxdog84HCOD/THeRWM1zxDReiPNfAHcsgMrtMWoQzdyR72te
	O09KTWSRy6yF5560+j5PYpXkbna18pCN7Jt0l1hZU4xxMgUNzqDifPU6H9ffb6dZhKc2z+s+LOAkr
	+VYtyiHffEjIhBmCaamye0aAv3IbnYnc7U25e2G8vkDJQl/AeMLAmK73jPAx+mpIyS9C4vRxj3Uod
	q7ZjUsFAbsuGgPB900Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9OG-0001Q3-BF; Tue, 04 Jun 2019 13:22:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9O8-0001Jq-8t; Tue, 04 Jun 2019 13:22:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D06C8A78;
 Tue,  4 Jun 2019 06:22:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7A4F03F690; Tue,  4 Jun 2019 06:22:02 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:21:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH v2] arm64: mm: make CONFIG_ZONE_DMA32 configurable
Message-ID: <20190604132159.GD6610@arrakis.emea.arm.com>
References: <1559059700-19078-1-git-send-email-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559059700-19078-1-git-send-email-miles.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_062204_311247_79287ED4 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:08:20AM +0800, Miles Chen wrote:
> This change makes CONFIG_ZONE_DMA32 defuly y and allows users
> to overwrite it only when CONFIG_EXPERT=y.
> 
> For the SoCs that do not need CONFIG_ZONE_DMA32, this is the
> first step to manage all available memory by a single
> zone(normal zone) to reduce the overhead of multiple zones.
> 
> The change also fixes a build error when CONFIG_NUMA=y and
> CONFIG_ZONE_DMA32=n.
> 
> arch/arm64/mm/init.c:195:17: error: use of undeclared identifier 'ZONE_DMA32'
>                 max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> 
> Change since v1:
> 1. only expose CONFIG_ZONE_DMA32 when CONFIG_EXPERT=y
> 2. remove redundant IS_ENABLED(CONFIG_ZONE_DMA32)
> 
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
