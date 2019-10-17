Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57F6DABEF
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 14:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auPB84Xt1Km4m3DV0NF74XWYxDbUgx2sPaBAvBxnMYo=; b=lnoslA1U8pS1kw
	I3aKT5GprZ+EIKx+BcEEHwYwLc8HzwxjECu/EEGHwRayzobAo+uM7vH1caTMPuCKygvXF39j+AFsA
	Xi0Dyn9d3dU5cgEMG06HRx2rFnUNXAYHaieNd9QmK6gE8LlDAa83a6J0WHmlu3xPwfKoAIae5UfNt
	DjuAsT4zFTH9vVETdF0mATNKHr3AX1ds2hHp156XjXThrxwaXMF1u+3+6ykQtQjHKarDtnwRaXVD7
	hoDghZ5GEMdKNWwHBKxvAyhRGZ31XsGqluWmOIKdT9qy5iJeXlsSVc6zqt6Fm+N02MhzXbbnI8U1g
	j+Eid5tBZidLEpycS/AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4qM-0000bX-6y; Thu, 17 Oct 2019 12:25:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4pz-0007kr-Rj; Thu, 17 Oct 2019 12:25:09 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA960222BE;
 Thu, 17 Oct 2019 12:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571315102;
 bh=LrQnz98uOVhoyL8C9jQ/wywj8PjyWmRHMV/7DS2tY4Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Zu+0INm1hJy9vc9v5kn3GgXSkcVIG6uOYhfSj3digX3umNQnSVVQnmVmEG3zhPLa+
 m/6i4tKlKnjpgFq/AXCMtLY1+Rpq1Viq52FfvW0UObUiT28jIhvn7/lKGECBJKcEn+
 dABuMoopMqlt5uUyA0LtKMpMXmpu8chzMOcmfhJE=
Received: by mail-qk1-f182.google.com with SMTP id e66so1600455qkf.13;
 Thu, 17 Oct 2019 05:25:02 -0700 (PDT)
X-Gm-Message-State: APjAAAXnfgpuXBR8s2ZGngcdRXuNGBqq0FS80g/W7xMjNq1mUsVYb/2P
 kW0ALikqCtkd6JS+5jiEEJtb145x5GPOxO6FeQ==
X-Google-Smtp-Source: APXvYqykgRdraUNdbziBpUQsRMBhKGPDacKw+vE+jl7H1/l6Fb7fZ4vekhfagyfuSNF6yc1qHpHfVqZsnpUaNiSiAoQ=
X-Received: by 2002:a05:620a:12f1:: with SMTP id
 f17mr3039133qkl.152.1571315101761; 
 Thu, 17 Oct 2019 05:25:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-12-robh@kernel.org>
 <20191017072625.GB19517@infradead.org>
In-Reply-To: <20191017072625.GB19517@infradead.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 17 Oct 2019 07:24:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Hmwy04-XtTCp+H=H5BeaFVeHXgq1R0xVvBdgPEsDbPw@mail.gmail.com>
Message-ID: <CAL_Jsq+Hmwy04-XtTCp+H=H5BeaFVeHXgq1R0xVvBdgPEsDbPw@mail.gmail.com>
Subject: Re: [PATCH v2 11/25] PCI: rockchip: Drop storing driver private
 outbound resource data
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052503_959298_B2F209C6 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 PCI <linux-pci@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 2:26 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Wed, Oct 16, 2019 at 03:06:33PM -0500, Rob Herring wrote:
> > +     entry = resource_list_get_entry_of_type(&bridge->windows, IORESOURCE_MEM);
>
> This add another too long line.  Please audit the whole series for that.

82 characters didn't seem worth a line break...

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
