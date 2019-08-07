Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5E884A39
	for <lists+linux-mediatek@lfdr.de>; Wed,  7 Aug 2019 12:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHVu3uHHcjY9o3ymN1sS1V07KaiJCp4RADA4xkpPupk=; b=ClBjx1a5TFWIOo
	kLEraVlaVW8y8y73RnFoUplFTK+J4CHU5/zMYfTQUu6DLXwwXKC7NIey8PIkxpsN7nXu1NVH8M0tX
	r5b0ZMW+oUnXHPIaQi5xki2as5blUS5jykjVW8MGDiEH7d12mvTh7ESeJidkullwWutxZiCROoW2M
	M0TL5D5d62MhC/21CiHqbnjozRo+3FNuQMHcwXHiSWwapVLcuF794djGw/nYYDU2qIDHXDIlKQvSN
	0VlZK9o0iOJaGZ91iGcFj0teDcZ9HSvbMNpNDspTJadEW1TRN1QOKcEKWIN2G0QrIZofBpW/SkNNU
	CEjveIZyY11qMeiXPLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJdP-00070r-Ax; Wed, 07 Aug 2019 10:57:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJd5-0006mb-Q1; Wed, 07 Aug 2019 10:57:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7957628;
 Wed,  7 Aug 2019 03:57:15 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E22BB3F575;
 Wed,  7 Aug 2019 03:57:13 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:57:09 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Subject: Re: [v2,0/2] PCI: mediatek: Add support for MT7629
Message-ID: <20190807105709.GA16214@e121166-lin.cambridge.arm.com>
References: <20190628073425.25165-1-jianjun.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628073425.25165-1-jianjun.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035715_884401_30D8F732 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-pci@vger.kernel.org,
 youlin.pei@mediatek.com, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 03:34:23PM +0800, Jianjun Wang wrote:
> These series patches modify pcie-mediatek.c and dt-bindings compatible
> string to support MT7629 PCIe host.
> 
> Jianjun Wang (2):
>   dt-bindings: PCI: Add support for MT7629
>   PCI: mediatek: Add controller support for MT7629
> 
>  .../devicetree/bindings/pci/mediatek-pcie.txt  |  1 +
>  drivers/pci/controller/pcie-mediatek.c         | 18 ++++++++++++++++++
>  include/linux/pci_ids.h                        |  1 +
>  3 files changed, 20 insertions(+)

Applied to pci/mediatek for v5.4.

Thanks,
Lorenzo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
