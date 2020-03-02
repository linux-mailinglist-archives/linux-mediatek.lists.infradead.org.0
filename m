Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6859F175B26
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Mar 2020 14:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJ6V5cE+E7gxHuBr3RI4gEfZCWyr6SbHIIlsbBWXODY=; b=G7YPcmZ+SS1TmB
	7eSAjQlQ4efrcBkMyEMD+X76GEP2vb+Th3jINBMxml1T01xjC2+73Jc66bO7EGeOhHE1F4PnfJZ65
	7Q6F6/2UZmQ11aH0DwpW/9P45iw4GXt2YLx94GNbyJdBM7VcwH2N72J81cmorRI7AgbxizmbjurJ+
	EBhE3rvB0Ok+CRGjvvjwWDLqwm9OuVBwovJS8NheOew1GKRDLF8Rcf6vgyn9qmWuGTJTHAd1WqMjG
	WCd+0Jmm2mb06svZ3IwQhGIVJNk7ATLu01qzyxFhPC9iPOSHAot+lqhtlIBPeo8Z0CD+su2nQRnOx
	NHElVOpkTlAU7pWsHhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kky-0005zn-Qg; Mon, 02 Mar 2020 13:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kkf-0005sT-Vr; Mon, 02 Mar 2020 13:04:55 +0000
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
 [209.85.166.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9AF5217F4;
 Mon,  2 Mar 2020 13:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583154293;
 bh=zxQKUp9bAzSWGADPh22WXwRxVBG3FLzKiQC9/v8nEak=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=bZwcUXMb21InRP9UVL8eRPxE5n1Js8BO6ta+lUCBOu0CsqBpqBfq3qauf0tbZPcwK
 SKkKJzOZCFd0EMcq/3qcLifU8OWDllbNv/GIUmxZ9v0+aBXO0a2iLiTBxXByddbMB5
 2+SyxZB3jfR7xaPgX1ThA2ybBsX3bopsCfakQC/g=
Received: by mail-il1-f182.google.com with SMTP id e8so4558729ilc.13;
 Mon, 02 Mar 2020 05:04:52 -0800 (PST)
X-Gm-Message-State: APjAAAX2ajlx+IRZ5SGS498dTBUGK4PWcUSrZQXlZZNxX6YWV1HWA38J
 KzNFyfLc92fZYMuyNotDnwnSn7BTNpcyC7xYiq8=
X-Google-Smtp-Source: APXvYqxUf04EhGPXWSNbYPcER3uGqrLxhKzfKNS71ZSDn70WiXvBJcYzWGdrRAVHK3bypwJ8YNcJ5vwZPpCaBfKz44w=
X-Received: by 2002:a92:ba06:: with SMTP id o6mr13787330ili.206.1583154292314; 
 Mon, 02 Mar 2020 05:04:52 -0800 (PST)
MIME-Version: 1.0
References: <20200226052603.22768-1-gtk_ruiwang@mediatek.com>
In-Reply-To: <20200226052603.22768-1-gtk_ruiwang@mediatek.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 2 Mar 2020 08:04:37 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5EyWegKGeNhkEb9YQYJqA2bG-_T1LJcPEaaryV7RHOaA@mail.gmail.com>
Message-ID: <CA+5PVA5EyWegKGeNhkEb9YQYJqA2bG-_T1LJcPEaaryV7RHOaA@mail.gmail.com>
Subject: Re: pull request: linux-firmware: move MT8173 VPU FW to subfolder
To: gtk_ruiwang@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_050454_048680_9101086E 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, PoChun.Lin@mediatek.com,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 12:26 AM <gtk_ruiwang@mediatek.com> wrote:
>
> Hi linux-firmware maintainers,
>
> The following changes since commit efcfa03ae6100dfe523ebf612e03c3a90fc4c794:
>
>   linux-firmware: Update firmware file for Intel Bluetooth AX201 (2020-02-24 07:43:42 -0500)
>
> are available in the Git repository at:
>
>   https://github.com/ruiwang-mtk/linux_fw_vpu.git
>
> for you to fetch changes up to a8a18d1ce5920bc0cfcf320747163cf13806b568:
>
>   mediatek: move MT8173 VPU FW to subfolder (2020-02-26 13:08:15 +0800)
>
> ----------------------------------------------------------------
> gtk_ruiwang (1):
>       mediatek: move MT8173 VPU FW to subfolder
>
>  WHENCE                    |   6 ++++--
>  mediatek/mt8173/vpu_d.bin | Bin 0 -> 2977184 bytes
>  mediatek/mt8173/vpu_p.bin | Bin 0 -> 131180 bytes
>  vpu_d.bin                 | Bin 2977184 -> 25 bytes
>  vpu_p.bin                 | Bin 131180 -> 25 bytes
>  5 files changed, 4 insertions(+), 2 deletions(-)
>  create mode 100644 mediatek/mt8173/vpu_d.bin
>  create mode 100644 mediatek/mt8173/vpu_p.bin
>  mode change 100644 => 120000 vpu_d.bin
>  mode change 100644 => 120000 vpu_p.bin

Pulled and pushed out.  I removed the local symlinks as the makefile
will create them on installation now.

josh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
